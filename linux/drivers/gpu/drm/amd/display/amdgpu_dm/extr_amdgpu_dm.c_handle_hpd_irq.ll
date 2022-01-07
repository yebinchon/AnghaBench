; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_handle_hpd_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_handle_hpd_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_dm_connector = type { i32, i32, %struct.drm_connector, i32 }
%struct.drm_connector = type { i64, %struct.drm_device* }
%struct.drm_device = type { i32 }

@dc_connection_none = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"KMS: Failed to detect connector\0A\00", align 1
@DRM_FORCE_UNSPECIFIED = common dso_local global i64 0, align 8
@DETECT_REASON_HPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @handle_hpd_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_hpd_irq(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.amdgpu_dm_connector*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_dm_connector*
  store %struct.amdgpu_dm_connector* %8, %struct.amdgpu_dm_connector** %3, align 8
  %9 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %9, i32 0, i32 2
  store %struct.drm_connector* %10, %struct.drm_connector** %4, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %12 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %11, i32 0, i32 1
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %5, align 8
  %14 = load i32, i32* @dc_connection_none, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %16 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %19 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %24 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %27 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dc_link_detect_sink(i32 %28, i32* %6)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %25
  %34 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %35 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @dc_connection_none, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %39
  %44 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %45 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @emulated_link_detect(i32 %46)
  %48 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %49 = call i32 @drm_modeset_lock_all(%struct.drm_device* %48)
  %50 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %51 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %52 = call i32 @dm_restore_drm_connector_state(%struct.drm_device* %50, %struct.drm_connector* %51)
  %53 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %54 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %53)
  %55 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %56 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DRM_FORCE_UNSPECIFIED, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %43
  %62 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %63 = call i32 @drm_kms_helper_hotplug_event(%struct.drm_device* %62)
  br label %64

64:                                               ; preds = %61, %43
  br label %93

65:                                               ; preds = %39, %33
  %66 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %67 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @DETECT_REASON_HPD, align 4
  %70 = call i64 @dc_link_detect(i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %65
  %73 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %74 = call i32 @amdgpu_dm_update_connector_after_detect(%struct.amdgpu_dm_connector* %73)
  %75 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %76 = call i32 @drm_modeset_lock_all(%struct.drm_device* %75)
  %77 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %78 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %79 = call i32 @dm_restore_drm_connector_state(%struct.drm_device* %77, %struct.drm_connector* %78)
  %80 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %81 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %80)
  %82 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %83 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @DRM_FORCE_UNSPECIFIED, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %72
  %89 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %90 = call i32 @drm_kms_helper_hotplug_event(%struct.drm_device* %89)
  br label %91

91:                                               ; preds = %88, %72
  br label %92

92:                                               ; preds = %91, %65
  br label %93

93:                                               ; preds = %92, %64
  %94 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %95 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %94, i32 0, i32 1
  %96 = call i32 @mutex_unlock(i32* %95)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dc_link_detect_sink(i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @emulated_link_detect(i32) #1

declare dso_local i32 @drm_modeset_lock_all(%struct.drm_device*) #1

declare dso_local i32 @dm_restore_drm_connector_state(%struct.drm_device*, %struct.drm_connector*) #1

declare dso_local i32 @drm_modeset_unlock_all(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_hotplug_event(%struct.drm_device*) #1

declare dso_local i64 @dc_link_detect(i32, i32) #1

declare dso_local i32 @amdgpu_dm_update_connector_after_detect(%struct.amdgpu_dm_connector*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
