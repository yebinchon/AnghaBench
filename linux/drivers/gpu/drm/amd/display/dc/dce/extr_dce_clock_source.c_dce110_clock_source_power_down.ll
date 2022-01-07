; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_dce110_clock_source_power_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_dce110_clock_source_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_source = type { i32, i64 }
%struct.dce110_clk_src = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, %struct.bp_pixel_clock_parameters*)* }
%struct.bp_pixel_clock_parameters = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@CONTROLLER_ID_UNDEFINED = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_source*)* @dce110_clock_source_power_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce110_clock_source_power_down(%struct.clock_source* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clock_source*, align 8
  %4 = alloca %struct.dce110_clk_src*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bp_pixel_clock_parameters, align 4
  store %struct.clock_source* %0, %struct.clock_source** %3, align 8
  %7 = load %struct.clock_source*, %struct.clock_source** %3, align 8
  %8 = call %struct.dce110_clk_src* @TO_DCE110_CLK_SRC(%struct.clock_source* %7)
  store %struct.dce110_clk_src* %8, %struct.dce110_clk_src** %4, align 8
  %9 = bitcast %struct.bp_pixel_clock_parameters* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 16, i1 false)
  %10 = load %struct.clock_source*, %struct.clock_source** %3, align 8
  %11 = getelementptr inbounds %struct.clock_source, %struct.clock_source* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %39

15:                                               ; preds = %1
  %16 = load i32, i32* @CONTROLLER_ID_UNDEFINED, align 4
  %17 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %6, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load %struct.clock_source*, %struct.clock_source** %3, align 8
  %19 = getelementptr inbounds %struct.clock_source, %struct.clock_source* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %6, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %6, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %4, align 8
  %25 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_6__*, %struct.bp_pixel_clock_parameters*)*, i32 (%struct.TYPE_6__*, %struct.bp_pixel_clock_parameters*)** %29, align 8
  %31 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %4, align 8
  %32 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = call i32 %30(%struct.TYPE_6__* %33, %struct.bp_pixel_clock_parameters* %6)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @BP_RESULT_OK, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %15, %14
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.dce110_clk_src* @TO_DCE110_CLK_SRC(%struct.clock_source*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
