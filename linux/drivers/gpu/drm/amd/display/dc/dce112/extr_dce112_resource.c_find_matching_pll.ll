; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_resource.c_find_matching_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_resource.c_find_matching_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_source = type { i32 }
%struct.resource_context = type { i32 }
%struct.resource_pool = type { %struct.clock_source** }
%struct.dc_stream_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@DCE112_CLK_SRC_PLL0 = common dso_local global i64 0, align 8
@DCE112_CLK_SRC_PLL1 = common dso_local global i64 0, align 8
@DCE112_CLK_SRC_PLL2 = common dso_local global i64 0, align 8
@DCE112_CLK_SRC_PLL3 = common dso_local global i64 0, align 8
@DCE112_CLK_SRC_PLL4 = common dso_local global i64 0, align 8
@DCE112_CLK_SRC_PLL5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clock_source* (%struct.resource_context*, %struct.resource_pool*, %struct.dc_stream_state*)* @find_matching_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clock_source* @find_matching_pll(%struct.resource_context* %0, %struct.resource_pool* %1, %struct.dc_stream_state* %2) #0 {
  %4 = alloca %struct.clock_source*, align 8
  %5 = alloca %struct.resource_context*, align 8
  %6 = alloca %struct.resource_pool*, align 8
  %7 = alloca %struct.dc_stream_state*, align 8
  store %struct.resource_context* %0, %struct.resource_context** %5, align 8
  store %struct.resource_pool* %1, %struct.resource_pool** %6, align 8
  store %struct.dc_stream_state* %2, %struct.dc_stream_state** %7, align 8
  %8 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %9 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %57 [
    i32 133, label %15
    i32 132, label %22
    i32 131, label %29
    i32 130, label %36
    i32 129, label %43
    i32 128, label %50
  ]

15:                                               ; preds = %3
  %16 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %17 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %16, i32 0, i32 0
  %18 = load %struct.clock_source**, %struct.clock_source*** %17, align 8
  %19 = load i64, i64* @DCE112_CLK_SRC_PLL0, align 8
  %20 = getelementptr inbounds %struct.clock_source*, %struct.clock_source** %18, i64 %19
  %21 = load %struct.clock_source*, %struct.clock_source** %20, align 8
  store %struct.clock_source* %21, %struct.clock_source** %4, align 8
  br label %58

22:                                               ; preds = %3
  %23 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %24 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %23, i32 0, i32 0
  %25 = load %struct.clock_source**, %struct.clock_source*** %24, align 8
  %26 = load i64, i64* @DCE112_CLK_SRC_PLL1, align 8
  %27 = getelementptr inbounds %struct.clock_source*, %struct.clock_source** %25, i64 %26
  %28 = load %struct.clock_source*, %struct.clock_source** %27, align 8
  store %struct.clock_source* %28, %struct.clock_source** %4, align 8
  br label %58

29:                                               ; preds = %3
  %30 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %31 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %30, i32 0, i32 0
  %32 = load %struct.clock_source**, %struct.clock_source*** %31, align 8
  %33 = load i64, i64* @DCE112_CLK_SRC_PLL2, align 8
  %34 = getelementptr inbounds %struct.clock_source*, %struct.clock_source** %32, i64 %33
  %35 = load %struct.clock_source*, %struct.clock_source** %34, align 8
  store %struct.clock_source* %35, %struct.clock_source** %4, align 8
  br label %58

36:                                               ; preds = %3
  %37 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %38 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %37, i32 0, i32 0
  %39 = load %struct.clock_source**, %struct.clock_source*** %38, align 8
  %40 = load i64, i64* @DCE112_CLK_SRC_PLL3, align 8
  %41 = getelementptr inbounds %struct.clock_source*, %struct.clock_source** %39, i64 %40
  %42 = load %struct.clock_source*, %struct.clock_source** %41, align 8
  store %struct.clock_source* %42, %struct.clock_source** %4, align 8
  br label %58

43:                                               ; preds = %3
  %44 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %45 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %44, i32 0, i32 0
  %46 = load %struct.clock_source**, %struct.clock_source*** %45, align 8
  %47 = load i64, i64* @DCE112_CLK_SRC_PLL4, align 8
  %48 = getelementptr inbounds %struct.clock_source*, %struct.clock_source** %46, i64 %47
  %49 = load %struct.clock_source*, %struct.clock_source** %48, align 8
  store %struct.clock_source* %49, %struct.clock_source** %4, align 8
  br label %58

50:                                               ; preds = %3
  %51 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %52 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %51, i32 0, i32 0
  %53 = load %struct.clock_source**, %struct.clock_source*** %52, align 8
  %54 = load i64, i64* @DCE112_CLK_SRC_PLL5, align 8
  %55 = getelementptr inbounds %struct.clock_source*, %struct.clock_source** %53, i64 %54
  %56 = load %struct.clock_source*, %struct.clock_source** %55, align 8
  store %struct.clock_source* %56, %struct.clock_source** %4, align 8
  br label %58

57:                                               ; preds = %3
  store %struct.clock_source* null, %struct.clock_source** %4, align 8
  br label %58

58:                                               ; preds = %57, %50, %43, %36, %29, %22, %15
  %59 = load %struct.clock_source*, %struct.clock_source** %4, align 8
  ret %struct.clock_source* %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
