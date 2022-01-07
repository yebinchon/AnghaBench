; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_resource_map_clock_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_resource_map_clock_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_4__, %struct.resource_pool* }
%struct.TYPE_4__ = type { i32 }
%struct.resource_pool = type { i32* }
%struct.dc_state = type { i32 }
%struct.dc_stream_state = type { i32 }
%struct.pipe_ctx = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@DC_ERROR_UNEXPECTED = common dso_local global i32 0, align 4
@SIGNAL_TYPE_VIRTUAL = common dso_local global i64 0, align 8
@DC_NO_CLOCK_SOURCE_RESOURCE = common dso_local global i32 0, align 4
@DC_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resource_map_clock_resources(%struct.dc* %0, %struct.dc_state* %1, %struct.dc_stream_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc*, align 8
  %6 = alloca %struct.dc_state*, align 8
  %7 = alloca %struct.dc_stream_state*, align 8
  %8 = alloca %struct.resource_pool*, align 8
  %9 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc* %0, %struct.dc** %5, align 8
  store %struct.dc_state* %1, %struct.dc_state** %6, align 8
  store %struct.dc_stream_state* %2, %struct.dc_stream_state** %7, align 8
  %10 = load %struct.dc*, %struct.dc** %5, align 8
  %11 = getelementptr inbounds %struct.dc, %struct.dc* %10, i32 0, i32 1
  %12 = load %struct.resource_pool*, %struct.resource_pool** %11, align 8
  store %struct.resource_pool* %12, %struct.resource_pool** %8, align 8
  %13 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %14 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %13, i32 0, i32 0
  %15 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %16 = call %struct.pipe_ctx* @resource_get_head_pipe_for_stream(i32* %14, %struct.dc_stream_state* %15)
  store %struct.pipe_ctx* %16, %struct.pipe_ctx** %9, align 8
  %17 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %18 = icmp ne %struct.pipe_ctx* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @DC_ERROR_UNEXPECTED, align 4
  store i32 %20, i32* %4, align 4
  br label %87

21:                                               ; preds = %3
  %22 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %23 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @dc_is_dp_signal(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %21
  %30 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %31 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SIGNAL_TYPE_VIRTUAL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %29, %21
  %38 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %39 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %42 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  br label %71

43:                                               ; preds = %29
  %44 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %45 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  %46 = load %struct.dc*, %struct.dc** %5, align 8
  %47 = getelementptr inbounds %struct.dc, %struct.dc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %43
  %52 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %53 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %52, i32 0, i32 0
  %54 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %55 = call i32* @resource_find_used_clk_src_for_sharing(i32* %53, %struct.pipe_ctx* %54)
  %56 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %57 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %56, i32 0, i32 0
  store i32* %55, i32** %57, align 8
  br label %58

58:                                               ; preds = %51, %43
  %59 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %60 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %65 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %64, i32 0, i32 0
  %66 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %67 = call i32* @dc_resource_find_first_free_pll(i32* %65, %struct.resource_pool* %66)
  %68 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %69 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %68, i32 0, i32 0
  store i32* %67, i32** %69, align 8
  br label %70

70:                                               ; preds = %63, %58
  br label %71

71:                                               ; preds = %70, %37
  %72 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %73 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @DC_NO_CLOCK_SOURCE_RESOURCE, align 4
  store i32 %77, i32* %4, align 4
  br label %87

78:                                               ; preds = %71
  %79 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %80 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %79, i32 0, i32 0
  %81 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %82 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %83 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @resource_reference_clock_source(i32* %80, %struct.resource_pool* %81, i32* %84)
  %86 = load i32, i32* @DC_OK, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %78, %76, %19
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.pipe_ctx* @resource_get_head_pipe_for_stream(i32*, %struct.dc_stream_state*) #1

declare dso_local i64 @dc_is_dp_signal(i64) #1

declare dso_local i32* @resource_find_used_clk_src_for_sharing(i32*, %struct.pipe_ctx*) #1

declare dso_local i32* @dc_resource_find_first_free_pll(i32*, %struct.resource_pool*) #1

declare dso_local i32 @resource_reference_clock_source(i32*, %struct.resource_pool*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
