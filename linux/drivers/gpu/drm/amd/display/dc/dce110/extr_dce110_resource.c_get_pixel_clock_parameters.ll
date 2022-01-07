; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_resource.c_get_pixel_clock_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_resource.c_get_pixel_clock_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_10__, %struct.dc_stream_state* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.dc_stream_state = type { %struct.TYPE_12__, i32, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i32, i64, i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.pixel_clk_params = type { i32, i32, i64, i32, %struct.TYPE_11__, i64, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i64 }

@LINK_RATE_LOW = common dso_local global i32 0, align 4
@LINK_RATE_REF_FREQ_IN_KHZ = common dso_local global i32 0, align 4
@PIXEL_ENCODING_YCBCR420 = common dso_local global i64 0, align 8
@PIXEL_ENCODING_YCBCR422 = common dso_local global i64 0, align 8
@COLOR_DEPTH_888 = common dso_local global i32 0, align 4
@TIMING_3D_FORMAT_HW_FRAME_PACKING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx*, %struct.pixel_clk_params*)* @get_pixel_clock_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_pixel_clock_parameters(%struct.pipe_ctx* %0, %struct.pixel_clk_params* %1) #0 {
  %3 = alloca %struct.pipe_ctx*, align 8
  %4 = alloca %struct.pixel_clk_params*, align 8
  %5 = alloca %struct.dc_stream_state*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %3, align 8
  store %struct.pixel_clk_params* %1, %struct.pixel_clk_params** %4, align 8
  %6 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %6, i32 0, i32 1
  %8 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  store %struct.dc_stream_state* %8, %struct.dc_stream_state** %5, align 8
  %9 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %10 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %14 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %16 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %15, i32 0, i32 2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %23 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 4
  %24 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %24, i32 0, i32 1
  %26 = load %struct.dc_stream_state*, %struct.dc_stream_state** %25, align 8
  %27 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %30 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  %38 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %39 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %38, i32 0, i32 5
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* @LINK_RATE_LOW, align 4
  %41 = load i32, i32* @LINK_RATE_REF_FREQ_IN_KHZ, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %44 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %46 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %49 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %53 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %55 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %58 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PIXEL_ENCODING_YCBCR420, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %65 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %68 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %72 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  %73 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %74 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PIXEL_ENCODING_YCBCR422, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %2
  %80 = load i32, i32* @COLOR_DEPTH_888, align 4
  %81 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %82 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %79, %2
  %84 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %85 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @PIXEL_ENCODING_YCBCR420, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %92 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sdiv i32 %93, 2
  %95 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %96 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %90, %83
  %98 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %99 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @TIMING_3D_FORMAT_HW_FRAME_PACKING, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %97
  %105 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %106 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %107, 2
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %104, %97
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
