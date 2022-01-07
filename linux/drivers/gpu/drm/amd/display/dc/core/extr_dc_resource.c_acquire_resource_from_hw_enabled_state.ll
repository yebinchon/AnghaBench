; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_acquire_resource_from_hw_enabled_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_acquire_resource_from_hw_enabled_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_context = type { %struct.pipe_ctx* }
%struct.pipe_ctx = type { i32, %struct.dc_stream_state*, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__*, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.resource_pool = type { i32, i32, i32, %struct.TYPE_13__**, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_14__*)* }
%struct.dc_stream_state = type { %struct.dc_link* }
%struct.dc_link = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.resource_context*, %struct.resource_pool*, %struct.dc_stream_state*)* @acquire_resource_from_hw_enabled_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acquire_resource_from_hw_enabled_state(%struct.resource_context* %0, %struct.resource_pool* %1, %struct.dc_stream_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource_context*, align 8
  %6 = alloca %struct.resource_pool*, align 8
  %7 = alloca %struct.dc_stream_state*, align 8
  %8 = alloca %struct.dc_link*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pipe_ctx*, align 8
  store %struct.resource_context* %0, %struct.resource_context** %5, align 8
  store %struct.resource_pool* %1, %struct.resource_pool** %6, align 8
  store %struct.dc_stream_state* %2, %struct.dc_stream_state** %7, align 8
  %12 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %13 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %12, i32 0, i32 0
  %14 = load %struct.dc_link*, %struct.dc_link** %13, align 8
  store %struct.dc_link* %14, %struct.dc_link** %8, align 8
  %15 = load %struct.dc_link*, %struct.dc_link** %8, align 8
  %16 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %15, i32 0, i32 0
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %20, align 8
  %22 = load %struct.dc_link*, %struct.dc_link** %8, align 8
  %23 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %22, i32 0, i32 0
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %25 = call i32 %21(%struct.TYPE_15__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %196

28:                                               ; preds = %3
  %29 = load %struct.dc_link*, %struct.dc_link** %8, align 8
  %30 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %29, i32 0, i32 0
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %34, align 8
  %36 = load %struct.dc_link*, %struct.dc_link** %8, align 8
  %37 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %36, i32 0, i32 0
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = call i32 %35(%struct.TYPE_15__* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %42 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp uge i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %196

46:                                               ; preds = %28
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %49 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp uge i32 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 -1, i32* %4, align 4
  br label %196

53:                                               ; preds = %46
  %54 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %55 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %54, i32 0, i32 10
  %56 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %56, i64 %58
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %63, align 8
  %65 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %66 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %65, i32 0, i32 10
  %67 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %67, i64 %69
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = call i32 %64(%struct.TYPE_14__* %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %75 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp uge i32 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %196

79:                                               ; preds = %53
  %80 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %81 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %80, i32 0, i32 0
  %82 = load %struct.pipe_ctx*, %struct.pipe_ctx** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %82, i64 %84
  %86 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %85, i32 0, i32 1
  %87 = load %struct.dc_stream_state*, %struct.dc_stream_state** %86, align 8
  %88 = icmp ne %struct.dc_stream_state* %87, null
  br i1 %88, label %195, label %89

89:                                               ; preds = %79
  %90 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %91 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %90, i32 0, i32 0
  %92 = load %struct.pipe_ctx*, %struct.pipe_ctx** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %92, i64 %94
  store %struct.pipe_ctx* %95, %struct.pipe_ctx** %11, align 8
  %96 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %97 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %96, i32 0, i32 9
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %104 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  %106 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %107 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %106, i32 0, i32 8
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %114 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 5
  store i32 %112, i32* %115, align 4
  %116 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %117 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %116, i32 0, i32 7
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %124 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 4
  store i32 %122, i32* %125, align 8
  %126 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %127 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %126, i32 0, i32 6
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %134 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 3
  store i32 %132, i32* %135, align 4
  %136 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %137 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %136, i32 0, i32 5
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %144 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 2
  store i32 %142, i32* %145, align 8
  %146 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %147 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %146, i32 0, i32 3
  %148 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %148, i64 %150
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %151, align 8
  %153 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %154 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  store %struct.TYPE_13__* %152, %struct.TYPE_13__** %155, align 8
  %156 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %157 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %164 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  store i32 %162, i32* %165, align 8
  %166 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %167 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %166, i32 0, i32 3
  %168 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %167, align 8
  %169 = load i32, i32* %10, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %168, i64 %170
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %171, align 8
  %173 = icmp ne %struct.TYPE_13__* %172, null
  br i1 %173, label %174, label %187

174:                                              ; preds = %89
  %175 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %176 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %175, i32 0, i32 3
  %177 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %176, align 8
  %178 = load i32, i32* %10, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %177, i64 %179
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %185 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  store i32 %183, i32* %186, align 8
  br label %187

187:                                              ; preds = %174, %89
  %188 = load i32, i32* %10, align 4
  %189 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %190 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  %191 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %192 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %193 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %192, i32 0, i32 1
  store %struct.dc_stream_state* %191, %struct.dc_stream_state** %193, align 8
  %194 = load i32, i32* %10, align 4
  store i32 %194, i32* %4, align 4
  br label %196

195:                                              ; preds = %79
  store i32 -1, i32* %4, align 4
  br label %196

196:                                              ; preds = %195, %187, %78, %52, %45, %27
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
