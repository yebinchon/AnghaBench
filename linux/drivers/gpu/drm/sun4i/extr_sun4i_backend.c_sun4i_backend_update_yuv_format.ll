; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_backend.c_sun4i_backend_update_yuv_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_backend.c_sun4i_backend_update_yuv_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_backend = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_plane = type { %struct.drm_plane_state* }
%struct.drm_plane_state = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.drm_format_info* }
%struct.drm_format_info = type { i32 }

@SUN4I_BACKEND_IYUVCTL_EN = common dso_local global i32 0, align 4
@sunxi_bt601_yuv2rgb_coef = common dso_local global i32* null, align 8
@SUN4I_BACKEND_ATTCTL_REG0_LAY_YUVEN = common dso_local global i32 0, align 4
@SUN4I_BACKEND_IYUVCTL_FBFMT_PACKED_YUV422 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unsupported YUV format (0x%x)\0A\00", align 1
@SUN4I_BACKEND_IYUVCTL_FBPS_VYUY = common dso_local global i32 0, align 4
@SUN4I_BACKEND_IYUVCTL_FBPS_UYVY = common dso_local global i32 0, align 4
@SUN4I_BACKEND_IYUVCTL_FBPS_YVYU = common dso_local global i32 0, align 4
@SUN4I_BACKEND_IYUVCTL_FBPS_YUYV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Unsupported YUV pixel sequence (0x%x)\0A\00", align 1
@SUN4I_BACKEND_IYUVCTL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun4i_backend*, i32, %struct.drm_plane*)* @sun4i_backend_update_yuv_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_backend_update_yuv_format(%struct.sun4i_backend* %0, i32 %1, %struct.drm_plane* %2) #0 {
  %4 = alloca %struct.sun4i_backend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_plane*, align 8
  %7 = alloca %struct.drm_plane_state*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca %struct.drm_format_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sun4i_backend* %0, %struct.sun4i_backend** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.drm_plane* %2, %struct.drm_plane** %6, align 8
  %13 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %14 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %13, i32 0, i32 0
  %15 = load %struct.drm_plane_state*, %struct.drm_plane_state** %14, align 8
  store %struct.drm_plane_state* %15, %struct.drm_plane_state** %7, align 8
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %17 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %16, i32 0, i32 0
  %18 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %17, align 8
  store %struct.drm_framebuffer* %18, %struct.drm_framebuffer** %8, align 8
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %20 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %19, i32 0, i32 0
  %21 = load %struct.drm_format_info*, %struct.drm_format_info** %20, align 8
  store %struct.drm_format_info* %21, %struct.drm_format_info** %9, align 8
  %22 = load %struct.drm_format_info*, %struct.drm_format_info** %9, align 8
  %23 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @SUN4I_BACKEND_IYUVCTL_EN, align 4
  store i32 %25, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %44, %3
  %27 = load i32, i32* %12, align 4
  %28 = load i32*, i32** @sunxi_bt601_yuv2rgb_coef, align 8
  %29 = call i32 @ARRAY_SIZE(i32* %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load %struct.sun4i_backend*, %struct.sun4i_backend** %4, align 8
  %33 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @SUN4I_BACKEND_YGCOEF_REG(i32 %36)
  %38 = load i32*, i32** @sunxi_bt601_yuv2rgb_coef, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @regmap_write(i32 %35, i32 %37, i32 %42)
  br label %44

44:                                               ; preds = %31
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %12, align 4
  br label %26

47:                                               ; preds = %26
  %48 = load %struct.sun4i_backend*, %struct.sun4i_backend** %4, align 8
  %49 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @SUN4I_BACKEND_ATTCTL_REG0(i32 %52)
  %54 = load i32, i32* @SUN4I_BACKEND_ATTCTL_REG0_LAY_YUVEN, align 4
  %55 = load i32, i32* @SUN4I_BACKEND_ATTCTL_REG0_LAY_YUVEN, align 4
  %56 = call i32 @regmap_update_bits(i32 %51, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.drm_format_info*, %struct.drm_format_info** %9, align 8
  %58 = call i64 @drm_format_info_is_yuv_packed(%struct.drm_format_info* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %47
  %61 = load %struct.drm_format_info*, %struct.drm_format_info** %9, align 8
  %62 = call i64 @drm_format_info_is_yuv_sampling_422(%struct.drm_format_info* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* @SUN4I_BACKEND_IYUVCTL_FBFMT_PACKED_YUV422, align 4
  %66 = load i32, i32* %11, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %11, align 4
  br label %71

68:                                               ; preds = %60, %47
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %68, %64
  %72 = load i32, i32* %10, align 4
  switch i32 %72, label %89 [
    i32 129, label %73
    i32 128, label %77
    i32 131, label %81
    i32 130, label %85
  ]

73:                                               ; preds = %71
  %74 = load i32, i32* @SUN4I_BACKEND_IYUVCTL_FBPS_VYUY, align 4
  %75 = load i32, i32* %11, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %11, align 4
  br label %92

77:                                               ; preds = %71
  %78 = load i32, i32* @SUN4I_BACKEND_IYUVCTL_FBPS_UYVY, align 4
  %79 = load i32, i32* %11, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %11, align 4
  br label %92

81:                                               ; preds = %71
  %82 = load i32, i32* @SUN4I_BACKEND_IYUVCTL_FBPS_YVYU, align 4
  %83 = load i32, i32* %11, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %11, align 4
  br label %92

85:                                               ; preds = %71
  %86 = load i32, i32* @SUN4I_BACKEND_IYUVCTL_FBPS_YUYV, align 4
  %87 = load i32, i32* %11, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %11, align 4
  br label %92

89:                                               ; preds = %71
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %89, %85, %81, %77, %73
  %93 = load %struct.sun4i_backend*, %struct.sun4i_backend** %4, align 8
  %94 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @SUN4I_BACKEND_IYUVCTL_REG, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @regmap_write(i32 %96, i32 %97, i32 %98)
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SUN4I_BACKEND_YGCOEF_REG(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SUN4I_BACKEND_ATTCTL_REG0(i32) #1

declare dso_local i64 @drm_format_info_is_yuv_packed(%struct.drm_format_info*) #1

declare dso_local i64 @drm_format_info_is_yuv_sampling_422(%struct.drm_format_info*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
