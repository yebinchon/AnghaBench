; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_pll_adjust_pix_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_pll_adjust_pix_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce110_clk_src = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, %struct.bp_adjust_pixel_clock_parameters*)* }
%struct.bp_adjust_pixel_clock_parameters = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pixel_clk_params = type { i32, i32, i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pll_settings = type { i32, i32, i32, i32 }

@PIXEL_ENCODING_YCBCR422 = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dce110_clk_src*, %struct.pixel_clk_params*, %struct.pll_settings*)* @pll_adjust_pix_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pll_adjust_pix_clk(%struct.dce110_clk_src* %0, %struct.pixel_clk_params* %1, %struct.pll_settings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dce110_clk_src*, align 8
  %6 = alloca %struct.pixel_clk_params*, align 8
  %7 = alloca %struct.pll_settings*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bp_adjust_pixel_clock_parameters, align 4
  %11 = alloca i32, align 4
  store %struct.dce110_clk_src* %0, %struct.dce110_clk_src** %5, align 8
  store %struct.pixel_clk_params* %1, %struct.pixel_clk_params** %6, align 8
  store %struct.pll_settings* %2, %struct.pll_settings** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = bitcast %struct.bp_adjust_pixel_clock_parameters* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 32, i1 false)
  %13 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %14 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %52 [
    i32 128, label %16
    i32 131, label %44
    i32 130, label %44
    i32 129, label %44
  ]

16:                                               ; preds = %3
  %17 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %18 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %21 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PIXEL_ENCODING_YCBCR422, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %16
  %26 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %27 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %40 [
    i32 134, label %29
    i32 133, label %33
    i32 132, label %37
  ]

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = mul nsw i32 %30, 5
  %32 = ashr i32 %31, 2
  store i32 %32, i32* %9, align 4
  br label %41

33:                                               ; preds = %25
  %34 = load i32, i32* %9, align 4
  %35 = mul nsw i32 %34, 6
  %36 = ashr i32 %35, 2
  store i32 %36, i32* %9, align 4
  br label %41

37:                                               ; preds = %25
  %38 = load i32, i32* %9, align 4
  %39 = mul nsw i32 %38, 2
  store i32 %39, i32* %9, align 4
  br label %41

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40, %37, %33, %29
  br label %42

42:                                               ; preds = %41, %16
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %8, align 4
  br label %59

44:                                               ; preds = %3, %3, %3
  %45 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %46 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 10
  store i32 %48, i32* %9, align 4
  %49 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %50 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  br label %59

52:                                               ; preds = %3
  %53 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %54 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  %56 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %57 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %52, %44, %42
  %60 = load i32, i32* %9, align 4
  %61 = sdiv i32 %60, 10
  %62 = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, %struct.bp_adjust_pixel_clock_parameters* %10, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %64 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, %struct.bp_adjust_pixel_clock_parameters* %10, i32 0, i32 6
  store i32 %65, i32* %66, align 4
  %67 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %68 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, %struct.bp_adjust_pixel_clock_parameters* %10, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %72 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, %struct.bp_adjust_pixel_clock_parameters* %10, i32 0, i32 5
  store i32 %74, i32* %75, align 4
  %76 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %5, align 8
  %77 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32 (%struct.TYPE_6__*, %struct.bp_adjust_pixel_clock_parameters*)*, i32 (%struct.TYPE_6__*, %struct.bp_adjust_pixel_clock_parameters*)** %81, align 8
  %83 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %5, align 8
  %84 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = call i32 %82(%struct.TYPE_6__* %85, %struct.bp_adjust_pixel_clock_parameters* %10)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @BP_RESULT_OK, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %59
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.pll_settings*, %struct.pll_settings** %7, align 8
  %93 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, %struct.bp_adjust_pixel_clock_parameters* %10, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %95, 10
  %97 = load %struct.pll_settings*, %struct.pll_settings** %7, align 8
  %98 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, %struct.bp_adjust_pixel_clock_parameters* %10, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.pll_settings*, %struct.pll_settings** %7, align 8
  %102 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, %struct.bp_adjust_pixel_clock_parameters* %10, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.pll_settings*, %struct.pll_settings** %7, align 8
  %106 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  store i32 1, i32* %4, align 4
  br label %108

107:                                              ; preds = %59
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %90
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
