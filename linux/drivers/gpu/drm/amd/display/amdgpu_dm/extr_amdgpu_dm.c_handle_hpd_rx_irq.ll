; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_handle_hpd_rx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_handle_hpd_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_dm_connector = type { i32, i32, %struct.TYPE_6__, %struct.drm_connector, %struct.TYPE_4__, %struct.dc_link* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_connector = type { i64, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dc_link = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@dc_connection_none = common dso_local global i32 0, align 4
@dc_connection_mst_branch = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"KMS: Failed to detect connector\0A\00", align 1
@DETECT_REASON_HPDRX = common dso_local global i32 0, align 4
@LANE_COUNT_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @handle_hpd_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_hpd_rx_irq(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.amdgpu_dm_connector*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.dc_link*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.amdgpu_dm_connector*
  store %struct.amdgpu_dm_connector* %10, %struct.amdgpu_dm_connector** %3, align 8
  %11 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %11, i32 0, i32 3
  store %struct.drm_connector* %12, %struct.drm_connector** %4, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 1
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %5, align 8
  %16 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %16, i32 0, i32 5
  %18 = load %struct.dc_link*, %struct.dc_link** %17, align 8
  store %struct.dc_link* %18, %struct.dc_link** %6, align 8
  %19 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @dc_connection_none, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %25 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @dc_connection_mst_branch, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %31 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %30, i32 0, i32 1
  %32 = call i32 @mutex_lock(i32* %31)
  br label %33

33:                                               ; preds = %29, %1
  %34 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %35 = call i64 @dc_link_handle_hpd_rx_irq(%struct.dc_link* %34, i32* null, i32* null)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %105

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %105, label %40

40:                                               ; preds = %37
  %41 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %42 = call i32 @dc_link_detect_sink(%struct.dc_link* %41, i32* %8)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %40
  %47 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %48 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @dc_connection_none, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %52
  %57 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %58 = call i32 @emulated_link_detect(%struct.dc_link* %57)
  %59 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %60 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %65 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  br label %66

66:                                               ; preds = %63, %56
  %67 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %68 = call i32 @amdgpu_dm_update_connector_after_detect(%struct.amdgpu_dm_connector* %67)
  %69 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %70 = call i32 @drm_modeset_lock_all(%struct.drm_device* %69)
  %71 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %72 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %73 = call i32 @dm_restore_drm_connector_state(%struct.drm_device* %71, %struct.drm_connector* %72)
  %74 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %75 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %74)
  %76 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %77 = call i32 @drm_kms_helper_hotplug_event(%struct.drm_device* %76)
  br label %104

78:                                               ; preds = %52, %46
  %79 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %80 = load i32, i32* @DETECT_REASON_HPDRX, align 4
  %81 = call i64 @dc_link_detect(%struct.dc_link* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %78
  %84 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %85 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %90 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  br label %91

91:                                               ; preds = %88, %83
  %92 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %93 = call i32 @amdgpu_dm_update_connector_after_detect(%struct.amdgpu_dm_connector* %92)
  %94 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %95 = call i32 @drm_modeset_lock_all(%struct.drm_device* %94)
  %96 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %97 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %98 = call i32 @dm_restore_drm_connector_state(%struct.drm_device* %96, %struct.drm_connector* %97)
  %99 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %100 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %99)
  %101 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %102 = call i32 @drm_kms_helper_hotplug_event(%struct.drm_device* %101)
  br label %103

103:                                              ; preds = %91, %78
  br label %104

104:                                              ; preds = %103, %66
  br label %105

105:                                              ; preds = %104, %37, %33
  %106 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %107 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @LANE_COUNT_UNKNOWN, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %118, label %112

112:                                              ; preds = %105
  %113 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %114 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @dc_connection_mst_branch, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %112, %105
  %119 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %120 = call i32 @dm_handle_hpd_rx_irq(%struct.amdgpu_dm_connector* %119)
  br label %121

121:                                              ; preds = %118, %112
  %122 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %123 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @dc_connection_mst_branch, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %121
  %128 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %129 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = call i32 @drm_dp_cec_irq(i32* %130)
  %132 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %133 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %132, i32 0, i32 1
  %134 = call i32 @mutex_unlock(i32* %133)
  br label %135

135:                                              ; preds = %127, %121
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @dc_link_handle_hpd_rx_irq(%struct.dc_link*, i32*, i32*) #1

declare dso_local i32 @dc_link_detect_sink(%struct.dc_link*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @emulated_link_detect(%struct.dc_link*) #1

declare dso_local i32 @amdgpu_dm_update_connector_after_detect(%struct.amdgpu_dm_connector*) #1

declare dso_local i32 @drm_modeset_lock_all(%struct.drm_device*) #1

declare dso_local i32 @dm_restore_drm_connector_state(%struct.drm_device*, %struct.drm_connector*) #1

declare dso_local i32 @drm_modeset_unlock_all(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_hotplug_event(%struct.drm_device*) #1

declare dso_local i64 @dc_link_detect(%struct.dc_link*, i32) #1

declare dso_local i32 @dm_handle_hpd_rx_irq(%struct.amdgpu_dm_connector*) #1

declare dso_local i32 @drm_dp_cec_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
