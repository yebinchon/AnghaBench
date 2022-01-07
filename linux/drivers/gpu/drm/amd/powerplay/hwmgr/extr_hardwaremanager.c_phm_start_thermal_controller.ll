; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_hardwaremanager.c_phm_start_thermal_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_hardwaremanager.c_phm_start_thermal_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_7__*, %struct.TYPE_6__, %struct.amdgpu_device* }
%struct.TYPE_7__ = type { i32 (%struct.pp_hwmgr*, %struct.PP_TemperatureRange*)*, i32 (%struct.pp_hwmgr*, %struct.PP_TemperatureRange*)* }
%struct.PP_TemperatureRange = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TEMP_RANGE_MIN = common dso_local global i32 0, align 4
@TEMP_RANGE_MAX = common dso_local global i32 0, align 4
@PHM_PlatformCaps_ThermalController = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phm_start_thermal_controller(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.PP_TemperatureRange, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 0
  %7 = load i32, i32* @TEMP_RANGE_MIN, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 1
  %9 = load i32, i32* @TEMP_RANGE_MAX, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 2
  %11 = load i32, i32* @TEMP_RANGE_MAX, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 3
  %13 = load i32, i32* @TEMP_RANGE_MIN, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 4
  %15 = load i32, i32* @TEMP_RANGE_MAX, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 5
  %17 = load i32, i32* @TEMP_RANGE_MAX, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 6
  %19 = load i32, i32* @TEMP_RANGE_MIN, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 7
  %21 = load i32, i32* @TEMP_RANGE_MAX, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 8
  %23 = load i32, i32* @TEMP_RANGE_MAX, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 9
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 10
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 11
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 12
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 13
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 14
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 15
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 16
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 17
  store i32 0, i32* %32, align 4
  %33 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %34 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %33, i32 0, i32 2
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %34, align 8
  store %struct.amdgpu_device* %35, %struct.amdgpu_device** %5, align 8
  %36 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %37 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32 (%struct.pp_hwmgr*, %struct.PP_TemperatureRange*)*, i32 (%struct.pp_hwmgr*, %struct.PP_TemperatureRange*)** %39, align 8
  %41 = icmp ne i32 (%struct.pp_hwmgr*, %struct.PP_TemperatureRange*)* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %1
  %43 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %44 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32 (%struct.pp_hwmgr*, %struct.PP_TemperatureRange*)*, i32 (%struct.pp_hwmgr*, %struct.PP_TemperatureRange*)** %46, align 8
  %48 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %49 = call i32 %47(%struct.pp_hwmgr* %48, %struct.PP_TemperatureRange* %4)
  br label %50

50:                                               ; preds = %42, %1
  %51 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %52 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @PHM_PlatformCaps_ThermalController, align 4
  %56 = call i64 @phm_cap_enabled(i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %50
  %59 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %60 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32 (%struct.pp_hwmgr*, %struct.PP_TemperatureRange*)*, i32 (%struct.pp_hwmgr*, %struct.PP_TemperatureRange*)** %62, align 8
  %64 = icmp ne i32 (%struct.pp_hwmgr*, %struct.PP_TemperatureRange*)* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %67 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32 (%struct.pp_hwmgr*, %struct.PP_TemperatureRange*)*, i32 (%struct.pp_hwmgr*, %struct.PP_TemperatureRange*)** %69, align 8
  %71 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %72 = call i32 %70(%struct.pp_hwmgr* %71, %struct.PP_TemperatureRange* %4)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %65, %58, %50
  %74 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 8
  store i32 %75, i32* %80, align 4
  %81 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 7
  store i32 %82, i32* %87, align 4
  %88 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %91 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 6
  store i32 %89, i32* %94, align 4
  %95 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %98 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 5
  store i32 %96, i32* %101, align 4
  %102 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %105 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 4
  store i32 %103, i32* %108, align 4
  %109 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %112 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  store i32 %110, i32* %115, align 4
  %116 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %119 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  store i32 %117, i32* %122, align 4
  %123 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %126 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  store i32 %124, i32* %129, align 4
  %130 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %4, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %133 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  store i32 %131, i32* %136, align 4
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i64 @phm_cap_enabled(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
