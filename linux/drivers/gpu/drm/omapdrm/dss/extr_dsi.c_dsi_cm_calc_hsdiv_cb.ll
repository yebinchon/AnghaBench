; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_cm_calc_hsdiv_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_cm_calc_hsdiv_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_clk_calc_ctx = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32*, i64* }

@HSDIV_DISPC = common dso_local global i64 0, align 8
@dsi_cm_calc_dispc_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i8*)* @dsi_cm_calc_hsdiv_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_cm_calc_hsdiv_cb(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dsi_clk_calc_ctx*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.dsi_clk_calc_ctx*
  store %struct.dsi_clk_calc_ctx* %9, %struct.dsi_clk_calc_ctx** %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %7, align 8
  %12 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @HSDIV_DISPC, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32 %10, i32* %16, align 4
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %7, align 8
  %19 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @HSDIV_DISPC, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  store i64 %17, i64* %23, align 8
  %24 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %7, align 8
  %25 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %7, align 8
  %33 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %7, align 8
  %36 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @dsi_cm_calc_dispc_cb, align 4
  %39 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %7, align 8
  %40 = call i32 @dispc_div_calc(i32 %30, i64 %31, i32 %34, i32 %37, i32 %38, %struct.dsi_clk_calc_ctx* %39)
  ret i32 %40
}

declare dso_local i32 @dispc_div_calc(i32, i64, i32, i32, i32, %struct.dsi_clk_calc_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
