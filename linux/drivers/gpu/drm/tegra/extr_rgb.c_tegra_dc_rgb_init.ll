; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_rgb.c_tegra_dc_rgb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_rgb.c_tegra_dc_rgb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.tegra_dc = type { i32, %struct.tegra_output* }
%struct.tegra_output = type { %struct.TYPE_8__, i32, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@tegra_rgb_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i32 0, align 4
@tegra_rgb_connector_helper_funcs = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@tegra_rgb_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_LVDS = common dso_local global i32 0, align 4
@tegra_rgb_encoder_helper_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to initialize output: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_dc_rgb_init(%struct.drm_device* %0, %struct.tegra_dc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.tegra_dc*, align 8
  %6 = alloca %struct.tegra_output*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.tegra_dc* %1, %struct.tegra_dc** %5, align 8
  %8 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %9 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %8, i32 0, i32 1
  %10 = load %struct.tegra_output*, %struct.tegra_output** %9, align 8
  store %struct.tegra_output* %10, %struct.tegra_output** %6, align 8
  %11 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %12 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %11, i32 0, i32 1
  %13 = load %struct.tegra_output*, %struct.tegra_output** %12, align 8
  %14 = icmp ne %struct.tegra_output* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %66

18:                                               ; preds = %2
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = load %struct.tegra_output*, %struct.tegra_output** %6, align 8
  %21 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %20, i32 0, i32 2
  %22 = load i32, i32* @DRM_MODE_CONNECTOR_LVDS, align 4
  %23 = call i32 @drm_connector_init(%struct.drm_device* %19, %struct.TYPE_9__* %21, i32* @tegra_rgb_connector_funcs, i32 %22)
  %24 = load %struct.tegra_output*, %struct.tegra_output** %6, align 8
  %25 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %24, i32 0, i32 2
  %26 = call i32 @drm_connector_helper_add(%struct.TYPE_9__* %25, i32* @tegra_rgb_connector_helper_funcs)
  %27 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %28 = load %struct.tegra_output*, %struct.tegra_output** %6, align 8
  %29 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %32 = load %struct.tegra_output*, %struct.tegra_output** %6, align 8
  %33 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %32, i32 0, i32 0
  %34 = load i32, i32* @DRM_MODE_ENCODER_LVDS, align 4
  %35 = call i32 @drm_encoder_init(%struct.drm_device* %31, %struct.TYPE_8__* %33, i32* @tegra_rgb_encoder_funcs, i32 %34, i32* null)
  %36 = load %struct.tegra_output*, %struct.tegra_output** %6, align 8
  %37 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %36, i32 0, i32 0
  %38 = call i32 @drm_encoder_helper_add(%struct.TYPE_8__* %37, i32* @tegra_rgb_encoder_helper_funcs)
  %39 = load %struct.tegra_output*, %struct.tegra_output** %6, align 8
  %40 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %39, i32 0, i32 2
  %41 = load %struct.tegra_output*, %struct.tegra_output** %6, align 8
  %42 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %41, i32 0, i32 0
  %43 = call i32 @drm_connector_attach_encoder(%struct.TYPE_9__* %40, %struct.TYPE_8__* %42)
  %44 = load %struct.tegra_output*, %struct.tegra_output** %6, align 8
  %45 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %44, i32 0, i32 2
  %46 = call i32 @drm_connector_register(%struct.TYPE_9__* %45)
  %47 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %48 = load %struct.tegra_output*, %struct.tegra_output** %6, align 8
  %49 = call i32 @tegra_output_init(%struct.drm_device* %47, %struct.tegra_output* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %18
  %53 = load %struct.tegra_output*, %struct.tegra_output** %6, align 8
  %54 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %66

59:                                               ; preds = %18
  %60 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %61 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %60, i32 0, i32 0
  %62 = call i32 @drm_crtc_mask(i32* %61)
  %63 = load %struct.tegra_output*, %struct.tegra_output** %6, align 8
  %64 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %59, %52, %15
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.TYPE_8__*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i32 @drm_connector_register(%struct.TYPE_9__*) #1

declare dso_local i32 @tegra_output_init(%struct.drm_device*, %struct.tegra_output*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @drm_crtc_mask(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
