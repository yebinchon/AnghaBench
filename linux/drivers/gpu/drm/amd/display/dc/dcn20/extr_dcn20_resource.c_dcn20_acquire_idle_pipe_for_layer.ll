; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_dcn20_acquire_idle_pipe_for_layer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_dcn20_acquire_idle_pipe_for_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { i64, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dc_state = type { %struct.resource_context }
%struct.resource_context = type { i32 }
%struct.resource_pool = type { %struct.TYPE_6__**, i32*, i32* }
%struct.dc_stream_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pipe_ctx* @dcn20_acquire_idle_pipe_for_layer(%struct.dc_state* %0, %struct.resource_pool* %1, %struct.dc_stream_state* %2) #0 {
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
  br label %24

24:                                               ; preds = %22, %3
  %25 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %26 = icmp ne %struct.pipe_ctx* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store %struct.pipe_ctx* null, %struct.pipe_ctx** %4, align 8
  br label %95

28:                                               ; preds = %24
  %29 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %30 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %33 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %35 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %39 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %42 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %46 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %49 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %52 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %57 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  store i32 %55, i32* %58, align 4
  %59 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %60 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %63 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %68 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 8
  %70 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %71 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %71, align 8
  %73 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %74 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %72, i64 %75
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %79 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  store %struct.TYPE_6__* %77, %struct.TYPE_6__** %80, align 8
  %81 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %82 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %82, align 8
  %84 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %85 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %83, i64 %86
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %92 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  %94 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  store %struct.pipe_ctx* %94, %struct.pipe_ctx** %4, align 8
  br label %95

95:                                               ; preds = %28, %27
  %96 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  ret %struct.pipe_ctx* %96
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
