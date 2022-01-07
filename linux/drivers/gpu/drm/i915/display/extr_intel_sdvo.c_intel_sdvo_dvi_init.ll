; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_dvi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_dvi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_encoder }
%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { i32 }
%struct.intel_encoder = type { i32 }
%struct.intel_connector = type { i32, %struct.drm_connector }
%struct.intel_sdvo_connector = type { i32, i32, %struct.intel_connector }

@.str = private unnamed_addr constant [28 x i8] c"initialising DVI device %d\0A\00", align 1
@SDVO_OUTPUT_TMDS0 = common dso_local global i32 0, align 4
@SDVO_OUTPUT_TMDS1 = common dso_local global i32 0, align 4
@intel_sdvo_hotplug = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_CONNECT = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_DISCONNECT = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DVID = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_HDMIA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sdvo*, i32)* @intel_sdvo_dvi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_dvi_init(%struct.intel_sdvo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_sdvo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca %struct.intel_encoder*, align 8
  %9 = alloca %struct.intel_connector*, align 8
  %10 = alloca %struct.intel_sdvo_connector*, align 8
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %12 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.drm_encoder* %13, %struct.drm_encoder** %6, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %15 = call %struct.intel_encoder* @to_intel_encoder(%struct.drm_encoder* %14)
  store %struct.intel_encoder* %15, %struct.intel_encoder** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call %struct.intel_sdvo_connector* (...) @intel_sdvo_connector_alloc()
  store %struct.intel_sdvo_connector* %18, %struct.intel_sdvo_connector** %10, align 8
  %19 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %20 = icmp ne %struct.intel_sdvo_connector* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %113

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i32, i32* @SDVO_OUTPUT_TMDS0, align 4
  %27 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %28 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @SDVO_OUTPUT_TMDS0, align 4
  %32 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %33 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %47

34:                                               ; preds = %22
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i32, i32* @SDVO_OUTPUT_TMDS1, align 4
  %39 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %40 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @SDVO_OUTPUT_TMDS1, align 4
  %44 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %45 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %37, %34
  br label %47

47:                                               ; preds = %46, %25
  %48 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %49 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %48, i32 0, i32 2
  store %struct.intel_connector* %49, %struct.intel_connector** %9, align 8
  %50 = load %struct.intel_connector*, %struct.intel_connector** %9, align 8
  %51 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %50, i32 0, i32 1
  store %struct.drm_connector* %51, %struct.drm_connector** %7, align 8
  %52 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %53 = call i32 @intel_sdvo_get_hotplug_support(%struct.intel_sdvo* %52)
  %54 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %55 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %47
  %60 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %61 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %64 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* @intel_sdvo_hotplug, align 4
  %68 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %69 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %71 = call i32 @intel_sdvo_enable_hotplug(%struct.intel_encoder* %70)
  br label %78

72:                                               ; preds = %47
  %73 = load i32, i32* @DRM_CONNECTOR_POLL_CONNECT, align 4
  %74 = load i32, i32* @DRM_CONNECTOR_POLL_DISCONNECT, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.intel_connector*, %struct.intel_connector** %9, align 8
  %77 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %72, %59
  %79 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %80 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %81 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @DRM_MODE_CONNECTOR_DVID, align 4
  %83 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %84 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i64 @intel_sdvo_is_hdmi_connector(%struct.intel_sdvo* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %78
  %90 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %91 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %92 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %94 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  br label %95

95:                                               ; preds = %89, %78
  %96 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %97 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %98 = call i64 @intel_sdvo_connector_init(%struct.intel_sdvo_connector* %96, %struct.intel_sdvo* %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %102 = call i32 @kfree(%struct.intel_sdvo_connector* %101)
  store i32 0, i32* %3, align 4
  br label %113

103:                                              ; preds = %95
  %104 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %105 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %110 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %111 = call i32 @intel_sdvo_add_hdmi_properties(%struct.intel_sdvo* %109, %struct.intel_sdvo_connector* %110)
  br label %112

112:                                              ; preds = %108, %103
  store i32 1, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %100, %21
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.intel_encoder* @to_intel_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local %struct.intel_sdvo_connector* @intel_sdvo_connector_alloc(...) #1

declare dso_local i32 @intel_sdvo_get_hotplug_support(%struct.intel_sdvo*) #1

declare dso_local i32 @intel_sdvo_enable_hotplug(%struct.intel_encoder*) #1

declare dso_local i64 @intel_sdvo_is_hdmi_connector(%struct.intel_sdvo*, i32) #1

declare dso_local i64 @intel_sdvo_connector_init(%struct.intel_sdvo_connector*, %struct.intel_sdvo*) #1

declare dso_local i32 @kfree(%struct.intel_sdvo_connector*) #1

declare dso_local i32 @intel_sdvo_add_hdmi_properties(%struct.intel_sdvo*, %struct.intel_sdvo_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
