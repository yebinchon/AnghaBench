; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_resource_find_used_clk_src_for_sharing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_resource_find_used_clk_src_for_sharing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_source = type { i32 }
%struct.resource_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.clock_source* }
%struct.pipe_ctx = type { i32 }

@MAX_PIPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clock_source* @resource_find_used_clk_src_for_sharing(%struct.resource_context* %0, %struct.pipe_ctx* %1) #0 {
  %3 = alloca %struct.clock_source*, align 8
  %4 = alloca %struct.resource_context*, align 8
  %5 = alloca %struct.pipe_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.resource_context* %0, %struct.resource_context** %4, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %31, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @MAX_PIPES, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %7
  %12 = load %struct.resource_context*, %struct.resource_context** %4, align 8
  %13 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %19 = call i64 @is_sharable_clk_src(%struct.TYPE_2__* %17, %struct.pipe_ctx* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %11
  %22 = load %struct.resource_context*, %struct.resource_context** %4, align 8
  %23 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.clock_source*, %struct.clock_source** %28, align 8
  store %struct.clock_source* %29, %struct.clock_source** %3, align 8
  br label %35

30:                                               ; preds = %11
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %7

34:                                               ; preds = %7
  store %struct.clock_source* null, %struct.clock_source** %3, align 8
  br label %35

35:                                               ; preds = %34, %21
  %36 = load %struct.clock_source*, %struct.clock_source** %3, align 8
  ret %struct.clock_source* %36
}

declare dso_local i64 @is_sharable_clk_src(%struct.TYPE_2__*, %struct.pipe_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
