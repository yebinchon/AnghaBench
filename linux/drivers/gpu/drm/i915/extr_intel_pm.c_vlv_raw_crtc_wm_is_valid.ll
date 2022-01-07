; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_vlv_raw_crtc_wm_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_vlv_raw_crtc_wm_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }

@PLANE_PRIMARY = common dso_local global i32 0, align 4
@PLANE_SPRITE0 = common dso_local global i32 0, align 4
@PLANE_SPRITE1 = common dso_local global i32 0, align 4
@PLANE_CURSOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, i32)* @vlv_raw_crtc_wm_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlv_raw_crtc_wm_is_valid(%struct.intel_crtc_state* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %6 = load i32, i32* @PLANE_PRIMARY, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @vlv_raw_plane_wm_is_valid(%struct.intel_crtc_state* %5, i32 %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %12 = load i32, i32* @PLANE_SPRITE0, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @vlv_raw_plane_wm_is_valid(%struct.intel_crtc_state* %11, i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %18 = load i32, i32* @PLANE_SPRITE1, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @vlv_raw_plane_wm_is_valid(%struct.intel_crtc_state* %17, i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %24 = load i32, i32* @PLANE_CURSOR, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @vlv_raw_plane_wm_is_valid(%struct.intel_crtc_state* %23, i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %22, %16, %10, %2
  %29 = phi i1 [ false, %16 ], [ false, %10 ], [ false, %2 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

declare dso_local i64 @vlv_raw_plane_wm_is_valid(%struct.intel_crtc_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
