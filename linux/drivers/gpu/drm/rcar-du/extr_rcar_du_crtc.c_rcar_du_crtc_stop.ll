; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_crtc = type { i32, i32, %struct.drm_crtc }
%struct.drm_crtc = type { i32 }

@RCAR_DU_FEATURE_VSP1_SOURCE = common dso_local global i32 0, align 4
@RCAR_DU_FEATURE_TVM_SYNC = common dso_local global i32 0, align 4
@DSYSR_TVM_MASK = common dso_local global i32 0, align 4
@DSYSR_TVM_SWITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_du_crtc*)* @rcar_du_crtc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_du_crtc_stop(%struct.rcar_du_crtc* %0) #0 {
  %2 = alloca %struct.rcar_du_crtc*, align 8
  %3 = alloca %struct.drm_crtc*, align 8
  store %struct.rcar_du_crtc* %0, %struct.rcar_du_crtc** %2, align 8
  %4 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %5 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %4, i32 0, i32 2
  store %struct.drm_crtc* %5, %struct.drm_crtc** %3, align 8
  %6 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %7 = call i32 @rcar_du_crtc_disable_planes(%struct.rcar_du_crtc* %6)
  %8 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %9 = call i32 @rcar_du_crtc_wait_page_flip(%struct.rcar_du_crtc* %8)
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %11 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %10)
  %12 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %13 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RCAR_DU_FEATURE_VSP1_SOURCE, align 4
  %16 = call i64 @rcar_du_has(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %20 = call i32 @rcar_du_vsp_disable(%struct.rcar_du_crtc* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %23 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @RCAR_DU_FEATURE_TVM_SYNC, align 4
  %26 = call i64 @rcar_du_has(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %30 = load i32, i32* @DSYSR_TVM_MASK, align 4
  %31 = load i32, i32* @DSYSR_TVM_SWITCH, align 4
  %32 = call i32 @rcar_du_crtc_dsysr_clr_set(%struct.rcar_du_crtc* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %21
  %34 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %35 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rcar_du_group_start_stop(i32 %36, i32 0)
  ret void
}

declare dso_local i32 @rcar_du_crtc_disable_planes(%struct.rcar_du_crtc*) #1

declare dso_local i32 @rcar_du_crtc_wait_page_flip(%struct.rcar_du_crtc*) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

declare dso_local i64 @rcar_du_has(i32, i32) #1

declare dso_local i32 @rcar_du_vsp_disable(%struct.rcar_du_crtc*) #1

declare dso_local i32 @rcar_du_crtc_dsysr_clr_set(%struct.rcar_du_crtc*, i32, i32) #1

declare dso_local i32 @rcar_du_group_start_stop(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
