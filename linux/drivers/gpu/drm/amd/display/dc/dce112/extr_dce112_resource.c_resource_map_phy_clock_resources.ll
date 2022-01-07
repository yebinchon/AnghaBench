; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_resource.c_resource_map_phy_clock_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_resource.c_resource_map_phy_clock_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.dc_state = type { i32 }
%struct.dc_stream_state = type { i32 }
%struct.pipe_ctx = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DC_ERROR_UNEXPECTED = common dso_local global i32 0, align 4
@DC_NO_CLOCK_SOURCE_RESOURCE = common dso_local global i32 0, align 4
@DC_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resource_map_phy_clock_resources(%struct.dc* %0, %struct.dc_state* %1, %struct.dc_stream_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc*, align 8
  %6 = alloca %struct.dc_state*, align 8
  %7 = alloca %struct.dc_stream_state*, align 8
  %8 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc* %0, %struct.dc** %5, align 8
  store %struct.dc_state* %1, %struct.dc_state** %6, align 8
  store %struct.dc_stream_state* %2, %struct.dc_stream_state** %7, align 8
  %9 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %10 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %9, i32 0, i32 0
  %11 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %12 = call %struct.pipe_ctx* @resource_get_head_pipe_for_stream(i32* %10, %struct.dc_stream_state* %11)
  store %struct.pipe_ctx* %12, %struct.pipe_ctx** %8, align 8
  %13 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %14 = icmp ne %struct.pipe_ctx* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @DC_ERROR_UNEXPECTED, align 4
  store i32 %16, i32* %4, align 4
  br label %69

17:                                               ; preds = %3
  %18 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %19 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @dc_is_dp_signal(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %27 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @dc_is_virtual_signal(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %25, %17
  %34 = load %struct.dc*, %struct.dc** %5, align 8
  %35 = getelementptr inbounds %struct.dc, %struct.dc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  br label %51

41:                                               ; preds = %25
  %42 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %43 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %42, i32 0, i32 0
  %44 = load %struct.dc*, %struct.dc** %5, align 8
  %45 = getelementptr inbounds %struct.dc, %struct.dc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %48 = call i32* @find_matching_pll(i32* %43, %struct.TYPE_5__* %46, %struct.dc_stream_state* %47)
  %49 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %49, i32 0, i32 0
  store i32* %48, i32** %50, align 8
  br label %51

51:                                               ; preds = %41, %33
  %52 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %53 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @DC_NO_CLOCK_SOURCE_RESOURCE, align 4
  store i32 %57, i32* %4, align 4
  br label %69

58:                                               ; preds = %51
  %59 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %60 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %59, i32 0, i32 0
  %61 = load %struct.dc*, %struct.dc** %5, align 8
  %62 = getelementptr inbounds %struct.dc, %struct.dc* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %65 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @resource_reference_clock_source(i32* %60, %struct.TYPE_5__* %63, i32* %66)
  %68 = load i32, i32* @DC_OK, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %58, %56, %15
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.pipe_ctx* @resource_get_head_pipe_for_stream(i32*, %struct.dc_stream_state*) #1

declare dso_local i64 @dc_is_dp_signal(i32) #1

declare dso_local i64 @dc_is_virtual_signal(i32) #1

declare dso_local i32* @find_matching_pll(i32*, %struct.TYPE_5__*, %struct.dc_stream_state*) #1

declare dso_local i32 @resource_reference_clock_source(i32*, %struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
