; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_dce112_get_pix_clk_dividers_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_dce112_get_pix_clk_dividers_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce110_clk_src = type { i32 }
%struct.pll_settings = type { i32, i32, i32 }
%struct.pixel_clk_params = type { i32, i64, i32 }

@SIGNAL_TYPE_HDMI_TYPE_A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce110_clk_src*, %struct.pll_settings*, %struct.pixel_clk_params*)* @dce112_get_pix_clk_dividers_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce112_get_pix_clk_dividers_helper(%struct.dce110_clk_src* %0, %struct.pll_settings* %1, %struct.pixel_clk_params* %2) #0 {
  %4 = alloca %struct.dce110_clk_src*, align 8
  %5 = alloca %struct.pll_settings*, align 8
  %6 = alloca %struct.pixel_clk_params*, align 8
  %7 = alloca i32, align 4
  store %struct.dce110_clk_src* %0, %struct.dce110_clk_src** %4, align 8
  store %struct.pll_settings* %1, %struct.pll_settings** %5, align 8
  store %struct.pixel_clk_params* %2, %struct.pixel_clk_params** %6, align 8
  %8 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %9 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %12 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SIGNAL_TYPE_HDMI_TYPE_A, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %3
  %17 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %18 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %31 [
    i32 130, label %20
    i32 129, label %24
    i32 128, label %28
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = mul nsw i32 %21, 5
  %23 = ashr i32 %22, 2
  store i32 %23, i32* %7, align 4
  br label %32

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 %25, 6
  %27 = ashr i32 %26, 2
  store i32 %27, i32* %7, align 4
  br label %32

28:                                               ; preds = %16
  %29 = load i32, i32* %7, align 4
  %30 = mul nsw i32 %29, 2
  store i32 %30, i32* %7, align 4
  br label %32

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %31, %28, %24, %20
  br label %33

33:                                               ; preds = %32, %3
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.pll_settings*, %struct.pll_settings** %5, align 8
  %36 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.pll_settings*, %struct.pll_settings** %5, align 8
  %39 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %41 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.pll_settings*, %struct.pll_settings** %5, align 8
  %44 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
