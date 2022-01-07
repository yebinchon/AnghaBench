; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_output.c_mdfld_dsi_get_default_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_output.c_mdfld_dsi_get_default_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.mdfld_dsi_config = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"Invalid parameters\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TC35876X = common dso_local global i64 0, align 8
@TMD_VID = common dso_local global i64 0, align 8
@MDFLD_DSI_VIDEO_NON_BURST_MODE_SYNC_PULSE = common dso_local global i32 0, align 4
@MDFLD_DSI_VIDEO_NON_BURST_MODE_SYNC_EVENTS = common dso_local global i32 0, align 4
@MDFLD_DSI_VIDEO_BURST_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.mdfld_dsi_config*, i32)* @mdfld_dsi_get_default_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdfld_dsi_get_default_config(%struct.drm_device* %0, %struct.mdfld_dsi_config* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.mdfld_dsi_config*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.mdfld_dsi_config* %1, %struct.mdfld_dsi_config** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %9 = icmp ne %struct.drm_device* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %6, align 8
  %12 = icmp ne %struct.mdfld_dsi_config* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %10, %3
  %14 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %59

17:                                               ; preds = %10
  %18 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %6, align 8
  %19 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %18, i32 0, i32 0
  store i32 24, i32* %19, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @mdfld_get_panel_type(%struct.drm_device* %20, i32 %21)
  %23 = load i64, i64* @TC35876X, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %6, align 8
  %27 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %26, i32 0, i32 1
  store i32 4, i32* %27, align 4
  br label %31

28:                                               ; preds = %17
  %29 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %6, align 8
  %30 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %29, i32 0, i32 1
  store i32 2, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %6, align 8
  %33 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @mdfld_get_panel_type(%struct.drm_device* %34, i32 %35)
  %37 = load i64, i64* @TMD_VID, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i32, i32* @MDFLD_DSI_VIDEO_NON_BURST_MODE_SYNC_PULSE, align 4
  %41 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %6, align 8
  %42 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  br label %58

43:                                               ; preds = %31
  %44 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @mdfld_get_panel_type(%struct.drm_device* %44, i32 %45)
  %47 = load i64, i64* @TC35876X, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @MDFLD_DSI_VIDEO_NON_BURST_MODE_SYNC_EVENTS, align 4
  %51 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %6, align 8
  %52 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  br label %57

53:                                               ; preds = %43
  %54 = load i32, i32* @MDFLD_DSI_VIDEO_BURST_MODE, align 4
  %55 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %6, align 8
  %56 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %49
  br label %58

58:                                               ; preds = %57, %39
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %13
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @mdfld_get_panel_type(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
