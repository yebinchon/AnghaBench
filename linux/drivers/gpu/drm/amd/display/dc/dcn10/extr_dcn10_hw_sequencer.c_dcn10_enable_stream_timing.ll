; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_enable_stream_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_enable_stream_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.pipe_ctx = type { %struct.TYPE_24__, %struct.dc_stream_state*, %struct.TYPE_21__, i32, %struct.TYPE_18__*, i32* }
%struct.TYPE_24__ = type { %struct.TYPE_25__*, %struct.TYPE_17__*, i32 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 (%struct.TYPE_25__*)*, i32 (%struct.TYPE_25__*, i32)*, i32 (%struct.TYPE_25__*)*, i32 (%struct.TYPE_25__*, %struct.tg_color*)*, i32 (%struct.TYPE_25__*, i32*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_25__*, i32)* }
%struct.tg_color = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 (%struct.TYPE_17__*, i32*, i32*)* }
%struct.dc_stream_state = type { i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_18__*, i32*, i32*)* }
%struct.dc_state = type { i32 }
%struct.dc = type { i32 }

@DC_OK = common dso_local global i32 0, align 4
@DC_ERROR_UNEXPECTED = common dso_local global i32 0, align 4
@inst_offset = common dso_local global i32 0, align 4
@reg_offsets = common dso_local global %struct.TYPE_19__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_ctx*, %struct.dc_state*, %struct.dc*)* @dcn10_enable_stream_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcn10_enable_stream_timing(%struct.pipe_ctx* %0, %struct.dc_state* %1, %struct.dc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pipe_ctx*, align 8
  %6 = alloca %struct.dc_state*, align 8
  %7 = alloca %struct.dc*, align 8
  %8 = alloca %struct.dc_stream_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tg_color, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %5, align 8
  store %struct.dc_state* %1, %struct.dc_state** %6, align 8
  store %struct.dc* %2, %struct.dc** %7, align 8
  %11 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %11, i32 0, i32 1
  %13 = load %struct.dc_stream_state*, %struct.dc_stream_state** %12, align 8
  store %struct.dc_stream_state* %13, %struct.dc_stream_state** %8, align 8
  %14 = bitcast %struct.tg_color* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 4, i1 false)
  %15 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @DC_OK, align 4
  store i32 %20, i32* %4, align 4
  br label %194

21:                                               ; preds = %3
  %22 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 5
  %29 = load i32 (%struct.TYPE_25__*, i32)*, i32 (%struct.TYPE_25__*, i32)** %28, align 8
  %30 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %32, align 8
  %34 = call i32 %29(%struct.TYPE_25__* %33, i32 1)
  %35 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %35, i32 0, i32 4
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_18__*, i32*, i32*)*, i32 (%struct.TYPE_18__*, i32*, i32*)** %40, align 8
  %42 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %42, i32 0, i32 4
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  %45 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %46 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 2
  %48 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %49 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %48, i32 0, i32 3
  %50 = call i32 %41(%struct.TYPE_18__* %44, i32* %47, i32* %49)
  %51 = icmp eq i32 0, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %21
  %53 = call i32 (...) @BREAK_TO_DEBUGGER()
  %54 = load i32, i32* @DC_ERROR_UNEXPECTED, align 4
  store i32 %54, i32* %4, align 4
  br label %194

55:                                               ; preds = %21
  %56 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %57 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 4
  %63 = load i32 (%struct.TYPE_25__*, i32*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_25__*, i32*, i32, i32, i32, i32, i32, i32)** %62, align 8
  %64 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %65 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %66, align 8
  %68 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %69 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %68, i32 0, i32 4
  %70 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %71 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %75 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %79 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %83 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %87 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %86, i32 0, i32 1
  %88 = load %struct.dc_stream_state*, %struct.dc_stream_state** %87, align 8
  %89 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 %63(%struct.TYPE_25__* %67, i32* %69, i32 %73, i32 %77, i32 %81, i32 %85, i32 %90, i32 1)
  %92 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %93 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %9, align 4
  %95 = load %struct.dc*, %struct.dc** %7, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @color_space_to_black_color(%struct.dc* %95, i32 %96, %struct.tg_color* %10)
  %98 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %99 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 3
  %105 = load i32 (%struct.TYPE_25__*, %struct.tg_color*)*, i32 (%struct.TYPE_25__*, %struct.tg_color*)** %104, align 8
  %106 = icmp ne i32 (%struct.TYPE_25__*, %struct.tg_color*)* %105, null
  br i1 %106, label %107, label %121

107:                                              ; preds = %55
  %108 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %109 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 3
  %115 = load i32 (%struct.TYPE_25__*, %struct.tg_color*)*, i32 (%struct.TYPE_25__*, %struct.tg_color*)** %114, align 8
  %116 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %117 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %118, align 8
  %120 = call i32 %115(%struct.TYPE_25__* %119, %struct.tg_color* %10)
  br label %121

121:                                              ; preds = %107, %55
  %122 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %123 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 2
  %129 = load i32 (%struct.TYPE_25__*)*, i32 (%struct.TYPE_25__*)** %128, align 8
  %130 = icmp ne i32 (%struct.TYPE_25__*)* %129, null
  br i1 %130, label %131, label %174

131:                                              ; preds = %121
  %132 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %133 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 2
  %139 = load i32 (%struct.TYPE_25__*)*, i32 (%struct.TYPE_25__*)** %138, align 8
  %140 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %141 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %142, align 8
  %144 = call i32 %139(%struct.TYPE_25__* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %174, label %146

146:                                              ; preds = %131
  %147 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %148 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 1
  %154 = load i32 (%struct.TYPE_25__*, i32)*, i32 (%struct.TYPE_25__*, i32)** %153, align 8
  %155 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %156 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %157, align 8
  %159 = call i32 %154(%struct.TYPE_25__* %158, i32 1)
  %160 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %161 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %162, align 8
  %164 = call i32 @hwss_wait_for_blank_complete(%struct.TYPE_25__* %163)
  %165 = load %struct.dc*, %struct.dc** %7, align 8
  %166 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %167 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %166, i32 0, i32 1
  %168 = load %struct.dc_stream_state*, %struct.dc_stream_state** %167, align 8
  %169 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %170 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %171, align 8
  %173 = call i32 @false_optc_underflow_wa(%struct.dc* %165, %struct.dc_stream_state* %168, %struct.TYPE_25__* %172)
  br label %174

174:                                              ; preds = %146, %131, %121
  %175 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %176 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 0
  %182 = load i32 (%struct.TYPE_25__*)*, i32 (%struct.TYPE_25__*)** %181, align 8
  %183 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %184 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %185, align 8
  %187 = call i32 %182(%struct.TYPE_25__* %186)
  %188 = icmp eq i32 0, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %174
  %190 = call i32 (...) @BREAK_TO_DEBUGGER()
  %191 = load i32, i32* @DC_ERROR_UNEXPECTED, align 4
  store i32 %191, i32* %4, align 4
  br label %194

192:                                              ; preds = %174
  %193 = load i32, i32* @DC_OK, align 4
  store i32 %193, i32* %4, align 4
  br label %194

194:                                              ; preds = %192, %189, %52, %19
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #2

declare dso_local i32 @color_space_to_black_color(%struct.dc*, i32, %struct.tg_color*) #2

declare dso_local i32 @hwss_wait_for_blank_complete(%struct.TYPE_25__*) #2

declare dso_local i32 @false_optc_underflow_wa(%struct.dc*, %struct.dc_stream_state*, %struct.TYPE_25__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
