; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_backend.c_sun4i_backend_update_layer_formats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_backend.c_sun4i_backend_update_layer_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_backend = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.drm_plane = type { %struct.drm_plane_state* }
%struct.drm_plane_state = type { i32, %struct.TYPE_8__*, %struct.drm_framebuffer* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_framebuffer = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64 }

@SUN4I_BACKEND_ATTCTL_REG0_LAY_YUVEN = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@SUN4I_BACKEND_MODCTL_REG = common dso_local global i32 0, align 4
@SUN4I_BACKEND_MODCTL_ITLMOD_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Switching display backend interlaced mode %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@DRM_BLEND_ALPHA_OPAQUE = common dso_local global i32 0, align 4
@SUN4I_BACKEND_ATTCTL_REG0_LAY_GLBALPHA_EN = common dso_local global i32 0, align 4
@SUN4I_BACKEND_ATTCTL_REG0_LAY_GLBALPHA_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Invalid format\0A\00", align 1
@SUN4I_BACKEND_ATTCTL_REG1_LAY_FBFMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun4i_backend_update_layer_formats(%struct.sun4i_backend* %0, i32 %1, %struct.drm_plane* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sun4i_backend*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_plane*, align 8
  %8 = alloca %struct.drm_plane_state*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sun4i_backend* %0, %struct.sun4i_backend** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.drm_plane* %2, %struct.drm_plane** %7, align 8
  %13 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %14 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %13, i32 0, i32 0
  %15 = load %struct.drm_plane_state*, %struct.drm_plane_state** %14, align 8
  store %struct.drm_plane_state* %15, %struct.drm_plane_state** %8, align 8
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %17 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %16, i32 0, i32 2
  %18 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %17, align 8
  store %struct.drm_framebuffer* %18, %struct.drm_framebuffer** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.sun4i_backend*, %struct.sun4i_backend** %5, align 8
  %20 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @SUN4I_BACKEND_ATTCTL_REG0(i32 %23)
  %25 = load i32, i32* @SUN4I_BACKEND_ATTCTL_REG0_LAY_YUVEN, align 4
  %26 = call i32 @regmap_update_bits(i32 %22, i32 %24, i32 %25, i32 0)
  %27 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %28 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %27, i32 0, i32 0
  %29 = load %struct.drm_plane_state*, %struct.drm_plane_state** %28, align 8
  %30 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = icmp ne %struct.TYPE_8__* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %3
  %34 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %35 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %34, i32 0, i32 0
  %36 = load %struct.drm_plane_state*, %struct.drm_plane_state** %35, align 8
  %37 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %33, %3
  %47 = load %struct.sun4i_backend*, %struct.sun4i_backend** %5, align 8
  %48 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SUN4I_BACKEND_MODCTL_REG, align 4
  %52 = load i32, i32* @SUN4I_BACKEND_MODCTL_ITLMOD_EN, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @SUN4I_BACKEND_MODCTL_ITLMOD_EN, align 4
  br label %58

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  %60 = call i32 @regmap_update_bits(i32 %50, i32 %51, i32 %52, i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %65 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %64)
  %66 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %67 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = ashr i32 %68, 8
  %70 = call i32 @SUN4I_BACKEND_ATTCTL_REG0_LAY_GLBALPHA(i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %72 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @DRM_BLEND_ALPHA_OPAQUE, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %58
  %77 = load i32, i32* @SUN4I_BACKEND_ATTCTL_REG0_LAY_GLBALPHA_EN, align 4
  %78 = load i32, i32* %11, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %76, %58
  %81 = load %struct.sun4i_backend*, %struct.sun4i_backend** %5, align 8
  %82 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @SUN4I_BACKEND_ATTCTL_REG0(i32 %85)
  %87 = load i32, i32* @SUN4I_BACKEND_ATTCTL_REG0_LAY_GLBALPHA_MASK, align 4
  %88 = load i32, i32* @SUN4I_BACKEND_ATTCTL_REG0_LAY_GLBALPHA_EN, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @regmap_update_bits(i32 %84, i32 %86, i32 %89, i32 %90)
  %92 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %93 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %80
  %99 = load %struct.sun4i_backend*, %struct.sun4i_backend** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %102 = call i32 @sun4i_backend_update_yuv_format(%struct.sun4i_backend* %99, i32 %100, %struct.drm_plane* %101)
  store i32 %102, i32* %4, align 4
  br label %125

103:                                              ; preds = %80
  %104 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %105 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %104, i32 0, i32 0
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @sun4i_backend_drm_format_to_layer(i32 %108, i32* %11)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %103
  %113 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %4, align 4
  br label %125

115:                                              ; preds = %103
  %116 = load %struct.sun4i_backend*, %struct.sun4i_backend** %5, align 8
  %117 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @SUN4I_BACKEND_ATTCTL_REG1(i32 %120)
  %122 = load i32, i32* @SUN4I_BACKEND_ATTCTL_REG1_LAY_FBFMT, align 4
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @regmap_update_bits(i32 %119, i32 %121, i32 %122, i32 %123)
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %115, %112, %98
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SUN4I_BACKEND_ATTCTL_REG0(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, ...) #1

declare dso_local i32 @SUN4I_BACKEND_ATTCTL_REG0_LAY_GLBALPHA(i32) #1

declare dso_local i32 @sun4i_backend_update_yuv_format(%struct.sun4i_backend*, i32, %struct.drm_plane*) #1

declare dso_local i32 @sun4i_backend_drm_format_to_layer(i32, i32*) #1

declare dso_local i32 @SUN4I_BACKEND_ATTCTL_REG1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
