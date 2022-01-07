; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_resource.c_dce110_clock_source_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_resource.c_dce110_clock_source_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_source = type { i32 }
%struct.dce110_clk_src = type { %struct.dce110_clk_src*, %struct.dce110_clk_src*, %struct.dce110_clk_src* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_clock_source_destroy(%struct.clock_source** %0) #0 {
  %2 = alloca %struct.clock_source**, align 8
  %3 = alloca %struct.dce110_clk_src*, align 8
  store %struct.clock_source** %0, %struct.clock_source*** %2, align 8
  %4 = load %struct.clock_source**, %struct.clock_source*** %2, align 8
  %5 = icmp ne %struct.clock_source** %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %26

7:                                                ; preds = %1
  %8 = load %struct.clock_source**, %struct.clock_source*** %2, align 8
  %9 = load %struct.clock_source*, %struct.clock_source** %8, align 8
  %10 = call %struct.dce110_clk_src* @TO_DCE110_CLK_SRC(%struct.clock_source* %9)
  store %struct.dce110_clk_src* %10, %struct.dce110_clk_src** %3, align 8
  %11 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %3, align 8
  %12 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %11, i32 0, i32 2
  %13 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %12, align 8
  %14 = call i32 @kfree(%struct.dce110_clk_src* %13)
  %15 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %3, align 8
  %16 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %15, i32 0, i32 1
  %17 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %16, align 8
  %18 = call i32 @kfree(%struct.dce110_clk_src* %17)
  %19 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %3, align 8
  %20 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %19, i32 0, i32 0
  %21 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %20, align 8
  %22 = call i32 @kfree(%struct.dce110_clk_src* %21)
  %23 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %3, align 8
  %24 = call i32 @kfree(%struct.dce110_clk_src* %23)
  %25 = load %struct.clock_source**, %struct.clock_source*** %2, align 8
  store %struct.clock_source* null, %struct.clock_source** %25, align 8
  br label %26

26:                                               ; preds = %7, %6
  ret void
}

declare dso_local %struct.dce110_clk_src* @TO_DCE110_CLK_SRC(%struct.clock_source*) #1

declare dso_local i32 @kfree(%struct.dce110_clk_src*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
