; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_enc.c_sun4i_hdmi_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_enc.c_sun4i_hdmi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.sun4i_hdmi = type { i64, i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Enabling the HDMI Output\0A\00", align 1
@SUN4I_HDMI_PKT_AVI = common dso_local global i32 0, align 4
@SUN4I_HDMI_PKT_END = common dso_local global i32 0, align 4
@SUN4I_HDMI_VID_CTRL_ENABLE = common dso_local global i32 0, align 4
@SUN4I_HDMI_VID_CTRL_HDMI_MODE = common dso_local global i32 0, align 4
@SUN4I_HDMI_VID_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @sun4i_hdmi_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_hdmi_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca %struct.sun4i_hdmi*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %7 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.drm_display_mode* %11, %struct.drm_display_mode** %3, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %13 = call %struct.sun4i_hdmi* @drm_encoder_to_sun4i_hdmi(%struct.drm_encoder* %12)
  store %struct.sun4i_hdmi* %13, %struct.sun4i_hdmi** %4, align 8
  store i32 0, i32* %5, align 4
  %14 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %16 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @clk_prepare_enable(i32 %17)
  %19 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %21 = call i32 @sun4i_hdmi_setup_avi_infoframes(%struct.sun4i_hdmi* %19, %struct.drm_display_mode* %20)
  %22 = load i32, i32* @SUN4I_HDMI_PKT_AVI, align 4
  %23 = call i32 @SUN4I_HDMI_PKT_CTRL_TYPE(i32 0, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @SUN4I_HDMI_PKT_END, align 4
  %27 = call i32 @SUN4I_HDMI_PKT_CTRL_TYPE(i32 1, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %32 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @SUN4I_HDMI_PKT_CTRL_REG(i32 0)
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  %37 = load i32, i32* @SUN4I_HDMI_VID_CTRL_ENABLE, align 4
  store i32 %37, i32* %5, align 4
  %38 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %39 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %1
  %43 = load i32, i32* @SUN4I_HDMI_VID_CTRL_HDMI_MODE, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %1
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %49 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SUN4I_HDMI_VID_CTRL_REG, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  ret void
}

declare dso_local %struct.sun4i_hdmi* @drm_encoder_to_sun4i_hdmi(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @sun4i_hdmi_setup_avi_infoframes(%struct.sun4i_hdmi*, %struct.drm_display_mode*) #1

declare dso_local i32 @SUN4I_HDMI_PKT_CTRL_TYPE(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @SUN4I_HDMI_PKT_CTRL_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
