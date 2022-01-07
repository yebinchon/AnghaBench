; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_mem_input.c_dce_mem_input_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_mem_input.c_dce_mem_input_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_mem_input = type { %struct.dce_mem_input_mask*, %struct.dce_mem_input_shift*, %struct.dce_mem_input_registers*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, %struct.dc_context* }
%struct.dc_context = type { i32 }
%struct.dce_mem_input_registers = type { i32 }
%struct.dce_mem_input_shift = type { i32 }
%struct.dce_mem_input_mask = type { i32 }

@dce_mi_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce_mem_input_construct(%struct.dce_mem_input* %0, %struct.dc_context* %1, i32 %2, %struct.dce_mem_input_registers* %3, %struct.dce_mem_input_shift* %4, %struct.dce_mem_input_mask* %5) #0 {
  %7 = alloca %struct.dce_mem_input*, align 8
  %8 = alloca %struct.dc_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dce_mem_input_registers*, align 8
  %11 = alloca %struct.dce_mem_input_shift*, align 8
  %12 = alloca %struct.dce_mem_input_mask*, align 8
  store %struct.dce_mem_input* %0, %struct.dce_mem_input** %7, align 8
  store %struct.dc_context* %1, %struct.dc_context** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.dce_mem_input_registers* %3, %struct.dce_mem_input_registers** %10, align 8
  store %struct.dce_mem_input_shift* %4, %struct.dce_mem_input_shift** %11, align 8
  store %struct.dce_mem_input_mask* %5, %struct.dce_mem_input_mask** %12, align 8
  %13 = load %struct.dc_context*, %struct.dc_context** %8, align 8
  %14 = load %struct.dce_mem_input*, %struct.dce_mem_input** %7, align 8
  %15 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store %struct.dc_context* %13, %struct.dc_context** %16, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.dce_mem_input*, %struct.dce_mem_input** %7, align 8
  %19 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load %struct.dce_mem_input*, %struct.dce_mem_input** %7, align 8
  %22 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32* @dce_mi_funcs, i32** %23, align 8
  %24 = load %struct.dce_mem_input_registers*, %struct.dce_mem_input_registers** %10, align 8
  %25 = load %struct.dce_mem_input*, %struct.dce_mem_input** %7, align 8
  %26 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %25, i32 0, i32 2
  store %struct.dce_mem_input_registers* %24, %struct.dce_mem_input_registers** %26, align 8
  %27 = load %struct.dce_mem_input_shift*, %struct.dce_mem_input_shift** %11, align 8
  %28 = load %struct.dce_mem_input*, %struct.dce_mem_input** %7, align 8
  %29 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %28, i32 0, i32 1
  store %struct.dce_mem_input_shift* %27, %struct.dce_mem_input_shift** %29, align 8
  %30 = load %struct.dce_mem_input_mask*, %struct.dce_mem_input_mask** %12, align 8
  %31 = load %struct.dce_mem_input*, %struct.dce_mem_input** %7, align 8
  %32 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %31, i32 0, i32 0
  store %struct.dce_mem_input_mask* %30, %struct.dce_mem_input_mask** %32, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
