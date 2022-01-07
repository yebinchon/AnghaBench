; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_output.c_mdfld_dsi_brightness_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_output.c_mdfld_dsi_brightness_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32, %struct.mdfld_dsi_config** }
%struct.mdfld_dsi_config = type { i32 }
%struct.mdfld_dsi_pkg_sender = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TMD_VID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Invalid parameter\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"No sender found\0A\00", align 1
@MDFLD_DSI_BRIGHTNESS_MAX_LEVEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"pipe = %d, gen_ctrl_val = %d.\0A\00", align 1
@tmd_write_display_brightness = common dso_local global i32 0, align 4
@write_display_brightness = common dso_local global i32 0, align 4
@write_ctrl_display = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdfld_dsi_brightness_control(%struct.drm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mdfld_dsi_pkg_sender*, align 8
  %8 = alloca %struct.drm_psb_private*, align 8
  %9 = alloca %struct.mdfld_dsi_config*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @TMD_VID, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = icmp ne %struct.drm_device* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 2
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %3
  %22 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %89

23:                                               ; preds = %18, %15
  %24 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %25 = call i32 @mdfld_get_panel_type(%struct.drm_device* %24, i32 0)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = load %struct.drm_psb_private*, %struct.drm_psb_private** %27, align 8
  store %struct.drm_psb_private* %28, %struct.drm_psb_private** %8, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.drm_psb_private*, %struct.drm_psb_private** %8, align 8
  %33 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %32, i32 0, i32 1
  %34 = load %struct.mdfld_dsi_config**, %struct.mdfld_dsi_config*** %33, align 8
  %35 = getelementptr inbounds %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %34, i64 1
  %36 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %35, align 8
  store %struct.mdfld_dsi_config* %36, %struct.mdfld_dsi_config** %9, align 8
  br label %43

37:                                               ; preds = %23
  %38 = load %struct.drm_psb_private*, %struct.drm_psb_private** %8, align 8
  %39 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %38, i32 0, i32 1
  %40 = load %struct.mdfld_dsi_config**, %struct.mdfld_dsi_config*** %39, align 8
  %41 = getelementptr inbounds %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %40, i64 0
  %42 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %41, align 8
  store %struct.mdfld_dsi_config* %42, %struct.mdfld_dsi_config** %9, align 8
  br label %43

43:                                               ; preds = %37, %31
  %44 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %9, align 8
  %45 = call %struct.mdfld_dsi_pkg_sender* @mdfld_dsi_get_pkg_sender(%struct.mdfld_dsi_config* %44)
  store %struct.mdfld_dsi_pkg_sender* %45, %struct.mdfld_dsi_pkg_sender** %7, align 8
  %46 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %7, align 8
  %47 = icmp ne %struct.mdfld_dsi_pkg_sender* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %89

50:                                               ; preds = %43
  %51 = load i32, i32* %6, align 4
  %52 = mul nsw i32 %51, 255
  %53 = load i32, i32* @MDFLD_DSI_BRIGHTNESS_MAX_LEVEL, align 4
  %54 = sdiv i32 %52, %53
  %55 = and i32 %54, 255
  store i32 %55, i32* %10, align 4
  %56 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %7, align 8
  %57 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @dev_dbg(i32 %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @TMD_VID, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %50
  %68 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %7, align 8
  %69 = load i32, i32* @tmd_write_display_brightness, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @mdfld_dsi_send_mcs_short(%struct.mdfld_dsi_pkg_sender* %68, i32 %69, i32 %70, i32 1, i32 1)
  br label %89

72:                                               ; preds = %50
  %73 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %7, align 8
  %74 = load i32, i32* @write_display_brightness, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @mdfld_dsi_send_mcs_short(%struct.mdfld_dsi_pkg_sender* %73, i32 %74, i32 %75, i32 1, i32 1)
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 0, i32* %10, align 4
  br label %84

80:                                               ; preds = %72
  %81 = load %struct.drm_psb_private*, %struct.drm_psb_private** %8, align 8
  %82 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %80, %79
  %85 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %7, align 8
  %86 = load i32, i32* @write_ctrl_display, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @mdfld_dsi_send_mcs_short(%struct.mdfld_dsi_pkg_sender* %85, i32 %86, i32 %87, i32 1, i32 1)
  br label %89

89:                                               ; preds = %21, %48, %84, %67
  ret void
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @mdfld_get_panel_type(%struct.drm_device*, i32) #1

declare dso_local %struct.mdfld_dsi_pkg_sender* @mdfld_dsi_get_pkg_sender(%struct.mdfld_dsi_config*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @mdfld_dsi_send_mcs_short(%struct.mdfld_dsi_pkg_sender*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
