; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_crtc = type { i32, i32, i32, i32 }

@DOOR = common dso_local global i32 0, align 4
@BPOR = common dso_local global i32 0, align 4
@DS2PR = common dso_local global i32 0, align 4
@DS1PR = common dso_local global i32 0, align 4
@RCAR_DU_FEATURE_VSP1_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_du_crtc*)* @rcar_du_crtc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_du_crtc_setup(%struct.rcar_du_crtc* %0) #0 {
  %2 = alloca %struct.rcar_du_crtc*, align 8
  store %struct.rcar_du_crtc* %0, %struct.rcar_du_crtc** %2, align 8
  %3 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %4 = load i32, i32* @DOOR, align 4
  %5 = call i32 @DOOR_RGB(i32 0, i32 0, i32 0)
  %6 = call i32 @rcar_du_crtc_write(%struct.rcar_du_crtc* %3, i32 %4, i32 %5)
  %7 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %8 = load i32, i32* @BPOR, align 4
  %9 = call i32 @BPOR_RGB(i32 0, i32 0, i32 0)
  %10 = call i32 @rcar_du_crtc_write(%struct.rcar_du_crtc* %7, i32 %8, i32 %9)
  %11 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %12 = call i32 @rcar_du_crtc_set_display_timing(%struct.rcar_du_crtc* %11)
  %13 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %14 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @rcar_du_group_set_routing(i32 %15)
  %17 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %18 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %21 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = srem i32 %22, 2
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @DS2PR, align 4
  br label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @DS1PR, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = call i32 @rcar_du_group_write(i32 %19, i32 %30, i32 0)
  %32 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %33 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @RCAR_DU_FEATURE_VSP1_SOURCE, align 4
  %36 = call i64 @rcar_du_has(i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %40 = call i32 @rcar_du_vsp_enable(%struct.rcar_du_crtc* %39)
  br label %41

41:                                               ; preds = %38, %29
  %42 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %43 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %42, i32 0, i32 1
  %44 = call i32 @drm_crtc_vblank_on(i32* %43)
  ret void
}

declare dso_local i32 @rcar_du_crtc_write(%struct.rcar_du_crtc*, i32, i32) #1

declare dso_local i32 @DOOR_RGB(i32, i32, i32) #1

declare dso_local i32 @BPOR_RGB(i32, i32, i32) #1

declare dso_local i32 @rcar_du_crtc_set_display_timing(%struct.rcar_du_crtc*) #1

declare dso_local i32 @rcar_du_group_set_routing(i32) #1

declare dso_local i32 @rcar_du_group_write(i32, i32, i32) #1

declare dso_local i64 @rcar_du_has(i32, i32) #1

declare dso_local i32 @rcar_du_vsp_enable(%struct.rcar_du_crtc*) #1

declare dso_local i32 @drm_crtc_vblank_on(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
