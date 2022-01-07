; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_set_input_transfer_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_set_input_transfer_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.dpp* }
%struct.dpp = type { i32, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 (%struct.dpp*, i32*)*, i32 (%struct.dpp*, i32)*, i32 (%struct.dpp*, %struct.TYPE_12__*)* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.dc_plane_state = type { %struct.TYPE_12__*, i32, %struct.dc_transfer_func* }
%struct.dc_transfer_func = type { i64, i32 }

@IPP_DEGAMMA_MODE_BYPASS = common dso_local global i32 0, align 4
@TF_TYPE_PREDEFINED = common dso_local global i64 0, align 8
@IPP_DEGAMMA_MODE_HW_sRGB = common dso_local global i32 0, align 4
@IPP_DEGAMMA_MODE_HW_xvYCC = common dso_local global i32 0, align 4
@TF_TYPE_BYPASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_ctx*, %struct.dc_plane_state*)* @dcn10_set_input_transfer_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcn10_set_input_transfer_func(%struct.pipe_ctx* %0, %struct.dc_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca %struct.dc_plane_state*, align 8
  %6 = alloca %struct.dpp*, align 8
  %7 = alloca %struct.dc_transfer_func*, align 8
  %8 = alloca i32, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %4, align 8
  store %struct.dc_plane_state* %1, %struct.dc_plane_state** %5, align 8
  %9 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.dpp*, %struct.dpp** %11, align 8
  store %struct.dpp* %12, %struct.dpp** %6, align 8
  store %struct.dc_transfer_func* null, %struct.dc_transfer_func** %7, align 8
  store i32 1, i32* %8, align 4
  %13 = load %struct.dpp*, %struct.dpp** %6, align 8
  %14 = icmp eq %struct.dpp* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %149

16:                                               ; preds = %2
  %17 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %18 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %17, i32 0, i32 2
  %19 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %18, align 8
  %20 = icmp ne %struct.dc_transfer_func* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %23 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %22, i32 0, i32 2
  %24 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %23, align 8
  store %struct.dc_transfer_func* %24, %struct.dc_transfer_func** %7, align 8
  br label %25

25:                                               ; preds = %21, %16
  %26 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %27 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = icmp ne %struct.TYPE_12__* %28, null
  br i1 %29, label %30, label %64

30:                                               ; preds = %25
  %31 = load %struct.dpp*, %struct.dpp** %6, align 8
  %32 = getelementptr inbounds %struct.dpp, %struct.dpp* %31, i32 0, i32 2
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %64, label %40

40:                                               ; preds = %30
  %41 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %42 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %40
  %48 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %49 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @dce_use_lut(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load %struct.dpp*, %struct.dpp** %6, align 8
  %55 = getelementptr inbounds %struct.dpp, %struct.dpp* %54, i32 0, i32 1
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = load i32 (%struct.dpp*, %struct.TYPE_12__*)*, i32 (%struct.dpp*, %struct.TYPE_12__*)** %57, align 8
  %59 = load %struct.dpp*, %struct.dpp** %6, align 8
  %60 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %61 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %60, i32 0, i32 0
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = call i32 %58(%struct.dpp* %59, %struct.TYPE_12__* %62)
  br label %64

64:                                               ; preds = %53, %47, %40, %30, %25
  %65 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %7, align 8
  %66 = icmp eq %struct.dc_transfer_func* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load %struct.dpp*, %struct.dpp** %6, align 8
  %69 = getelementptr inbounds %struct.dpp, %struct.dpp* %68, i32 0, i32 1
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i32 (%struct.dpp*, i32)*, i32 (%struct.dpp*, i32)** %71, align 8
  %73 = load %struct.dpp*, %struct.dpp** %6, align 8
  %74 = load i32, i32* @IPP_DEGAMMA_MODE_BYPASS, align 4
  %75 = call i32 %72(%struct.dpp* %73, i32 %74)
  br label %147

76:                                               ; preds = %64
  %77 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %7, align 8
  %78 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @TF_TYPE_PREDEFINED, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %116

82:                                               ; preds = %76
  %83 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %7, align 8
  %84 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  switch i32 %85, label %114 [
    i32 128, label %86
    i32 131, label %95
    i32 130, label %104
    i32 129, label %113
  ]

86:                                               ; preds = %82
  %87 = load %struct.dpp*, %struct.dpp** %6, align 8
  %88 = getelementptr inbounds %struct.dpp, %struct.dpp* %87, i32 0, i32 1
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i32 (%struct.dpp*, i32)*, i32 (%struct.dpp*, i32)** %90, align 8
  %92 = load %struct.dpp*, %struct.dpp** %6, align 8
  %93 = load i32, i32* @IPP_DEGAMMA_MODE_HW_sRGB, align 4
  %94 = call i32 %91(%struct.dpp* %92, i32 %93)
  br label %115

95:                                               ; preds = %82
  %96 = load %struct.dpp*, %struct.dpp** %6, align 8
  %97 = getelementptr inbounds %struct.dpp, %struct.dpp* %96, i32 0, i32 1
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i32 (%struct.dpp*, i32)*, i32 (%struct.dpp*, i32)** %99, align 8
  %101 = load %struct.dpp*, %struct.dpp** %6, align 8
  %102 = load i32, i32* @IPP_DEGAMMA_MODE_HW_xvYCC, align 4
  %103 = call i32 %100(%struct.dpp* %101, i32 %102)
  br label %115

104:                                              ; preds = %82
  %105 = load %struct.dpp*, %struct.dpp** %6, align 8
  %106 = getelementptr inbounds %struct.dpp, %struct.dpp* %105, i32 0, i32 1
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i32 (%struct.dpp*, i32)*, i32 (%struct.dpp*, i32)** %108, align 8
  %110 = load %struct.dpp*, %struct.dpp** %6, align 8
  %111 = load i32, i32* @IPP_DEGAMMA_MODE_BYPASS, align 4
  %112 = call i32 %109(%struct.dpp* %110, i32 %111)
  br label %115

113:                                              ; preds = %82
  br label %114

114:                                              ; preds = %82, %113
  store i32 0, i32* %8, align 4
  br label %115

115:                                              ; preds = %114, %104, %95, %86
  br label %146

116:                                              ; preds = %76
  %117 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %7, align 8
  %118 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @TF_TYPE_BYPASS, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %116
  %123 = load %struct.dpp*, %struct.dpp** %6, align 8
  %124 = getelementptr inbounds %struct.dpp, %struct.dpp* %123, i32 0, i32 1
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i32 (%struct.dpp*, i32)*, i32 (%struct.dpp*, i32)** %126, align 8
  %128 = load %struct.dpp*, %struct.dpp** %6, align 8
  %129 = load i32, i32* @IPP_DEGAMMA_MODE_BYPASS, align 4
  %130 = call i32 %127(%struct.dpp* %128, i32 %129)
  br label %145

131:                                              ; preds = %116
  %132 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %7, align 8
  %133 = load %struct.dpp*, %struct.dpp** %6, align 8
  %134 = getelementptr inbounds %struct.dpp, %struct.dpp* %133, i32 0, i32 0
  %135 = call i32 @cm_helper_translate_curve_to_degamma_hw_format(%struct.dc_transfer_func* %132, i32* %134)
  %136 = load %struct.dpp*, %struct.dpp** %6, align 8
  %137 = getelementptr inbounds %struct.dpp, %struct.dpp* %136, i32 0, i32 1
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32 (%struct.dpp*, i32*)*, i32 (%struct.dpp*, i32*)** %139, align 8
  %141 = load %struct.dpp*, %struct.dpp** %6, align 8
  %142 = load %struct.dpp*, %struct.dpp** %6, align 8
  %143 = getelementptr inbounds %struct.dpp, %struct.dpp* %142, i32 0, i32 0
  %144 = call i32 %140(%struct.dpp* %141, i32* %143)
  store i32 1, i32* %8, align 4
  br label %145

145:                                              ; preds = %131, %122
  br label %146

146:                                              ; preds = %145, %115
  br label %147

147:                                              ; preds = %146, %67
  %148 = load i32, i32* %8, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %147, %15
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i64 @dce_use_lut(i32) #1

declare dso_local i32 @cm_helper_translate_curve_to_degamma_hw_format(%struct.dc_transfer_func*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
