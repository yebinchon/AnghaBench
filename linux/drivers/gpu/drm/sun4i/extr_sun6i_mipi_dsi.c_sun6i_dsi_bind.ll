; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_device = type { %struct.sun4i_drv* }
%struct.sun4i_drv = type { i32 }
%struct.sun6i_dsi = type { %struct.TYPE_5__, i32, i32, i32, %struct.sun4i_drv* }
%struct.TYPE_5__ = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@sun6i_dsi_enc_helper_funcs = common dso_local global i32 0, align 4
@sun6i_dsi_enc_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Couldn't initialise the DSI encoder\0A\00", align 1
@sun6i_dsi_connector_helper_funcs = common dso_local global i32 0, align 4
@sun6i_dsi_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Couldn't initialise the DSI connector\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @sun6i_dsi_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_dsi_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.sun4i_drv*, align 8
  %10 = alloca %struct.sun6i_dsi*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.drm_device*
  store %struct.drm_device* %13, %struct.drm_device** %8, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.sun4i_drv*, %struct.sun4i_drv** %15, align 8
  store %struct.sun4i_drv* %16, %struct.sun4i_drv** %9, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.sun6i_dsi* @dev_get_drvdata(%struct.device* %17)
  store %struct.sun6i_dsi* %18, %struct.sun6i_dsi** %10, align 8
  %19 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %10, align 8
  %20 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EPROBE_DEFER, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %83

26:                                               ; preds = %3
  %27 = load %struct.sun4i_drv*, %struct.sun4i_drv** %9, align 8
  %28 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %10, align 8
  %29 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %28, i32 0, i32 4
  store %struct.sun4i_drv* %27, %struct.sun4i_drv** %29, align 8
  %30 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %10, align 8
  %31 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %30, i32 0, i32 0
  %32 = call i32 @drm_encoder_helper_add(%struct.TYPE_5__* %31, i32* @sun6i_dsi_enc_helper_funcs)
  %33 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %34 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %10, align 8
  %35 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %34, i32 0, i32 0
  %36 = load i32, i32* @DRM_MODE_ENCODER_DSI, align 4
  %37 = call i32 @drm_encoder_init(%struct.drm_device* %33, %struct.TYPE_5__* %35, i32* @sun6i_dsi_enc_funcs, i32 %36, i32* null)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %26
  %41 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %10, align 8
  %42 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %4, align 4
  br label %83

46:                                               ; preds = %26
  %47 = call i32 @BIT(i32 0)
  %48 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %10, align 8
  %49 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %10, align 8
  %52 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %51, i32 0, i32 1
  %53 = call i32 @drm_connector_helper_add(i32* %52, i32* @sun6i_dsi_connector_helper_funcs)
  %54 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %55 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %10, align 8
  %56 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %55, i32 0, i32 1
  %57 = load i32, i32* @DRM_MODE_CONNECTOR_DSI, align 4
  %58 = call i32 @drm_connector_init(%struct.drm_device* %54, i32* %56, i32* @sun6i_dsi_connector_funcs, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %46
  %62 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %10, align 8
  %63 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %78

66:                                               ; preds = %46
  %67 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %10, align 8
  %68 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %67, i32 0, i32 1
  %69 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %10, align 8
  %70 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %69, i32 0, i32 0
  %71 = call i32 @drm_connector_attach_encoder(i32* %68, %struct.TYPE_5__* %70)
  %72 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %10, align 8
  %73 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %10, align 8
  %76 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %75, i32 0, i32 1
  %77 = call i32 @drm_panel_attach(i32 %74, i32* %76)
  store i32 0, i32* %4, align 4
  br label %83

78:                                               ; preds = %61
  %79 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %10, align 8
  %80 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %79, i32 0, i32 0
  %81 = call i32 @drm_encoder_cleanup(%struct.TYPE_5__* %80)
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %78, %66, %40, %23
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.sun6i_dsi* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.TYPE_5__*, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @drm_connector_helper_add(i32*, i32*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, i32*, i32*, i32) #1

declare dso_local i32 @drm_connector_attach_encoder(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @drm_panel_attach(i32, i32*) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
