; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_add_display_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_add_display_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.drm_display_info }
%struct.drm_display_info = type { i32, i32, i32, i32, i32 }
%struct.edid = type { i32, i32, i32, i32, i32 }

@EDID_QUIRK_NON_DESKTOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"non_desktop set to %d\0A\00", align 1
@DRM_EDID_INPUT_DIGITAL = common dso_local global i32 0, align 4
@DRM_EDID_DIGITAL_DFP_1_X = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"%s: Assigning DFP sink color depth as %d bpc.\0A\00", align 1
@DRM_EDID_DIGITAL_DEPTH_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"%s: Assigning EDID-1.4 digital sink color depth as %d bpc.\0A\00", align 1
@DRM_COLOR_FORMAT_RGB444 = common dso_local global i32 0, align 4
@DRM_EDID_FEATURE_RGB_YCRCB444 = common dso_local global i32 0, align 4
@DRM_COLOR_FORMAT_YCRCB444 = common dso_local global i32 0, align 4
@DRM_EDID_FEATURE_RGB_YCRCB422 = common dso_local global i32 0, align 4
@DRM_COLOR_FORMAT_YCRCB422 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_add_display_info(%struct.drm_connector* %0, %struct.edid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.edid*, align 8
  %6 = alloca %struct.drm_display_info*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.edid* %1, %struct.edid** %5, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %9 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %8, i32 0, i32 1
  store %struct.drm_display_info* %9, %struct.drm_display_info** %6, align 8
  %10 = load %struct.edid*, %struct.edid** %5, align 8
  %11 = call i32 @edid_get_quirks(%struct.edid* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = call i32 @drm_reset_display_info(%struct.drm_connector* %12)
  %14 = load %struct.edid*, %struct.edid** %5, align 8
  %15 = getelementptr inbounds %struct.edid, %struct.edid* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 10
  %18 = load %struct.drm_display_info*, %struct.drm_display_info** %6, align 8
  %19 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.edid*, %struct.edid** %5, align 8
  %21 = getelementptr inbounds %struct.edid, %struct.edid* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 10
  %24 = load %struct.drm_display_info*, %struct.drm_display_info** %6, align 8
  %25 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @EDID_QUIRK_NON_DESKTOP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load %struct.drm_display_info*, %struct.drm_display_info** %6, align 8
  %34 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.drm_display_info*, %struct.drm_display_info** %6, align 8
  %36 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.edid*, %struct.edid** %5, align 8
  %40 = getelementptr inbounds %struct.edid, %struct.edid* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %159

45:                                               ; preds = %2
  %46 = load %struct.edid*, %struct.edid** %5, align 8
  %47 = getelementptr inbounds %struct.edid, %struct.edid* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DRM_EDID_INPUT_DIGITAL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %159

54:                                               ; preds = %45
  %55 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %56 = load %struct.edid*, %struct.edid** %5, align 8
  %57 = call i32 @drm_parse_cea_ext(%struct.drm_connector* %55, %struct.edid* %56)
  %58 = load %struct.drm_display_info*, %struct.drm_display_info** %6, align 8
  %59 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %54
  %63 = load %struct.edid*, %struct.edid** %5, align 8
  %64 = getelementptr inbounds %struct.edid, %struct.edid* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %67, label %84

67:                                               ; preds = %62
  %68 = load %struct.edid*, %struct.edid** %5, align 8
  %69 = getelementptr inbounds %struct.edid, %struct.edid* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @DRM_EDID_DIGITAL_DFP_1_X, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %67
  %75 = load %struct.drm_display_info*, %struct.drm_display_info** %6, align 8
  %76 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %75, i32 0, i32 3
  store i32 8, i32* %76, align 4
  %77 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %78 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.drm_display_info*, %struct.drm_display_info** %6, align 8
  %81 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %74, %67, %62, %54
  %85 = load %struct.edid*, %struct.edid** %5, align 8
  %86 = getelementptr inbounds %struct.edid, %struct.edid* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %87, 4
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %159

91:                                               ; preds = %84
  %92 = load %struct.edid*, %struct.edid** %5, align 8
  %93 = getelementptr inbounds %struct.edid, %struct.edid* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @DRM_EDID_DIGITAL_DEPTH_MASK, align 4
  %96 = and i32 %94, %95
  switch i32 %96, label %116 [
    i32 130, label %97
    i32 129, label %100
    i32 134, label %103
    i32 133, label %106
    i32 132, label %109
    i32 131, label %112
    i32 128, label %115
  ]

97:                                               ; preds = %91
  %98 = load %struct.drm_display_info*, %struct.drm_display_info** %6, align 8
  %99 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %98, i32 0, i32 3
  store i32 6, i32* %99, align 4
  br label %119

100:                                              ; preds = %91
  %101 = load %struct.drm_display_info*, %struct.drm_display_info** %6, align 8
  %102 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %101, i32 0, i32 3
  store i32 8, i32* %102, align 4
  br label %119

103:                                              ; preds = %91
  %104 = load %struct.drm_display_info*, %struct.drm_display_info** %6, align 8
  %105 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %104, i32 0, i32 3
  store i32 10, i32* %105, align 4
  br label %119

106:                                              ; preds = %91
  %107 = load %struct.drm_display_info*, %struct.drm_display_info** %6, align 8
  %108 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %107, i32 0, i32 3
  store i32 12, i32* %108, align 4
  br label %119

109:                                              ; preds = %91
  %110 = load %struct.drm_display_info*, %struct.drm_display_info** %6, align 8
  %111 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %110, i32 0, i32 3
  store i32 14, i32* %111, align 4
  br label %119

112:                                              ; preds = %91
  %113 = load %struct.drm_display_info*, %struct.drm_display_info** %6, align 8
  %114 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %113, i32 0, i32 3
  store i32 16, i32* %114, align 4
  br label %119

115:                                              ; preds = %91
  br label %116

116:                                              ; preds = %91, %115
  %117 = load %struct.drm_display_info*, %struct.drm_display_info** %6, align 8
  %118 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %117, i32 0, i32 3
  store i32 0, i32* %118, align 4
  br label %119

119:                                              ; preds = %116, %112, %109, %106, %103, %100, %97
  %120 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %121 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.drm_display_info*, %struct.drm_display_info** %6, align 8
  %124 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %122, i32 %125)
  %127 = load i32, i32* @DRM_COLOR_FORMAT_RGB444, align 4
  %128 = load %struct.drm_display_info*, %struct.drm_display_info** %6, align 8
  %129 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load %struct.edid*, %struct.edid** %5, align 8
  %133 = getelementptr inbounds %struct.edid, %struct.edid* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @DRM_EDID_FEATURE_RGB_YCRCB444, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %119
  %139 = load i32, i32* @DRM_COLOR_FORMAT_YCRCB444, align 4
  %140 = load %struct.drm_display_info*, %struct.drm_display_info** %6, align 8
  %141 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %138, %119
  %145 = load %struct.edid*, %struct.edid** %5, align 8
  %146 = getelementptr inbounds %struct.edid, %struct.edid* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @DRM_EDID_FEATURE_RGB_YCRCB422, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %144
  %152 = load i32, i32* @DRM_COLOR_FORMAT_YCRCB422, align 4
  %153 = load %struct.drm_display_info*, %struct.drm_display_info** %6, align 8
  %154 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %151, %144
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %157, %89, %52, %43
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @edid_get_quirks(%struct.edid*) #1

declare dso_local i32 @drm_reset_display_info(%struct.drm_connector*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @drm_parse_cea_ext(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
