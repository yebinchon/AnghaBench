; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp500_disable_memwrite.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp500_disable_memwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malidp_hw_device = type { i64 }

@MALIDP_DE_BLOCK = common dso_local global i32 0, align 4
@MW_START = common dso_local global i64 0, align 8
@MW_RESTART = common dso_local global i64 0, align 8
@MW_STOP = common dso_local global i64 0, align 8
@MALIDP_SE_MEMWRITE_EN = common dso_local global i32 0, align 4
@MALIDP500_SE_CONTROL = common dso_local global i64 0, align 8
@MALIDP_SCALE_ENGINE_EN = common dso_local global i32 0, align 4
@MALIDP_DE_DISPLAY_FUNC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.malidp_hw_device*)* @malidp500_disable_memwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malidp500_disable_memwrite(%struct.malidp_hw_device* %0) #0 {
  %2 = alloca %struct.malidp_hw_device*, align 8
  %3 = alloca i64, align 8
  store %struct.malidp_hw_device* %0, %struct.malidp_hw_device** %2, align 8
  %4 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %2, align 8
  %5 = load i32, i32* @MALIDP_DE_BLOCK, align 4
  %6 = call i64 @malidp_get_block_base(%struct.malidp_hw_device* %4, i32 %5)
  store i64 %6, i64* %3, align 8
  %7 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %2, align 8
  %8 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MW_START, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %2, align 8
  %14 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MW_RESTART, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12, %1
  %19 = load i64, i64* @MW_STOP, align 8
  %20 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %2, align 8
  %21 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %18, %12
  %23 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %2, align 8
  %24 = load i32, i32* @MALIDP_SE_MEMWRITE_EN, align 4
  %25 = load i64, i64* @MALIDP500_SE_CONTROL, align 8
  %26 = call i32 @malidp_hw_clearbits(%struct.malidp_hw_device* %23, i32 %24, i64 %25)
  %27 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %2, align 8
  %28 = load i32, i32* @MALIDP_SCALE_ENGINE_EN, align 4
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @MALIDP_DE_DISPLAY_FUNC, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @malidp_hw_clearbits(%struct.malidp_hw_device* %27, i32 %28, i64 %31)
  ret void
}

declare dso_local i64 @malidp_get_block_base(%struct.malidp_hw_device*, i32) #1

declare dso_local i32 @malidp_hw_clearbits(%struct.malidp_hw_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
