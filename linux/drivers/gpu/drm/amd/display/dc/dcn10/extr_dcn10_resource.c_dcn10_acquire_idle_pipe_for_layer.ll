; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_resource.c_dcn10_acquire_idle_pipe_for_layer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_resource.c_dcn10_acquire_idle_pipe_for_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { i64, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.dc_state = type { %struct.resource_context }
%struct.resource_context = type { i32 }
%struct.resource_pool = type { %struct.TYPE_6__**, i32*, i32* }
%struct.dc_stream_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pipe_ctx* (%struct.dc_state*, %struct.resource_pool*, %struct.dc_stream_state*)* @dcn10_acquire_idle_pipe_for_layer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pipe_ctx* @dcn10_acquire_idle_pipe_for_layer(%struct.dc_state* %0, %struct.resource_pool* %1, %struct.dc_stream_state* %2) #0 {
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca %struct.dc_state*, align 8
  %6 = alloca %struct.resource_pool*, align 8
  %7 = alloca %struct.dc_stream_state*, align 8
  %8 = alloca %struct.resource_context*, align 8
  %9 = alloca %struct.pipe_ctx*, align 8
  %10 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc_state* %0, %struct.dc_state** %5, align 8
  store %struct.resource_pool* %1, %struct.resource_pool** %6, align 8
  store %struct.dc_stream_state* %2, %struct.dc_stream_state** %7, align 8
  %11 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %12 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %11, i32 0, i32 0
  store %struct.resource_context* %12, %struct.resource_context** %8, align 8
  %13 = load %struct.resource_context*, %struct.resource_context** %8, align 8
  %14 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %15 = call %struct.pipe_ctx* @resource_get_head_pipe_for_stream(%struct.resource_context* %13, %struct.dc_stream_state* %14)
  store %struct.pipe_ctx* %15, %struct.pipe_ctx** %9, align 8
  %16 = load %struct.resource_context*, %struct.resource_context** %8, align 8
  %17 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %18 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %19 = call %struct.pipe_ctx* @find_idle_secondary_pipe(%struct.resource_context* %16, %struct.resource_pool* %17, %struct.pipe_ctx* %18)
  store %struct.pipe_ctx* %19, %struct.pipe_ctx** %10, align 8
  %20 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %21 = icmp ne %struct.pipe_ctx* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = call i32 @ASSERT(i32 0)
  store %struct.pipe_ctx* null, %struct.pipe_ctx** %4, align 8
  br label %102

24:                                               ; preds = %3
  %25 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %26 = icmp ne %struct.pipe_ctx* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store %struct.pipe_ctx* null, %struct.pipe_ctx** %4, align 8
  br label %102

28:                                               ; preds = %24
  %29 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %30 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %33 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %35 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %39 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 8
  %41 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %42 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %46 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %49 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %53 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %56 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %59 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %64 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  store i32 %62, i32* %65, align 4
  %66 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %67 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %70 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %75 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  store i32 %73, i32* %76, align 8
  %77 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %78 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %78, align 8
  %80 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %81 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %79, i64 %82
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %86 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  store %struct.TYPE_6__* %84, %struct.TYPE_6__** %87, align 8
  %88 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %89 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %89, align 8
  %91 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %92 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %90, i64 %93
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %99 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 8
  %101 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  store %struct.pipe_ctx* %101, %struct.pipe_ctx** %4, align 8
  br label %102

102:                                              ; preds = %28, %27, %22
  %103 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  ret %struct.pipe_ctx* %103
}

declare dso_local %struct.pipe_ctx* @resource_get_head_pipe_for_stream(%struct.resource_context*, %struct.dc_stream_state*) #1

declare dso_local %struct.pipe_ctx* @find_idle_secondary_pipe(%struct.resource_context*, %struct.resource_pool*, %struct.pipe_ctx*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
