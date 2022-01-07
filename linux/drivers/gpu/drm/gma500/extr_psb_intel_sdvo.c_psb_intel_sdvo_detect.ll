; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.psb_intel_sdvo = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.psb_intel_sdvo_connector = type { i32 }
%struct.edid = type { i32 }

@SDVO_CMD_GET_ATTACHED_DISPLAYS = common dso_local global i32 0, align 4
@connector_status_unknown = common dso_local global i32 0, align 4
@SDVO_OUTPUT_SVID0 = common dso_local global i32 0, align 4
@SDVO_OUTPUT_CVBS0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"SDVO response %d %d [%x]\0A\00", align 1
@connector_status_disconnected = common dso_local global i32 0, align 4
@DRM_EDID_INPUT_DIGITAL = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@SDVO_TV_MASK = common dso_local global i32 0, align 4
@SDVO_LVDS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @psb_intel_sdvo_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psb_intel_sdvo_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.psb_intel_sdvo*, align 8
  %8 = alloca %struct.psb_intel_sdvo_connector*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.edid*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %12 = call %struct.psb_intel_sdvo* @intel_attached_sdvo(%struct.drm_connector* %11)
  store %struct.psb_intel_sdvo* %12, %struct.psb_intel_sdvo** %7, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %14 = call %struct.psb_intel_sdvo_connector* @to_psb_intel_sdvo_connector(%struct.drm_connector* %13)
  store %struct.psb_intel_sdvo_connector* %14, %struct.psb_intel_sdvo_connector** %8, align 8
  %15 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %7, align 8
  %16 = load i32, i32* @SDVO_CMD_GET_ATTACHED_DISPLAYS, align 4
  %17 = call i32 @psb_intel_sdvo_write_cmd(%struct.psb_intel_sdvo* %15, i32 %16, i32* null, i32 0)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @connector_status_unknown, align 4
  store i32 %20, i32* %3, align 4
  br label %142

21:                                               ; preds = %2
  %22 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %7, align 8
  %23 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %22, i32 0, i32 7
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SDVO_OUTPUT_SVID0, align 4
  %27 = load i32, i32* @SDVO_OUTPUT_CVBS0, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = call i32 @mdelay(i32 30)
  br label %33

33:                                               ; preds = %31, %21
  %34 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %7, align 8
  %35 = call i32 @psb_intel_sdvo_read_response(%struct.psb_intel_sdvo* %34, i32* %6, i32 2)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @connector_status_unknown, align 4
  store i32 %38, i32* %3, align 4
  br label %142

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 255
  %42 = load i32, i32* %6, align 4
  %43 = ashr i32 %42, 8
  %44 = load %struct.psb_intel_sdvo_connector*, %struct.psb_intel_sdvo_connector** %8, align 8
  %45 = getelementptr inbounds %struct.psb_intel_sdvo_connector, %struct.psb_intel_sdvo_connector* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %43, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %51, i32* %3, align 4
  br label %142

52:                                               ; preds = %39
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %7, align 8
  %55 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %7, align 8
  %57 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %7, align 8
  %59 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %58, i32 0, i32 2
  store i32 0, i32* %59, align 8
  %60 = load %struct.psb_intel_sdvo_connector*, %struct.psb_intel_sdvo_connector** %8, align 8
  %61 = getelementptr inbounds %struct.psb_intel_sdvo_connector, %struct.psb_intel_sdvo_connector* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %52
  %67 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %67, i32* %9, align 4
  br label %104

68:                                               ; preds = %52
  %69 = load %struct.psb_intel_sdvo_connector*, %struct.psb_intel_sdvo_connector** %8, align 8
  %70 = call i64 @IS_TMDS(%struct.psb_intel_sdvo_connector* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %74 = call i32 @psb_intel_sdvo_hdmi_sink_detect(%struct.drm_connector* %73)
  store i32 %74, i32* %9, align 4
  br label %103

75:                                               ; preds = %68
  %76 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %77 = call %struct.edid* @psb_intel_sdvo_get_edid(%struct.drm_connector* %76)
  store %struct.edid* %77, %struct.edid** %10, align 8
  %78 = load %struct.edid*, %struct.edid** %10, align 8
  %79 = icmp eq %struct.edid* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %82 = call %struct.edid* @psb_intel_sdvo_get_analog_edid(%struct.drm_connector* %81)
  store %struct.edid* %82, %struct.edid** %10, align 8
  br label %83

83:                                               ; preds = %80, %75
  %84 = load %struct.edid*, %struct.edid** %10, align 8
  %85 = icmp ne %struct.edid* %84, null
  br i1 %85, label %86, label %100

86:                                               ; preds = %83
  %87 = load %struct.edid*, %struct.edid** %10, align 8
  %88 = getelementptr inbounds %struct.edid, %struct.edid* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @DRM_EDID_INPUT_DIGITAL, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %94, i32* %9, align 4
  br label %97

95:                                               ; preds = %86
  %96 = load i32, i32* @connector_status_connected, align 4
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = load %struct.edid*, %struct.edid** %10, align 8
  %99 = call i32 @kfree(%struct.edid* %98)
  br label %102

100:                                              ; preds = %83
  %101 = load i32, i32* @connector_status_connected, align 4
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %100, %97
  br label %103

103:                                              ; preds = %102, %72
  br label %104

104:                                              ; preds = %103, %66
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @connector_status_connected, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %140

108:                                              ; preds = %104
  %109 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %7, align 8
  %110 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %109, i32 0, i32 3
  store i32 0, i32* %110, align 4
  %111 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %7, align 8
  %112 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %111, i32 0, i32 4
  store i32 0, i32* %112, align 8
  %113 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %7, align 8
  %114 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i32 0, i32* %115, align 8
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @SDVO_TV_MASK, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %108
  %121 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %7, align 8
  %122 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %121, i32 0, i32 3
  store i32 1, i32* %122, align 4
  %123 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %7, align 8
  %124 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  br label %126

126:                                              ; preds = %120, %108
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @SDVO_LVDS_MASK, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %7, align 8
  %133 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %132, i32 0, i32 5
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  %136 = zext i1 %135 to i32
  %137 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %7, align 8
  %138 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 8
  br label %139

139:                                              ; preds = %131, %126
  br label %140

140:                                              ; preds = %139, %104
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %140, %50, %37, %19
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local %struct.psb_intel_sdvo* @intel_attached_sdvo(%struct.drm_connector*) #1

declare dso_local %struct.psb_intel_sdvo_connector* @to_psb_intel_sdvo_connector(%struct.drm_connector*) #1

declare dso_local i32 @psb_intel_sdvo_write_cmd(%struct.psb_intel_sdvo*, i32, i32*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @psb_intel_sdvo_read_response(%struct.psb_intel_sdvo*, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32) #1

declare dso_local i64 @IS_TMDS(%struct.psb_intel_sdvo_connector*) #1

declare dso_local i32 @psb_intel_sdvo_hdmi_sink_detect(%struct.drm_connector*) #1

declare dso_local %struct.edid* @psb_intel_sdvo_get_edid(%struct.drm_connector*) #1

declare dso_local %struct.edid* @psb_intel_sdvo_get_analog_edid(%struct.drm_connector*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
