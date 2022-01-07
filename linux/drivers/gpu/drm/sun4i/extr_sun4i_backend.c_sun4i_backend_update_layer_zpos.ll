; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_backend.c_sun4i_backend_update_layer_zpos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_backend.c_sun4i_backend_update_layer_zpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_backend = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_plane = type { %struct.drm_plane_state* }
%struct.drm_plane_state = type { i32 }
%struct.sun4i_layer_state = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Setting layer %d's priority to %d and pipe %d\0A\00", align 1
@SUN4I_BACKEND_ATTCTL_REG0_LAY_PIPESEL_MASK = common dso_local global i32 0, align 4
@SUN4I_BACKEND_ATTCTL_REG0_LAY_PRISEL_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun4i_backend_update_layer_zpos(%struct.sun4i_backend* %0, i32 %1, %struct.drm_plane* %2) #0 {
  %4 = alloca %struct.sun4i_backend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_plane*, align 8
  %7 = alloca %struct.drm_plane_state*, align 8
  %8 = alloca %struct.sun4i_layer_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sun4i_backend* %0, %struct.sun4i_backend** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.drm_plane* %2, %struct.drm_plane** %6, align 8
  %11 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %12 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %11, i32 0, i32 0
  %13 = load %struct.drm_plane_state*, %struct.drm_plane_state** %12, align 8
  store %struct.drm_plane_state* %13, %struct.drm_plane_state** %7, align 8
  %14 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %15 = call %struct.sun4i_layer_state* @state_to_sun4i_layer_state(%struct.drm_plane_state* %14)
  store %struct.sun4i_layer_state* %15, %struct.sun4i_layer_state** %8, align 8
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %17 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.sun4i_layer_state*, %struct.sun4i_layer_state** %8, align 8
  %20 = getelementptr inbounds %struct.sun4i_layer_state, %struct.sun4i_layer_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24)
  %26 = load %struct.sun4i_backend*, %struct.sun4i_backend** %4, align 8
  %27 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @SUN4I_BACKEND_ATTCTL_REG0(i32 %30)
  %32 = load i32, i32* @SUN4I_BACKEND_ATTCTL_REG0_LAY_PIPESEL_MASK, align 4
  %33 = load i32, i32* @SUN4I_BACKEND_ATTCTL_REG0_LAY_PRISEL_MASK, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.sun4i_layer_state*, %struct.sun4i_layer_state** %8, align 8
  %36 = getelementptr inbounds %struct.sun4i_layer_state, %struct.sun4i_layer_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @SUN4I_BACKEND_ATTCTL_REG0_LAY_PIPESEL(i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @SUN4I_BACKEND_ATTCTL_REG0_LAY_PRISEL(i32 %39)
  %41 = or i32 %38, %40
  %42 = call i32 @regmap_update_bits(i32 %29, i32 %31, i32 %34, i32 %41)
  ret i32 0
}

declare dso_local %struct.sun4i_layer_state* @state_to_sun4i_layer_state(%struct.drm_plane_state*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SUN4I_BACKEND_ATTCTL_REG0(i32) #1

declare dso_local i32 @SUN4I_BACKEND_ATTCTL_REG0_LAY_PIPESEL(i32) #1

declare dso_local i32 @SUN4I_BACKEND_ATTCTL_REG0_LAY_PRISEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
