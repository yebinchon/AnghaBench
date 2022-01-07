; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_resource_get_head_pipe_for_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_resource_get_head_pipe_for_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { i32, i32, %struct.dc_stream_state* }
%struct.resource_context = type { %struct.pipe_ctx* }
%struct.dc_stream_state = type { i32 }

@MAX_PIPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pipe_ctx* @resource_get_head_pipe_for_stream(%struct.resource_context* %0, %struct.dc_stream_state* %1) #0 {
  %3 = alloca %struct.pipe_ctx*, align 8
  %4 = alloca %struct.resource_context*, align 8
  %5 = alloca %struct.dc_stream_state*, align 8
  %6 = alloca i32, align 4
  store %struct.resource_context* %0, %struct.resource_context** %4, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %50, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @MAX_PIPES, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %53

11:                                               ; preds = %7
  %12 = load %struct.resource_context*, %struct.resource_context** %4, align 8
  %13 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %12, i32 0, i32 0
  %14 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %14, i64 %16
  %18 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %17, i32 0, i32 2
  %19 = load %struct.dc_stream_state*, %struct.dc_stream_state** %18, align 8
  %20 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %21 = icmp eq %struct.dc_stream_state* %19, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %11
  %23 = load %struct.resource_context*, %struct.resource_context** %4, align 8
  %24 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %23, i32 0, i32 0
  %25 = load %struct.pipe_ctx*, %struct.pipe_ctx** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %25, i64 %27
  %29 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %22
  %33 = load %struct.resource_context*, %struct.resource_context** %4, align 8
  %34 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %33, i32 0, i32 0
  %35 = load %struct.pipe_ctx*, %struct.pipe_ctx** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %35, i64 %37
  %39 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %32
  %43 = load %struct.resource_context*, %struct.resource_context** %4, align 8
  %44 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %43, i32 0, i32 0
  %45 = load %struct.pipe_ctx*, %struct.pipe_ctx** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %45, i64 %47
  store %struct.pipe_ctx* %48, %struct.pipe_ctx** %3, align 8
  br label %54

49:                                               ; preds = %32, %22, %11
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %7

53:                                               ; preds = %7
  store %struct.pipe_ctx* null, %struct.pipe_ctx** %3, align 8
  br label %54

54:                                               ; preds = %53, %42
  %55 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  ret %struct.pipe_ctx* %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
