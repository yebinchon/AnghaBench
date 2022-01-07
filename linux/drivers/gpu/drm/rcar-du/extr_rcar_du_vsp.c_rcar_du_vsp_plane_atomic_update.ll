; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_vsp.c_rcar_du_vsp_plane_atomic_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_vsp.c_rcar_du_vsp_plane_atomic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.drm_plane_state = type { i32 }
%struct.rcar_du_vsp_plane = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.rcar_du_crtc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @rcar_du_vsp_plane_atomic_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_du_vsp_plane_atomic_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.rcar_du_vsp_plane*, align 8
  %6 = alloca %struct.rcar_du_crtc*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %7 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %8 = call %struct.rcar_du_vsp_plane* @to_rcar_vsp_plane(%struct.drm_plane* %7)
  store %struct.rcar_du_vsp_plane* %8, %struct.rcar_du_vsp_plane** %5, align 8
  %9 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %10 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.rcar_du_crtc* @to_rcar_crtc(i32 %11)
  store %struct.rcar_du_crtc* %12, %struct.rcar_du_crtc** %6, align 8
  %13 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %14 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.rcar_du_vsp_plane*, %struct.rcar_du_vsp_plane** %5, align 8
  %21 = call i32 @rcar_du_vsp_plane_setup(%struct.rcar_du_vsp_plane* %20)
  br label %35

22:                                               ; preds = %2
  %23 = load %struct.rcar_du_vsp_plane*, %struct.rcar_du_vsp_plane** %5, align 8
  %24 = getelementptr inbounds %struct.rcar_du_vsp_plane, %struct.rcar_du_vsp_plane* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %6, align 8
  %29 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rcar_du_vsp_plane*, %struct.rcar_du_vsp_plane** %5, align 8
  %32 = getelementptr inbounds %struct.rcar_du_vsp_plane, %struct.rcar_du_vsp_plane* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @vsp1_du_atomic_update(i32 %27, i32 %30, i32 %33, i32* null)
  br label %35

35:                                               ; preds = %22, %19
  ret void
}

declare dso_local %struct.rcar_du_vsp_plane* @to_rcar_vsp_plane(%struct.drm_plane*) #1

declare dso_local %struct.rcar_du_crtc* @to_rcar_crtc(i32) #1

declare dso_local i32 @rcar_du_vsp_plane_setup(%struct.rcar_du_vsp_plane*) #1

declare dso_local i32 @vsp1_du_atomic_update(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
