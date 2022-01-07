; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce100/extr_dce100_resource.c_build_mapped_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce100/extr_dce100_resource.c_build_mapped_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32 }
%struct.dc_state = type { i32 }
%struct.dc_stream_state = type { i32 }
%struct.pipe_ctx = type { i32 }

@DC_ERROR_UNEXPECTED = common dso_local global i32 0, align 4
@DC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc*, %struct.dc_state*, %struct.dc_stream_state*)* @build_mapped_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_mapped_resource(%struct.dc* %0, %struct.dc_state* %1, %struct.dc_stream_state* %2) #0 {
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
  br label %23

17:                                               ; preds = %3
  %18 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %19 = call i32 @dce110_resource_build_pipe_hw_param(%struct.pipe_ctx* %18)
  %20 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %21 = call i32 @resource_build_info_frame(%struct.pipe_ctx* %20)
  %22 = load i32, i32* @DC_OK, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %17, %15
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local %struct.pipe_ctx* @resource_get_head_pipe_for_stream(i32*, %struct.dc_stream_state*) #1

declare dso_local i32 @dce110_resource_build_pipe_hw_param(%struct.pipe_ctx*) #1

declare dso_local i32 @resource_build_info_frame(%struct.pipe_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
