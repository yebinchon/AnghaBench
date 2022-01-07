; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_set_cursor_position.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_set_cursor_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_28__, %struct.TYPE_25__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_28__ = type { %struct.TYPE_27__, %struct.mem_input*, %struct.input_pixel_processor* }
%struct.TYPE_27__ = type { %struct.TYPE_26__, i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.mem_input = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 (%struct.mem_input*, %struct.dc_cursor_position*, %struct.dc_cursor_mi_param*)* }
%struct.dc_cursor_position = type { i32 }
%struct.dc_cursor_mi_param = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.input_pixel_processor = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 (%struct.input_pixel_processor*, %struct.dc_cursor_position*, %struct.dc_cursor_mi_param*)* }
%struct.TYPE_25__ = type { %struct.TYPE_24__*, %struct.TYPE_20__, %struct.dc_cursor_position }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }

@PLN_ADDR_TYPE_VIDEO_PROGRESSIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_set_cursor_position(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.pipe_ctx*, align 8
  %3 = alloca %struct.dc_cursor_position, align 4
  %4 = alloca %struct.input_pixel_processor*, align 8
  %5 = alloca %struct.mem_input*, align 8
  %6 = alloca %struct.dc_cursor_mi_param, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %2, align 8
  %7 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %7, i32 0, i32 3
  %9 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 2
  %11 = bitcast %struct.dc_cursor_position* %3 to i8*
  %12 = bitcast %struct.dc_cursor_position* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 4, i1 false)
  %13 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 2
  %16 = load %struct.input_pixel_processor*, %struct.input_pixel_processor** %15, align 8
  store %struct.input_pixel_processor* %16, %struct.input_pixel_processor** %4, align 8
  %17 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 1
  %20 = load %struct.mem_input*, %struct.mem_input** %19, align 8
  store %struct.mem_input* %20, %struct.mem_input** %5, align 8
  %21 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %6, i32 0, i32 0
  %22 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %22, i32 0, i32 3
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sdiv i32 %27, 10
  store i32 %28, i32* %21, align 4
  %29 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %6, i32 0, i32 1
  %30 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %31 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %30, i32 0, i32 1
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %29, align 4
  %35 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %6, i32 0, i32 2
  %36 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %37 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %36, i32 0, i32 1
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %35, align 4
  %41 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %6, i32 0, i32 3
  %42 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %43 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %41, align 4
  %48 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %6, i32 0, i32 4
  %49 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %50 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %48, align 4
  %55 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %6, i32 0, i32 5
  %56 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %57 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %55, align 4
  %61 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %6, i32 0, i32 6
  %62 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %63 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %62, i32 0, i32 3
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %61, align 4
  %74 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %75 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %74, i32 0, i32 1
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @PLN_ADDR_TYPE_VIDEO_PROGRESSIVE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %1
  %83 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 0
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %82, %1
  %85 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %86 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %85, i32 0, i32 0
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %86, align 8
  %88 = icmp ne %struct.TYPE_17__* %87, null
  br i1 %88, label %89, label %101

89:                                               ; preds = %84
  %90 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %91 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %90, i32 0, i32 1
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %94 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %93, i32 0, i32 0
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %96, align 8
  %98 = icmp ne %struct.TYPE_16__* %92, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %89
  %100 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 0
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %99, %89, %84
  %102 = load %struct.input_pixel_processor*, %struct.input_pixel_processor** %4, align 8
  %103 = getelementptr inbounds %struct.input_pixel_processor, %struct.input_pixel_processor* %102, i32 0, i32 0
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i32 (%struct.input_pixel_processor*, %struct.dc_cursor_position*, %struct.dc_cursor_mi_param*)*, i32 (%struct.input_pixel_processor*, %struct.dc_cursor_position*, %struct.dc_cursor_mi_param*)** %105, align 8
  %107 = icmp ne i32 (%struct.input_pixel_processor*, %struct.dc_cursor_position*, %struct.dc_cursor_mi_param*)* %106, null
  br i1 %107, label %108, label %116

108:                                              ; preds = %101
  %109 = load %struct.input_pixel_processor*, %struct.input_pixel_processor** %4, align 8
  %110 = getelementptr inbounds %struct.input_pixel_processor, %struct.input_pixel_processor* %109, i32 0, i32 0
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load i32 (%struct.input_pixel_processor*, %struct.dc_cursor_position*, %struct.dc_cursor_mi_param*)*, i32 (%struct.input_pixel_processor*, %struct.dc_cursor_position*, %struct.dc_cursor_mi_param*)** %112, align 8
  %114 = load %struct.input_pixel_processor*, %struct.input_pixel_processor** %4, align 8
  %115 = call i32 %113(%struct.input_pixel_processor* %114, %struct.dc_cursor_position* %3, %struct.dc_cursor_mi_param* %6)
  br label %116

116:                                              ; preds = %108, %101
  %117 = load %struct.mem_input*, %struct.mem_input** %5, align 8
  %118 = getelementptr inbounds %struct.mem_input, %struct.mem_input* %117, i32 0, i32 0
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load i32 (%struct.mem_input*, %struct.dc_cursor_position*, %struct.dc_cursor_mi_param*)*, i32 (%struct.mem_input*, %struct.dc_cursor_position*, %struct.dc_cursor_mi_param*)** %120, align 8
  %122 = icmp ne i32 (%struct.mem_input*, %struct.dc_cursor_position*, %struct.dc_cursor_mi_param*)* %121, null
  br i1 %122, label %123, label %131

123:                                              ; preds = %116
  %124 = load %struct.mem_input*, %struct.mem_input** %5, align 8
  %125 = getelementptr inbounds %struct.mem_input, %struct.mem_input* %124, i32 0, i32 0
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = load i32 (%struct.mem_input*, %struct.dc_cursor_position*, %struct.dc_cursor_mi_param*)*, i32 (%struct.mem_input*, %struct.dc_cursor_position*, %struct.dc_cursor_mi_param*)** %127, align 8
  %129 = load %struct.mem_input*, %struct.mem_input** %5, align 8
  %130 = call i32 %128(%struct.mem_input* %129, %struct.dc_cursor_position* %3, %struct.dc_cursor_mi_param* %6)
  br label %131

131:                                              ; preds = %123, %116
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
