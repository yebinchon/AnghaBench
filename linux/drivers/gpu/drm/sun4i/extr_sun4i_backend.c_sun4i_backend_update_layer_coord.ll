; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_backend.c_sun4i_backend_update_layer_coord.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_backend.c_sun4i_backend_update_layer_coord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_backend = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_plane = type { i64, %struct.drm_plane_state* }
%struct.drm_plane_state = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Updating layer %d\0A\00", align 1
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"Primary layer, updating global size W: %u H: %u\0A\00", align 1
@SUN4I_BACKEND_DISSIZE_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Layer size W: %u H: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Layer coordinates X: %d Y: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun4i_backend_update_layer_coord(%struct.sun4i_backend* %0, i32 %1, %struct.drm_plane* %2) #0 {
  %4 = alloca %struct.sun4i_backend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_plane*, align 8
  %7 = alloca %struct.drm_plane_state*, align 8
  store %struct.sun4i_backend* %0, %struct.sun4i_backend** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.drm_plane* %2, %struct.drm_plane** %6, align 8
  %8 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %9 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %8, i32 0, i32 1
  %10 = load %struct.drm_plane_state*, %struct.drm_plane_state** %9, align 8
  store %struct.drm_plane_state* %10, %struct.drm_plane_state** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %14 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DRM_PLANE_TYPE_PRIMARY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %3
  %19 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %20 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %23 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %24)
  %26 = load %struct.sun4i_backend*, %struct.sun4i_backend** %4, align 8
  %27 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SUN4I_BACKEND_DISSIZE_REG, align 4
  %31 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %32 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %35 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @SUN4I_BACKEND_DISSIZE(i32 %33, i32 %36)
  %38 = call i32 @regmap_write(i32 %29, i32 %30, i32 %37)
  br label %39

39:                                               ; preds = %18, %3
  %40 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %41 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %44 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load %struct.sun4i_backend*, %struct.sun4i_backend** %4, align 8
  %48 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @SUN4I_BACKEND_LAYSIZE_REG(i32 %51)
  %53 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %54 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %57 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @SUN4I_BACKEND_LAYSIZE(i32 %55, i32 %58)
  %60 = call i32 @regmap_write(i32 %50, i32 %52, i32 %59)
  %61 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %62 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %65 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32 %66)
  %68 = load %struct.sun4i_backend*, %struct.sun4i_backend** %4, align 8
  %69 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @SUN4I_BACKEND_LAYCOOR_REG(i32 %72)
  %74 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %75 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %78 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @SUN4I_BACKEND_LAYCOOR(i32 %76, i32 %79)
  %81 = call i32 @regmap_write(i32 %71, i32 %73, i32 %80)
  ret i32 0
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SUN4I_BACKEND_DISSIZE(i32, i32) #1

declare dso_local i32 @SUN4I_BACKEND_LAYSIZE_REG(i32) #1

declare dso_local i32 @SUN4I_BACKEND_LAYSIZE(i32, i32) #1

declare dso_local i32 @SUN4I_BACKEND_LAYCOOR_REG(i32) #1

declare dso_local i32 @SUN4I_BACKEND_LAYCOOR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
