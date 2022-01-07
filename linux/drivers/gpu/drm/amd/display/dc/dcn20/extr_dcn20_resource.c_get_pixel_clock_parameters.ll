; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_get_pixel_clock_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_get_pixel_clock_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_10__, %struct.dc_stream_state*, %struct.pipe_ctx* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.dc_stream_state = type { %struct.TYPE_12__, i32, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i32, i64, i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.pixel_clk_params = type { i32, i32, i64, i32, %struct.TYPE_11__, i64, i32, i32 }
%struct.TYPE_11__ = type { i32, i64 }

@LINK_RATE_LOW = common dso_local global i32 0, align 4
@LINK_RATE_REF_FREQ_IN_KHZ = common dso_local global i32 0, align 4
@PIXEL_ENCODING_YCBCR422 = common dso_local global i64 0, align 8
@COLOR_DEPTH_888 = common dso_local global i32 0, align 4
@TIMING_3D_FORMAT_HW_FRAME_PACKING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx*, %struct.pixel_clk_params*)* @get_pixel_clock_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_pixel_clock_parameters(%struct.pipe_ctx* %0, %struct.pixel_clk_params* %1) #0 {
  %3 = alloca %struct.pipe_ctx*, align 8
  %4 = alloca %struct.pixel_clk_params*, align 8
  %5 = alloca %struct.dc_stream_state*, align 8
  %6 = alloca %struct.pipe_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %3, align 8
  store %struct.pixel_clk_params* %1, %struct.pixel_clk_params** %4, align 8
  %8 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %8, i32 0, i32 1
  %10 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  store %struct.dc_stream_state* %10, %struct.dc_stream_state** %5, align 8
  store i32 1, i32* %7, align 4
  %11 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %11, i32 0, i32 2
  %13 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  store %struct.pipe_ctx* %13, %struct.pipe_ctx** %6, align 8
  br label %14

14:                                               ; preds = %20, %2
  %15 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %16 = icmp ne %struct.pipe_ctx* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %17
  %21 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %21, i32 0, i32 2
  %23 = load %struct.pipe_ctx*, %struct.pipe_ctx** %22, align 8
  store %struct.pipe_ctx* %23, %struct.pipe_ctx** %6, align 8
  br label %14

24:                                               ; preds = %14
  %25 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %26 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %30 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %32 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %31, i32 0, i32 2
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %39 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 4
  %40 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %40, i32 0, i32 1
  %42 = load %struct.dc_stream_state*, %struct.dc_stream_state** %41, align 8
  %43 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %46 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 8
  %47 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  %54 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %55 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %54, i32 0, i32 5
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* @LINK_RATE_LOW, align 4
  %57 = load i32, i32* @LINK_RATE_REF_FREQ_IN_KHZ, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %60 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %62 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %65 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %69 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %71 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %74 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %78 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  %79 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %80 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @PIXEL_ENCODING_YCBCR422, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %24
  %86 = load i32, i32* @COLOR_DEPTH_888, align 4
  %87 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %88 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %85, %24
  %90 = load i32, i32* %7, align 4
  %91 = icmp eq i32 %90, 4
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %94 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sdiv i32 %95, 4
  store i32 %96, i32* %94, align 8
  br label %111

97:                                               ; preds = %89
  %98 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %99 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %98, i32 0, i32 0
  %100 = call i64 @optc1_is_two_pixels_per_containter(%struct.TYPE_12__* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %7, align 4
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %105, label %110

105:                                              ; preds = %102, %97
  %106 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %107 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sdiv i32 %108, 2
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %105, %102
  br label %111

111:                                              ; preds = %110, %92
  %112 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %113 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @TIMING_3D_FORMAT_HW_FRAME_PACKING, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %111
  %119 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %4, align 8
  %120 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = mul nsw i32 %121, 2
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %118, %111
  ret void
}

declare dso_local i64 @optc1_is_two_pixels_per_containter(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
