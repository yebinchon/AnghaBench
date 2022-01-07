; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tv.c_sun4i_tv_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tv.c_sun4i_tv_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.sun4i_tv = type { i32 }
%struct.sun4i_crtc = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Enabling the TV Output\0A\00", align 1
@SUN4I_TVE_EN_REG = common dso_local global i32 0, align 4
@SUN4I_TVE_EN_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @sun4i_tv_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_tv_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.sun4i_tv*, align 8
  %4 = alloca %struct.sun4i_crtc*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %5 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %6 = call %struct.sun4i_tv* @drm_encoder_to_sun4i_tv(%struct.drm_encoder* %5)
  store %struct.sun4i_tv* %6, %struct.sun4i_tv** %3, align 8
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %8 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.sun4i_crtc* @drm_crtc_to_sun4i_crtc(i32 %9)
  store %struct.sun4i_crtc* %10, %struct.sun4i_crtc** %4, align 8
  %11 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.sun4i_crtc*, %struct.sun4i_crtc** %4, align 8
  %13 = getelementptr inbounds %struct.sun4i_crtc, %struct.sun4i_crtc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sunxi_engine_apply_color_correction(i32 %14)
  %16 = load %struct.sun4i_tv*, %struct.sun4i_tv** %3, align 8
  %17 = getelementptr inbounds %struct.sun4i_tv, %struct.sun4i_tv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SUN4I_TVE_EN_REG, align 4
  %20 = load i32, i32* @SUN4I_TVE_EN_ENABLE, align 4
  %21 = load i32, i32* @SUN4I_TVE_EN_ENABLE, align 4
  %22 = call i32 @regmap_update_bits(i32 %18, i32 %19, i32 %20, i32 %21)
  ret void
}

declare dso_local %struct.sun4i_tv* @drm_encoder_to_sun4i_tv(%struct.drm_encoder*) #1

declare dso_local %struct.sun4i_crtc* @drm_crtc_to_sun4i_crtc(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @sunxi_engine_apply_color_correction(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
