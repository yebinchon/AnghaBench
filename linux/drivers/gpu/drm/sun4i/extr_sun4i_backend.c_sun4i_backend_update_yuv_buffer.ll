; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_backend.c_sun4i_backend_update_yuv_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_backend.c_sun4i_backend_update_yuv_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_backend = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_framebuffer = type { i32* }

@.str = private unnamed_addr constant [43 x i8] c"Setting packed YUV buffer address to %pad\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Layer line width: %d bits\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun4i_backend*, %struct.drm_framebuffer*, i32)* @sun4i_backend_update_yuv_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_backend_update_yuv_buffer(%struct.sun4i_backend* %0, %struct.drm_framebuffer* %1, i32 %2) #0 {
  %4 = alloca %struct.sun4i_backend*, align 8
  %5 = alloca %struct.drm_framebuffer*, align 8
  %6 = alloca i32, align 4
  store %struct.sun4i_backend* %0, %struct.sun4i_backend** %4, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32* %6)
  %8 = load %struct.sun4i_backend*, %struct.sun4i_backend** %4, align 8
  %9 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @SUN4I_BACKEND_IYUVADD_REG(i32 0)
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @regmap_write(i32 %11, i32 %12, i32 %13)
  %15 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %16 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %19, 8
  %21 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.sun4i_backend*, %struct.sun4i_backend** %4, align 8
  %23 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @SUN4I_BACKEND_IYUVLINEWIDTH_REG(i32 0)
  %27 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %28 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, 8
  %33 = call i32 @regmap_write(i32 %25, i32 %26, i32 %32)
  ret i32 0
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SUN4I_BACKEND_IYUVADD_REG(i32) #1

declare dso_local i32 @SUN4I_BACKEND_IYUVLINEWIDTH_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
