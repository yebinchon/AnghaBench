; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce100/extr_dce100_resource.c_dce100_mem_input_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce100/extr_dce100_resource.c_dce100_mem_input_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_input = type { i32 }
%struct.dc_context = type { i32 }
%struct.dce_mem_input = type { %struct.mem_input, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@mi_regs = common dso_local global i32* null, align 8
@mi_shifts = common dso_local global i32 0, align 4
@mi_masks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mem_input* (%struct.dc_context*, i64)* @dce100_mem_input_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mem_input* @dce100_mem_input_create(%struct.dc_context* %0, i64 %1) #0 {
  %3 = alloca %struct.mem_input*, align 8
  %4 = alloca %struct.dc_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dce_mem_input*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.dce_mem_input* @kzalloc(i32 8, i32 %7)
  store %struct.dce_mem_input* %8, %struct.dce_mem_input** %6, align 8
  %9 = load %struct.dce_mem_input*, %struct.dce_mem_input** %6, align 8
  %10 = icmp ne %struct.dce_mem_input* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 (...) @BREAK_TO_DEBUGGER()
  store %struct.mem_input* null, %struct.mem_input** %3, align 8
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.dce_mem_input*, %struct.dce_mem_input** %6, align 8
  %15 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i32*, i32** @mi_regs, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = call i32 @dce_mem_input_construct(%struct.dce_mem_input* %14, %struct.dc_context* %15, i64 %16, i32* %19, i32* @mi_shifts, i32* @mi_masks)
  %21 = load %struct.dce_mem_input*, %struct.dce_mem_input** %6, align 8
  %22 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 2, i32* %23, align 4
  %24 = load %struct.dce_mem_input*, %struct.dce_mem_input** %6, align 8
  %25 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %24, i32 0, i32 0
  store %struct.mem_input* %25, %struct.mem_input** %3, align 8
  br label %26

26:                                               ; preds = %13, %11
  %27 = load %struct.mem_input*, %struct.mem_input** %3, align 8
  ret %struct.mem_input* %27
}

declare dso_local %struct.dce_mem_input* @kzalloc(i32, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @dce_mem_input_construct(%struct.dce_mem_input*, %struct.dc_context*, i64, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
