; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_output.c_mdfld_dsi_connector_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_output.c_mdfld_dsi_connector_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.drm_encoder* }
%struct.drm_encoder = type { i32, %struct.drm_encoder_helper_funcs*, %struct.TYPE_7__* }
%struct.drm_encoder_helper_funcs = type { i32 (%struct.drm_encoder.0*, %struct.TYPE_8__*, i32*)* }
%struct.drm_encoder.0 = type opaque
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.drm_property = type { i32 }
%struct.gma_crtc = type { i32, %struct.TYPE_8__ }

@.str = private unnamed_addr constant [13 x i8] c"scaling mode\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"backlight\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_property*, i32)* @mdfld_dsi_connector_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdfld_dsi_connector_set_property(%struct.drm_connector* %0, %struct.drm_property* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_property*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_encoder*, align 8
  %9 = alloca %struct.gma_crtc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_encoder_helper_funcs*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %5, align 8
  store %struct.drm_property* %1, %struct.drm_property** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 1
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %14, align 8
  store %struct.drm_encoder* %15, %struct.drm_encoder** %8, align 8
  %16 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %17 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strcmp(i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %124, label %21

21:                                               ; preds = %3
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %23 = icmp ne %struct.drm_encoder* %22, null
  br i1 %23, label %24, label %124

24:                                               ; preds = %21
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %26 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %25, i32 0, i32 2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = call %struct.gma_crtc* @to_gma_crtc(%struct.TYPE_7__* %27)
  store %struct.gma_crtc* %28, %struct.gma_crtc** %9, align 8
  %29 = load %struct.gma_crtc*, %struct.gma_crtc** %9, align 8
  %30 = icmp ne %struct.gma_crtc* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %151

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
  br label %151

38:                                               ; preds = %36, %35, %34
  %39 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %40 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %39, i32 0, i32 0
  %41 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %42 = call i64 @drm_object_property_get_value(i32* %40, %struct.drm_property* %41, i32* %11)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %151

45:                                               ; preds = %38
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %150

50:                                               ; preds = %45
  %51 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %52 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %51, i32 0, i32 0
  %53 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @drm_object_property_set_value(i32* %52, %struct.drm_property* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %151

58:                                               ; preds = %50
  %59 = load i32, i32* %11, align 4
  %60 = icmp eq i32 %59, 128
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 128
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi i1 [ true, %58 ], [ %63, %61 ]
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %10, align 4
  %67 = load %struct.gma_crtc*, %struct.gma_crtc** %9, align 8
  %68 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %123

72:                                               ; preds = %64
  %73 = load %struct.gma_crtc*, %struct.gma_crtc** %9, align 8
  %74 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %123

78:                                               ; preds = %72
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %108

81:                                               ; preds = %78
  %82 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %83 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %82, i32 0, i32 2
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load %struct.gma_crtc*, %struct.gma_crtc** %9, align 8
  %86 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %85, i32 0, i32 1
  %87 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %88 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %87, i32 0, i32 2
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %93 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %92, i32 0, i32 2
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %98 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %97, i32 0, i32 2
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @drm_crtc_helper_set_mode(%struct.TYPE_7__* %84, %struct.TYPE_8__* %86, i32 %91, i32 %96, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %81
  br label %151

107:                                              ; preds = %81
  br label %122

108:                                              ; preds = %78
  %109 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %110 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %109, i32 0, i32 1
  %111 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %110, align 8
  store %struct.drm_encoder_helper_funcs* %111, %struct.drm_encoder_helper_funcs** %12, align 8
  %112 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %12, align 8
  %113 = getelementptr inbounds %struct.drm_encoder_helper_funcs, %struct.drm_encoder_helper_funcs* %112, i32 0, i32 0
  %114 = load i32 (%struct.drm_encoder.0*, %struct.TYPE_8__*, i32*)*, i32 (%struct.drm_encoder.0*, %struct.TYPE_8__*, i32*)** %113, align 8
  %115 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %116 = bitcast %struct.drm_encoder* %115 to %struct.drm_encoder.0*
  %117 = load %struct.gma_crtc*, %struct.gma_crtc** %9, align 8
  %118 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %117, i32 0, i32 1
  %119 = load %struct.gma_crtc*, %struct.gma_crtc** %9, align 8
  %120 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %119, i32 0, i32 0
  %121 = call i32 %114(%struct.drm_encoder.0* %116, %struct.TYPE_8__* %118, i32* %120)
  br label %122

122:                                              ; preds = %108, %107
  br label %123

123:                                              ; preds = %122, %72, %64
  br label %149

124:                                              ; preds = %21, %3
  %125 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %126 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @strcmp(i32 %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %148, label %130

130:                                              ; preds = %124
  %131 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %132 = icmp ne %struct.drm_encoder* %131, null
  br i1 %132, label %133, label %148

133:                                              ; preds = %130
  %134 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %135 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %134, i32 0, i32 0
  %136 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %137 = load i32, i32* %7, align 4
  %138 = call i64 @drm_object_property_set_value(i32* %135, %struct.drm_property* %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %151

141:                                              ; preds = %133
  %142 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %143 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @gma_backlight_set(i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %141
  br label %148

148:                                              ; preds = %147, %130, %124
  br label %149

149:                                              ; preds = %148, %123
  br label %150

150:                                              ; preds = %149, %49
  store i32 0, i32* %4, align 4
  br label %152

151:                                              ; preds = %140, %106, %57, %44, %37, %31
  store i32 -1, i32* %4, align 4
  br label %152

152:                                              ; preds = %151, %150
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local %struct.gma_crtc* @to_gma_crtc(%struct.TYPE_7__*) #1

declare dso_local i64 @drm_object_property_get_value(i32*, %struct.drm_property*, i32*) #1

declare dso_local i64 @drm_object_property_set_value(i32*, %struct.drm_property*, i32) #1

declare dso_local i32 @drm_crtc_helper_set_mode(%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @gma_backlight_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
