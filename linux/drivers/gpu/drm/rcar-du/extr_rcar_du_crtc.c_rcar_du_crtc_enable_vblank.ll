; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_enable_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_enable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.rcar_du_crtc = type { i32 }

@DSRCR = common dso_local global i32 0, align 4
@DSRCR_VBCL = common dso_local global i32 0, align 4
@DIER = common dso_local global i32 0, align 4
@DIER_VBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*)* @rcar_du_crtc_enable_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_du_crtc_enable_vblank(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.rcar_du_crtc*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %4 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %5 = call %struct.rcar_du_crtc* @to_rcar_crtc(%struct.drm_crtc* %4)
  store %struct.rcar_du_crtc* %5, %struct.rcar_du_crtc** %3, align 8
  %6 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %3, align 8
  %7 = load i32, i32* @DSRCR, align 4
  %8 = load i32, i32* @DSRCR_VBCL, align 4
  %9 = call i32 @rcar_du_crtc_write(%struct.rcar_du_crtc* %6, i32 %7, i32 %8)
  %10 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %3, align 8
  %11 = load i32, i32* @DIER, align 4
  %12 = load i32, i32* @DIER_VBE, align 4
  %13 = call i32 @rcar_du_crtc_set(%struct.rcar_du_crtc* %10, i32 %11, i32 %12)
  %14 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %3, align 8
  %15 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  ret i32 0
}

declare dso_local %struct.rcar_du_crtc* @to_rcar_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @rcar_du_crtc_write(%struct.rcar_du_crtc*, i32, i32) #1

declare dso_local i32 @rcar_du_crtc_set(%struct.rcar_du_crtc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
