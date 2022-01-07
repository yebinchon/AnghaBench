; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_picoxcell_crypto.c_spacc_stat_irq_thresh_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_picoxcell_crypto.c_spacc_stat_irq_thresh_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.spacc_engine = type { i64, i64, i64 }

@EINVAL = common dso_local global i64 0, align 8
@SPA_IRQ_CTRL_STAT_CNT_OFFSET = common dso_local global i32 0, align 4
@SPA_IRQ_CTRL_REG_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @spacc_stat_irq_thresh_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spacc_stat_irq_thresh_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.spacc_engine*, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.spacc_engine* @spacc_dev_to_engine(%struct.device* %12)
  store %struct.spacc_engine* %13, %struct.spacc_engine** %10, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @kstrtoul(i8* %14, i32 0, i64* %11)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i64, i64* @EINVAL, align 8
  %19 = sub i64 0, %18
  store i64 %19, i64* %5, align 8
  br label %44

20:                                               ; preds = %4
  %21 = load i64, i64* %11, align 8
  %22 = load %struct.spacc_engine*, %struct.spacc_engine** %10, align 8
  %23 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, 1
  %26 = call i64 @clamp(i64 %21, i64 1, i64 %25)
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load %struct.spacc_engine*, %struct.spacc_engine** %10, align 8
  %29 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.spacc_engine*, %struct.spacc_engine** %10, align 8
  %31 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @SPA_IRQ_CTRL_STAT_CNT_OFFSET, align 4
  %34 = zext i32 %33 to i64
  %35 = shl i64 %32, %34
  %36 = trunc i64 %35 to i32
  %37 = load %struct.spacc_engine*, %struct.spacc_engine** %10, align 8
  %38 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SPA_IRQ_CTRL_REG_OFFSET, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  %43 = load i64, i64* %9, align 8
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %20, %17
  %45 = load i64, i64* %5, align 8
  ret i64 %45
}

declare dso_local %struct.spacc_engine* @spacc_dev_to_engine(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @clamp(i64, i64, i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
