; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/aspeed/extr_aspeed_gfx_crtc.c_aspeed_gfx_pipe_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/aspeed/extr_aspeed_gfx_crtc.c_aspeed_gfx_pipe_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.drm_crtc }
%struct.drm_crtc = type { i32 }
%struct.aspeed_gfx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_simple_display_pipe*)* @aspeed_gfx_pipe_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_gfx_pipe_disable(%struct.drm_simple_display_pipe* %0) #0 {
  %2 = alloca %struct.drm_simple_display_pipe*, align 8
  %3 = alloca %struct.aspeed_gfx*, align 8
  %4 = alloca %struct.drm_crtc*, align 8
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %2, align 8
  %5 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %2, align 8
  %6 = call %struct.aspeed_gfx* @drm_pipe_to_aspeed_gfx(%struct.drm_simple_display_pipe* %5)
  store %struct.aspeed_gfx* %6, %struct.aspeed_gfx** %3, align 8
  %7 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %2, align 8
  %8 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %7, i32 0, i32 0
  store %struct.drm_crtc* %8, %struct.drm_crtc** %4, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %10 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %9)
  %11 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %3, align 8
  %12 = call i32 @aspeed_gfx_disable_controller(%struct.aspeed_gfx* %11)
  ret void
}

declare dso_local %struct.aspeed_gfx* @drm_pipe_to_aspeed_gfx(%struct.drm_simple_display_pipe*) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

declare dso_local i32 @aspeed_gfx_disable_controller(%struct.aspeed_gfx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
