; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_pm_compute_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_pm_compute_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_16__, %struct.amdgpu_ring**, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__, %struct.TYPE_11__, i32 }
%struct.TYPE_15__ = type { i32, i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (i32, %struct.TYPE_15__*)*, i64 }
%struct.TYPE_16__ = type { %struct.smu_dpm_context }
%struct.smu_dpm_context = type { i32 }
%struct.amdgpu_ring = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@AMDGPU_MAX_RINGS = common dso_local global i32 0, align 4
@AMD_PP_TASK_DISPLAY_CONFIG_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_pm_compute_clocks(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca %struct.smu_dpm_context*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %161

12:                                               ; preds = %1
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %20 = call i32 @amdgpu_display_bandwidth_update(%struct.amdgpu_device* %19)
  br label %21

21:                                               ; preds = %18, %12
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %46, %21
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @AMDGPU_MAX_RINGS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 3
  %29 = load %struct.amdgpu_ring**, %struct.amdgpu_ring*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.amdgpu_ring*, %struct.amdgpu_ring** %29, i64 %31
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %32, align 8
  store %struct.amdgpu_ring* %33, %struct.amdgpu_ring** %4, align 8
  %34 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %35 = icmp ne %struct.amdgpu_ring* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %26
  %37 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %38 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %44 = call i32 @amdgpu_fence_wait_empty(%struct.amdgpu_ring* %43)
  br label %45

45:                                               ; preds = %42, %36, %26
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %22

49:                                               ; preds = %22
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %51 = call i64 @is_support_sw_smu(%struct.amdgpu_device* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %55 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  store %struct.smu_dpm_context* %56, %struct.smu_dpm_context** %5, align 8
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 2
  %59 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %5, align 8
  %60 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AMD_PP_TASK_DISPLAY_CONFIG_CHANGE, align 4
  %63 = call i32 @smu_handle_task(%struct.TYPE_16__* %58, i32 %61, i32 %62)
  br label %161

64:                                               ; preds = %49
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %147

72:                                               ; preds = %64
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %74 = call i32 @amdgpu_device_has_dc_support(%struct.amdgpu_device* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %143, label %76

76:                                               ; preds = %72
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = call i32 @mutex_lock(i32* %79)
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %82 = call i32 @amdgpu_dpm_get_active_displays(%struct.amdgpu_device* %81)
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 2
  store i32 %87, i32* %91, align 8
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %93 = call i32 @amdgpu_dpm_get_vrefresh(%struct.amdgpu_device* %92)
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %95 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  store i32 %93, i32* %97, align 8
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %99 = call i64 @amdgpu_dpm_get_vblank_time(%struct.amdgpu_device* %98)
  %100 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %101 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  store i64 %99, i64* %103, align 8
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %105 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp sgt i32 %108, 120
  br i1 %109, label %110, label %115

110:                                              ; preds = %76
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %112 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  store i64 0, i64* %114, align 8
  br label %115

115:                                              ; preds = %110, %76
  %116 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %117 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32 (i32, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_15__*)** %120, align 8
  %122 = icmp ne i32 (i32, %struct.TYPE_15__*)* %121, null
  br i1 %122, label %123, label %138

123:                                              ; preds = %115
  %124 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %125 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i32 (i32, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_15__*)** %128, align 8
  %130 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %131 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %135 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  %137 = call i32 %129(i32 %133, %struct.TYPE_15__* %136)
  br label %138

138:                                              ; preds = %123, %115
  %139 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %140 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = call i32 @mutex_unlock(i32* %141)
  br label %143

143:                                              ; preds = %138, %72
  %144 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %145 = load i32, i32* @AMD_PP_TASK_DISPLAY_CONFIG_CHANGE, align 4
  %146 = call i32 @amdgpu_dpm_dispatch_task(%struct.amdgpu_device* %144, i32 %145, i32* null)
  br label %160

147:                                              ; preds = %64
  %148 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %149 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = call i32 @mutex_lock(i32* %150)
  %152 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %153 = call i32 @amdgpu_dpm_get_active_displays(%struct.amdgpu_device* %152)
  %154 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %155 = call i32 @amdgpu_dpm_change_power_state_locked(%struct.amdgpu_device* %154)
  %156 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %157 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = call i32 @mutex_unlock(i32* %158)
  br label %160

160:                                              ; preds = %147, %143
  br label %161

161:                                              ; preds = %11, %160, %53
  ret void
}

declare dso_local i32 @amdgpu_display_bandwidth_update(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_fence_wait_empty(%struct.amdgpu_ring*) #1

declare dso_local i64 @is_support_sw_smu(%struct.amdgpu_device*) #1

declare dso_local i32 @smu_handle_task(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @amdgpu_device_has_dc_support(%struct.amdgpu_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @amdgpu_dpm_get_active_displays(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_dpm_get_vrefresh(%struct.amdgpu_device*) #1

declare dso_local i64 @amdgpu_dpm_get_vblank_time(%struct.amdgpu_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @amdgpu_dpm_dispatch_task(%struct.amdgpu_device*, i32, i32*) #1

declare dso_local i32 @amdgpu_dpm_change_power_state_locked(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
