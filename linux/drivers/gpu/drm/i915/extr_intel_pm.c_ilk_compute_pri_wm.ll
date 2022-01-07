; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_compute_pri_wm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_compute_pri_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.intel_plane_state = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }

@U32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.intel_plane_state*, i32, i32)* @ilk_compute_pri_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ilk_compute_pri_wm(%struct.intel_crtc_state* %0, %struct.intel_plane_state* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca %struct.intel_plane_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %6, align 8
  store %struct.intel_plane_state* %1, %struct.intel_plane_state** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @U32_MAX, align 4
  store i32 %16, i32* %5, align 4
  br label %63

17:                                               ; preds = %4
  %18 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %19 = load %struct.intel_plane_state*, %struct.intel_plane_state** %7, align 8
  %20 = call i32 @intel_wm_plane_visible(%struct.intel_crtc_state* %18, %struct.intel_plane_state* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %63

23:                                               ; preds = %17
  %24 = load %struct.intel_plane_state*, %struct.intel_plane_state** %7, align 8
  %25 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %35 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @ilk_wm_method1(i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %23
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %5, align 4
  br label %63

44:                                               ; preds = %23
  %45 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %46 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %49 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.intel_plane_state*, %struct.intel_plane_state** %7, align 8
  %54 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = call i32 @drm_rect_width(i32* %55)
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @ilk_wm_method2(i32 %47, i32 %52, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @min(i32 %60, i32 %61)
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %44, %42, %22, %15
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @intel_wm_plane_visible(%struct.intel_crtc_state*, %struct.intel_plane_state*) #1

declare dso_local i32 @ilk_wm_method1(i32, i32, i32) #1

declare dso_local i32 @ilk_wm_method2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @drm_rect_width(i32*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
