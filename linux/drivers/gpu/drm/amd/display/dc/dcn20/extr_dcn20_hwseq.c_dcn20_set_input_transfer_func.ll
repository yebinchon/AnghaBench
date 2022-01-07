; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_set_input_transfer_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_set_input_transfer_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dpp* }
%struct.dpp = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.dpp*, i32)*, i32 (%struct.dpp*, i32*)* }
%struct.dc_plane_state = type { %struct.dc_transfer_func* }
%struct.dc_transfer_func = type { i64, i32, i32 }

@IPP_DEGAMMA_MODE_BYPASS = common dso_local global i32 0, align 4
@TF_TYPE_HWPWL = common dso_local global i64 0, align 8
@TF_TYPE_DISTRIBUTED_POINTS = common dso_local global i64 0, align 8
@TF_TYPE_PREDEFINED = common dso_local global i64 0, align 8
@IPP_DEGAMMA_MODE_HW_sRGB = common dso_local global i32 0, align 4
@IPP_DEGAMMA_MODE_HW_xvYCC = common dso_local global i32 0, align 4
@TF_TYPE_BYPASS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcn20_set_input_transfer_func(%struct.pipe_ctx* %0, %struct.dc_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca %struct.dc_plane_state*, align 8
  %6 = alloca %struct.dpp*, align 8
  %7 = alloca %struct.dc_transfer_func*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %4, align 8
  store %struct.dc_plane_state* %1, %struct.dc_plane_state** %5, align 8
  %10 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.dpp*, %struct.dpp** %12, align 8
  store %struct.dpp* %13, %struct.dpp** %6, align 8
  store %struct.dc_transfer_func* null, %struct.dc_transfer_func** %7, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.dpp*, %struct.dpp** %6, align 8
  %15 = icmp eq %struct.dpp* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %18 = icmp eq %struct.dc_plane_state* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %169

20:                                               ; preds = %16
  %21 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %22 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %23 = call i32 @dcn20_set_shaper_3dlut(%struct.pipe_ctx* %21, %struct.dc_plane_state* %22)
  %24 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %25 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %26 = call i32 @dcn20_set_blend_lut(%struct.pipe_ctx* %24, %struct.dc_plane_state* %25)
  %27 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %28 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %27, i32 0, i32 0
  %29 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %28, align 8
  %30 = icmp ne %struct.dc_transfer_func* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %33 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %32, i32 0, i32 0
  %34 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %33, align 8
  store %struct.dc_transfer_func* %34, %struct.dc_transfer_func** %7, align 8
  br label %35

35:                                               ; preds = %31, %20
  %36 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %7, align 8
  %37 = icmp eq %struct.dc_transfer_func* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.dpp*, %struct.dpp** %6, align 8
  %40 = getelementptr inbounds %struct.dpp, %struct.dpp* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (%struct.dpp*, i32)*, i32 (%struct.dpp*, i32)** %42, align 8
  %44 = load %struct.dpp*, %struct.dpp** %6, align 8
  %45 = load i32, i32* @IPP_DEGAMMA_MODE_BYPASS, align 4
  %46 = call i32 %43(%struct.dpp* %44, i32 %45)
  store i32 1, i32* %3, align 4
  br label %169

47:                                               ; preds = %35
  %48 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %7, align 8
  %49 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TF_TYPE_HWPWL, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %7, align 8
  %55 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TF_TYPE_DISTRIBUTED_POINTS, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53, %47
  store i32 1, i32* %9, align 4
  br label %60

60:                                               ; preds = %59, %53
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %101

63:                                               ; preds = %60
  %64 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %7, align 8
  %65 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @TF_TYPE_HWPWL, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = load %struct.dpp*, %struct.dpp** %6, align 8
  %71 = getelementptr inbounds %struct.dpp, %struct.dpp* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32 (%struct.dpp*, i32*)*, i32 (%struct.dpp*, i32*)** %73, align 8
  %75 = load %struct.dpp*, %struct.dpp** %6, align 8
  %76 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %7, align 8
  %77 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %76, i32 0, i32 2
  %78 = call i32 %74(%struct.dpp* %75, i32* %77)
  br label %100

79:                                               ; preds = %63
  %80 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %7, align 8
  %81 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TF_TYPE_DISTRIBUTED_POINTS, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %79
  %86 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %7, align 8
  %87 = load %struct.dpp*, %struct.dpp** %6, align 8
  %88 = getelementptr inbounds %struct.dpp, %struct.dpp* %87, i32 0, i32 1
  %89 = call i32 @cm_helper_translate_curve_to_degamma_hw_format(%struct.dc_transfer_func* %86, i32* %88)
  %90 = load %struct.dpp*, %struct.dpp** %6, align 8
  %91 = getelementptr inbounds %struct.dpp, %struct.dpp* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32 (%struct.dpp*, i32*)*, i32 (%struct.dpp*, i32*)** %93, align 8
  %95 = load %struct.dpp*, %struct.dpp** %6, align 8
  %96 = load %struct.dpp*, %struct.dpp** %6, align 8
  %97 = getelementptr inbounds %struct.dpp, %struct.dpp* %96, i32 0, i32 1
  %98 = call i32 %94(%struct.dpp* %95, i32* %97)
  br label %99

99:                                               ; preds = %85, %79
  br label %100

100:                                              ; preds = %99, %69
  store i32 1, i32* %3, align 4
  br label %169

101:                                              ; preds = %60
  %102 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %7, align 8
  %103 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @TF_TYPE_PREDEFINED, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %141

107:                                              ; preds = %101
  %108 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %7, align 8
  %109 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  switch i32 %110, label %139 [
    i32 128, label %111
    i32 131, label %120
    i32 130, label %129
    i32 129, label %138
  ]

111:                                              ; preds = %107
  %112 = load %struct.dpp*, %struct.dpp** %6, align 8
  %113 = getelementptr inbounds %struct.dpp, %struct.dpp* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32 (%struct.dpp*, i32)*, i32 (%struct.dpp*, i32)** %115, align 8
  %117 = load %struct.dpp*, %struct.dpp** %6, align 8
  %118 = load i32, i32* @IPP_DEGAMMA_MODE_HW_sRGB, align 4
  %119 = call i32 %116(%struct.dpp* %117, i32 %118)
  br label %140

120:                                              ; preds = %107
  %121 = load %struct.dpp*, %struct.dpp** %6, align 8
  %122 = getelementptr inbounds %struct.dpp, %struct.dpp* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32 (%struct.dpp*, i32)*, i32 (%struct.dpp*, i32)** %124, align 8
  %126 = load %struct.dpp*, %struct.dpp** %6, align 8
  %127 = load i32, i32* @IPP_DEGAMMA_MODE_HW_xvYCC, align 4
  %128 = call i32 %125(%struct.dpp* %126, i32 %127)
  br label %140

129:                                              ; preds = %107
  %130 = load %struct.dpp*, %struct.dpp** %6, align 8
  %131 = getelementptr inbounds %struct.dpp, %struct.dpp* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32 (%struct.dpp*, i32)*, i32 (%struct.dpp*, i32)** %133, align 8
  %135 = load %struct.dpp*, %struct.dpp** %6, align 8
  %136 = load i32, i32* @IPP_DEGAMMA_MODE_BYPASS, align 4
  %137 = call i32 %134(%struct.dpp* %135, i32 %136)
  br label %140

138:                                              ; preds = %107
  br label %139

139:                                              ; preds = %107, %138
  store i32 0, i32* %8, align 4
  br label %140

140:                                              ; preds = %139, %129, %120, %111
  br label %167

141:                                              ; preds = %101
  %142 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %7, align 8
  %143 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @TF_TYPE_BYPASS, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %141
  %148 = load %struct.dpp*, %struct.dpp** %6, align 8
  %149 = getelementptr inbounds %struct.dpp, %struct.dpp* %148, i32 0, i32 0
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32 (%struct.dpp*, i32)*, i32 (%struct.dpp*, i32)** %151, align 8
  %153 = load %struct.dpp*, %struct.dpp** %6, align 8
  %154 = load i32, i32* @IPP_DEGAMMA_MODE_BYPASS, align 4
  %155 = call i32 %152(%struct.dpp* %153, i32 %154)
  br label %166

156:                                              ; preds = %141
  %157 = call i32 (...) @BREAK_TO_DEBUGGER()
  %158 = load %struct.dpp*, %struct.dpp** %6, align 8
  %159 = getelementptr inbounds %struct.dpp, %struct.dpp* %158, i32 0, i32 0
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32 (%struct.dpp*, i32)*, i32 (%struct.dpp*, i32)** %161, align 8
  %163 = load %struct.dpp*, %struct.dpp** %6, align 8
  %164 = load i32, i32* @IPP_DEGAMMA_MODE_BYPASS, align 4
  %165 = call i32 %162(%struct.dpp* %163, i32 %164)
  br label %166

166:                                              ; preds = %156, %147
  br label %167

167:                                              ; preds = %166, %140
  %168 = load i32, i32* %8, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %167, %100, %38, %19
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @dcn20_set_shaper_3dlut(%struct.pipe_ctx*, %struct.dc_plane_state*) #1

declare dso_local i32 @dcn20_set_blend_lut(%struct.pipe_ctx*, %struct.dc_plane_state*) #1

declare dso_local i32 @cm_helper_translate_curve_to_degamma_hw_format(%struct.dc_transfer_func*, i32*) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
