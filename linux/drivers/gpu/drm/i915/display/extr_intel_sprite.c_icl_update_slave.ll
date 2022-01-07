; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_icl_update_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_icl_update_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { i32 }

@PLANE_CTL_YUV420_Y_PLANE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_plane*, %struct.intel_crtc_state*, %struct.intel_plane_state*)* @icl_update_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_update_slave(%struct.intel_plane* %0, %struct.intel_crtc_state* %1, %struct.intel_plane_state* %2) #0 {
  %4 = alloca %struct.intel_plane*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.intel_plane_state*, align 8
  store %struct.intel_plane* %0, %struct.intel_plane** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.intel_plane_state* %2, %struct.intel_plane_state** %6, align 8
  %7 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %8 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %9 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %10 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %11 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PLANE_CTL_YUV420_Y_PLANE, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @skl_program_plane(%struct.intel_plane* %7, %struct.intel_crtc_state* %8, %struct.intel_plane_state* %9, i32 0, i32 1, i32 %14)
  ret void
}

declare dso_local i32 @skl_program_plane(%struct.intel_plane*, %struct.intel_crtc_state*, %struct.intel_plane_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
