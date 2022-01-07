; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_hdmi.c_cdv_hdmi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_hdmi.c_cdv_hdmi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.psb_intel_mode_device = type { i32 }
%struct.gma_encoder = type { %struct.TYPE_6__*, i32, %struct.mid_intel_hdmi_priv*, i32, %struct.drm_encoder, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.mid_intel_hdmi_priv = type { i32, i32, %struct.drm_device*, i32* }
%struct.drm_encoder = type { i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.gma_connector = type { %struct.TYPE_6__*, i32, %struct.mid_intel_hdmi_priv*, i32, %struct.drm_encoder, i32, i32 }
%struct.drm_connector = type { i32, i32, i32, %struct.TYPE_4__, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@cdv_hdmi_save = common dso_local global i32 0, align 4
@cdv_hdmi_restore = common dso_local global i32 0, align 4
@cdv_hdmi_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DVID = common dso_local global i32 0, align 4
@psb_intel_lvds_enc_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@cdv_hdmi_helper_funcs = common dso_local global i32 0, align 4
@cdv_hdmi_connector_helper_funcs = common dso_local global i32 0, align 4
@SubPixelHorizontalRGB = common dso_local global i32 0, align 4
@DRM_MODE_SCALE_FULLSCREEN = common dso_local global i32 0, align 4
@GPIOE = common dso_local global i32 0, align 4
@DDI0_SELECT = common dso_local global i32 0, align 4
@GPIOD = common dso_local global i32 0, align 4
@DDI1_SELECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unknown reg 0x%x for HDMI\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"HDMIB\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"HDMIC\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"No ddc adapter available!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdv_hdmi_init(%struct.drm_device* %0, %struct.psb_intel_mode_device* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.psb_intel_mode_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gma_encoder*, align 8
  %8 = alloca %struct.gma_connector*, align 8
  %9 = alloca %struct.drm_connector*, align 8
  %10 = alloca %struct.drm_encoder*, align 8
  %11 = alloca %struct.mid_intel_hdmi_priv*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.psb_intel_mode_device* %1, %struct.psb_intel_mode_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kzalloc(i32 56, i32 %13)
  %15 = bitcast i8* %14 to %struct.gma_encoder*
  store %struct.gma_encoder* %15, %struct.gma_encoder** %7, align 8
  %16 = load %struct.gma_encoder*, %struct.gma_encoder** %7, align 8
  %17 = icmp ne %struct.gma_encoder* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %152

19:                                               ; preds = %3
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kzalloc(i32 56, i32 %20)
  %22 = bitcast i8* %21 to %struct.gma_connector*
  store %struct.gma_connector* %22, %struct.gma_connector** %8, align 8
  %23 = load %struct.gma_connector*, %struct.gma_connector** %8, align 8
  %24 = icmp ne %struct.gma_connector* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %149

26:                                               ; preds = %19
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kzalloc(i32 24, i32 %27)
  %29 = bitcast i8* %28 to %struct.mid_intel_hdmi_priv*
  store %struct.mid_intel_hdmi_priv* %29, %struct.mid_intel_hdmi_priv** %11, align 8
  %30 = load %struct.mid_intel_hdmi_priv*, %struct.mid_intel_hdmi_priv** %11, align 8
  %31 = icmp ne %struct.mid_intel_hdmi_priv* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %145

33:                                               ; preds = %26
  %34 = load %struct.gma_connector*, %struct.gma_connector** %8, align 8
  %35 = getelementptr inbounds %struct.gma_connector, %struct.gma_connector* %34, i32 0, i32 4
  %36 = bitcast %struct.drm_encoder* %35 to %struct.drm_connector*
  store %struct.drm_connector* %36, %struct.drm_connector** %9, align 8
  %37 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %38 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %39 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @cdv_hdmi_save, align 4
  %41 = load %struct.gma_connector*, %struct.gma_connector** %8, align 8
  %42 = getelementptr inbounds %struct.gma_connector, %struct.gma_connector* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @cdv_hdmi_restore, align 4
  %44 = load %struct.gma_connector*, %struct.gma_connector** %8, align 8
  %45 = getelementptr inbounds %struct.gma_connector, %struct.gma_connector* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.gma_encoder*, %struct.gma_encoder** %7, align 8
  %47 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %46, i32 0, i32 4
  store %struct.drm_encoder* %47, %struct.drm_encoder** %10, align 8
  %48 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %49 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %50 = bitcast %struct.drm_connector* %49 to %struct.drm_encoder*
  %51 = load i32, i32* @DRM_MODE_CONNECTOR_DVID, align 4
  %52 = call i32 @drm_connector_init(%struct.drm_device* %48, %struct.drm_encoder* %50, i32* @cdv_hdmi_connector_funcs, i32 %51)
  %53 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %54 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %55 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %56 = call i32 @drm_encoder_init(%struct.drm_device* %53, %struct.drm_encoder* %54, i32* @psb_intel_lvds_enc_funcs, i32 %55, i32* null)
  %57 = load %struct.gma_connector*, %struct.gma_connector** %8, align 8
  %58 = bitcast %struct.gma_connector* %57 to %struct.gma_encoder*
  %59 = load %struct.gma_encoder*, %struct.gma_encoder** %7, align 8
  %60 = call i32 @gma_connector_attach_encoder(%struct.gma_encoder* %58, %struct.gma_encoder* %59)
  %61 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %62 = load %struct.gma_encoder*, %struct.gma_encoder** %7, align 8
  %63 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.mid_intel_hdmi_priv*, %struct.mid_intel_hdmi_priv** %11, align 8
  %66 = getelementptr inbounds %struct.mid_intel_hdmi_priv, %struct.mid_intel_hdmi_priv* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.mid_intel_hdmi_priv*, %struct.mid_intel_hdmi_priv** %11, align 8
  %68 = getelementptr inbounds %struct.mid_intel_hdmi_priv, %struct.mid_intel_hdmi_priv* %67, i32 0, i32 1
  store i32 0, i32* %68, align 4
  %69 = load %struct.mid_intel_hdmi_priv*, %struct.mid_intel_hdmi_priv** %11, align 8
  %70 = load %struct.gma_encoder*, %struct.gma_encoder** %7, align 8
  %71 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %70, i32 0, i32 2
  store %struct.mid_intel_hdmi_priv* %69, %struct.mid_intel_hdmi_priv** %71, align 8
  %72 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %73 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %72, i32* @cdv_hdmi_helper_funcs)
  %74 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %75 = bitcast %struct.drm_connector* %74 to %struct.drm_encoder*
  %76 = call i32 @drm_connector_helper_add(%struct.drm_encoder* %75, i32* @cdv_hdmi_connector_helper_funcs)
  %77 = load i32, i32* @SubPixelHorizontalRGB, align 4
  %78 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %79 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  %81 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %82 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %81, i32 0, i32 0
  store i32 0, i32* %82, align 4
  %83 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %84 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %83, i32 0, i32 1
  store i32 0, i32* %84, align 4
  %85 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %86 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %85, i32 0, i32 2
  %87 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %88 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @DRM_MODE_SCALE_FULLSCREEN, align 4
  %92 = call i32 @drm_object_attach_property(i32* %86, i32 %90, i32 %91)
  %93 = load i32, i32* %6, align 4
  switch i32 %93, label %104 [
    i32 129, label %94
    i32 128, label %99
  ]

94:                                               ; preds = %33
  %95 = load i32, i32* @GPIOE, align 4
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* @DDI0_SELECT, align 4
  %97 = load %struct.gma_encoder*, %struct.gma_encoder** %7, align 8
  %98 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  br label %107

99:                                               ; preds = %33
  %100 = load i32, i32* @GPIOD, align 4
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* @DDI1_SELECT, align 4
  %102 = load %struct.gma_encoder*, %struct.gma_encoder** %7, align 8
  %103 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  br label %107

104:                                              ; preds = %33
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %105)
  br label %139

107:                                              ; preds = %99, %94
  %108 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp eq i32 %110, 129
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %114 = call %struct.TYPE_6__* @psb_intel_i2c_create(%struct.drm_device* %108, i32 %109, i8* %113)
  %115 = load %struct.gma_encoder*, %struct.gma_encoder** %7, align 8
  %116 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %115, i32 0, i32 0
  store %struct.TYPE_6__* %114, %struct.TYPE_6__** %116, align 8
  %117 = load %struct.gma_encoder*, %struct.gma_encoder** %7, align 8
  %118 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = icmp ne %struct.TYPE_6__* %119, null
  br i1 %120, label %126, label %121

121:                                              ; preds = %107
  %122 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %123 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dev_err(i32 %124, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %139

126:                                              ; preds = %107
  %127 = load %struct.gma_encoder*, %struct.gma_encoder** %7, align 8
  %128 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load %struct.mid_intel_hdmi_priv*, %struct.mid_intel_hdmi_priv** %11, align 8
  %132 = getelementptr inbounds %struct.mid_intel_hdmi_priv, %struct.mid_intel_hdmi_priv* %131, i32 0, i32 3
  store i32* %130, i32** %132, align 8
  %133 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %134 = load %struct.mid_intel_hdmi_priv*, %struct.mid_intel_hdmi_priv** %11, align 8
  %135 = getelementptr inbounds %struct.mid_intel_hdmi_priv, %struct.mid_intel_hdmi_priv* %134, i32 0, i32 2
  store %struct.drm_device* %133, %struct.drm_device** %135, align 8
  %136 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %137 = bitcast %struct.drm_connector* %136 to %struct.drm_encoder*
  %138 = call i32 @drm_connector_register(%struct.drm_encoder* %137)
  br label %152

139:                                              ; preds = %121, %104
  %140 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %141 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %140)
  %142 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %143 = bitcast %struct.drm_connector* %142 to %struct.drm_encoder*
  %144 = call i32 @drm_connector_cleanup(%struct.drm_encoder* %143)
  br label %145

145:                                              ; preds = %139, %32
  %146 = load %struct.gma_connector*, %struct.gma_connector** %8, align 8
  %147 = bitcast %struct.gma_connector* %146 to %struct.gma_encoder*
  %148 = call i32 @kfree(%struct.gma_encoder* %147)
  br label %149

149:                                              ; preds = %145, %25
  %150 = load %struct.gma_encoder*, %struct.gma_encoder** %7, align 8
  %151 = call i32 @kfree(%struct.gma_encoder* %150)
  br label %152

152:                                              ; preds = %149, %126, %18
  ret void
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @gma_connector_attach_encoder(%struct.gma_encoder*, %struct.gma_encoder*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @drm_object_attach_property(i32*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local %struct.TYPE_6__* @psb_intel_i2c_create(%struct.drm_device*, i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @drm_connector_register(%struct.drm_encoder*) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.drm_encoder*) #1

declare dso_local i32 @drm_connector_cleanup(%struct.drm_encoder*) #1

declare dso_local i32 @kfree(%struct.gma_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
