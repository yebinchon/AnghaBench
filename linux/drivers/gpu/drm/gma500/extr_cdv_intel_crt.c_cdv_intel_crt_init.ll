; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_crt.c_cdv_intel_crt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_crt.c_cdv_intel_crt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.psb_intel_mode_device = type { i32 }
%struct.gma_connector = type { %struct.drm_encoder, i32, i32 }
%struct.drm_encoder = type { i64, i64, i32 }
%struct.gma_encoder = type { %struct.drm_encoder, i32, i32 }
%struct.drm_connector = type { i64, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@cdv_intel_crt_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VGA = common dso_local global i32 0, align 4
@cdv_intel_crt_enc_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DAC = common dso_local global i32 0, align 4
@GPIOA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"CRTDDC_A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"DDC bus registration failed.\0A\00", align 1
@INTEL_OUTPUT_ANALOG = common dso_local global i32 0, align 4
@cdv_intel_crt_helper_funcs = common dso_local global i32 0, align 4
@cdv_intel_crt_connector_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdv_intel_crt_init(%struct.drm_device* %0, %struct.psb_intel_mode_device* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.psb_intel_mode_device*, align 8
  %5 = alloca %struct.gma_connector*, align 8
  %6 = alloca %struct.gma_encoder*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca %struct.drm_encoder*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.psb_intel_mode_device* %1, %struct.psb_intel_mode_device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.gma_encoder* @kzalloc(i32 32, i32 %10)
  store %struct.gma_encoder* %11, %struct.gma_encoder** %6, align 8
  %12 = load %struct.gma_encoder*, %struct.gma_encoder** %6, align 8
  %13 = icmp ne %struct.gma_encoder* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %90

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.gma_encoder* @kzalloc(i32 32, i32 %16)
  %18 = bitcast %struct.gma_encoder* %17 to %struct.gma_connector*
  store %struct.gma_connector* %18, %struct.gma_connector** %5, align 8
  %19 = load %struct.gma_connector*, %struct.gma_connector** %5, align 8
  %20 = icmp ne %struct.gma_connector* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %87

22:                                               ; preds = %15
  %23 = load %struct.gma_connector*, %struct.gma_connector** %5, align 8
  %24 = getelementptr inbounds %struct.gma_connector, %struct.gma_connector* %23, i32 0, i32 0
  %25 = bitcast %struct.drm_encoder* %24 to %struct.drm_connector*
  store %struct.drm_connector* %25, %struct.drm_connector** %7, align 8
  %26 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %27 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %28 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %30 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %31 = bitcast %struct.drm_connector* %30 to %struct.drm_encoder*
  %32 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %33 = call i32 @drm_connector_init(%struct.drm_device* %29, %struct.drm_encoder* %31, i32* @cdv_intel_crt_connector_funcs, i32 %32)
  %34 = load %struct.gma_encoder*, %struct.gma_encoder** %6, align 8
  %35 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %34, i32 0, i32 0
  store %struct.drm_encoder* %35, %struct.drm_encoder** %8, align 8
  %36 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %37 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %38 = load i32, i32* @DRM_MODE_ENCODER_DAC, align 4
  %39 = call i32 @drm_encoder_init(%struct.drm_device* %36, %struct.drm_encoder* %37, i32* @cdv_intel_crt_enc_funcs, i32 %38, i32* null)
  %40 = load %struct.gma_connector*, %struct.gma_connector** %5, align 8
  %41 = bitcast %struct.gma_connector* %40 to %struct.gma_encoder*
  %42 = load %struct.gma_encoder*, %struct.gma_encoder** %6, align 8
  %43 = call i32 @gma_connector_attach_encoder(%struct.gma_encoder* %41, %struct.gma_encoder* %42)
  %44 = load i32, i32* @GPIOA, align 4
  store i32 %44, i32* %9, align 4
  %45 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @psb_intel_i2c_create(%struct.drm_device* %45, i32 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.gma_encoder*, %struct.gma_encoder** %6, align 8
  %49 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.gma_encoder*, %struct.gma_encoder** %6, align 8
  %51 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %22
  %55 = load i32, i32* @KERN_ERR, align 4
  %56 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %57 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @dev_printk(i32 %55, i32* %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %77

61:                                               ; preds = %22
  %62 = load i32, i32* @INTEL_OUTPUT_ANALOG, align 4
  %63 = load %struct.gma_encoder*, %struct.gma_encoder** %6, align 8
  %64 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %66 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %68 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %70 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %69, i32* @cdv_intel_crt_helper_funcs)
  %71 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %72 = bitcast %struct.drm_connector* %71 to %struct.drm_encoder*
  %73 = call i32 @drm_connector_helper_add(%struct.drm_encoder* %72, i32* @cdv_intel_crt_connector_helper_funcs)
  %74 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %75 = bitcast %struct.drm_connector* %74 to %struct.drm_encoder*
  %76 = call i32 @drm_connector_register(%struct.drm_encoder* %75)
  br label %90

77:                                               ; preds = %54
  %78 = load %struct.gma_encoder*, %struct.gma_encoder** %6, align 8
  %79 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %78, i32 0, i32 0
  %80 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %79)
  %81 = load %struct.gma_connector*, %struct.gma_connector** %5, align 8
  %82 = getelementptr inbounds %struct.gma_connector, %struct.gma_connector* %81, i32 0, i32 0
  %83 = call i32 @drm_connector_cleanup(%struct.drm_encoder* %82)
  %84 = load %struct.gma_connector*, %struct.gma_connector** %5, align 8
  %85 = bitcast %struct.gma_connector* %84 to %struct.gma_encoder*
  %86 = call i32 @kfree(%struct.gma_encoder* %85)
  br label %87

87:                                               ; preds = %77, %21
  %88 = load %struct.gma_encoder*, %struct.gma_encoder** %6, align 8
  %89 = call i32 @kfree(%struct.gma_encoder* %88)
  br label %90

90:                                               ; preds = %87, %61, %14
  ret void
}

declare dso_local %struct.gma_encoder* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @gma_connector_attach_encoder(%struct.gma_encoder*, %struct.gma_encoder*) #1

declare dso_local i32 @psb_intel_i2c_create(%struct.drm_device*, i32, i8*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_encoder*, i32*) #1

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
