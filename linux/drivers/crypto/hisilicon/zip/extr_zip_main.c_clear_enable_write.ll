; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_clear_enable_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_clear_enable_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctrl_debug_file = type { i32 }
%struct.hisi_qm = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@HZIP_SOFT_CTRL_CNT_CLR_CE = common dso_local global i64 0, align 8
@SOFT_CTRL_CNT_CLR_CE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctrl_debug_file*, i32)* @clear_enable_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_enable_write(%struct.ctrl_debug_file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctrl_debug_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hisi_qm*, align 8
  %7 = alloca i32, align 4
  store %struct.ctrl_debug_file* %0, %struct.ctrl_debug_file** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ctrl_debug_file*, %struct.ctrl_debug_file** %4, align 8
  %9 = call %struct.hisi_qm* @file_to_qm(%struct.ctrl_debug_file* %8)
  store %struct.hisi_qm* %9, %struct.hisi_qm** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %37

18:                                               ; preds = %12, %2
  %19 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %20 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HZIP_SOFT_CTRL_CNT_CLR_CE, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  %25 = load i32, i32* @SOFT_CTRL_CNT_CLR_CE_BIT, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %32 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @HZIP_SOFT_CTRL_CNT_CLR_CE, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %18, %15
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.hisi_qm* @file_to_qm(%struct.ctrl_debug_file*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
