; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_sdvo = type { i32, i32, i32 }
%struct.intel_sdvo_connector = type { i32 }
%struct.edid = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"[CONNECTOR:%d:%s]\0A\00", align 1
@SDVO_CMD_GET_ATTACHED_DISPLAYS = common dso_local global i32 0, align 4
@connector_status_unknown = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"SDVO response %d %d [%x]\0A\00", align 1
@connector_status_disconnected = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @intel_sdvo_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_sdvo*, align 8
  %8 = alloca %struct.intel_sdvo_connector*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.edid*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %12 = call %struct.intel_sdvo* @intel_attached_sdvo(%struct.drm_connector* %11)
  store %struct.intel_sdvo* %12, %struct.intel_sdvo** %7, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %14 = call %struct.intel_sdvo_connector* @to_intel_sdvo_connector(%struct.drm_connector* %13)
  store %struct.intel_sdvo_connector* %14, %struct.intel_sdvo_connector** %8, align 8
  %15 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %16 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %20 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.intel_sdvo*, %struct.intel_sdvo** %7, align 8
  %24 = load i32, i32* @SDVO_CMD_GET_ATTACHED_DISPLAYS, align 4
  %25 = call i32 @intel_sdvo_get_value(%struct.intel_sdvo* %23, i32 %24, i32* %6, i32 2)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @connector_status_unknown, align 4
  store i32 %28, i32* %3, align 4
  br label %94

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 255
  %32 = load i32, i32* %6, align 4
  %33 = ashr i32 %32, 8
  %34 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %8, align 8
  %35 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %33, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %41, i32* %3, align 4
  br label %94

42:                                               ; preds = %29
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.intel_sdvo*, %struct.intel_sdvo** %7, align 8
  %45 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.intel_sdvo*, %struct.intel_sdvo** %7, align 8
  %47 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.intel_sdvo*, %struct.intel_sdvo** %7, align 8
  %49 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %48, i32 0, i32 2
  store i32 0, i32* %49, align 4
  %50 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %8, align 8
  %51 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %57, i32* %9, align 4
  br label %92

58:                                               ; preds = %42
  %59 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %8, align 8
  %60 = call i64 @IS_TMDS(%struct.intel_sdvo_connector* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %64 = call i32 @intel_sdvo_tmds_sink_detect(%struct.drm_connector* %63)
  store i32 %64, i32* %9, align 4
  br label %91

65:                                               ; preds = %58
  %66 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %67 = call %struct.edid* @intel_sdvo_get_edid(%struct.drm_connector* %66)
  store %struct.edid* %67, %struct.edid** %10, align 8
  %68 = load %struct.edid*, %struct.edid** %10, align 8
  %69 = icmp eq %struct.edid* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %72 = call %struct.edid* @intel_sdvo_get_analog_edid(%struct.drm_connector* %71)
  store %struct.edid* %72, %struct.edid** %10, align 8
  br label %73

73:                                               ; preds = %70, %65
  %74 = load %struct.edid*, %struct.edid** %10, align 8
  %75 = icmp ne %struct.edid* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %8, align 8
  %78 = load %struct.edid*, %struct.edid** %10, align 8
  %79 = call i64 @intel_sdvo_connector_matches_edid(%struct.intel_sdvo_connector* %77, %struct.edid* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @connector_status_connected, align 4
  store i32 %82, i32* %9, align 4
  br label %85

83:                                               ; preds = %76
  %84 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = load %struct.edid*, %struct.edid** %10, align 8
  %87 = call i32 @kfree(%struct.edid* %86)
  br label %90

88:                                               ; preds = %73
  %89 = load i32, i32* @connector_status_connected, align 4
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %88, %85
  br label %91

91:                                               ; preds = %90, %62
  br label %92

92:                                               ; preds = %91, %56
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %40, %27
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.intel_sdvo* @intel_attached_sdvo(%struct.drm_connector*) #1

declare dso_local %struct.intel_sdvo_connector* @to_intel_sdvo_connector(%struct.drm_connector*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, ...) #1

declare dso_local i32 @intel_sdvo_get_value(%struct.intel_sdvo*, i32, i32*, i32) #1

declare dso_local i64 @IS_TMDS(%struct.intel_sdvo_connector*) #1

declare dso_local i32 @intel_sdvo_tmds_sink_detect(%struct.drm_connector*) #1

declare dso_local %struct.edid* @intel_sdvo_get_edid(%struct.drm_connector*) #1

declare dso_local %struct.edid* @intel_sdvo_get_analog_edid(%struct.drm_connector*) #1

declare dso_local i64 @intel_sdvo_connector_matches_edid(%struct.intel_sdvo_connector*, %struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
