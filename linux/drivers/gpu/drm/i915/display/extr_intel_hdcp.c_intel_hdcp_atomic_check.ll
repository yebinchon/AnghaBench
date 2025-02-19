; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_connector_state = type { i64, i64, i32, i32 }
%struct.drm_crtc_state = type { i32 }

@DRM_MODE_CONTENT_PROTECTION_ENABLED = common dso_local global i64 0, align 8
@DRM_MODE_CONTENT_PROTECTION_DESIRED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_hdcp_atomic_check(%struct.drm_connector* %0, %struct.drm_connector_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_connector_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.drm_crtc_state*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %10 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %11 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %14 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %17 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @DRM_MODE_CONTENT_PROTECTION_ENABLED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i64, i64* @DRM_MODE_CONTENT_PROTECTION_DESIRED, align 8
  %26 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %27 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %24, %20
  br label %61

29:                                               ; preds = %3
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @DRM_MODE_CONTENT_PROTECTION_DESIRED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @DRM_MODE_CONTENT_PROTECTION_ENABLED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37, %29
  %42 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %43 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %46 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %61

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %37, %33
  %52 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %53 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %56 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(i32 %54, i32 %57)
  store %struct.drm_crtc_state* %58, %struct.drm_crtc_state** %9, align 8
  %59 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %9, align 8
  %60 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %51, %49, %28
  ret void
}

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
