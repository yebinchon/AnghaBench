; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_dce112_clk_src_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_dce112_clk_src_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce110_clk_src = type { %struct.dc_bios*, i32, %struct.dce110_clk_src_mask*, %struct.dce110_clk_src_shift*, %struct.dce110_clk_src_regs*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32*, %struct.dc_context* }
%struct.dc_context = type { i32 }
%struct.dc_bios = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dce110_clk_src_regs = type { i32 }
%struct.dce110_clk_src_shift = type { i32 }
%struct.dce110_clk_src_mask = type { i32 }

@dce112_clk_src_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce112_clk_src_construct(%struct.dce110_clk_src* %0, %struct.dc_context* %1, %struct.dc_bios* %2, i32 %3, %struct.dce110_clk_src_regs* %4, %struct.dce110_clk_src_shift* %5, %struct.dce110_clk_src_mask* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.dce110_clk_src*, align 8
  %10 = alloca %struct.dc_context*, align 8
  %11 = alloca %struct.dc_bios*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dce110_clk_src_regs*, align 8
  %14 = alloca %struct.dce110_clk_src_shift*, align 8
  %15 = alloca %struct.dce110_clk_src_mask*, align 8
  store %struct.dce110_clk_src* %0, %struct.dce110_clk_src** %9, align 8
  store %struct.dc_context* %1, %struct.dc_context** %10, align 8
  store %struct.dc_bios* %2, %struct.dc_bios** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.dce110_clk_src_regs* %4, %struct.dce110_clk_src_regs** %13, align 8
  store %struct.dce110_clk_src_shift* %5, %struct.dce110_clk_src_shift** %14, align 8
  store %struct.dce110_clk_src_mask* %6, %struct.dce110_clk_src_mask** %15, align 8
  %16 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %17 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %18 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store %struct.dc_context* %16, %struct.dc_context** %19, align 8
  %20 = load %struct.dc_bios*, %struct.dc_bios** %11, align 8
  %21 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %22 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %21, i32 0, i32 0
  store %struct.dc_bios* %20, %struct.dc_bios** %22, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %25 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %28 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32* @dce112_clk_src_funcs, i32** %29, align 8
  %30 = load %struct.dce110_clk_src_regs*, %struct.dce110_clk_src_regs** %13, align 8
  %31 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %32 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %31, i32 0, i32 4
  store %struct.dce110_clk_src_regs* %30, %struct.dce110_clk_src_regs** %32, align 8
  %33 = load %struct.dce110_clk_src_shift*, %struct.dce110_clk_src_shift** %14, align 8
  %34 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %35 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %34, i32 0, i32 3
  store %struct.dce110_clk_src_shift* %33, %struct.dce110_clk_src_shift** %35, align 8
  %36 = load %struct.dce110_clk_src_mask*, %struct.dce110_clk_src_mask** %15, align 8
  %37 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %38 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %37, i32 0, i32 2
  store %struct.dce110_clk_src_mask* %36, %struct.dce110_clk_src_mask** %38, align 8
  %39 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %40 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %39, i32 0, i32 0
  %41 = load %struct.dc_bios*, %struct.dc_bios** %40, align 8
  %42 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %7
  %46 = call i32 @ASSERT_CRITICAL(i32 0)
  store i32 0, i32* %8, align 4
  br label %56

47:                                               ; preds = %7
  %48 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %49 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %48, i32 0, i32 0
  %50 = load %struct.dc_bios*, %struct.dc_bios** %49, align 8
  %51 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %55 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  store i32 1, i32* %8, align 4
  br label %56

56:                                               ; preds = %47, %45
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @ASSERT_CRITICAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
