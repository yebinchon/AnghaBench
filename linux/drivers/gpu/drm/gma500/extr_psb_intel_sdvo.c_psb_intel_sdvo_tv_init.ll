; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_tv_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_tv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_intel_sdvo = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.drm_encoder }
%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { i32 }
%struct.gma_connector = type { %struct.drm_connector }
%struct.psb_intel_sdvo_connector = type { i32, %struct.gma_connector }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TVDAC = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_SVIDEO = common dso_local global i32 0, align 4
@INTEL_SDVO_TV_CLONE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psb_intel_sdvo*, i32)* @psb_intel_sdvo_tv_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psb_intel_sdvo_tv_init(%struct.psb_intel_sdvo* %0, i32 %1) #0 {
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
  %11 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  store %struct.drm_encoder* %12, %struct.drm_encoder** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.psb_intel_sdvo_connector* @kzalloc(i32 8, i32 %13)
  store %struct.psb_intel_sdvo_connector* %14, %struct.psb_intel_sdvo_connector** %9, align 8
  %15 = load %struct.psb_intel_sdvo_connector*, %struct.psb_intel_sdvo_connector** %9, align 8
  %16 = icmp ne %struct.psb_intel_sdvo_connector* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

18:                                               ; preds = %2
  %19 = load %struct.psb_intel_sdvo_connector*, %struct.psb_intel_sdvo_connector** %9, align 8
  %20 = getelementptr inbounds %struct.psb_intel_sdvo_connector, %struct.psb_intel_sdvo_connector* %19, i32 0, i32 1
  store %struct.gma_connector* %20, %struct.gma_connector** %8, align 8
  %21 = load %struct.gma_connector*, %struct.gma_connector** %8, align 8
  %22 = getelementptr inbounds %struct.gma_connector, %struct.gma_connector* %21, i32 0, i32 0
  store %struct.drm_connector* %22, %struct.drm_connector** %7, align 8
  %23 = load i32, i32* @DRM_MODE_ENCODER_TVDAC, align 4
  %24 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %25 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @DRM_MODE_CONNECTOR_SVIDEO, align 4
  %27 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %28 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %31 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.psb_intel_sdvo_connector*, %struct.psb_intel_sdvo_connector** %9, align 8
  %36 = getelementptr inbounds %struct.psb_intel_sdvo_connector, %struct.psb_intel_sdvo_connector* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %38 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %40 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load i32, i32* @INTEL_SDVO_TV_CLONE_BIT, align 4
  %43 = shl i32 1, %42
  %44 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %45 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.psb_intel_sdvo_connector*, %struct.psb_intel_sdvo_connector** %9, align 8
  %48 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %49 = call i32 @psb_intel_sdvo_connector_init(%struct.psb_intel_sdvo_connector* %47, %struct.psb_intel_sdvo* %48)
  %50 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %51 = load %struct.psb_intel_sdvo_connector*, %struct.psb_intel_sdvo_connector** %9, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @psb_intel_sdvo_tv_create_property(%struct.psb_intel_sdvo* %50, %struct.psb_intel_sdvo_connector* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %18
  br label %63

56:                                               ; preds = %18
  %57 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %58 = load %struct.psb_intel_sdvo_connector*, %struct.psb_intel_sdvo_connector** %9, align 8
  %59 = call i32 @psb_intel_sdvo_create_enhance_property(%struct.psb_intel_sdvo* %57, %struct.psb_intel_sdvo_connector* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %63

62:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %66

63:                                               ; preds = %61, %55
  %64 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %65 = call i32 @psb_intel_sdvo_destroy(%struct.drm_connector* %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %63, %62, %17
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.psb_intel_sdvo_connector* @kzalloc(i32, i32) #1

declare dso_local i32 @psb_intel_sdvo_connector_init(%struct.psb_intel_sdvo_connector*, %struct.psb_intel_sdvo*) #1

declare dso_local i32 @psb_intel_sdvo_tv_create_property(%struct.psb_intel_sdvo*, %struct.psb_intel_sdvo_connector*, i32) #1

declare dso_local i32 @psb_intel_sdvo_create_enhance_property(%struct.psb_intel_sdvo*, %struct.psb_intel_sdvo_connector*) #1

declare dso_local i32 @psb_intel_sdvo_destroy(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
