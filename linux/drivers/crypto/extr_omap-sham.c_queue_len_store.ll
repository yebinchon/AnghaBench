; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_queue_len_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_queue_len_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.omap_sham_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @queue_len_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @queue_len_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.omap_sham_dev*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.omap_sham_dev* @dev_get_drvdata(%struct.device* %14)
  store %struct.omap_sham_dev* %15, %struct.omap_sham_dev** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i64 @kstrtol(i8* %16, i32 0, i64* %12)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i64, i64* %11, align 8
  store i64 %21, i64* %5, align 8
  br label %42

22:                                               ; preds = %4
  %23 = load i64, i64* %12, align 8
  %24 = icmp slt i64 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %42

28:                                               ; preds = %22
  %29 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %10, align 8
  %30 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %13, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load i64, i64* %12, align 8
  %34 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %10, align 8
  %35 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i64 %33, i64* %36, align 8
  %37 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %10, align 8
  %38 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %13, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load i64, i64* %9, align 8
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %28, %25, %20
  %43 = load i64, i64* %5, align 8
  ret i64 %43
}

declare dso_local %struct.omap_sham_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
