; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_post_plane_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_post_plane_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i64, %struct.drm_atomic_state*, i32 }
%struct.drm_atomic_state = type { i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_device*, %struct.drm_plane* }
%struct.drm_device = type { i32 }
%struct.drm_plane = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.drm_plane_state = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @intel_post_plane_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_post_plane_update(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.drm_atomic_state*, align 8
  %7 = alloca %struct.intel_crtc_state*, align 8
  %8 = alloca %struct.drm_plane*, align 8
  %9 = alloca %struct.drm_plane_state*, align 8
  %10 = alloca %struct.drm_plane_state*, align 8
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %11 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %12 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.intel_crtc* @to_intel_crtc(i32 %14)
  store %struct.intel_crtc* %15, %struct.intel_crtc** %3, align 8
  %16 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %17 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  store %struct.drm_device* %19, %struct.drm_device** %4, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %20)
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %5, align 8
  %22 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %23 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %24, align 8
  store %struct.drm_atomic_state* %25, %struct.drm_atomic_state** %6, align 8
  %26 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %27 = call i32 @to_intel_atomic_state(%struct.drm_atomic_state* %26)
  %28 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %29 = call %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(i32 %27, %struct.intel_crtc* %28)
  store %struct.intel_crtc_state* %29, %struct.intel_crtc_state** %7, align 8
  %30 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %31 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.drm_plane*, %struct.drm_plane** %32, align 8
  store %struct.drm_plane* %33, %struct.drm_plane** %8, align 8
  %34 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %35 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %36 = call %struct.drm_plane_state* @drm_atomic_get_old_plane_state(%struct.drm_atomic_state* %34, %struct.drm_plane* %35)
  store %struct.drm_plane_state* %36, %struct.drm_plane_state** %9, align 8
  %37 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %38 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.drm_device*, %struct.drm_device** %39, align 8
  %41 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %40)
  %42 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %43 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @intel_frontbuffer_flip(%struct.drm_i915_private* %41, i32 %44)
  %46 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %47 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %1
  %51 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %52 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %58 = call i32 @intel_update_watermarks(%struct.intel_crtc* %57)
  br label %59

59:                                               ; preds = %56, %50, %1
  %60 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %61 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %62 = call i64 @hsw_post_update_enable_ips(%struct.intel_crtc_state* %60, %struct.intel_crtc_state* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %66 = call i32 @hsw_enable_ips(%struct.intel_crtc_state* %65)
  br label %67

67:                                               ; preds = %64, %59
  %68 = load %struct.drm_plane_state*, %struct.drm_plane_state** %9, align 8
  %69 = icmp ne %struct.drm_plane_state* %68, null
  br i1 %69, label %70, label %95

70:                                               ; preds = %67
  %71 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %72 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %73 = call %struct.drm_plane_state* @drm_atomic_get_new_plane_state(%struct.drm_atomic_state* %71, %struct.drm_plane* %72)
  store %struct.drm_plane_state* %73, %struct.drm_plane_state** %10, align 8
  %74 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %75 = call i32 @intel_fbc_post_update(%struct.intel_crtc* %74)
  %76 = load %struct.drm_plane_state*, %struct.drm_plane_state** %10, align 8
  %77 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %70
  %81 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %82 = call i64 @needs_modeset(%struct.intel_crtc_state* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %80
  %85 = load %struct.drm_plane_state*, %struct.drm_plane_state** %9, align 8
  %86 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %84, %80
  %90 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %91 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %90, i32 0, i32 1
  %92 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %93 = call i32 @intel_post_enable_primary(%struct.TYPE_4__* %91, %struct.intel_crtc_state* %92)
  br label %94

94:                                               ; preds = %89, %84, %70
  br label %95

95:                                               ; preds = %94, %67
  %96 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %97 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %98 = call i64 @needs_nv12_wa(%struct.drm_i915_private* %96, %struct.intel_crtc_state* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %95
  %101 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %102 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %103 = call i64 @needs_nv12_wa(%struct.drm_i915_private* %101, %struct.intel_crtc_state* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %100
  %106 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %107 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %108 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @skl_wa_827(%struct.drm_i915_private* %106, i32 %109, i32 0)
  br label %111

111:                                              ; preds = %105, %100, %95
  %112 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %113 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %114 = call i64 @needs_scalerclk_wa(%struct.drm_i915_private* %112, %struct.intel_crtc_state* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %111
  %117 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %118 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %119 = call i64 @needs_scalerclk_wa(%struct.drm_i915_private* %117, %struct.intel_crtc_state* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %116
  %122 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %123 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %124 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @icl_wa_scalerclkgating(%struct.drm_i915_private* %122, i32 %125, i32 0)
  br label %127

127:                                              ; preds = %121, %116, %111
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(i32, %struct.intel_crtc*) #1

declare dso_local i32 @to_intel_atomic_state(%struct.drm_atomic_state*) #1

declare dso_local %struct.drm_plane_state* @drm_atomic_get_old_plane_state(%struct.drm_atomic_state*, %struct.drm_plane*) #1

declare dso_local i32 @intel_frontbuffer_flip(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_update_watermarks(%struct.intel_crtc*) #1

declare dso_local i64 @hsw_post_update_enable_ips(%struct.intel_crtc_state*, %struct.intel_crtc_state*) #1

declare dso_local i32 @hsw_enable_ips(%struct.intel_crtc_state*) #1

declare dso_local %struct.drm_plane_state* @drm_atomic_get_new_plane_state(%struct.drm_atomic_state*, %struct.drm_plane*) #1

declare dso_local i32 @intel_fbc_post_update(%struct.intel_crtc*) #1

declare dso_local i64 @needs_modeset(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_post_enable_primary(%struct.TYPE_4__*, %struct.intel_crtc_state*) #1

declare dso_local i64 @needs_nv12_wa(%struct.drm_i915_private*, %struct.intel_crtc_state*) #1

declare dso_local i32 @skl_wa_827(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i64 @needs_scalerclk_wa(%struct.drm_i915_private*, %struct.intel_crtc_state*) #1

declare dso_local i32 @icl_wa_scalerclkgating(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
