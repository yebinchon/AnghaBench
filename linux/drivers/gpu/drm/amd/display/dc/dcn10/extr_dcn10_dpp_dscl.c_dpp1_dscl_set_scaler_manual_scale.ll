; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_set_scaler_manual_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_set_scaler_manual_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.scaler_data = type { i64, %struct.TYPE_8__, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i64 }
%struct.dcn10_dpp = type { %struct.scaler_data }

@PIXEL_FORMAT_VIDEO_BEGIN = common dso_local global i64 0, align 8
@PIXEL_FORMAT_VIDEO_END = common dso_local global i64 0, align 8
@DSCL_AUTOCAL = common dso_local global i32 0, align 4
@AUTOCAL_MODE = common dso_local global i32 0, align 4
@AUTOCAL_MODE_OFF = common dso_local global i32 0, align 4
@AUTOCAL_NUM_PIPE = common dso_local global i32 0, align 4
@AUTOCAL_PIPE_ID = common dso_local global i32 0, align 4
@MPC_SIZE = common dso_local global i32 0, align 4
@MPC_WIDTH = common dso_local global i32 0, align 4
@MPC_HEIGHT = common dso_local global i32 0, align 4
@SCL_MODE = common dso_local global i32 0, align 4
@DSCL_MODE = common dso_local global i32 0, align 4
@DSCL_MODE_DSCL_BYPASS = common dso_local global i32 0, align 4
@DSCL_MODE_SCALING_444_BYPASS = common dso_local global i32 0, align 4
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
define dso_local void @dpp1_dscl_set_scaler_manual_scale(%struct.dpp* %0, %struct.scaler_data* %1) #0 {
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
  %37 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %36, i32 0, i32 0
  %38 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %39 = call i64 @memcmp(%struct.scaler_data* %37, %struct.scaler_data* %38, i32 56)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %147

42:                                               ; preds = %33
  %43 = call i32 (...) @PERF_TRACE()
  %44 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %6, align 8
  %45 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %44, i32 0, i32 0
  %46 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %47 = bitcast %struct.scaler_data* %45 to i8*
  %48 = bitcast %struct.scaler_data* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 56, i1 false)
  %49 = load i32, i32* @DSCL_AUTOCAL, align 4
  %50 = load i32, i32* @AUTOCAL_MODE, align 4
  %51 = load i32, i32* @AUTOCAL_MODE_OFF, align 4
  %52 = load i32, i32* @AUTOCAL_NUM_PIPE, align 4
  %53 = load i32, i32* @AUTOCAL_PIPE_ID, align 4
  %54 = call i32 @REG_SET_3(i32 %49, i32 0, i32 %50, i32 %51, i32 %52, i32 0, i32 %53, i32 0)
  %55 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %6, align 8
  %56 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %57 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %56, i32 0, i32 5
  %58 = call i32 @dpp1_dscl_set_recout(%struct.dcn10_dpp* %55, i32* %57)
  %59 = load i32, i32* @MPC_SIZE, align 4
  %60 = load i32, i32* @MPC_WIDTH, align 4
  %61 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %62 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @MPC_HEIGHT, align 4
  %65 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %66 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @REG_SET_2(i32 %59, i32 0, i32 %60, i32 %63, i32 %64, i32 %67)
  %69 = load i32, i32* @SCL_MODE, align 4
  %70 = load i32, i32* @DSCL_MODE, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @REG_UPDATE(i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @DSCL_MODE_DSCL_BYPASS, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %42
  br label %147

77:                                               ; preds = %42
  %78 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %6, align 8
  %79 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %80 = call i32 @dpp1_dscl_find_lb_memory_config(%struct.dcn10_dpp* %78, %struct.scaler_data* %79)
  store i32 %80, i32* %5, align 4
  %81 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %6, align 8
  %82 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %83 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %82, i32 0, i32 2
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @dpp1_dscl_set_lb(%struct.dcn10_dpp* %81, i32* %83, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @DSCL_MODE_SCALING_444_BYPASS, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %77
  br label %147

90:                                               ; preds = %77
  %91 = load i32, i32* @SCL_BLACK_OFFSET, align 4
  %92 = call i64 @REG(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %90
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load i32, i32* @SCL_BLACK_OFFSET, align 4
  %99 = load i32, i32* @SCL_BLACK_OFFSET_RGB_Y, align 4
  %100 = load i32, i32* @BLACK_OFFSET_RGB_Y, align 4
  %101 = load i32, i32* @SCL_BLACK_OFFSET_CBCR, align 4
  %102 = load i32, i32* @BLACK_OFFSET_CBCR, align 4
  %103 = call i32 @REG_SET_2(i32 %98, i32 0, i32 %99, i32 %100, i32 %101, i32 %102)
  br label %111

104:                                              ; preds = %94
  %105 = load i32, i32* @SCL_BLACK_OFFSET, align 4
  %106 = load i32, i32* @SCL_BLACK_OFFSET_RGB_Y, align 4
  %107 = load i32, i32* @BLACK_OFFSET_RGB_Y, align 4
  %108 = load i32, i32* @SCL_BLACK_OFFSET_CBCR, align 4
  %109 = load i32, i32* @BLACK_OFFSET_RGB_Y, align 4
  %110 = call i32 @REG_SET_2(i32 %105, i32 0, i32 %106, i32 %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %104, %97
  br label %112

112:                                              ; preds = %111, %90
  %113 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %6, align 8
  %114 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %115 = call i32 @dpp1_dscl_set_manual_ratio_init(%struct.dcn10_dpp* %113, %struct.scaler_data* %114)
  %116 = load i32, i32* @SCL_TAP_CONTROL, align 4
  %117 = load i32, i32* @SCL_V_NUM_TAPS, align 4
  %118 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %119 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %121, 1
  %123 = load i32, i32* @SCL_H_NUM_TAPS, align 4
  %124 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %125 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %127, 1
  %129 = load i32, i32* @SCL_V_NUM_TAPS_C, align 4
  %130 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %131 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = sub nsw i64 %133, 1
  %135 = load i32, i32* @SCL_H_NUM_TAPS_C, align 4
  %136 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %137 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = sub nsw i64 %139, 1
  %141 = call i32 @REG_SET_4(i32 %116, i32 0, i32 %117, i64 %122, i32 %123, i64 %128, i32 %129, i64 %134, i32 %135, i64 %140)
  %142 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %6, align 8
  %143 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @dpp1_dscl_set_scl_filter(%struct.dcn10_dpp* %142, %struct.scaler_data* %143, i32 %144)
  %146 = call i32 (...) @PERF_TRACE()
  br label %147

147:                                              ; preds = %112, %89, %76, %41
  ret void
}

declare dso_local %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp*) #1

declare dso_local i32 @dpp1_dscl_get_dscl_mode(%struct.dpp*, %struct.scaler_data*, i32) #1

declare dso_local i64 @memcmp(%struct.scaler_data*, %struct.scaler_data*, i32) #1

declare dso_local i32 @PERF_TRACE(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @REG_SET_3(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dpp1_dscl_set_recout(%struct.dcn10_dpp*, i32*) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @dpp1_dscl_find_lb_memory_config(%struct.dcn10_dpp*, %struct.scaler_data*) #1

declare dso_local i32 @dpp1_dscl_set_lb(%struct.dcn10_dpp*, i32*, i32) #1

declare dso_local i64 @REG(i32) #1

declare dso_local i32 @dpp1_dscl_set_manual_ratio_init(%struct.dcn10_dpp*, %struct.scaler_data*) #1

declare dso_local i32 @REG_SET_4(i32, i32, i32, i64, i32, i64, i32, i64, i32, i64) #1

declare dso_local i32 @dpp1_dscl_set_scl_filter(%struct.dcn10_dpp*, %struct.scaler_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
