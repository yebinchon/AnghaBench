; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_lvds.c_cdv_intel_lvds_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_lvds.c_cdv_intel_lvds_set_property.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_property*, i32)* @cdv_intel_lvds_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdv_intel_lvds_set_property(%struct.drm_connector* %0, %struct.drm_property* %1, i32 %2) #0 {
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
  %15 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %16 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strcmp(i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %97, label %20

20:                                               ; preds = %3
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %22 = icmp ne %struct.drm_encoder* %21, null
  br i1 %22, label %23, label %97

23:                                               ; preds = %20
  %24 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %25 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = call %struct.gma_crtc* @to_gma_crtc(%struct.TYPE_6__* %26)
  store %struct.gma_crtc* %27, %struct.gma_crtc** %9, align 8
  %28 = load %struct.gma_crtc*, %struct.gma_crtc** %9, align 8
  %29 = icmp ne %struct.gma_crtc* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %144

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %36 [
    i32 129, label %33
    i32 128, label %34
    i32 130, label %35
  ]

33:                                               ; preds = %31
  br label %37

34:                                               ; preds = %31
  br label %37

35:                                               ; preds = %31
  br label %37

36:                                               ; preds = %31
  store i32 -1, i32* %4, align 4
  br label %144

37:                                               ; preds = %35, %34, %33
  %38 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %39 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %38, i32 0, i32 0
  %40 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %41 = call i64 @drm_object_property_get_value(i32* %39, %struct.drm_property* %40, i32* %10)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  br label %144

44:                                               ; preds = %37
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %144

49:                                               ; preds = %44
  %50 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %51 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %50, i32 0, i32 0
  %52 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @drm_object_property_set_value(i32* %51, %struct.drm_property* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 -1, i32* %4, align 4
  br label %144

57:                                               ; preds = %49
  %58 = load %struct.gma_crtc*, %struct.gma_crtc** %9, align 8
  %59 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %96

63:                                               ; preds = %57
  %64 = load %struct.gma_crtc*, %struct.gma_crtc** %9, align 8
  %65 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %96

69:                                               ; preds = %63
  %70 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %71 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %70, i32 0, i32 2
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load %struct.gma_crtc*, %struct.gma_crtc** %9, align 8
  %74 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %73, i32 0, i32 0
  %75 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %76 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %75, i32 0, i32 2
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %81 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %80, i32 0, i32 2
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %86 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %85, i32 0, i32 2
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @drm_crtc_helper_set_mode(%struct.TYPE_6__* %72, %struct.TYPE_7__* %74, i32 %79, i32 %84, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %69
  store i32 -1, i32* %4, align 4
  br label %144

95:                                               ; preds = %69
  br label %96

96:                                               ; preds = %95, %63, %57
  br label %143

97:                                               ; preds = %20, %3
  %98 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %99 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @strcmp(i32 %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %121, label %103

103:                                              ; preds = %97
  %104 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %105 = icmp ne %struct.drm_encoder* %104, null
  br i1 %105, label %106, label %121

106:                                              ; preds = %103
  %107 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %108 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %107, i32 0, i32 0
  %109 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i64 @drm_object_property_set_value(i32* %108, %struct.drm_property* %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store i32 -1, i32* %4, align 4
  br label %144

114:                                              ; preds = %106
  %115 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %116 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @gma_backlight_set(i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %114
  br label %142

121:                                              ; preds = %103, %97
  %122 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %123 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @strcmp(i32 %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %141, label %127

127:                                              ; preds = %121
  %128 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %129 = icmp ne %struct.drm_encoder* %128, null
  br i1 %129, label %130, label %141

130:                                              ; preds = %127
  %131 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %132 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %131, i32 0, i32 0
  %133 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %132, align 8
  store %struct.drm_encoder_helper_funcs* %133, %struct.drm_encoder_helper_funcs** %11, align 8
  %134 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %11, align 8
  %135 = getelementptr inbounds %struct.drm_encoder_helper_funcs, %struct.drm_encoder_helper_funcs* %134, i32 0, i32 0
  %136 = load i32 (%struct.drm_encoder.0*, i32)*, i32 (%struct.drm_encoder.0*, i32)** %135, align 8
  %137 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %138 = bitcast %struct.drm_encoder* %137 to %struct.drm_encoder.0*
  %139 = load i32, i32* %7, align 4
  %140 = call i32 %136(%struct.drm_encoder.0* %138, i32 %139)
  br label %141

141:                                              ; preds = %130, %127, %121
  br label %142

142:                                              ; preds = %141, %120
  br label %143

143:                                              ; preds = %142, %96
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %143, %113, %94, %56, %48, %43, %36, %30
  %145 = load i32, i32* %4, align 4
  ret i32 %145
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
