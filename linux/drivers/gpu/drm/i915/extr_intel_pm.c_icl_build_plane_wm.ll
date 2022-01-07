; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_icl_build_plane_wm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_icl_build_plane_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { %struct.TYPE_6__*, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.drm_framebuffer*, i32 }
%struct.drm_framebuffer = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.intel_plane_state*)* @icl_build_plane_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_build_plane_wm(%struct.intel_crtc_state* %0, %struct.intel_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_plane_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %4, align 8
  store %struct.intel_plane_state* %1, %struct.intel_plane_state** %5, align 8
  %10 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %11 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.TYPE_8__* @to_intel_plane(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %18 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %96

22:                                               ; preds = %2
  %23 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %24 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %79

27:                                               ; preds = %22
  %28 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %29 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %30, align 8
  store %struct.drm_framebuffer* %31, %struct.drm_framebuffer** %8, align 8
  %32 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %33 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %38 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %39 = call i64 @intel_wm_plane_visible(%struct.intel_crtc_state* %37, %struct.intel_plane_state* %38)
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @WARN_ON(i32 %42)
  %44 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %45 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %27
  %51 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %52 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 1
  br label %57

57:                                               ; preds = %50, %27
  %58 = phi i1 [ true, %27 ], [ %56, %50 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @WARN_ON(i32 %59)
  %61 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %62 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @skl_build_plane_wm_single(%struct.intel_crtc_state* %61, %struct.intel_plane_state* %62, i32 %63, i32 0)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %96

69:                                               ; preds = %57
  %70 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %71 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @skl_build_plane_wm_single(%struct.intel_crtc_state* %70, %struct.intel_plane_state* %71, i32 %72, i32 1)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %96

78:                                               ; preds = %69
  br label %95

79:                                               ; preds = %22
  %80 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %81 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %82 = call i64 @intel_wm_plane_visible(%struct.intel_crtc_state* %80, %struct.intel_plane_state* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %79
  %85 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %86 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @skl_build_plane_wm_single(%struct.intel_crtc_state* %85, %struct.intel_plane_state* %86, i32 %87, i32 0)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %3, align 4
  br label %96

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93, %79
  br label %95

95:                                               ; preds = %94, %78
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %91, %76, %67, %21
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.TYPE_8__* @to_intel_plane(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @intel_wm_plane_visible(%struct.intel_crtc_state*, %struct.intel_plane_state*) #1

declare dso_local i32 @skl_build_plane_wm_single(%struct.intel_crtc_state*, %struct.intel_plane_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
