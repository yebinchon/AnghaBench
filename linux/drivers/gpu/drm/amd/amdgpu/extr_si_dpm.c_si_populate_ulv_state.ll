; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_populate_ulv_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_populate_ulv_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i32 }
%struct.evergreen_power_info = type { i64 }
%struct.si_power_info = type { %struct.si_ulv_param }
%struct.si_ulv_param = type { i64, i32 }

@SCLK_MIN_DEEPSLEEP_FREQ = common dso_local global i64 0, align 8
@PPSMC_STATEFLAG_DEEPSLEEP_BYPASS = common dso_local global i32 0, align 4
@PPSMC_STATEFLAG_DEEPSLEEP_THROTTLE = common dso_local global i32 0, align 4
@PPSMC_SWSTATE_FLAG_PCIE_X1 = common dso_local global i32 0, align 4
@SISLANDS_ULV_STATE_ARB_INDEX = common dso_local global i64 0, align 8
@PPSMC_SWSTATE_FLAG_DC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.TYPE_4__*)* @si_populate_ulv_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_populate_ulv_state(%struct.amdgpu_device* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.evergreen_power_info*, align 8
  %6 = alloca %struct.si_power_info*, align 8
  %7 = alloca %struct.si_ulv_param*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.amdgpu_device* %10)
  store %struct.evergreen_power_info* %11, %struct.evergreen_power_info** %5, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = call %struct.si_power_info* @si_get_pi(%struct.amdgpu_device* %12)
  store %struct.si_power_info* %13, %struct.si_power_info** %6, align 8
  %14 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %15 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %14, i32 0, i32 0
  store %struct.si_ulv_param* %15, %struct.si_ulv_param** %7, align 8
  store i64 1350, i64* %8, align 8
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = load %struct.si_ulv_param*, %struct.si_ulv_param** %7, align 8
  %18 = getelementptr inbounds %struct.si_ulv_param, %struct.si_ulv_param* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 0
  %23 = call i32 @si_convert_power_level_to_smc(%struct.amdgpu_device* %16, i32* %18, %struct.TYPE_5__* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %95, label %26

26:                                               ; preds = %2
  %27 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %28 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %26
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @SCLK_MIN_DEEPSLEEP_FREQ, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i32, i32* @PPSMC_STATEFLAG_DEEPSLEEP_BYPASS, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %36
  store i32 %43, i32* %41, align 8
  br label %53

44:                                               ; preds = %31
  %45 = load i32, i32* @PPSMC_STATEFLAG_DEEPSLEEP_THROTTLE, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %45
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %44, %35
  br label %54

54:                                               ; preds = %53, %26
  %55 = load %struct.si_ulv_param*, %struct.si_ulv_param** %7, align 8
  %56 = getelementptr inbounds %struct.si_ulv_param, %struct.si_ulv_param* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* @PPSMC_SWSTATE_FLAG_PCIE_X1, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %54
  %66 = load i64, i64* @SISLANDS_ULV_STATE_ARB_INDEX, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  store i64 %66, i64* %71, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  store i32 %82, i32* %87, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load i32, i32* @PPSMC_SWSTATE_FLAG_DC, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %65, %2
  %96 = load i32, i32* %9, align 4
  ret i32 %96
}

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.amdgpu_device*) #1

declare dso_local %struct.si_power_info* @si_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @si_convert_power_level_to_smc(%struct.amdgpu_device*, i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
