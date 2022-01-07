; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_ui_layer.c_sun8i_ui_layer_update_formats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_ui_layer.c_sun8i_ui_layer_update_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun8i_mixer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_plane = type { %struct.drm_plane_state* }
%struct.drm_plane_state = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.de2_fmt_info = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Invalid format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SUN8I_MIXER_CHAN_UI_LAYER_ATTR_FBFMT_OFFSET = common dso_local global i32 0, align 4
@SUN8I_MIXER_CHAN_UI_LAYER_ATTR_FBFMT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun8i_mixer*, i32, i32, %struct.drm_plane*)* @sun8i_ui_layer_update_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_ui_layer_update_formats(%struct.sun8i_mixer* %0, i32 %1, i32 %2, %struct.drm_plane* %3) #0 {
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
  %21 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.de2_fmt_info* @sun8i_mixer_format_info(i32 %26)
  store %struct.de2_fmt_info* %27, %struct.de2_fmt_info** %11, align 8
  %28 = load %struct.de2_fmt_info*, %struct.de2_fmt_info** %11, align 8
  %29 = icmp ne %struct.de2_fmt_info* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load %struct.de2_fmt_info*, %struct.de2_fmt_info** %11, align 8
  %32 = getelementptr inbounds %struct.de2_fmt_info, %struct.de2_fmt_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30, %4
  %36 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %55

39:                                               ; preds = %30
  %40 = load %struct.de2_fmt_info*, %struct.de2_fmt_info** %11, align 8
  %41 = getelementptr inbounds %struct.de2_fmt_info, %struct.de2_fmt_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SUN8I_MIXER_CHAN_UI_LAYER_ATTR_FBFMT_OFFSET, align 4
  %44 = shl i32 %42, %43
  store i32 %44, i32* %12, align 4
  %45 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %46 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @SUN8I_MIXER_CHAN_UI_LAYER_ATTR(i32 %49, i32 %50)
  %52 = load i32, i32* @SUN8I_MIXER_CHAN_UI_LAYER_ATTR_FBFMT_MASK, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @regmap_update_bits(i32 %48, i32 %51, i32 %52, i32 %53)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %39, %35
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @sun8i_channel_base(%struct.sun8i_mixer*, i32) #1

declare dso_local %struct.de2_fmt_info* @sun8i_mixer_format_info(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SUN8I_MIXER_CHAN_UI_LAYER_ATTR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
