; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_get_dscl_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_get_dscl_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.dpp = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.scaler_data = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@dc_fixpt_one = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@DSCL_DATA_PRCESSING_FIXED_FORMAT = common dso_local global i64 0, align 8
@PIXEL_FORMAT_FP16 = common dso_local global i64 0, align 8
@DSCL_MODE_DSCL_BYPASS = common dso_local global i32 0, align 4
@DSCL_MODE_SCALING_444_BYPASS = common dso_local global i32 0, align 4
@DSCL_MODE_SCALING_444_YCBCR_ENABLE = common dso_local global i32 0, align 4
@DSCL_MODE_SCALING_444_RGB_ENABLE = common dso_local global i32 0, align 4
@DSCL_MODE_SCALING_420_LUMA_BYPASS = common dso_local global i32 0, align 4
@DSCL_MODE_SCALING_420_CHROMA_BYPASS = common dso_local global i32 0, align 4
@DSCL_MODE_SCALING_420_YCBCR_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpp*, %struct.scaler_data*, i32)* @dpp1_dscl_get_dscl_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp1_dscl_get_dscl_mode(%struct.dpp* %0, %struct.scaler_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpp*, align 8
  %6 = alloca %struct.scaler_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.dpp* %0, %struct.dpp** %5, align 8
  store %struct.scaler_data* %1, %struct.scaler_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dc_fixpt_one, i32 0, i32 0), align 8
  store i64 %9, i64* %8, align 8
  %10 = load %struct.dpp*, %struct.dpp** %5, align 8
  %11 = getelementptr inbounds %struct.dpp, %struct.dpp* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DSCL_DATA_PRCESSING_FIXED_FORMAT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %19 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PIXEL_FORMAT_FP16, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @DSCL_MODE_DSCL_BYPASS, align 4
  store i32 %24, i32* %4, align 4
  br label %117

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %3
  %27 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %28 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %63

34:                                               ; preds = %26
  %35 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %36 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %34
  %43 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %44 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %42
  %51 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %52 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* @DSCL_MODE_SCALING_444_BYPASS, align 4
  store i32 %62, i32* %4, align 4
  br label %117

63:                                               ; preds = %58, %50, %42, %34, %26
  %64 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %65 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @dpp1_dscl_is_420_format(i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %63
  %70 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %71 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @dpp1_dscl_is_video_format(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @DSCL_MODE_SCALING_444_YCBCR_ENABLE, align 4
  store i32 %76, i32* %4, align 4
  br label %117

77:                                               ; preds = %69
  %78 = load i32, i32* @DSCL_MODE_SCALING_444_RGB_ENABLE, align 4
  store i32 %78, i32* %4, align 4
  br label %117

79:                                               ; preds = %63
  %80 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %81 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %8, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %79
  %88 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %89 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i32, i32* @DSCL_MODE_SCALING_420_LUMA_BYPASS, align 4
  store i32 %96, i32* %4, align 4
  br label %117

97:                                               ; preds = %87, %79
  %98 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %99 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %8, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %97
  %106 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %107 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %8, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = load i32, i32* @DSCL_MODE_SCALING_420_CHROMA_BYPASS, align 4
  store i32 %114, i32* %4, align 4
  br label %117

115:                                              ; preds = %105, %97
  %116 = load i32, i32* @DSCL_MODE_SCALING_420_YCBCR_ENABLE, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %115, %113, %95, %77, %75, %61, %23
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @dpp1_dscl_is_420_format(i64) #1

declare dso_local i64 @dpp1_dscl_is_video_format(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
