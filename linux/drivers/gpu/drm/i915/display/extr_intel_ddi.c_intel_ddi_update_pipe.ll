; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_update_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_update_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_connector_state = type { i64, i64, i32 }
%struct.intel_connector = type { %struct.intel_hdcp }
%struct.intel_hdcp = type { i64, i32, i32, i64 }

@DRM_MODE_CONTENT_PROTECTION_UNDESIRED = common dso_local global i64 0, align 8
@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@DRM_MODE_CONTENT_PROTECTION_DESIRED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_ddi_update_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ddi_update_pipe(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.intel_connector*, align 8
  %8 = alloca %struct.intel_hdcp*, align 8
  %9 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %10 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %11 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.intel_connector* @to_intel_connector(i32 %12)
  store %struct.intel_connector* %13, %struct.intel_connector** %7, align 8
  %14 = load %struct.intel_connector*, %struct.intel_connector** %7, align 8
  %15 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %14, i32 0, i32 0
  store %struct.intel_hdcp* %15, %struct.intel_hdcp** %8, align 8
  %16 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %17 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.intel_hdcp*, %struct.intel_hdcp** %8, align 8
  %20 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %25 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DRM_MODE_CONTENT_PROTECTION_UNDESIRED, align 8
  %28 = icmp ne i64 %26, %27
  br label %29

29:                                               ; preds = %23, %3
  %30 = phi i1 [ false, %3 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %33 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %34 = call i32 @intel_crtc_has_type(%struct.intel_crtc_state* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %38 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %39 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %40 = call i32 @intel_ddi_update_pipe_dp(%struct.intel_encoder* %37, %struct.intel_crtc_state* %38, %struct.drm_connector_state* %39)
  br label %41

41:                                               ; preds = %36, %29
  %42 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %43 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DRM_MODE_CONTENT_PROTECTION_UNDESIRED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47, %41
  %51 = load %struct.intel_connector*, %struct.intel_connector** %7, align 8
  %52 = call i32 @intel_hdcp_disable(%struct.intel_connector* %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load %struct.intel_hdcp*, %struct.intel_hdcp** %8, align 8
  %58 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %57, i32 0, i32 1
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load i64, i64* @DRM_MODE_CONTENT_PROTECTION_DESIRED, align 8
  %61 = load %struct.intel_hdcp*, %struct.intel_hdcp** %8, align 8
  %62 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %61, i32 0, i32 3
  store i64 %60, i64* %62, align 8
  %63 = load %struct.intel_hdcp*, %struct.intel_hdcp** %8, align 8
  %64 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %63, i32 0, i32 2
  %65 = call i32 @schedule_work(i32* %64)
  %66 = load %struct.intel_hdcp*, %struct.intel_hdcp** %8, align 8
  %67 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %66, i32 0, i32 1
  %68 = call i32 @mutex_unlock(i32* %67)
  br label %69

69:                                               ; preds = %56, %53
  %70 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %71 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @DRM_MODE_CONTENT_PROTECTION_DESIRED, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75, %69
  %79 = load %struct.intel_connector*, %struct.intel_connector** %7, align 8
  %80 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %81 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @intel_hdcp_enable(%struct.intel_connector* %79, i32 %83)
  br label %85

85:                                               ; preds = %78, %75
  ret void
}

declare dso_local %struct.intel_connector* @to_intel_connector(i32) #1

declare dso_local i32 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @intel_ddi_update_pipe_dp(%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*) #1

declare dso_local i32 @intel_hdcp_disable(%struct.intel_connector*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @intel_hdcp_enable(%struct.intel_connector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
