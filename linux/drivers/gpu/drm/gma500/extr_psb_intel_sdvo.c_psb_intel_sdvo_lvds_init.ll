; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_lvds_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_lvds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_intel_sdvo = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.drm_encoder }
%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { i32 }
%struct.gma_connector = type { %struct.drm_connector }
%struct.psb_intel_sdvo_connector = type { i32, %struct.gma_connector }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_LVDS = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i32 0, align 4
@SDVO_OUTPUT_LVDS0 = common dso_local global i32 0, align 4
@SDVO_OUTPUT_LVDS1 = common dso_local global i32 0, align 4
@INTEL_ANALOG_CLONE_BIT = common dso_local global i32 0, align 4
@INTEL_SDVO_LVDS_CLONE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psb_intel_sdvo*, i32)* @psb_intel_sdvo_lvds_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psb_intel_sdvo_lvds_init(%struct.psb_intel_sdvo* %0, i32 %1) #0 {
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
  %11 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %10, i32 0, i32 0
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
  br label %74

18:                                               ; preds = %2
  %19 = load %struct.psb_intel_sdvo_connector*, %struct.psb_intel_sdvo_connector** %9, align 8
  %20 = getelementptr inbounds %struct.psb_intel_sdvo_connector, %struct.psb_intel_sdvo_connector* %19, i32 0, i32 1
  store %struct.gma_connector* %20, %struct.gma_connector** %8, align 8
  %21 = load %struct.gma_connector*, %struct.gma_connector** %8, align 8
  %22 = getelementptr inbounds %struct.gma_connector, %struct.gma_connector* %21, i32 0, i32 0
  store %struct.drm_connector* %22, %struct.drm_connector** %7, align 8
  %23 = load i32, i32* @DRM_MODE_ENCODER_LVDS, align 4
  %24 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %25 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @DRM_MODE_CONNECTOR_LVDS, align 4
  %27 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %28 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %18
  %32 = load i32, i32* @SDVO_OUTPUT_LVDS0, align 4
  %33 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %34 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @SDVO_OUTPUT_LVDS0, align 4
  %38 = load %struct.psb_intel_sdvo_connector*, %struct.psb_intel_sdvo_connector** %9, align 8
  %39 = getelementptr inbounds %struct.psb_intel_sdvo_connector, %struct.psb_intel_sdvo_connector* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %53

40:                                               ; preds = %18
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load i32, i32* @SDVO_OUTPUT_LVDS1, align 4
  %45 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %46 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @SDVO_OUTPUT_LVDS1, align 4
  %50 = load %struct.psb_intel_sdvo_connector*, %struct.psb_intel_sdvo_connector** %9, align 8
  %51 = getelementptr inbounds %struct.psb_intel_sdvo_connector, %struct.psb_intel_sdvo_connector* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %43, %40
  br label %53

53:                                               ; preds = %52, %31
  %54 = load i32, i32* @INTEL_ANALOG_CLONE_BIT, align 4
  %55 = shl i32 1, %54
  %56 = load i32, i32* @INTEL_SDVO_LVDS_CLONE_BIT, align 4
  %57 = shl i32 1, %56
  %58 = or i32 %55, %57
  %59 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %60 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load %struct.psb_intel_sdvo_connector*, %struct.psb_intel_sdvo_connector** %9, align 8
  %63 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %64 = call i32 @psb_intel_sdvo_connector_init(%struct.psb_intel_sdvo_connector* %62, %struct.psb_intel_sdvo* %63)
  %65 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %66 = load %struct.psb_intel_sdvo_connector*, %struct.psb_intel_sdvo_connector** %9, align 8
  %67 = call i32 @psb_intel_sdvo_create_enhance_property(%struct.psb_intel_sdvo* %65, %struct.psb_intel_sdvo_connector* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %53
  br label %71

70:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %74

71:                                               ; preds = %69
  %72 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %73 = call i32 @psb_intel_sdvo_destroy(%struct.drm_connector* %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %70, %17
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.psb_intel_sdvo_connector* @kzalloc(i32, i32) #1

declare dso_local i32 @psb_intel_sdvo_connector_init(%struct.psb_intel_sdvo_connector*, %struct.psb_intel_sdvo*) #1

declare dso_local i32 @psb_intel_sdvo_create_enhance_property(%struct.psb_intel_sdvo*, %struct.psb_intel_sdvo_connector*) #1

declare dso_local i32 @psb_intel_sdvo_destroy(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
