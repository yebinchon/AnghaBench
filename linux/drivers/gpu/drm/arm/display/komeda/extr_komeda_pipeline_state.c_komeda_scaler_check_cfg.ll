; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_scaler_check_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_scaler_check_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_scaler = type { i64, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.komeda_pipeline* }
%struct.komeda_pipeline = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.komeda_pipeline*, i32*, i32, %struct.komeda_data_flow_cfg*)* }
%struct.komeda_crtc_state = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.komeda_data_flow_cfg = type { i64, i64, i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Invalid horizontal sizes\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid vertical sizes\00", align 1
@KOMEDA_PIPELINE_COMPIZS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Invalid horizontal scaling ratio\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Invalid vertical scaling ratio\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"aclk can't satisfy the clock requirement of the downscaling\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.komeda_scaler*, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*)* @komeda_scaler_check_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_scaler_check_cfg(%struct.komeda_scaler* %0, %struct.komeda_crtc_state* %1, %struct.komeda_data_flow_cfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.komeda_scaler*, align 8
  %6 = alloca %struct.komeda_crtc_state*, align 8
  %7 = alloca %struct.komeda_data_flow_cfg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.komeda_pipeline*, align 8
  %14 = alloca i32, align 4
  store %struct.komeda_scaler* %0, %struct.komeda_scaler** %5, align 8
  store %struct.komeda_crtc_state* %1, %struct.komeda_crtc_state** %6, align 8
  store %struct.komeda_data_flow_cfg* %2, %struct.komeda_data_flow_cfg** %7, align 8
  %15 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %16 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %19 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %22 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %25 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %11, align 8
  %27 = load %struct.komeda_scaler*, %struct.komeda_scaler** %5, align 8
  %28 = getelementptr inbounds %struct.komeda_scaler, %struct.komeda_scaler* %27, i32 0, i32 4
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @in_range(i32* %28, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = load %struct.komeda_scaler*, %struct.komeda_scaler** %5, align 8
  %34 = getelementptr inbounds %struct.komeda_scaler, %struct.komeda_scaler* %33, i32 0, i32 4
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @in_range(i32* %34, i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32, %3
  %39 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %132

42:                                               ; preds = %32
  %43 = load %struct.komeda_scaler*, %struct.komeda_scaler** %5, align 8
  %44 = getelementptr inbounds %struct.komeda_scaler, %struct.komeda_scaler* %43, i32 0, i32 3
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @in_range(i32* %44, i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.komeda_scaler*, %struct.komeda_scaler** %5, align 8
  %50 = getelementptr inbounds %struct.komeda_scaler, %struct.komeda_scaler* %49, i32 0, i32 3
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @in_range(i32* %50, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %48, %42
  %55 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %132

58:                                               ; preds = %48
  %59 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %60 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @KOMEDA_PIPELINE_COMPIZS, align 4
  %66 = call i64 @has_bit(i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  store i64 1, i64* %12, align 8
  br label %73

69:                                               ; preds = %58
  %70 = load %struct.komeda_scaler*, %struct.komeda_scaler** %5, align 8
  %71 = getelementptr inbounds %struct.komeda_scaler, %struct.komeda_scaler* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %12, align 8
  br label %73

73:                                               ; preds = %69, %68
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load %struct.komeda_scaler*, %struct.komeda_scaler** %5, align 8
  %78 = getelementptr inbounds %struct.komeda_scaler, %struct.komeda_scaler* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @scaling_ratio_valid(i64 %74, i64 %75, i64 %76, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %73
  %83 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %132

86:                                               ; preds = %73
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load %struct.komeda_scaler*, %struct.komeda_scaler** %5, align 8
  %91 = getelementptr inbounds %struct.komeda_scaler, %struct.komeda_scaler* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @scaling_ratio_valid(i64 %87, i64 %88, i64 %89, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %86
  %96 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %132

99:                                               ; preds = %86
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* %10, align 8
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %11, align 8
  %106 = icmp sgt i64 %104, %105
  br i1 %106, label %107, label %131

107:                                              ; preds = %103, %99
  %108 = load %struct.komeda_scaler*, %struct.komeda_scaler** %5, align 8
  %109 = getelementptr inbounds %struct.komeda_scaler, %struct.komeda_scaler* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %110, align 8
  store %struct.komeda_pipeline* %111, %struct.komeda_pipeline** %13, align 8
  %112 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %13, align 8
  %113 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %112, i32 0, i32 0
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32 (%struct.komeda_pipeline*, i32*, i32, %struct.komeda_data_flow_cfg*)*, i32 (%struct.komeda_pipeline*, i32*, i32, %struct.komeda_data_flow_cfg*)** %115, align 8
  %117 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %13, align 8
  %118 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %6, align 8
  %119 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %6, align 8
  %122 = call i32 @komeda_crtc_get_aclk(%struct.komeda_crtc_state* %121)
  %123 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %124 = call i32 %116(%struct.komeda_pipeline* %117, i32* %120, i32 %122, %struct.komeda_data_flow_cfg* %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %107
  %128 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %129 = load i32, i32* %14, align 4
  store i32 %129, i32* %4, align 4
  br label %132

130:                                              ; preds = %107
  br label %131

131:                                              ; preds = %130, %103
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %131, %127, %95, %82, %54, %38
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @in_range(i32*, i64) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*) #1

declare dso_local i64 @has_bit(i32, i32) #1

declare dso_local i32 @scaling_ratio_valid(i64, i64, i64, i32) #1

declare dso_local i32 @komeda_crtc_get_aclk(%struct.komeda_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
