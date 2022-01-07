; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce100/extr_dce100_resource.c_dce100_clock_source_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce100/extr_dce100_resource.c_dce100_clock_source_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_source = type { i32 }
%struct.dc_context = type { i32 }
%struct.dc_bios = type { i32 }
%struct.dce110_clk_src_regs = type { i32 }
%struct.dce110_clk_src = type { %struct.clock_source }

@GFP_KERNEL = common dso_local global i32 0, align 4
@cs_shift = common dso_local global i32 0, align 4
@cs_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clock_source* @dce100_clock_source_create(%struct.dc_context* %0, %struct.dc_bios* %1, i32 %2, %struct.dce110_clk_src_regs* %3, i32 %4) #0 {
  %6 = alloca %struct.clock_source*, align 8
  %7 = alloca %struct.dc_context*, align 8
  %8 = alloca %struct.dc_bios*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dce110_clk_src_regs*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dce110_clk_src*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %7, align 8
  store %struct.dc_bios* %1, %struct.dc_bios** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.dce110_clk_src_regs* %3, %struct.dce110_clk_src_regs** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.dce110_clk_src* @kzalloc(i32 4, i32 %13)
  store %struct.dce110_clk_src* %14, %struct.dce110_clk_src** %12, align 8
  %15 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %12, align 8
  %16 = icmp ne %struct.dce110_clk_src* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store %struct.clock_source* null, %struct.clock_source** %6, align 8
  br label %37

18:                                               ; preds = %5
  %19 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %12, align 8
  %20 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %21 = load %struct.dc_bios*, %struct.dc_bios** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.dce110_clk_src_regs*, %struct.dce110_clk_src_regs** %10, align 8
  %24 = call i64 @dce110_clk_src_construct(%struct.dce110_clk_src* %19, %struct.dc_context* %20, %struct.dc_bios* %21, i32 %22, %struct.dce110_clk_src_regs* %23, i32* @cs_shift, i32* @cs_mask)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %12, align 8
  %29 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.clock_source, %struct.clock_source* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %12, align 8
  %32 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %31, i32 0, i32 0
  store %struct.clock_source* %32, %struct.clock_source** %6, align 8
  br label %37

33:                                               ; preds = %18
  %34 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %12, align 8
  %35 = call i32 @kfree(%struct.dce110_clk_src* %34)
  %36 = call i32 (...) @BREAK_TO_DEBUGGER()
  store %struct.clock_source* null, %struct.clock_source** %6, align 8
  br label %37

37:                                               ; preds = %33, %26, %17
  %38 = load %struct.clock_source*, %struct.clock_source** %6, align 8
  ret %struct.clock_source* %38
}

declare dso_local %struct.dce110_clk_src* @kzalloc(i32, i32) #1

declare dso_local i64 @dce110_clk_src_construct(%struct.dce110_clk_src*, %struct.dc_context*, %struct.dc_bios*, i32, %struct.dce110_clk_src_regs*, i32*, i32*) #1

declare dso_local i32 @kfree(%struct.dce110_clk_src*) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
