; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_plane.c_rcar_du_plane_setup_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_plane.c_rcar_du_plane_setup_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_group = type { %struct.rcar_du_device* }
%struct.rcar_du_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.rcar_du_plane_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_rect }
%struct.drm_rect = type { i32, i32 }

@PnDSXR = common dso_local global i32 0, align 4
@PnDSYR = common dso_local global i32 0, align 4
@PnDPXR = common dso_local global i32 0, align 4
@PnDPYR = common dso_local global i32 0, align 4
@PnWASPR = common dso_local global i32 0, align 4
@PnWAMWR = common dso_local global i32 0, align 4
@PnBTR = common dso_local global i32 0, align 4
@PnMLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_du_group*, i32, %struct.rcar_du_plane_state*)* @rcar_du_plane_setup_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_du_plane_setup_format(%struct.rcar_du_group* %0, i32 %1, %struct.rcar_du_plane_state* %2) #0 {
  %4 = alloca %struct.rcar_du_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rcar_du_plane_state*, align 8
  %7 = alloca %struct.rcar_du_device*, align 8
  %8 = alloca %struct.drm_rect*, align 8
  store %struct.rcar_du_group* %0, %struct.rcar_du_group** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rcar_du_plane_state* %2, %struct.rcar_du_plane_state** %6, align 8
  %9 = load %struct.rcar_du_group*, %struct.rcar_du_group** %4, align 8
  %10 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %9, i32 0, i32 0
  %11 = load %struct.rcar_du_device*, %struct.rcar_du_device** %10, align 8
  store %struct.rcar_du_device* %11, %struct.rcar_du_device** %7, align 8
  %12 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %13 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.drm_rect* %14, %struct.drm_rect** %8, align 8
  %15 = load %struct.rcar_du_device*, %struct.rcar_du_device** %7, align 8
  %16 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.rcar_du_group*, %struct.rcar_du_group** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %25 = call i32 @rcar_du_plane_setup_format_gen2(%struct.rcar_du_group* %22, i32 %23, %struct.rcar_du_plane_state* %24)
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.rcar_du_group*, %struct.rcar_du_group** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %30 = call i32 @rcar_du_plane_setup_format_gen3(%struct.rcar_du_group* %27, i32 %28, %struct.rcar_du_plane_state* %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.rcar_du_group*, %struct.rcar_du_group** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @PnDSXR, align 4
  %35 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %36 = call i32 @drm_rect_width(%struct.drm_rect* %35)
  %37 = call i32 @rcar_du_plane_write(%struct.rcar_du_group* %32, i32 %33, i32 %34, i32 %36)
  %38 = load %struct.rcar_du_group*, %struct.rcar_du_group** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @PnDSYR, align 4
  %41 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %42 = call i32 @drm_rect_height(%struct.drm_rect* %41)
  %43 = call i32 @rcar_du_plane_write(%struct.rcar_du_group* %38, i32 %39, i32 %40, i32 %42)
  %44 = load %struct.rcar_du_group*, %struct.rcar_du_group** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @PnDPXR, align 4
  %47 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %48 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @rcar_du_plane_write(%struct.rcar_du_group* %44, i32 %45, i32 %46, i32 %49)
  %51 = load %struct.rcar_du_group*, %struct.rcar_du_group** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @PnDPYR, align 4
  %54 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %55 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @rcar_du_plane_write(%struct.rcar_du_group* %51, i32 %52, i32 %53, i32 %56)
  %58 = load %struct.rcar_du_device*, %struct.rcar_du_device** %7, align 8
  %59 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 3
  br i1 %63, label %64, label %81

64:                                               ; preds = %31
  %65 = load %struct.rcar_du_group*, %struct.rcar_du_group** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @PnWASPR, align 4
  %68 = call i32 @rcar_du_plane_write(%struct.rcar_du_group* %65, i32 %66, i32 %67, i32 0)
  %69 = load %struct.rcar_du_group*, %struct.rcar_du_group** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @PnWAMWR, align 4
  %72 = call i32 @rcar_du_plane_write(%struct.rcar_du_group* %69, i32 %70, i32 %71, i32 4095)
  %73 = load %struct.rcar_du_group*, %struct.rcar_du_group** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @PnBTR, align 4
  %76 = call i32 @rcar_du_plane_write(%struct.rcar_du_group* %73, i32 %74, i32 %75, i32 0)
  %77 = load %struct.rcar_du_group*, %struct.rcar_du_group** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @PnMLR, align 4
  %80 = call i32 @rcar_du_plane_write(%struct.rcar_du_group* %77, i32 %78, i32 %79, i32 0)
  br label %81

81:                                               ; preds = %64, %31
  ret void
}

declare dso_local i32 @rcar_du_plane_setup_format_gen2(%struct.rcar_du_group*, i32, %struct.rcar_du_plane_state*) #1

declare dso_local i32 @rcar_du_plane_setup_format_gen3(%struct.rcar_du_group*, i32, %struct.rcar_du_plane_state*) #1

declare dso_local i32 @rcar_du_plane_write(%struct.rcar_du_group*, i32, i32, i32) #1

declare dso_local i32 @drm_rect_width(%struct.drm_rect*) #1

declare dso_local i32 @drm_rect_height(%struct.drm_rect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
