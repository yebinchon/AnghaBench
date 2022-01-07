; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_acquire_first_free_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_acquire_first_free_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_context = type { %struct.pipe_ctx* }
%struct.pipe_ctx = type { i32, %struct.dc_stream_state*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.resource_pool = type { i32, %struct.TYPE_6__**, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.dc_stream_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.resource_context*, %struct.resource_pool*, %struct.dc_stream_state*)* @acquire_first_free_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acquire_first_free_pipe(%struct.resource_context* %0, %struct.resource_pool* %1, %struct.dc_stream_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource_context*, align 8
  %6 = alloca %struct.resource_pool*, align 8
  %7 = alloca %struct.dc_stream_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pipe_ctx*, align 8
  store %struct.resource_context* %0, %struct.resource_context** %5, align 8
  store %struct.resource_pool* %1, %struct.resource_pool** %6, align 8
  store %struct.dc_stream_state* %2, %struct.dc_stream_state** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %133, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %13 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %136

16:                                               ; preds = %10
  %17 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %18 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %17, i32 0, i32 0
  %19 = load %struct.pipe_ctx*, %struct.pipe_ctx** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %19, i64 %21
  %23 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %22, i32 0, i32 1
  %24 = load %struct.dc_stream_state*, %struct.dc_stream_state** %23, align 8
  %25 = icmp ne %struct.dc_stream_state* %24, null
  br i1 %25, label %132, label %26

26:                                               ; preds = %16
  %27 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %28 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %27, i32 0, i32 0
  %29 = load %struct.pipe_ctx*, %struct.pipe_ctx** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %29, i64 %31
  store %struct.pipe_ctx* %32, %struct.pipe_ctx** %9, align 8
  %33 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %34 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %33, i32 0, i32 7
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %41 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %44 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %43, i32 0, i32 6
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %51 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 5
  store i32 %49, i32* %52, align 4
  %53 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %54 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %53, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %61 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 4
  store i32 %59, i32* %62, align 8
  %63 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %64 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %71 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  store i32 %69, i32* %72, align 4
  %73 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %74 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %81 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 8
  %83 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %84 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %85, i64 %87
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %91 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store %struct.TYPE_6__* %89, %struct.TYPE_6__** %92, align 8
  %93 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %94 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %101 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %104 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %105, i64 %107
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = icmp ne %struct.TYPE_6__* %109, null
  br i1 %110, label %111, label %124

111:                                              ; preds = %26
  %112 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %113 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %112, i32 0, i32 1
  %114 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %114, i64 %116
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %122 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 8
  br label %124

124:                                              ; preds = %111, %26
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %127 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %129 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %130 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %129, i32 0, i32 1
  store %struct.dc_stream_state* %128, %struct.dc_stream_state** %130, align 8
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %4, align 4
  br label %137

132:                                              ; preds = %16
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %10

136:                                              ; preds = %10
  store i32 -1, i32* %4, align 4
  br label %137

137:                                              ; preds = %136, %124
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
