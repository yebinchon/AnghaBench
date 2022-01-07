; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_vsp.c_rcar_du_vsp_plane_prepare_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_vsp.c_rcar_du_vsp_plane_prepare_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32, i32 }
%struct.rcar_du_vsp_plane_state = type { i32 }
%struct.rcar_du_vsp = type { i32 }
%struct.TYPE_2__ = type { %struct.rcar_du_vsp* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @rcar_du_vsp_plane_prepare_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_du_vsp_plane_prepare_fb(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.rcar_du_vsp_plane_state*, align 8
  %7 = alloca %struct.rcar_du_vsp*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %9 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %10 = call %struct.rcar_du_vsp_plane_state* @to_rcar_vsp_plane_state(%struct.drm_plane_state* %9)
  store %struct.rcar_du_vsp_plane_state* %10, %struct.rcar_du_vsp_plane_state** %6, align 8
  %11 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %12 = call %struct.TYPE_2__* @to_rcar_vsp_plane(%struct.drm_plane* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.rcar_du_vsp*, %struct.rcar_du_vsp** %13, align 8
  store %struct.rcar_du_vsp* %14, %struct.rcar_du_vsp** %7, align 8
  %15 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %16 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

20:                                               ; preds = %2
  %21 = load %struct.rcar_du_vsp*, %struct.rcar_du_vsp** %7, align 8
  %22 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %23 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rcar_du_vsp_plane_state*, %struct.rcar_du_vsp_plane_state** %6, align 8
  %26 = getelementptr inbounds %struct.rcar_du_vsp_plane_state, %struct.rcar_du_vsp_plane_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rcar_du_vsp_map_fb(%struct.rcar_du_vsp* %21, i32 %24, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %37

33:                                               ; preds = %20
  %34 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %35 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %36 = call i32 @drm_gem_fb_prepare_fb(%struct.drm_plane* %34, %struct.drm_plane_state* %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %31, %19
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.rcar_du_vsp_plane_state* @to_rcar_vsp_plane_state(%struct.drm_plane_state*) #1

declare dso_local %struct.TYPE_2__* @to_rcar_vsp_plane(%struct.drm_plane*) #1

declare dso_local i32 @rcar_du_vsp_map_fb(%struct.rcar_du_vsp*, i32, i32) #1

declare dso_local i32 @drm_gem_fb_prepare_fb(%struct.drm_plane*, %struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
