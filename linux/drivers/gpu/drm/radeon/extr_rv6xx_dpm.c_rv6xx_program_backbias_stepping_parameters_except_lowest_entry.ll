; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_program_backbias_stepping_parameters_except_lowest_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_program_backbias_stepping_parameters_except_lowest_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv6xx_power_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@VID_UPPER_GPIO_CNTL = common dso_local global i32 0, align 4
@MEDIUM_BACKBIAS_VALUE = common dso_local global i32 0, align 4
@HIGH_BACKBIAS_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rv6xx_program_backbias_stepping_parameters_except_lowest_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv6xx_program_backbias_stepping_parameters_except_lowest_entry(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.rv6xx_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = call %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device* %4)
  store %struct.rv6xx_power_info* %5, %struct.rv6xx_power_info** %3, align 8
  %6 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %7 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @VID_UPPER_GPIO_CNTL, align 4
  %15 = load i32, i32* @MEDIUM_BACKBIAS_VALUE, align 4
  %16 = load i32, i32* @MEDIUM_BACKBIAS_VALUE, align 4
  %17 = xor i32 %16, -1
  %18 = call i32 @WREG32_P(i32 %14, i32 %15, i32 %17)
  br label %24

19:                                               ; preds = %1
  %20 = load i32, i32* @VID_UPPER_GPIO_CNTL, align 4
  %21 = load i32, i32* @MEDIUM_BACKBIAS_VALUE, align 4
  %22 = xor i32 %21, -1
  %23 = call i32 @WREG32_P(i32 %20, i32 0, i32 %22)
  br label %24

24:                                               ; preds = %19, %13
  %25 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %26 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load i32, i32* @VID_UPPER_GPIO_CNTL, align 4
  %34 = load i32, i32* @HIGH_BACKBIAS_VALUE, align 4
  %35 = load i32, i32* @HIGH_BACKBIAS_VALUE, align 4
  %36 = xor i32 %35, -1
  %37 = call i32 @WREG32_P(i32 %33, i32 %34, i32 %36)
  br label %43

38:                                               ; preds = %24
  %39 = load i32, i32* @VID_UPPER_GPIO_CNTL, align 4
  %40 = load i32, i32* @HIGH_BACKBIAS_VALUE, align 4
  %41 = xor i32 %40, -1
  %42 = call i32 @WREG32_P(i32 %39, i32 0, i32 %41)
  br label %43

43:                                               ; preds = %38, %32
  ret void
}

declare dso_local %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
