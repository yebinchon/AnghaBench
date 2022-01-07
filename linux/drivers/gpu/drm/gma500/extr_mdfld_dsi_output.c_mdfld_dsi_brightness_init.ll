; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_output.c_mdfld_dsi_brightness_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_output.c_mdfld_dsi_brightness_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdfld_dsi_config = type { i32 }
%struct.mdfld_dsi_pkg_sender = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"No sender found\0A\00", align 1
@write_display_brightness = common dso_local global i32 0, align 4
@write_cabc_min_bright = common dso_local global i32 0, align 4
@BRIGHT_CNTL_BLOCK_ON = common dso_local global i32 0, align 4
@DISPLAY_DIMMING_ON = common dso_local global i32 0, align 4
@BACKLIGHT_ON = common dso_local global i32 0, align 4
@LABC_control = common dso_local global i32 0, align 4
@DISPLAY_BRIGHTNESS_AUTO = common dso_local global i32 0, align 4
@GAMMA_AUTO = common dso_local global i32 0, align 4
@AMBIENT_LIGHT_SENSE_ON = common dso_local global i32 0, align 4
@write_ctrl_display = common dso_local global i32 0, align 4
@write_ctrl_cabc = common dso_local global i32 0, align 4
@UI_IMAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdfld_dsi_brightness_init(%struct.mdfld_dsi_config* %0, i32 %1) #0 {
  %3 = alloca %struct.mdfld_dsi_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mdfld_dsi_pkg_sender*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_psb_private*, align 8
  %8 = alloca i32, align 4
  store %struct.mdfld_dsi_config* %0, %struct.mdfld_dsi_config** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %3, align 8
  %10 = call %struct.mdfld_dsi_pkg_sender* @mdfld_dsi_get_pkg_sender(%struct.mdfld_dsi_config* %9)
  store %struct.mdfld_dsi_pkg_sender* %10, %struct.mdfld_dsi_pkg_sender** %5, align 8
  %11 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %5, align 8
  %12 = icmp ne %struct.mdfld_dsi_pkg_sender* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %62

15:                                               ; preds = %2
  %16 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %5, align 8
  %17 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %16, i32 0, i32 0
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %6, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load %struct.drm_psb_private*, %struct.drm_psb_private** %20, align 8
  store %struct.drm_psb_private* %21, %struct.drm_psb_private** %7, align 8
  %22 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %5, align 8
  %23 = load i32, i32* @write_display_brightness, align 4
  %24 = call i32 @mdfld_dsi_send_mcs_short(%struct.mdfld_dsi_pkg_sender* %22, i32 %23, i32 216, i32 1, i32 1)
  %25 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %5, align 8
  %26 = load i32, i32* @write_cabc_min_bright, align 4
  %27 = call i32 @mdfld_dsi_send_mcs_short(%struct.mdfld_dsi_pkg_sender* %25, i32 %26, i32 51, i32 1, i32 1)
  %28 = load i32, i32* @BRIGHT_CNTL_BLOCK_ON, align 4
  %29 = load i32, i32* @DISPLAY_DIMMING_ON, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @BACKLIGHT_ON, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @LABC_control, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %43

35:                                               ; preds = %15
  %36 = load i32, i32* @DISPLAY_DIMMING_ON, align 4
  %37 = load i32, i32* @DISPLAY_BRIGHTNESS_AUTO, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @GAMMA_AUTO, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %35, %15
  %44 = load i32, i32* @LABC_control, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* @AMBIENT_LIGHT_SENSE_ON, align 4
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.drm_psb_private*, %struct.drm_psb_private** %7, align 8
  %53 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %5, align 8
  %55 = load i32, i32* @write_ctrl_display, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @mdfld_dsi_send_mcs_short(%struct.mdfld_dsi_pkg_sender* %54, i32 %55, i32 %56, i32 1, i32 1)
  %58 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %5, align 8
  %59 = load i32, i32* @write_ctrl_cabc, align 4
  %60 = load i32, i32* @UI_IMAGE, align 4
  %61 = call i32 @mdfld_dsi_send_mcs_short(%struct.mdfld_dsi_pkg_sender* %58, i32 %59, i32 %60, i32 1, i32 1)
  br label %62

62:                                               ; preds = %50, %13
  ret void
}

declare dso_local %struct.mdfld_dsi_pkg_sender* @mdfld_dsi_get_pkg_sender(%struct.mdfld_dsi_config*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @mdfld_dsi_send_mcs_short(%struct.mdfld_dsi_pkg_sender*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
