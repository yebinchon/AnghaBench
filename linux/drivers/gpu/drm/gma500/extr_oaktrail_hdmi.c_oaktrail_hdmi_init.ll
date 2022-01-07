; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi.c_oaktrail_hdmi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi.c_oaktrail_hdmi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.psb_intel_mode_device = type { i32 }
%struct.gma_encoder = type { i32, %struct.drm_encoder }
%struct.drm_encoder = type { i32 }
%struct.gma_connector = type { %struct.drm_connector }
%struct.drm_connector = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@oaktrail_hdmi_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DVID = common dso_local global i32 0, align 4
@oaktrail_hdmi_enc_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@oaktrail_hdmi_helper_funcs = common dso_local global i32 0, align 4
@oaktrail_hdmi_connector_helper_funcs = common dso_local global i32 0, align 4
@SubPixelHorizontalRGB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"HDMI initialised.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oaktrail_hdmi_init(%struct.drm_device* %0, %struct.psb_intel_mode_device* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.psb_intel_mode_device*, align 8
  %5 = alloca %struct.gma_encoder*, align 8
  %6 = alloca %struct.gma_connector*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca %struct.drm_encoder*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.psb_intel_mode_device* %1, %struct.psb_intel_mode_device** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kzalloc(i32 8, i32 %9)
  %11 = bitcast i8* %10 to %struct.gma_encoder*
  store %struct.gma_encoder* %11, %struct.gma_encoder** %5, align 8
  %12 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %13 = icmp ne %struct.gma_encoder* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %62

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kzalloc(i32 12, i32 %16)
  %18 = bitcast i8* %17 to %struct.gma_connector*
  store %struct.gma_connector* %18, %struct.gma_connector** %6, align 8
  %19 = load %struct.gma_connector*, %struct.gma_connector** %6, align 8
  %20 = icmp ne %struct.gma_connector* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %59

22:                                               ; preds = %15
  %23 = load %struct.gma_connector*, %struct.gma_connector** %6, align 8
  %24 = getelementptr inbounds %struct.gma_connector, %struct.gma_connector* %23, i32 0, i32 0
  store %struct.drm_connector* %24, %struct.drm_connector** %7, align 8
  %25 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %26 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %25, i32 0, i32 1
  store %struct.drm_encoder* %26, %struct.drm_encoder** %8, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %28 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %29 = load i32, i32* @DRM_MODE_CONNECTOR_DVID, align 4
  %30 = call i32 @drm_connector_init(%struct.drm_device* %27, %struct.drm_connector* %28, i32* @oaktrail_hdmi_connector_funcs, i32 %29)
  %31 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %32 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %33 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %34 = call i32 @drm_encoder_init(%struct.drm_device* %31, %struct.drm_encoder* %32, i32* @oaktrail_hdmi_enc_funcs, i32 %33, i32* null)
  %35 = load %struct.gma_connector*, %struct.gma_connector** %6, align 8
  %36 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %37 = call i32 @gma_connector_attach_encoder(%struct.gma_connector* %35, %struct.gma_encoder* %36)
  %38 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %39 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %40 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %42 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %41, i32* @oaktrail_hdmi_helper_funcs)
  %43 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %44 = call i32 @drm_connector_helper_add(%struct.drm_connector* %43, i32* @oaktrail_hdmi_connector_helper_funcs)
  %45 = load i32, i32* @SubPixelHorizontalRGB, align 4
  %46 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %47 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %50 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  %51 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %52 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  %53 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %54 = call i32 @drm_connector_register(%struct.drm_connector* %53)
  %55 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %56 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_info(i32 %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %62

59:                                               ; preds = %21
  %60 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %61 = call i32 @kfree(%struct.gma_encoder* %60)
  br label %62

62:                                               ; preds = %59, %22, %14
  ret void
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @gma_connector_attach_encoder(%struct.gma_connector*, %struct.gma_encoder*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_register(%struct.drm_connector*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @kfree(%struct.gma_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
