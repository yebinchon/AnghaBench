; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_dvi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_dvi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_intel_sdvo = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.drm_encoder }
%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { i32 }
%struct.gma_connector = type { %struct.drm_connector }
%struct.psb_intel_sdvo_connector = type { %struct.gma_connector, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SDVO_OUTPUT_TMDS0 = common dso_local global i32 0, align 4
@SDVO_OUTPUT_TMDS1 = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DVID = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_HDMIA = common dso_local global i32 0, align 4
@INTEL_SDVO_NON_TV_CLONE_BIT = common dso_local global i32 0, align 4
@INTEL_ANALOG_CLONE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psb_intel_sdvo*, i32)* @psb_intel_sdvo_dvi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psb_intel_sdvo_dvi_init(%struct.psb_intel_sdvo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psb_intel_sdvo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca %struct.gma_connector*, align 8
  %9 = alloca %struct.psb_intel_sdvo_connector*, align 8
  store %struct.psb_intel_sdvo* %0, %struct.psb_intel_sdvo** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %11 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store %struct.drm_encoder* %12, %struct.drm_encoder** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.psb_intel_sdvo_connector* @kzalloc(i32 8, i32 %13)
  store %struct.psb_intel_sdvo_connector* %14, %struct.psb_intel_sdvo_connector** %9, align 8
  %15 = load %struct.psb_intel_sdvo_connector*, %struct.psb_intel_sdvo_connector** %9, align 8
  %16 = icmp ne %struct.psb_intel_sdvo_connector* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %84

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i32, i32* @SDVO_OUTPUT_TMDS0, align 4
  %23 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %24 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @SDVO_OUTPUT_TMDS0, align 4
  %28 = load %struct.psb_intel_sdvo_connector*, %struct.psb_intel_sdvo_connector** %9, align 8
  %29 = getelementptr inbounds %struct.psb_intel_sdvo_connector, %struct.psb_intel_sdvo_connector* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %43

30:                                               ; preds = %18
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32, i32* @SDVO_OUTPUT_TMDS1, align 4
  %35 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %36 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @SDVO_OUTPUT_TMDS1, align 4
  %40 = load %struct.psb_intel_sdvo_connector*, %struct.psb_intel_sdvo_connector** %9, align 8
  %41 = getelementptr inbounds %struct.psb_intel_sdvo_connector, %struct.psb_intel_sdvo_connector* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %33, %30
  br label %43

43:                                               ; preds = %42, %21
  %44 = load %struct.psb_intel_sdvo_connector*, %struct.psb_intel_sdvo_connector** %9, align 8
  %45 = getelementptr inbounds %struct.psb_intel_sdvo_connector, %struct.psb_intel_sdvo_connector* %44, i32 0, i32 0
  store %struct.gma_connector* %45, %struct.gma_connector** %8, align 8
  %46 = load %struct.gma_connector*, %struct.gma_connector** %8, align 8
  %47 = getelementptr inbounds %struct.gma_connector, %struct.gma_connector* %46, i32 0, i32 0
  store %struct.drm_connector* %47, %struct.drm_connector** %7, align 8
  %48 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %49 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %50 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @DRM_MODE_CONNECTOR_DVID, align 4
  %52 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %53 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @psb_intel_sdvo_is_hdmi_connector(%struct.psb_intel_sdvo* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %43
  %59 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %60 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %61 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %63 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %58, %43
  %65 = load i32, i32* @INTEL_SDVO_NON_TV_CLONE_BIT, align 4
  %66 = shl i32 1, %65
  %67 = load i32, i32* @INTEL_ANALOG_CLONE_BIT, align 4
  %68 = shl i32 1, %67
  %69 = or i32 %66, %68
  %70 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %71 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  %73 = load %struct.psb_intel_sdvo_connector*, %struct.psb_intel_sdvo_connector** %9, align 8
  %74 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %75 = call i32 @psb_intel_sdvo_connector_init(%struct.psb_intel_sdvo_connector* %73, %struct.psb_intel_sdvo* %74)
  %76 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %77 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %64
  %81 = load %struct.psb_intel_sdvo_connector*, %struct.psb_intel_sdvo_connector** %9, align 8
  %82 = call i32 @psb_intel_sdvo_add_hdmi_properties(%struct.psb_intel_sdvo_connector* %81)
  br label %83

83:                                               ; preds = %80, %64
  store i32 1, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %17
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.psb_intel_sdvo_connector* @kzalloc(i32, i32) #1

declare dso_local i64 @psb_intel_sdvo_is_hdmi_connector(%struct.psb_intel_sdvo*, i32) #1

declare dso_local i32 @psb_intel_sdvo_connector_init(%struct.psb_intel_sdvo_connector*, %struct.psb_intel_sdvo*) #1

declare dso_local i32 @psb_intel_sdvo_add_hdmi_properties(%struct.psb_intel_sdvo_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
