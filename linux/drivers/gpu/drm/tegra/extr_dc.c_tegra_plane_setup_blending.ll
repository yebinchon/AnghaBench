; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_plane_setup_blending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_plane_setup_blending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_plane = type { i32 }
%struct.tegra_dc_window = type { i64 }

@BLEND_FACTOR_DST_ALPHA_ZERO = common dso_local global i32 0, align 4
@BLEND_FACTOR_SRC_ALPHA_K2 = common dso_local global i32 0, align 4
@BLEND_FACTOR_DST_COLOR_NEG_K1_TIMES_SRC = common dso_local global i32 0, align 4
@BLEND_FACTOR_SRC_COLOR_K1_TIMES_SRC = common dso_local global i32 0, align 4
@DC_WIN_BLEND_MATCH_SELECT = common dso_local global i32 0, align 4
@DC_WIN_BLEND_NOMATCH_SELECT = common dso_local global i32 0, align 4
@DC_WIN_BLEND_LAYER_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_plane*, %struct.tegra_dc_window*)* @tegra_plane_setup_blending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_plane_setup_blending(%struct.tegra_plane* %0, %struct.tegra_dc_window* %1) #0 {
  %3 = alloca %struct.tegra_plane*, align 8
  %4 = alloca %struct.tegra_dc_window*, align 8
  %5 = alloca i32, align 4
  store %struct.tegra_plane* %0, %struct.tegra_plane** %3, align 8
  store %struct.tegra_dc_window* %1, %struct.tegra_dc_window** %4, align 8
  %6 = load i32, i32* @BLEND_FACTOR_DST_ALPHA_ZERO, align 4
  %7 = load i32, i32* @BLEND_FACTOR_SRC_ALPHA_K2, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @BLEND_FACTOR_DST_COLOR_NEG_K1_TIMES_SRC, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @BLEND_FACTOR_SRC_COLOR_K1_TIMES_SRC, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @DC_WIN_BLEND_MATCH_SELECT, align 4
  %16 = call i32 @tegra_plane_writel(%struct.tegra_plane* %13, i32 %14, i32 %15)
  %17 = load i32, i32* @BLEND_FACTOR_DST_ALPHA_ZERO, align 4
  %18 = load i32, i32* @BLEND_FACTOR_SRC_ALPHA_K2, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @BLEND_FACTOR_DST_COLOR_NEG_K1_TIMES_SRC, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @BLEND_FACTOR_SRC_COLOR_K1_TIMES_SRC, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %5, align 4
  %24 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @DC_WIN_BLEND_NOMATCH_SELECT, align 4
  %27 = call i32 @tegra_plane_writel(%struct.tegra_plane* %24, i32 %25, i32 %26)
  %28 = call i32 @K2(i32 255)
  %29 = call i32 @K1(i32 255)
  %30 = or i32 %28, %29
  %31 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %32 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 255, %33
  %35 = call i32 @WINDOW_LAYER_DEPTH(i64 %34)
  %36 = or i32 %30, %35
  store i32 %36, i32* %5, align 4
  %37 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @DC_WIN_BLEND_LAYER_CONTROL, align 4
  %40 = call i32 @tegra_plane_writel(%struct.tegra_plane* %37, i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @tegra_plane_writel(%struct.tegra_plane*, i32, i32) #1

declare dso_local i32 @K2(i32) #1

declare dso_local i32 @K1(i32) #1

declare dso_local i32 @WINDOW_LAYER_DEPTH(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
