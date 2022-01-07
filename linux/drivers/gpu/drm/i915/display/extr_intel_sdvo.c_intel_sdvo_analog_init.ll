; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_analog_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_analog_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_encoder }
%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { i32 }
%struct.intel_connector = type { i32, %struct.drm_connector }
%struct.intel_sdvo_connector = type { i32, %struct.intel_connector }

@.str = private unnamed_addr constant [31 x i8] c"initialising analog device %d\0A\00", align 1
@DRM_CONNECTOR_POLL_CONNECT = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DAC = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VGA = common dso_local global i32 0, align 4
@SDVO_OUTPUT_RGB0 = common dso_local global i32 0, align 4
@SDVO_OUTPUT_RGB1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sdvo*, i32)* @intel_sdvo_analog_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_analog_init(%struct.intel_sdvo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_sdvo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca %struct.intel_connector*, align 8
  %9 = alloca %struct.intel_sdvo_connector*, align 8
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %11 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.drm_encoder* %12, %struct.drm_encoder** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = call %struct.intel_sdvo_connector* (...) @intel_sdvo_connector_alloc()
  store %struct.intel_sdvo_connector* %15, %struct.intel_sdvo_connector** %9, align 8
  %16 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %9, align 8
  %17 = icmp ne %struct.intel_sdvo_connector* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

19:                                               ; preds = %2
  %20 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %9, align 8
  %21 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %20, i32 0, i32 1
  store %struct.intel_connector* %21, %struct.intel_connector** %8, align 8
  %22 = load %struct.intel_connector*, %struct.intel_connector** %8, align 8
  %23 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %22, i32 0, i32 1
  store %struct.drm_connector* %23, %struct.drm_connector** %7, align 8
  %24 = load i32, i32* @DRM_CONNECTOR_POLL_CONNECT, align 4
  %25 = load %struct.intel_connector*, %struct.intel_connector** %8, align 8
  %26 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @DRM_MODE_ENCODER_DAC, align 4
  %28 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %29 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %31 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %32 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %19
  %36 = load i32, i32* @SDVO_OUTPUT_RGB0, align 4
  %37 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %38 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @SDVO_OUTPUT_RGB0, align 4
  %42 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %9, align 8
  %43 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %57

44:                                               ; preds = %19
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i32, i32* @SDVO_OUTPUT_RGB1, align 4
  %49 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %50 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* @SDVO_OUTPUT_RGB1, align 4
  %54 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %9, align 8
  %55 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %47, %44
  br label %57

57:                                               ; preds = %56, %35
  %58 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %9, align 8
  %59 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %60 = call i64 @intel_sdvo_connector_init(%struct.intel_sdvo_connector* %58, %struct.intel_sdvo* %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %9, align 8
  %64 = call i32 @kfree(%struct.intel_sdvo_connector* %63)
  store i32 0, i32* %3, align 4
  br label %66

65:                                               ; preds = %57
  store i32 1, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %62, %18
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local %struct.intel_sdvo_connector* @intel_sdvo_connector_alloc(...) #1

declare dso_local i64 @intel_sdvo_connector_init(%struct.intel_sdvo_connector*, %struct.intel_sdvo*) #1

declare dso_local i32 @kfree(%struct.intel_sdvo_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
