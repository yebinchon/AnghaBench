; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_set_input_transfer_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_set_input_transfer_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.input_pixel_processor* }
%struct.input_pixel_processor = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.input_pixel_processor*, i32)*, i32 (%struct.input_pixel_processor*, %struct.TYPE_6__*)*, i32 (%struct.input_pixel_processor*, %struct.ipp_prescale_params*)* }
%struct.TYPE_6__ = type { i32 }
%struct.ipp_prescale_params = type { i32 }
%struct.dc_plane_state = type { %struct.TYPE_6__*, i32, %struct.dc_transfer_func* }
%struct.dc_transfer_func = type { i64, i32 }

@IPP_DEGAMMA_MODE_HW_sRGB = common dso_local global i32 0, align 4
@TF_TYPE_PREDEFINED = common dso_local global i64 0, align 8
@IPP_DEGAMMA_MODE_HW_xvYCC = common dso_local global i32 0, align 4
@IPP_DEGAMMA_MODE_BYPASS = common dso_local global i32 0, align 4
@TF_TYPE_BYPASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_ctx*, %struct.dc_plane_state*)* @dce110_set_input_transfer_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce110_set_input_transfer_func(%struct.pipe_ctx* %0, %struct.dc_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca %struct.dc_plane_state*, align 8
  %6 = alloca %struct.input_pixel_processor*, align 8
  %7 = alloca %struct.dc_transfer_func*, align 8
  %8 = alloca %struct.ipp_prescale_params, align 4
  %9 = alloca i32, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %4, align 8
  store %struct.dc_plane_state* %1, %struct.dc_plane_state** %5, align 8
  %10 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.input_pixel_processor*, %struct.input_pixel_processor** %12, align 8
  store %struct.input_pixel_processor* %13, %struct.input_pixel_processor** %6, align 8
  store %struct.dc_transfer_func* null, %struct.dc_transfer_func** %7, align 8
  %14 = bitcast %struct.ipp_prescale_params* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 4, i1 false)
  store i32 1, i32* %9, align 4
  %15 = load %struct.input_pixel_processor*, %struct.input_pixel_processor** %6, align 8
  %16 = icmp eq %struct.input_pixel_processor* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %137

18:                                               ; preds = %2
  %19 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %20 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %19, i32 0, i32 2
  %21 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %20, align 8
  %22 = icmp ne %struct.dc_transfer_func* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %25 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %24, i32 0, i32 2
  %26 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %25, align 8
  store %struct.dc_transfer_func* %26, %struct.dc_transfer_func** %7, align 8
  br label %27

27:                                               ; preds = %23, %18
  %28 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %29 = call i32 @build_prescale_params(%struct.ipp_prescale_params* %8, %struct.dc_plane_state* %28)
  %30 = load %struct.input_pixel_processor*, %struct.input_pixel_processor** %6, align 8
  %31 = getelementptr inbounds %struct.input_pixel_processor, %struct.input_pixel_processor* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i32 (%struct.input_pixel_processor*, %struct.ipp_prescale_params*)*, i32 (%struct.input_pixel_processor*, %struct.ipp_prescale_params*)** %33, align 8
  %35 = load %struct.input_pixel_processor*, %struct.input_pixel_processor** %6, align 8
  %36 = call i32 %34(%struct.input_pixel_processor* %35, %struct.ipp_prescale_params* %8)
  %37 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %38 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = icmp ne %struct.TYPE_6__* %39, null
  br i1 %40, label %41, label %65

41:                                               ; preds = %27
  %42 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %43 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %65, label %48

48:                                               ; preds = %41
  %49 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %50 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @dce_use_lut(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load %struct.input_pixel_processor*, %struct.input_pixel_processor** %6, align 8
  %56 = getelementptr inbounds %struct.input_pixel_processor, %struct.input_pixel_processor* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32 (%struct.input_pixel_processor*, %struct.TYPE_6__*)*, i32 (%struct.input_pixel_processor*, %struct.TYPE_6__*)** %58, align 8
  %60 = load %struct.input_pixel_processor*, %struct.input_pixel_processor** %6, align 8
  %61 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %62 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = call i32 %59(%struct.input_pixel_processor* %60, %struct.TYPE_6__* %63)
  br label %65

65:                                               ; preds = %54, %48, %41, %27
  %66 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %7, align 8
  %67 = icmp eq %struct.dc_transfer_func* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load %struct.input_pixel_processor*, %struct.input_pixel_processor** %6, align 8
  %70 = getelementptr inbounds %struct.input_pixel_processor, %struct.input_pixel_processor* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32 (%struct.input_pixel_processor*, i32)*, i32 (%struct.input_pixel_processor*, i32)** %72, align 8
  %74 = load %struct.input_pixel_processor*, %struct.input_pixel_processor** %6, align 8
  %75 = load i32, i32* @IPP_DEGAMMA_MODE_HW_sRGB, align 4
  %76 = call i32 %73(%struct.input_pixel_processor* %74, i32 %75)
  br label %135

77:                                               ; preds = %65
  %78 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %7, align 8
  %79 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TF_TYPE_PREDEFINED, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %117

83:                                               ; preds = %77
  %84 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %7, align 8
  %85 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  switch i32 %86, label %115 [
    i32 128, label %87
    i32 131, label %96
    i32 130, label %105
    i32 129, label %114
  ]

87:                                               ; preds = %83
  %88 = load %struct.input_pixel_processor*, %struct.input_pixel_processor** %6, align 8
  %89 = getelementptr inbounds %struct.input_pixel_processor, %struct.input_pixel_processor* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32 (%struct.input_pixel_processor*, i32)*, i32 (%struct.input_pixel_processor*, i32)** %91, align 8
  %93 = load %struct.input_pixel_processor*, %struct.input_pixel_processor** %6, align 8
  %94 = load i32, i32* @IPP_DEGAMMA_MODE_HW_sRGB, align 4
  %95 = call i32 %92(%struct.input_pixel_processor* %93, i32 %94)
  br label %116

96:                                               ; preds = %83
  %97 = load %struct.input_pixel_processor*, %struct.input_pixel_processor** %6, align 8
  %98 = getelementptr inbounds %struct.input_pixel_processor, %struct.input_pixel_processor* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32 (%struct.input_pixel_processor*, i32)*, i32 (%struct.input_pixel_processor*, i32)** %100, align 8
  %102 = load %struct.input_pixel_processor*, %struct.input_pixel_processor** %6, align 8
  %103 = load i32, i32* @IPP_DEGAMMA_MODE_HW_xvYCC, align 4
  %104 = call i32 %101(%struct.input_pixel_processor* %102, i32 %103)
  br label %116

105:                                              ; preds = %83
  %106 = load %struct.input_pixel_processor*, %struct.input_pixel_processor** %6, align 8
  %107 = getelementptr inbounds %struct.input_pixel_processor, %struct.input_pixel_processor* %106, i32 0, i32 0
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32 (%struct.input_pixel_processor*, i32)*, i32 (%struct.input_pixel_processor*, i32)** %109, align 8
  %111 = load %struct.input_pixel_processor*, %struct.input_pixel_processor** %6, align 8
  %112 = load i32, i32* @IPP_DEGAMMA_MODE_BYPASS, align 4
  %113 = call i32 %110(%struct.input_pixel_processor* %111, i32 %112)
  br label %116

114:                                              ; preds = %83
  br label %115

115:                                              ; preds = %83, %114
  store i32 0, i32* %9, align 4
  br label %116

116:                                              ; preds = %115, %105, %96, %87
  br label %134

117:                                              ; preds = %77
  %118 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %7, align 8
  %119 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @TF_TYPE_BYPASS, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %117
  %124 = load %struct.input_pixel_processor*, %struct.input_pixel_processor** %6, align 8
  %125 = getelementptr inbounds %struct.input_pixel_processor, %struct.input_pixel_processor* %124, i32 0, i32 0
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32 (%struct.input_pixel_processor*, i32)*, i32 (%struct.input_pixel_processor*, i32)** %127, align 8
  %129 = load %struct.input_pixel_processor*, %struct.input_pixel_processor** %6, align 8
  %130 = load i32, i32* @IPP_DEGAMMA_MODE_BYPASS, align 4
  %131 = call i32 %128(%struct.input_pixel_processor* %129, i32 %130)
  br label %133

132:                                              ; preds = %117
  store i32 0, i32* %9, align 4
  br label %133

133:                                              ; preds = %132, %123
  br label %134

134:                                              ; preds = %133, %116
  br label %135

135:                                              ; preds = %134, %68
  %136 = load i32, i32* %9, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %135, %17
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @build_prescale_params(%struct.ipp_prescale_params*, %struct.dc_plane_state*) #2

declare dso_local i64 @dce_use_lut(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
