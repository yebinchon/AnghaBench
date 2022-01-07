; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_frontend.c_sun4i_frontend_update_coord.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_frontend.c_sun4i_frontend_update_coord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_frontend = type { i32 }
%struct.drm_plane = type { %struct.drm_plane_state* }
%struct.drm_plane_state = type { i32, i32, i32, i32, %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Frontend size W: %u H: %u\0A\00", align 1
@SUN4I_FRONTEND_CH0_INSIZE_REG = common dso_local global i32 0, align 4
@SUN4I_FRONTEND_CH1_INSIZE_REG = common dso_local global i32 0, align 4
@SUN4I_FRONTEND_CH0_OUTSIZE_REG = common dso_local global i32 0, align 4
@SUN4I_FRONTEND_CH1_OUTSIZE_REG = common dso_local global i32 0, align 4
@SUN4I_FRONTEND_CH0_HORZFACT_REG = common dso_local global i32 0, align 4
@SUN4I_FRONTEND_CH1_HORZFACT_REG = common dso_local global i32 0, align 4
@SUN4I_FRONTEND_CH0_VERTFACT_REG = common dso_local global i32 0, align 4
@SUN4I_FRONTEND_CH1_VERTFACT_REG = common dso_local global i32 0, align 4
@SUN4I_FRONTEND_FRM_CTRL_REG = common dso_local global i32 0, align 4
@SUN4I_FRONTEND_FRM_CTRL_REG_RDY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sun4i_frontend_update_coord(%struct.sun4i_frontend* %0, %struct.drm_plane* %1) #0 {
  %3 = alloca %struct.sun4i_frontend*, align 8
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sun4i_frontend* %0, %struct.sun4i_frontend** %3, align 8
  store %struct.drm_plane* %1, %struct.drm_plane** %4, align 8
  %11 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %12 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %11, i32 0, i32 0
  %13 = load %struct.drm_plane_state*, %struct.drm_plane_state** %12, align 8
  store %struct.drm_plane_state* %13, %struct.drm_plane_state** %5, align 8
  %14 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %15 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %14, i32 0, i32 4
  %16 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  store %struct.drm_framebuffer* %16, %struct.drm_framebuffer** %6, align 8
  %17 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %18 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %21 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %25 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = ashr i32 %26, 16
  store i32 %27, i32* %7, align 4
  %28 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %29 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 16
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %34 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @DIV_ROUND_UP(i32 %32, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %41 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @DIV_ROUND_UP(i32 %39, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %3, align 8
  %47 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SUN4I_FRONTEND_CH0_INSIZE_REG, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @SUN4I_FRONTEND_INSIZE(i32 %50, i32 %51)
  %53 = call i32 @regmap_write(i32 %48, i32 %49, i32 %52)
  %54 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %3, align 8
  %55 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SUN4I_FRONTEND_CH1_INSIZE_REG, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @SUN4I_FRONTEND_INSIZE(i32 %58, i32 %59)
  %61 = call i32 @regmap_write(i32 %56, i32 %57, i32 %60)
  %62 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %3, align 8
  %63 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SUN4I_FRONTEND_CH0_OUTSIZE_REG, align 4
  %66 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %67 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %70 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @SUN4I_FRONTEND_OUTSIZE(i32 %68, i32 %71)
  %73 = call i32 @regmap_write(i32 %64, i32 %65, i32 %72)
  %74 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %3, align 8
  %75 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SUN4I_FRONTEND_CH1_OUTSIZE_REG, align 4
  %78 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %79 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %82 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @SUN4I_FRONTEND_OUTSIZE(i32 %80, i32 %83)
  %85 = call i32 @regmap_write(i32 %76, i32 %77, i32 %84)
  %86 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %3, align 8
  %87 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @SUN4I_FRONTEND_CH0_HORZFACT_REG, align 4
  %90 = load i32, i32* %7, align 4
  %91 = shl i32 %90, 16
  %92 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %93 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sdiv i32 %91, %94
  %96 = call i32 @regmap_write(i32 %88, i32 %89, i32 %95)
  %97 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %3, align 8
  %98 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @SUN4I_FRONTEND_CH1_HORZFACT_REG, align 4
  %101 = load i32, i32* %9, align 4
  %102 = shl i32 %101, 16
  %103 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %104 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sdiv i32 %102, %105
  %107 = call i32 @regmap_write(i32 %99, i32 %100, i32 %106)
  %108 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %3, align 8
  %109 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @SUN4I_FRONTEND_CH0_VERTFACT_REG, align 4
  %112 = load i32, i32* %8, align 4
  %113 = shl i32 %112, 16
  %114 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %115 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sdiv i32 %113, %116
  %118 = call i32 @regmap_write(i32 %110, i32 %111, i32 %117)
  %119 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %3, align 8
  %120 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @SUN4I_FRONTEND_CH1_VERTFACT_REG, align 4
  %123 = load i32, i32* %10, align 4
  %124 = shl i32 %123, 16
  %125 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %126 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sdiv i32 %124, %127
  %129 = call i32 @regmap_write(i32 %121, i32 %122, i32 %128)
  %130 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %3, align 8
  %131 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @SUN4I_FRONTEND_FRM_CTRL_REG, align 4
  %134 = load i32, i32* @SUN4I_FRONTEND_FRM_CTRL_REG_RDY, align 4
  %135 = load i32, i32* @SUN4I_FRONTEND_FRM_CTRL_REG_RDY, align 4
  %136 = call i32 @regmap_write_bits(i32 %132, i32 %133, i32 %134, i32 %135)
  ret void
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SUN4I_FRONTEND_INSIZE(i32, i32) #1

declare dso_local i32 @SUN4I_FRONTEND_OUTSIZE(i32, i32) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
