; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_vsp.c_rcar_du_vsp_plane_cleanup_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_vsp.c_rcar_du_vsp_plane_cleanup_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32, i32 }
%struct.rcar_du_vsp_plane_state = type { i32 }
%struct.rcar_du_vsp = type { i32 }
%struct.TYPE_2__ = type { %struct.rcar_du_vsp* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @rcar_du_vsp_plane_cleanup_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_du_vsp_plane_cleanup_fb(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.rcar_du_vsp_plane_state*, align 8
  %6 = alloca %struct.rcar_du_vsp*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %7 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %8 = call %struct.rcar_du_vsp_plane_state* @to_rcar_vsp_plane_state(%struct.drm_plane_state* %7)
  store %struct.rcar_du_vsp_plane_state* %8, %struct.rcar_du_vsp_plane_state** %5, align 8
  %9 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %10 = call %struct.TYPE_2__* @to_rcar_vsp_plane(%struct.drm_plane* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.rcar_du_vsp*, %struct.rcar_du_vsp** %11, align 8
  store %struct.rcar_du_vsp* %12, %struct.rcar_du_vsp** %6, align 8
  %13 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %14 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %27

18:                                               ; preds = %2
  %19 = load %struct.rcar_du_vsp*, %struct.rcar_du_vsp** %6, align 8
  %20 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %21 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rcar_du_vsp_plane_state*, %struct.rcar_du_vsp_plane_state** %5, align 8
  %24 = getelementptr inbounds %struct.rcar_du_vsp_plane_state, %struct.rcar_du_vsp_plane_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @rcar_du_vsp_unmap_fb(%struct.rcar_du_vsp* %19, i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.rcar_du_vsp_plane_state* @to_rcar_vsp_plane_state(%struct.drm_plane_state*) #1

declare dso_local %struct.TYPE_2__* @to_rcar_vsp_plane(%struct.drm_plane*) #1

declare dso_local i32 @rcar_du_vsp_unmap_fb(%struct.rcar_du_vsp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
