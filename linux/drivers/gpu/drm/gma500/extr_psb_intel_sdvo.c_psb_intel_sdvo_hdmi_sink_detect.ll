; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_hdmi_sink_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_hdmi_sink_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.psb_intel_sdvo = type { i32, i32, i32, i64 }
%struct.edid = type { i32 }
%struct.psb_intel_sdvo_connector = type { i64 }

@connector_status_unknown = common dso_local global i32 0, align 4
@DRM_EDID_INPUT_DIGITAL = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @psb_intel_sdvo_hdmi_sink_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psb_intel_sdvo_hdmi_sink_detect(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.psb_intel_sdvo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.edid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.psb_intel_sdvo_connector*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %10 = call %struct.psb_intel_sdvo* @intel_attached_sdvo(%struct.drm_connector* %9)
  store %struct.psb_intel_sdvo* %10, %struct.psb_intel_sdvo** %3, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %12 = call %struct.edid* @psb_intel_sdvo_get_edid(%struct.drm_connector* %11)
  store %struct.edid* %12, %struct.edid** %5, align 8
  %13 = load %struct.edid*, %struct.edid** %5, align 8
  %14 = icmp eq %struct.edid* %13, null
  br i1 %14, label %15, label %51

15:                                               ; preds = %1
  %16 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %3, align 8
  %17 = call i64 @psb_intel_sdvo_multifunc_encoder(%struct.psb_intel_sdvo* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %15
  %20 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %3, align 8
  %21 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %3, align 8
  %24 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = ashr i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %40, %19
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %3, align 8
  %33 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %35 = call %struct.edid* @psb_intel_sdvo_get_edid(%struct.drm_connector* %34)
  store %struct.edid* %35, %struct.edid** %5, align 8
  %36 = load %struct.edid*, %struct.edid** %5, align 8
  %37 = icmp ne %struct.edid* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %43

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %27

43:                                               ; preds = %38, %27
  %44 = load %struct.edid*, %struct.edid** %5, align 8
  %45 = icmp eq %struct.edid* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %3, align 8
  %49 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %43
  br label %51

51:                                               ; preds = %50, %15, %1
  %52 = load %struct.edid*, %struct.edid** %5, align 8
  %53 = icmp eq %struct.edid* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %56 = call %struct.edid* @psb_intel_sdvo_get_analog_edid(%struct.drm_connector* %55)
  store %struct.edid* %56, %struct.edid** %5, align 8
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* @connector_status_unknown, align 4
  store i32 %58, i32* %4, align 4
  %59 = load %struct.edid*, %struct.edid** %5, align 8
  %60 = icmp ne %struct.edid* %59, null
  br i1 %60, label %61, label %89

61:                                               ; preds = %57
  %62 = load %struct.edid*, %struct.edid** %5, align 8
  %63 = getelementptr inbounds %struct.edid, %struct.edid* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DRM_EDID_INPUT_DIGITAL, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %61
  %69 = load i32, i32* @connector_status_connected, align 4
  store i32 %69, i32* %4, align 4
  %70 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %3, align 8
  %71 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load %struct.edid*, %struct.edid** %5, align 8
  %76 = call i32 @drm_detect_hdmi_monitor(%struct.edid* %75)
  %77 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %3, align 8
  %78 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.edid*, %struct.edid** %5, align 8
  %80 = call i32 @drm_detect_monitor_audio(%struct.edid* %79)
  %81 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %3, align 8
  %82 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %74, %68
  br label %86

84:                                               ; preds = %61
  %85 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %83
  %87 = load %struct.edid*, %struct.edid** %5, align 8
  %88 = call i32 @kfree(%struct.edid* %87)
  br label %89

89:                                               ; preds = %86, %57
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @connector_status_connected, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %109

93:                                               ; preds = %89
  %94 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %95 = call %struct.psb_intel_sdvo_connector* @to_psb_intel_sdvo_connector(%struct.drm_connector* %94)
  store %struct.psb_intel_sdvo_connector* %95, %struct.psb_intel_sdvo_connector** %8, align 8
  %96 = load %struct.psb_intel_sdvo_connector*, %struct.psb_intel_sdvo_connector** %8, align 8
  %97 = getelementptr inbounds %struct.psb_intel_sdvo_connector, %struct.psb_intel_sdvo_connector* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %93
  %101 = load %struct.psb_intel_sdvo_connector*, %struct.psb_intel_sdvo_connector** %8, align 8
  %102 = getelementptr inbounds %struct.psb_intel_sdvo_connector, %struct.psb_intel_sdvo_connector* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %103, 0
  %105 = zext i1 %104 to i32
  %106 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %3, align 8
  %107 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %100, %93
  br label %109

109:                                              ; preds = %108, %89
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.psb_intel_sdvo* @intel_attached_sdvo(%struct.drm_connector*) #1

declare dso_local %struct.edid* @psb_intel_sdvo_get_edid(%struct.drm_connector*) #1

declare dso_local i64 @psb_intel_sdvo_multifunc_encoder(%struct.psb_intel_sdvo*) #1

declare dso_local %struct.edid* @psb_intel_sdvo_get_analog_edid(%struct.drm_connector*) #1

declare dso_local i32 @drm_detect_hdmi_monitor(%struct.edid*) #1

declare dso_local i32 @drm_detect_monitor_audio(%struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

declare dso_local %struct.psb_intel_sdvo_connector* @to_psb_intel_sdvo_connector(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
