; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_resource.c_dce110_acquire_underlay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_resource.c_dce110_acquire_underlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { i32, %struct.TYPE_17__, %struct.TYPE_28__, %struct.dc_stream_state* }
%struct.TYPE_17__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_29__*, i32 }
%struct.TYPE_29__ = type { i32 (%struct.TYPE_18__*, %struct.tg_color*)*, i32 (%struct.TYPE_18__*, i32, %struct.TYPE_20__*)*, i32 (%struct.TYPE_18__*, %struct.TYPE_20__*, i32, i32, i32, i32, i32, i32)* }
%struct.tg_color = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 (%struct.TYPE_19__*, i32, i32, i32, i32)* }
%struct.dc_state = type { i32, %struct.resource_context }
%struct.resource_context = type { %struct.pipe_ctx* }
%struct.resource_pool = type { i32, i32*, i32*, %struct.TYPE_19__**, %struct.TYPE_18__** }
%struct.dc_stream_state = type { %struct.TYPE_20__, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.dc* }
%struct.dc = type { %struct.TYPE_26__, %struct.TYPE_25__*, %struct.TYPE_24__* }
%struct.TYPE_26__ = type { i32 (%struct.dc.0*, i32, %struct.dc_bios*, i32)* }
%struct.dc.0 = type opaque
%struct.dc_bios = type { i32 }
%struct.TYPE_25__ = type { %struct.dc_bios* }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }

@PIPE_GATING_CONTROL_DISABLE = common dso_local global i32 0, align 4
@COLOR_SPACE_YCBCR601 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pipe_ctx* (%struct.dc_state*, %struct.resource_pool*, %struct.dc_stream_state*)* @dce110_acquire_underlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pipe_ctx* @dce110_acquire_underlay(%struct.dc_state* %0, %struct.resource_pool* %1, %struct.dc_stream_state* %2) #0 {
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca %struct.dc_state*, align 8
  %6 = alloca %struct.resource_pool*, align 8
  %7 = alloca %struct.dc_stream_state*, align 8
  %8 = alloca %struct.dc*, align 8
  %9 = alloca %struct.resource_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pipe_ctx*, align 8
  %12 = alloca %struct.tg_color, align 4
  %13 = alloca %struct.dc_bios*, align 8
  store %struct.dc_state* %0, %struct.dc_state** %5, align 8
  store %struct.resource_pool* %1, %struct.resource_pool** %6, align 8
  store %struct.dc_stream_state* %2, %struct.dc_stream_state** %7, align 8
  %14 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %15 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %14, i32 0, i32 2
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %18 = load %struct.dc*, %struct.dc** %17, align 8
  store %struct.dc* %18, %struct.dc** %8, align 8
  %19 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %20 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %19, i32 0, i32 1
  store %struct.resource_context* %20, %struct.resource_context** %9, align 8
  %21 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %22 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load %struct.resource_context*, %struct.resource_context** %9, align 8
  %25 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %24, i32 0, i32 0
  %26 = load %struct.pipe_ctx*, %struct.pipe_ctx** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %26, i64 %28
  store %struct.pipe_ctx* %29, %struct.pipe_ctx** %11, align 8
  %30 = load %struct.resource_context*, %struct.resource_context** %9, align 8
  %31 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %30, i32 0, i32 0
  %32 = load %struct.pipe_ctx*, %struct.pipe_ctx** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %32, i64 %34
  %36 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %35, i32 0, i32 3
  %37 = load %struct.dc_stream_state*, %struct.dc_stream_state** %36, align 8
  %38 = icmp ne %struct.dc_stream_state* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %3
  store %struct.pipe_ctx* null, %struct.pipe_ctx** %4, align 8
  br label %203

40:                                               ; preds = %3
  %41 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %42 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %41, i32 0, i32 4
  %43 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %43, i64 %45
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %48 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %49 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  store %struct.TYPE_18__* %47, %struct.TYPE_18__** %50, align 8
  %51 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %52 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %51, i32 0, i32 3
  %53 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %53, i64 %55
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %56, align 8
  %58 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %59 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 0
  store %struct.TYPE_19__* %57, %struct.TYPE_19__** %60, align 8
  %61 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %62 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %69 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 8
  %71 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %72 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %79 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %83 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %85 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %86 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %85, i32 0, i32 3
  store %struct.dc_stream_state* %84, %struct.dc_stream_state** %86, align 8
  %87 = load %struct.dc*, %struct.dc** %8, align 8
  %88 = getelementptr inbounds %struct.dc, %struct.dc* %87, i32 0, i32 2
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %201, label %99

99:                                               ; preds = %40
  %100 = bitcast %struct.tg_color* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %100, i8 0, i64 4, i1 false)
  %101 = load %struct.dc*, %struct.dc** %8, align 8
  %102 = getelementptr inbounds %struct.dc, %struct.dc* %101, i32 0, i32 1
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 0
  %105 = load %struct.dc_bios*, %struct.dc_bios** %104, align 8
  store %struct.dc_bios* %105, %struct.dc_bios** %13, align 8
  %106 = load %struct.dc*, %struct.dc** %8, align 8
  %107 = getelementptr inbounds %struct.dc, %struct.dc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 0
  %109 = load i32 (%struct.dc.0*, i32, %struct.dc_bios*, i32)*, i32 (%struct.dc.0*, i32, %struct.dc_bios*, i32)** %108, align 8
  %110 = load %struct.dc*, %struct.dc** %8, align 8
  %111 = bitcast %struct.dc* %110 to %struct.dc.0*
  %112 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %113 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.dc_bios*, %struct.dc_bios** %13, align 8
  %119 = load i32, i32* @PIPE_GATING_CONTROL_DISABLE, align 4
  %120 = call i32 %109(%struct.dc.0* %111, i32 %117, %struct.dc_bios* %118, i32 %119)
  %121 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %122 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %126, i32 0, i32 2
  %128 = load i32 (%struct.TYPE_18__*, %struct.TYPE_20__*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_18__*, %struct.TYPE_20__*, i32, i32, i32, i32, i32, i32)** %127, align 8
  %129 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %130 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %131, align 8
  %133 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %134 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %133, i32 0, i32 0
  %135 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %136 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %135, i32 0, i32 3
  %137 = load %struct.dc_stream_state*, %struct.dc_stream_state** %136, align 8
  %138 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 %128(%struct.TYPE_18__* %132, %struct.TYPE_20__* %134, i32 0, i32 0, i32 0, i32 0, i32 %139, i32 0)
  %141 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %142 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_29__*, %struct.TYPE_29__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %146, i32 0, i32 1
  %148 = load i32 (%struct.TYPE_18__*, i32, %struct.TYPE_20__*)*, i32 (%struct.TYPE_18__*, i32, %struct.TYPE_20__*)** %147, align 8
  %149 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %150 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %151, align 8
  %153 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %154 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %153, i32 0, i32 0
  %155 = call i32 %148(%struct.TYPE_18__* %152, i32 1, %struct.TYPE_20__* %154)
  %156 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %157 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %161, i32 0, i32 0
  %163 = load i32 (%struct.TYPE_19__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_19__*, i32, i32, i32, i32)** %162, align 8
  %164 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %165 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %166, align 8
  %168 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %169 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %173 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %177 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sdiv i32 %179, 10
  %181 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %182 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 %163(%struct.TYPE_19__* %167, i32 %171, i32 %175, i32 %180, i32 %183)
  %185 = load %struct.dc*, %struct.dc** %8, align 8
  %186 = load i32, i32* @COLOR_SPACE_YCBCR601, align 4
  %187 = call i32 @color_space_to_black_color(%struct.dc* %185, i32 %186, %struct.tg_color* %12)
  %188 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %189 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_29__*, %struct.TYPE_29__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %193, i32 0, i32 0
  %195 = load i32 (%struct.TYPE_18__*, %struct.tg_color*)*, i32 (%struct.TYPE_18__*, %struct.tg_color*)** %194, align 8
  %196 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %197 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %198, align 8
  %200 = call i32 %195(%struct.TYPE_18__* %199, %struct.tg_color* %12)
  br label %201

201:                                              ; preds = %99, %40
  %202 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  store %struct.pipe_ctx* %202, %struct.pipe_ctx** %4, align 8
  br label %203

203:                                              ; preds = %201, %39
  %204 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  ret %struct.pipe_ctx* %204
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @color_space_to_black_color(%struct.dc*, i32, %struct.tg_color*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
