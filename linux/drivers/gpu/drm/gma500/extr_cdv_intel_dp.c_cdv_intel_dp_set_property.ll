; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.drm_property*, %struct.drm_property* }
%struct.drm_property = type { i32 }
%struct.gma_encoder = type { %struct.TYPE_5__, %struct.cdv_intel_dp* }
%struct.TYPE_5__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.cdv_intel_dp = type { i32, i32, i32 }

@DP_COLOR_RANGE_16_235 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_property*, i32)* @cdv_intel_dp_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdv_intel_dp_set_property(%struct.drm_connector* %0, %struct.drm_property* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_property*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_psb_private*, align 8
  %9 = alloca %struct.gma_encoder*, align 8
  %10 = alloca %struct.cdv_intel_dp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.drm_crtc*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %5, align 8
  store %struct.drm_property* %1, %struct.drm_property** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %16 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.drm_psb_private*, %struct.drm_psb_private** %18, align 8
  store %struct.drm_psb_private* %19, %struct.drm_psb_private** %8, align 8
  %20 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %21 = call %struct.gma_encoder* @gma_attached_encoder(%struct.drm_connector* %20)
  store %struct.gma_encoder* %21, %struct.gma_encoder** %9, align 8
  %22 = load %struct.gma_encoder*, %struct.gma_encoder** %9, align 8
  %23 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %22, i32 0, i32 1
  %24 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %23, align 8
  store %struct.cdv_intel_dp* %24, %struct.cdv_intel_dp** %10, align 8
  %25 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %26 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %25, i32 0, i32 0
  %27 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @drm_object_property_set_value(i32* %26, %struct.drm_property* %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %4, align 4
  br label %129

34:                                               ; preds = %3
  %35 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %36 = load %struct.drm_psb_private*, %struct.drm_psb_private** %8, align 8
  %37 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %36, i32 0, i32 1
  %38 = load %struct.drm_property*, %struct.drm_property** %37, align 8
  %39 = icmp eq %struct.drm_property* %35, %38
  br i1 %39, label %40, label %72

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %44 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %129

48:                                               ; preds = %40
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %51 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %56 = call i32 @cdv_intel_dp_detect_audio(%struct.drm_connector* %55)
  store i32 %56, i32* %13, align 4
  br label %61

57:                                               ; preds = %48
  %58 = load i32, i32* %12, align 4
  %59 = icmp sgt i32 %58, 0
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %64 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %129

68:                                               ; preds = %61
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %71 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %102

72:                                               ; preds = %34
  %73 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %74 = load %struct.drm_psb_private*, %struct.drm_psb_private** %8, align 8
  %75 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %74, i32 0, i32 0
  %76 = load %struct.drm_property*, %struct.drm_property** %75, align 8
  %77 = icmp eq %struct.drm_property* %73, %76
  br i1 %77, label %78, label %99

78:                                               ; preds = %72
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %81 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = icmp eq i32 %79, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %129

89:                                               ; preds = %78
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* @DP_COLOR_RANGE_16_235, align 4
  br label %95

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94, %92
  %96 = phi i32 [ %93, %92 ], [ 0, %94 ]
  %97 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  %98 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  br label %102

99:                                               ; preds = %72
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %129

102:                                              ; preds = %95, %68
  %103 = load %struct.gma_encoder*, %struct.gma_encoder** %9, align 8
  %104 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load %struct.drm_crtc*, %struct.drm_crtc** %105, align 8
  %107 = icmp ne %struct.drm_crtc* %106, null
  br i1 %107, label %108, label %128

108:                                              ; preds = %102
  %109 = load %struct.gma_encoder*, %struct.gma_encoder** %9, align 8
  %110 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load %struct.drm_crtc*, %struct.drm_crtc** %111, align 8
  store %struct.drm_crtc* %112, %struct.drm_crtc** %14, align 8
  %113 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %114 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %115 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %114, i32 0, i32 3
  %116 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %117 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %120 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %123 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %122, i32 0, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @drm_crtc_helper_set_mode(%struct.drm_crtc* %113, i32* %115, i32 %118, i32 %121, i32 %126)
  br label %128

128:                                              ; preds = %108, %102
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %99, %88, %67, %47, %32
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local %struct.gma_encoder* @gma_attached_encoder(%struct.drm_connector*) #1

declare dso_local i32 @drm_object_property_set_value(i32*, %struct.drm_property*, i32) #1

declare dso_local i32 @cdv_intel_dp_detect_audio(%struct.drm_connector*) #1

declare dso_local i32 @drm_crtc_helper_set_mode(%struct.drm_crtc*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
