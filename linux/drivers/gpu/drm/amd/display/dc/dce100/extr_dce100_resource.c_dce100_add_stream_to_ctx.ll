; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce100/extr_dce100_resource.c_dce100_add_stream_to_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce100/extr_dce100_resource.c_dce100_add_stream_to_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32 }
%struct.dc_state = type { i32 }
%struct.dc_stream_state = type { i32 }

@DC_ERROR_UNEXPECTED = common dso_local global i32 0, align 4
@DC_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce100_add_stream_to_ctx(%struct.dc* %0, %struct.dc_state* %1, %struct.dc_stream_state* %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.dc_state*, align 8
  %6 = alloca %struct.dc_stream_state*, align 8
  %7 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.dc_state* %1, %struct.dc_state** %5, align 8
  store %struct.dc_stream_state* %2, %struct.dc_stream_state** %6, align 8
  %8 = load i32, i32* @DC_ERROR_UNEXPECTED, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.dc*, %struct.dc** %4, align 8
  %10 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %11 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %12 = call i32 @resource_map_pool_resources(%struct.dc* %9, %struct.dc_state* %10, %struct.dc_stream_state* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @DC_OK, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.dc*, %struct.dc** %4, align 8
  %18 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %19 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %20 = call i32 @resource_map_clock_resources(%struct.dc* %17, %struct.dc_state* %18, %struct.dc_stream_state* %19)
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %16, %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @DC_OK, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.dc*, %struct.dc** %4, align 8
  %27 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %28 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %29 = call i32 @build_mapped_resource(%struct.dc* %26, %struct.dc_state* %27, %struct.dc_stream_state* %28)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local i32 @resource_map_pool_resources(%struct.dc*, %struct.dc_state*, %struct.dc_stream_state*) #1

declare dso_local i32 @resource_map_clock_resources(%struct.dc*, %struct.dc_state*, %struct.dc_stream_state*) #1

declare dso_local i32 @build_mapped_resource(%struct.dc*, %struct.dc_state*, %struct.dc_stream_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
