; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_tmds_sink_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_tmds_sink_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.intel_sdvo = type { i32, i32, i32 }
%struct.intel_sdvo_connector = type { i64 }
%struct.edid = type { i32 }

@connector_status_unknown = common dso_local global i32 0, align 4
@DRM_EDID_INPUT_DIGITAL = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @intel_sdvo_tmds_sink_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_tmds_sink_detect(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.intel_sdvo*, align 8
  %4 = alloca %struct.intel_sdvo_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.edid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %10 = call %struct.intel_sdvo* @intel_attached_sdvo(%struct.drm_connector* %9)
  store %struct.intel_sdvo* %10, %struct.intel_sdvo** %3, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %12 = call %struct.intel_sdvo_connector* @to_intel_sdvo_connector(%struct.drm_connector* %11)
  store %struct.intel_sdvo_connector* %12, %struct.intel_sdvo_connector** %4, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %14 = call %struct.edid* @intel_sdvo_get_edid(%struct.drm_connector* %13)
  store %struct.edid* %14, %struct.edid** %6, align 8
  %15 = load %struct.edid*, %struct.edid** %6, align 8
  %16 = icmp eq %struct.edid* %15, null
  br i1 %16, label %17, label %53

17:                                               ; preds = %1
  %18 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %19 = call i64 @intel_sdvo_multifunc_encoder(%struct.intel_sdvo* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %17
  %22 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %23 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %26 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %42, %21
  %30 = load i32, i32* %7, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %35 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %37 = call %struct.edid* @intel_sdvo_get_edid(%struct.drm_connector* %36)
  store %struct.edid* %37, %struct.edid** %6, align 8
  %38 = load %struct.edid*, %struct.edid** %6, align 8
  %39 = icmp ne %struct.edid* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %45

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = ashr i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %29

45:                                               ; preds = %40, %29
  %46 = load %struct.edid*, %struct.edid** %6, align 8
  %47 = icmp eq %struct.edid* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %51 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %45
  br label %53

53:                                               ; preds = %52, %17, %1
  %54 = load %struct.edid*, %struct.edid** %6, align 8
  %55 = icmp eq %struct.edid* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %58 = call %struct.edid* @intel_sdvo_get_analog_edid(%struct.drm_connector* %57)
  store %struct.edid* %58, %struct.edid** %6, align 8
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* @connector_status_unknown, align 4
  store i32 %60, i32* %5, align 4
  %61 = load %struct.edid*, %struct.edid** %6, align 8
  %62 = icmp ne %struct.edid* %61, null
  br i1 %62, label %63, label %91

63:                                               ; preds = %59
  %64 = load %struct.edid*, %struct.edid** %6, align 8
  %65 = getelementptr inbounds %struct.edid, %struct.edid* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DRM_EDID_INPUT_DIGITAL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %63
  %71 = load i32, i32* @connector_status_connected, align 4
  store i32 %71, i32* %5, align 4
  %72 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %4, align 8
  %73 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = load %struct.edid*, %struct.edid** %6, align 8
  %78 = call i32 @drm_detect_hdmi_monitor(%struct.edid* %77)
  %79 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %80 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load %struct.edid*, %struct.edid** %6, align 8
  %82 = call i32 @drm_detect_monitor_audio(%struct.edid* %81)
  %83 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %84 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %76, %70
  br label %88

86:                                               ; preds = %63
  %87 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %86, %85
  %89 = load %struct.edid*, %struct.edid** %6, align 8
  %90 = call i32 @kfree(%struct.edid* %89)
  br label %91

91:                                               ; preds = %88, %59
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.intel_sdvo* @intel_attached_sdvo(%struct.drm_connector*) #1

declare dso_local %struct.intel_sdvo_connector* @to_intel_sdvo_connector(%struct.drm_connector*) #1

declare dso_local %struct.edid* @intel_sdvo_get_edid(%struct.drm_connector*) #1

declare dso_local i64 @intel_sdvo_multifunc_encoder(%struct.intel_sdvo*) #1

declare dso_local %struct.edid* @intel_sdvo_get_analog_edid(%struct.drm_connector*) #1

declare dso_local i32 @drm_detect_hdmi_monitor(%struct.edid*) #1

declare dso_local i32 @drm_detect_monitor_audio(%struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
