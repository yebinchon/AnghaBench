; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_vi_layer.c_sun8i_vi_layer_update_formats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_vi_layer.c_sun8i_vi_layer_update_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun8i_mixer = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.drm_plane = type { %struct.drm_plane_state* }
%struct.drm_plane_state = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.de2_fmt_info = type { i32, i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"Invalid format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SUN8I_MIXER_CHAN_VI_LAYER_ATTR_FBFMT_OFFSET = common dso_local global i32 0, align 4
@SUN8I_MIXER_CHAN_VI_LAYER_ATTR_FBFMT_MASK = common dso_local global i32 0, align 4
@SUN8I_CSC_MODE_OFF = common dso_local global i64 0, align 8
@SUN8I_MIXER_CHAN_VI_LAYER_ATTR_RGB_MODE = common dso_local global i32 0, align 4
@SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun8i_mixer*, i32, i32, %struct.drm_plane*)* @sun8i_vi_layer_update_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_vi_layer_update_formats(%struct.sun8i_mixer* %0, i32 %1, i32 %2, %struct.drm_plane* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sun8i_mixer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_plane*, align 8
  %10 = alloca %struct.drm_plane_state*, align 8
  %11 = alloca %struct.de2_fmt_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sun8i_mixer* %0, %struct.sun8i_mixer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.drm_plane* %3, %struct.drm_plane** %9, align 8
  %14 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %15 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %14, i32 0, i32 0
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %15, align 8
  store %struct.drm_plane_state* %16, %struct.drm_plane_state** %10, align 8
  %17 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @sun8i_channel_base(%struct.sun8i_mixer* %17, i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load %struct.drm_plane_state*, %struct.drm_plane_state** %10, align 8
  %21 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.de2_fmt_info* @sun8i_mixer_format_info(i32 %26)
  store %struct.de2_fmt_info* %27, %struct.de2_fmt_info** %11, align 8
  %28 = load %struct.de2_fmt_info*, %struct.de2_fmt_info** %11, align 8
  %29 = icmp ne %struct.de2_fmt_info* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %4
  %31 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %112

34:                                               ; preds = %4
  %35 = load %struct.de2_fmt_info*, %struct.de2_fmt_info** %11, align 8
  %36 = getelementptr inbounds %struct.de2_fmt_info, %struct.de2_fmt_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SUN8I_MIXER_CHAN_VI_LAYER_ATTR_FBFMT_OFFSET, align 4
  %39 = shl i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %41 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @SUN8I_MIXER_CHAN_VI_LAYER_ATTR(i32 %44, i32 %45)
  %47 = load i32, i32* @SUN8I_MIXER_CHAN_VI_LAYER_ATTR_FBFMT_MASK, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @regmap_update_bits(i32 %43, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.de2_fmt_info*, %struct.de2_fmt_info** %11, align 8
  %51 = getelementptr inbounds %struct.de2_fmt_info, %struct.de2_fmt_info* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SUN8I_CSC_MODE_OFF, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %34
  %56 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.de2_fmt_info*, %struct.de2_fmt_info** %11, align 8
  %59 = getelementptr inbounds %struct.de2_fmt_info, %struct.de2_fmt_info* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.drm_plane_state*, %struct.drm_plane_state** %10, align 8
  %62 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.drm_plane_state*, %struct.drm_plane_state** %10, align 8
  %65 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @sun8i_csc_set_ccsc_coefficients(%struct.sun8i_mixer* %56, i32 %57, i64 %60, i32 %63, i32 %66)
  %68 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @sun8i_csc_enable_ccsc(%struct.sun8i_mixer* %68, i32 %69, i32 1)
  br label %75

71:                                               ; preds = %34
  %72 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @sun8i_csc_enable_ccsc(%struct.sun8i_mixer* %72, i32 %73, i32 0)
  br label %75

75:                                               ; preds = %71, %55
  %76 = load %struct.de2_fmt_info*, %struct.de2_fmt_info** %11, align 8
  %77 = getelementptr inbounds %struct.de2_fmt_info, %struct.de2_fmt_info* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @SUN8I_MIXER_CHAN_VI_LAYER_ATTR_RGB_MODE, align 4
  store i32 %81, i32* %12, align 4
  br label %83

82:                                               ; preds = %75
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %82, %80
  %84 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %85 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @SUN8I_MIXER_CHAN_VI_LAYER_ATTR(i32 %88, i32 %89)
  %91 = load i32, i32* @SUN8I_MIXER_CHAN_VI_LAYER_ATTR_RGB_MODE, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @regmap_update_bits(i32 %87, i32 %90, i32 %91, i32 %92)
  %94 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %95 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %94, i32 0, i32 1
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %83
  %101 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %102 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @SUN8I_MIXER_CHAN_VI_LAYER_ATTR(i32 %105, i32 %106)
  %108 = load i32, i32* @SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MASK, align 4
  %109 = call i32 @SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA(i32 255)
  %110 = call i32 @regmap_update_bits(i32 %104, i32 %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %100, %83
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %30
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @sun8i_channel_base(%struct.sun8i_mixer*, i32) #1

declare dso_local %struct.de2_fmt_info* @sun8i_mixer_format_info(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SUN8I_MIXER_CHAN_VI_LAYER_ATTR(i32, i32) #1

declare dso_local i32 @sun8i_csc_set_ccsc_coefficients(%struct.sun8i_mixer*, i32, i64, i32, i32) #1

declare dso_local i32 @sun8i_csc_enable_ccsc(%struct.sun8i_mixer*, i32, i32) #1

declare dso_local i32 @SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
