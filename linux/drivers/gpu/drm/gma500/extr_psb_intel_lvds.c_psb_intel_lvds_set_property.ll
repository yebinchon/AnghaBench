; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_lvds.c_psb_intel_lvds_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_lvds.c_psb_intel_lvds_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.drm_encoder* }
%struct.drm_encoder = type { %struct.drm_encoder_helper_funcs*, i32, %struct.TYPE_6__* }
%struct.drm_encoder_helper_funcs = type { i32 (%struct.drm_encoder.0*, i32)* }
%struct.drm_encoder.0 = type opaque
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.drm_property = type { i32 }
%struct.gma_crtc = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"scaling mode\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"backlight\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DPMS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psb_intel_lvds_set_property(%struct.drm_connector* %0, %struct.drm_property* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_property*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_encoder*, align 8
  %9 = alloca %struct.gma_crtc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_encoder_helper_funcs*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %5, align 8
  store %struct.drm_property* %1, %struct.drm_property** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 1
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %13, align 8
  store %struct.drm_encoder* %14, %struct.drm_encoder** %8, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %16 = icmp ne %struct.drm_encoder* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %141

18:                                               ; preds = %3
  %19 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %20 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strcmp(i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %98, label %24

24:                                               ; preds = %18
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %26 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = call %struct.gma_crtc* @to_gma_crtc(%struct.TYPE_6__* %27)
  store %struct.gma_crtc* %28, %struct.gma_crtc** %9, align 8
  %29 = load %struct.gma_crtc*, %struct.gma_crtc** %9, align 8
  %30 = icmp ne %struct.gma_crtc* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %140

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  switch i32 %33, label %37 [
    i32 129, label %34
    i32 128, label %35
    i32 130, label %36
  ]

34:                                               ; preds = %32
  br label %38

35:                                               ; preds = %32
  br label %38

36:                                               ; preds = %32
  br label %38

37:                                               ; preds = %32
  br label %140

38:                                               ; preds = %36, %35, %34
  %39 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %40 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %39, i32 0, i32 0
  %41 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %42 = call i64 @drm_object_property_get_value(i32* %40, %struct.drm_property* %41, i32* %10)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %140

45:                                               ; preds = %38
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %139

50:                                               ; preds = %45
  %51 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %52 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %51, i32 0, i32 0
  %53 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @drm_object_property_set_value(i32* %52, %struct.drm_property* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %140

58:                                               ; preds = %50
  %59 = load %struct.gma_crtc*, %struct.gma_crtc** %9, align 8
  %60 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %97

64:                                               ; preds = %58
  %65 = load %struct.gma_crtc*, %struct.gma_crtc** %9, align 8
  %66 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %97

70:                                               ; preds = %64
  %71 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %72 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %71, i32 0, i32 2
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load %struct.gma_crtc*, %struct.gma_crtc** %9, align 8
  %75 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %74, i32 0, i32 0
  %76 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %77 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %76, i32 0, i32 2
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %82 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %81, i32 0, i32 2
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %87 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %86, i32 0, i32 2
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @drm_crtc_helper_set_mode(%struct.TYPE_6__* %73, %struct.TYPE_7__* %75, i32 %80, i32 %85, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %70
  br label %140

96:                                               ; preds = %70
  br label %97

97:                                               ; preds = %96, %64, %58
  br label %138

98:                                               ; preds = %18
  %99 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %100 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @strcmp(i32 %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %119, label %104

104:                                              ; preds = %98
  %105 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %106 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %105, i32 0, i32 0
  %107 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i64 @drm_object_property_set_value(i32* %106, %struct.drm_property* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %140

112:                                              ; preds = %104
  %113 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %114 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @gma_backlight_set(i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %112
  br label %137

119:                                              ; preds = %98
  %120 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %121 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @strcmp(i32 %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %136, label %125

125:                                              ; preds = %119
  %126 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %127 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %126, i32 0, i32 0
  %128 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %127, align 8
  store %struct.drm_encoder_helper_funcs* %128, %struct.drm_encoder_helper_funcs** %11, align 8
  %129 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %11, align 8
  %130 = getelementptr inbounds %struct.drm_encoder_helper_funcs, %struct.drm_encoder_helper_funcs* %129, i32 0, i32 0
  %131 = load i32 (%struct.drm_encoder.0*, i32)*, i32 (%struct.drm_encoder.0*, i32)** %130, align 8
  %132 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %133 = bitcast %struct.drm_encoder* %132 to %struct.drm_encoder.0*
  %134 = load i32, i32* %7, align 4
  %135 = call i32 %131(%struct.drm_encoder.0* %133, i32 %134)
  br label %136

136:                                              ; preds = %125, %119
  br label %137

137:                                              ; preds = %136, %118
  br label %138

138:                                              ; preds = %137, %97
  br label %139

139:                                              ; preds = %138, %49
  store i32 0, i32* %4, align 4
  br label %141

140:                                              ; preds = %111, %95, %57, %44, %37, %31
  store i32 -1, i32* %4, align 4
  br label %141

141:                                              ; preds = %140, %139, %17
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local %struct.gma_crtc* @to_gma_crtc(%struct.TYPE_6__*) #1

declare dso_local i64 @drm_object_property_get_value(i32*, %struct.drm_property*, i32*) #1

declare dso_local i64 @drm_object_property_set_value(i32*, %struct.drm_property*, i32) #1

declare dso_local i32 @drm_crtc_helper_set_mode(%struct.TYPE_6__*, %struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @gma_backlight_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
