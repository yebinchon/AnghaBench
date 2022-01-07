; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_dc_validate_global_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_dc_validate_global_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 (%struct.dc*, %struct.dc_state*)*, i32 (%struct.TYPE_12__*)*, i32 (%struct.dc*, %struct.dc_state*, i32)* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.dc_state = type { i32, %struct.TYPE_13__, %struct.dc_stream_state** }
%struct.TYPE_13__ = type { %struct.pipe_ctx* }
%struct.pipe_ctx = type { i32, %struct.dc_stream_state*, %struct.TYPE_12__* }
%struct.dc_stream_state = type { i32 }

@DC_ERROR_UNEXPECTED = common dso_local global i32 0, align 4
@DC_OK = common dso_local global i32 0, align 4
@DC_SW_UNKNOWN = common dso_local global i64 0, align 8
@DC_FAIL_BANDWIDTH_VALIDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_validate_global_state(%struct.dc* %0, %struct.dc_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc*, align 8
  %6 = alloca %struct.dc_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dc_stream_state*, align 8
  %12 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc* %0, %struct.dc** %5, align 8
  store %struct.dc_state* %1, %struct.dc_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @DC_ERROR_UNEXPECTED, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %15 = icmp ne %struct.dc_state* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @DC_ERROR_UNEXPECTED, align 4
  store i32 %17, i32* %4, align 4
  br label %195

18:                                               ; preds = %3
  %19 = load %struct.dc*, %struct.dc** %5, align 8
  %20 = getelementptr inbounds %struct.dc, %struct.dc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32 (%struct.dc*, %struct.dc_state*)*, i32 (%struct.dc*, %struct.dc_state*)** %24, align 8
  %26 = icmp ne i32 (%struct.dc*, %struct.dc_state*)* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %18
  %28 = load %struct.dc*, %struct.dc** %5, align 8
  %29 = getelementptr inbounds %struct.dc, %struct.dc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32 (%struct.dc*, %struct.dc_state*)*, i32 (%struct.dc*, %struct.dc_state*)** %33, align 8
  %35 = load %struct.dc*, %struct.dc** %5, align 8
  %36 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %37 = call i32 %34(%struct.dc* %35, %struct.dc_state* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @DC_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %195

43:                                               ; preds = %27
  br label %44

44:                                               ; preds = %43, %18
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %167, %44
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %48 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %170

51:                                               ; preds = %45
  %52 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %53 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %52, i32 0, i32 2
  %54 = load %struct.dc_stream_state**, %struct.dc_stream_state*** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.dc_stream_state*, %struct.dc_stream_state** %54, i64 %56
  %58 = load %struct.dc_stream_state*, %struct.dc_stream_state** %57, align 8
  store %struct.dc_stream_state* %58, %struct.dc_stream_state** %11, align 8
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %163, %51
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.dc*, %struct.dc** %5, align 8
  %62 = getelementptr inbounds %struct.dc, %struct.dc* %61, i32 0, i32 0
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %60, %65
  br i1 %66, label %67, label %166

67:                                               ; preds = %59
  %68 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %69 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load %struct.pipe_ctx*, %struct.pipe_ctx** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %71, i64 %73
  store %struct.pipe_ctx* %74, %struct.pipe_ctx** %12, align 8
  %75 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %76 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %75, i32 0, i32 1
  %77 = load %struct.dc_stream_state*, %struct.dc_stream_state** %76, align 8
  %78 = load %struct.dc_stream_state*, %struct.dc_stream_state** %11, align 8
  %79 = icmp ne %struct.dc_stream_state* %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  br label %163

81:                                               ; preds = %67
  %82 = load %struct.dc*, %struct.dc** %5, align 8
  %83 = getelementptr inbounds %struct.dc, %struct.dc* %82, i32 0, i32 0
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %87, align 8
  %89 = icmp ne i32 (%struct.TYPE_12__*)* %88, null
  br i1 %89, label %90, label %123

90:                                               ; preds = %81
  %91 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %92 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %91, i32 0, i32 2
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = icmp ne %struct.TYPE_12__* %93, null
  br i1 %94, label %95, label %123

95:                                               ; preds = %90
  %96 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %97 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %96, i32 0, i32 2
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @DC_SW_UNKNOWN, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %95
  %106 = load %struct.dc*, %struct.dc** %5, align 8
  %107 = getelementptr inbounds %struct.dc, %struct.dc* %106, i32 0, i32 0
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %111, align 8
  %113 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %114 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %113, i32 0, i32 2
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = call i32 %112(%struct.TYPE_12__* %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @DC_OK, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %105
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %4, align 4
  br label %195

122:                                              ; preds = %105
  br label %123

123:                                              ; preds = %122, %95, %90, %81
  %124 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %125 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %124, i32 0, i32 1
  %126 = load %struct.dc_stream_state*, %struct.dc_stream_state** %125, align 8
  %127 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @dc_is_dp_signal(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %162

131:                                              ; preds = %123
  %132 = load %struct.dc_stream_state*, %struct.dc_stream_state** %11, align 8
  %133 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %134 = call i32 @find_pll_sharable_stream(%struct.dc_stream_state* %132, %struct.dc_state* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %162, label %136

136:                                              ; preds = %131
  %137 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %138 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %137, i32 0, i32 1
  %139 = load %struct.dc*, %struct.dc** %5, align 8
  %140 = getelementptr inbounds %struct.dc, %struct.dc* %139, i32 0, i32 0
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %143 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @resource_unreference_clock_source(%struct.TYPE_13__* %138, %struct.TYPE_14__* %141, i32 %144)
  %146 = load %struct.dc*, %struct.dc** %5, align 8
  %147 = getelementptr inbounds %struct.dc, %struct.dc* %146, i32 0, i32 0
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %152 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %154 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %153, i32 0, i32 1
  %155 = load %struct.dc*, %struct.dc** %5, align 8
  %156 = getelementptr inbounds %struct.dc, %struct.dc* %155, i32 0, i32 0
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %156, align 8
  %158 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %159 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @resource_reference_clock_source(%struct.TYPE_13__* %154, %struct.TYPE_14__* %157, i32 %160)
  br label %162

162:                                              ; preds = %136, %131, %123
  br label %163

163:                                              ; preds = %162, %80
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %10, align 4
  br label %59

166:                                              ; preds = %59
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %9, align 4
  br label %45

170:                                              ; preds = %45
  %171 = load %struct.dc*, %struct.dc** %5, align 8
  %172 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %173 = call i32 @resource_build_scaling_params_for_context(%struct.dc* %171, %struct.dc_state* %172)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* @DC_OK, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %193

177:                                              ; preds = %170
  %178 = load %struct.dc*, %struct.dc** %5, align 8
  %179 = getelementptr inbounds %struct.dc, %struct.dc* %178, i32 0, i32 0
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 2
  %184 = load i32 (%struct.dc*, %struct.dc_state*, i32)*, i32 (%struct.dc*, %struct.dc_state*, i32)** %183, align 8
  %185 = load %struct.dc*, %struct.dc** %5, align 8
  %186 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %187 = load i32, i32* %7, align 4
  %188 = call i32 %184(%struct.dc* %185, %struct.dc_state* %186, i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %177
  %191 = load i32, i32* @DC_FAIL_BANDWIDTH_VALIDATE, align 4
  store i32 %191, i32* %8, align 4
  br label %192

192:                                              ; preds = %190, %177
  br label %193

193:                                              ; preds = %192, %170
  %194 = load i32, i32* %8, align 4
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %193, %120, %41, %16
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i64 @dc_is_dp_signal(i32) #1

declare dso_local i32 @find_pll_sharable_stream(%struct.dc_stream_state*, %struct.dc_state*) #1

declare dso_local i32 @resource_unreference_clock_source(%struct.TYPE_13__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @resource_reference_clock_source(%struct.TYPE_13__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @resource_build_scaling_params_for_context(%struct.dc*, %struct.dc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
