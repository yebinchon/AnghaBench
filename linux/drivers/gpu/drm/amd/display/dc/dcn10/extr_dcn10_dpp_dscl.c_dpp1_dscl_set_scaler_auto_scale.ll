; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_set_scaler_auto_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_set_scaler_auto_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.scaler_data = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i64 }
%struct.dcn10_dpp = type { i32 }

@PIXEL_FORMAT_VIDEO_BEGIN = common dso_local global i64 0, align 8
@PIXEL_FORMAT_VIDEO_END = common dso_local global i64 0, align 8
@SCL_MODE = common dso_local global i32 0, align 4
@DSCL_MODE = common dso_local global i32 0, align 4
@DSCL_MODE_DSCL_BYPASS = common dso_local global i32 0, align 4
@DSCL_MODE_SCALING_444_BYPASS = common dso_local global i32 0, align 4
@DSCL_AUTOCAL = common dso_local global i32 0, align 4
@AUTOCAL_MODE = common dso_local global i32 0, align 4
@AUTOCAL_MODE_AUTOSCALE = common dso_local global i32 0, align 4
@AUTOCAL_NUM_PIPE = common dso_local global i32 0, align 4
@AUTOCAL_PIPE_ID = common dso_local global i32 0, align 4
@SCL_BLACK_OFFSET = common dso_local global i32 0, align 4
@SCL_BLACK_OFFSET_RGB_Y = common dso_local global i32 0, align 4
@BLACK_OFFSET_RGB_Y = common dso_local global i32 0, align 4
@SCL_BLACK_OFFSET_CBCR = common dso_local global i32 0, align 4
@BLACK_OFFSET_CBCR = common dso_local global i32 0, align 4
@SCL_TAP_CONTROL = common dso_local global i32 0, align 4
@SCL_V_NUM_TAPS = common dso_local global i32 0, align 4
@SCL_H_NUM_TAPS = common dso_local global i32 0, align 4
@SCL_V_NUM_TAPS_C = common dso_local global i32 0, align 4
@SCL_H_NUM_TAPS_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpp1_dscl_set_scaler_auto_scale(%struct.dpp* %0, %struct.scaler_data* %1) #0 {
  %3 = alloca %struct.dpp*, align 8
  %4 = alloca %struct.scaler_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dcn10_dpp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dpp* %0, %struct.dpp** %3, align 8
  store %struct.scaler_data* %1, %struct.scaler_data** %4, align 8
  %9 = load %struct.dpp*, %struct.dpp** %3, align 8
  %10 = call %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp* %9)
  store %struct.dcn10_dpp* %10, %struct.dcn10_dpp** %6, align 8
  %11 = load %struct.dpp*, %struct.dpp** %3, align 8
  %12 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %13 = load %struct.dpp*, %struct.dpp** %3, align 8
  %14 = getelementptr inbounds %struct.dpp, %struct.dpp* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dpp1_dscl_get_dscl_mode(%struct.dpp* %11, %struct.scaler_data* %12, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %23 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PIXEL_FORMAT_VIDEO_BEGIN, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %29 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PIXEL_FORMAT_VIDEO_END, align 8
  %32 = icmp sle i64 %30, %31
  br label %33

33:                                               ; preds = %27, %2
  %34 = phi i1 [ false, %2 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %8, align 4
  %36 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %6, align 8
  %37 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %38 = call i32 @dpp1_dscl_set_overscan(%struct.dcn10_dpp* %36, %struct.scaler_data* %37)
  %39 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %6, align 8
  %40 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %41 = call i32 @dpp1_dscl_set_otg_blank(%struct.dcn10_dpp* %39, %struct.scaler_data* %40)
  %42 = load i32, i32* @SCL_MODE, align 4
  %43 = load i32, i32* @DSCL_MODE, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @REG_UPDATE(i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @DSCL_MODE_DSCL_BYPASS, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %33
  br label %117

50:                                               ; preds = %33
  %51 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %6, align 8
  %52 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %53 = call i32 @dpp1_dscl_find_lb_memory_config(%struct.dcn10_dpp* %51, %struct.scaler_data* %52)
  store i32 %53, i32* %5, align 4
  %54 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %6, align 8
  %55 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %56 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %55, i32 0, i32 2
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @dpp1_dscl_set_lb(%struct.dcn10_dpp* %54, i32* %56, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @DSCL_MODE_SCALING_444_BYPASS, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %117

63:                                               ; preds = %50
  %64 = load i32, i32* @DSCL_AUTOCAL, align 4
  %65 = load i32, i32* @AUTOCAL_MODE, align 4
  %66 = load i32, i32* @AUTOCAL_MODE_AUTOSCALE, align 4
  %67 = load i32, i32* @AUTOCAL_NUM_PIPE, align 4
  %68 = load i32, i32* @AUTOCAL_PIPE_ID, align 4
  %69 = call i32 @REG_SET_3(i32 %64, i32 0, i32 %65, i32 %66, i32 %67, i32 0, i32 %68, i32 0)
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %63
  %73 = load i32, i32* @SCL_BLACK_OFFSET, align 4
  %74 = load i32, i32* @SCL_BLACK_OFFSET_RGB_Y, align 4
  %75 = load i32, i32* @BLACK_OFFSET_RGB_Y, align 4
  %76 = load i32, i32* @SCL_BLACK_OFFSET_CBCR, align 4
  %77 = load i32, i32* @BLACK_OFFSET_CBCR, align 4
  %78 = call i32 @REG_SET_2(i32 %73, i32 0, i32 %74, i32 %75, i32 %76, i32 %77)
  br label %86

79:                                               ; preds = %63
  %80 = load i32, i32* @SCL_BLACK_OFFSET, align 4
  %81 = load i32, i32* @SCL_BLACK_OFFSET_RGB_Y, align 4
  %82 = load i32, i32* @BLACK_OFFSET_RGB_Y, align 4
  %83 = load i32, i32* @SCL_BLACK_OFFSET_CBCR, align 4
  %84 = load i32, i32* @BLACK_OFFSET_RGB_Y, align 4
  %85 = call i32 @REG_SET_2(i32 %80, i32 0, i32 %81, i32 %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %79, %72
  %87 = load i32, i32* @SCL_TAP_CONTROL, align 4
  %88 = load i32, i32* @SCL_V_NUM_TAPS, align 4
  %89 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %90 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %92, 1
  %94 = load i32, i32* @SCL_H_NUM_TAPS, align 4
  %95 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %96 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %98, 1
  %100 = load i32, i32* @SCL_V_NUM_TAPS_C, align 4
  %101 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %102 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %104, 1
  %106 = load i32, i32* @SCL_H_NUM_TAPS_C, align 4
  %107 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %108 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %110, 1
  %112 = call i32 @REG_SET_4(i32 %87, i32 0, i32 %88, i64 %93, i32 %94, i64 %99, i32 %100, i64 %105, i32 %106, i64 %111)
  %113 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %6, align 8
  %114 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @dpp1_dscl_set_scl_filter(%struct.dcn10_dpp* %113, %struct.scaler_data* %114, i32 %115)
  br label %117

117:                                              ; preds = %86, %62, %49
  ret void
}

declare dso_local %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp*) #1

declare dso_local i32 @dpp1_dscl_get_dscl_mode(%struct.dpp*, %struct.scaler_data*, i32) #1

declare dso_local i32 @dpp1_dscl_set_overscan(%struct.dcn10_dpp*, %struct.scaler_data*) #1

declare dso_local i32 @dpp1_dscl_set_otg_blank(%struct.dcn10_dpp*, %struct.scaler_data*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @dpp1_dscl_find_lb_memory_config(%struct.dcn10_dpp*, %struct.scaler_data*) #1

declare dso_local i32 @dpp1_dscl_set_lb(%struct.dcn10_dpp*, i32*, i32) #1

declare dso_local i32 @REG_SET_3(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_4(i32, i32, i32, i64, i32, i64, i32, i64, i32, i64) #1

declare dso_local i32 @dpp1_dscl_set_scl_filter(%struct.dcn10_dpp*, %struct.scaler_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
