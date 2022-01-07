; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_compute_fbc_wm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_compute_fbc_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.intel_plane_state*, i32)* @ilk_compute_fbc_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ilk_compute_fbc_wm(%struct.intel_crtc_state* %0, %struct.intel_plane_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.intel_plane_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %5, align 8
  store %struct.intel_plane_state* %1, %struct.intel_plane_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %10 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %11 = call i32 @intel_wm_plane_visible(%struct.intel_crtc_state* %9, %struct.intel_plane_state* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %32

14:                                               ; preds = %3
  %15 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %16 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %27 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i32 @drm_rect_width(i32* %28)
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @ilk_wm_fbc(i32 %25, i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %14, %13
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @intel_wm_plane_visible(%struct.intel_crtc_state*, %struct.intel_plane_state*) #1

declare dso_local i32 @ilk_wm_fbc(i32, i32, i32) #1

declare dso_local i32 @drm_rect_width(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
