; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_de.c_format_pll_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_de.c_format_pll_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hibmc_display_panel_pll = type { i32, i32, i32, i32, i32 }

@HIBMC_PLL_CTRL_BYPASS = common dso_local global i32 0, align 4
@HIBMC_PLL_CTRL_POWER = common dso_local global i32 0, align 4
@HIBMC_PLL_CTRL_INPUT = common dso_local global i32 0, align 4
@HIBMC_PLL_CTRL_POD = common dso_local global i32 0, align 4
@HIBMC_PLL_CTRL_OD = common dso_local global i32 0, align 4
@HIBMC_PLL_CTRL_N = common dso_local global i32 0, align 4
@HIBMC_PLL_CTRL_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @format_pll_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @format_pll_reg() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.hibmc_display_panel_pll, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast %struct.hibmc_display_panel_pll* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 20, i1 false)
  %4 = load i32, i32* @HIBMC_PLL_CTRL_BYPASS, align 4
  %5 = call i32 @HIBMC_FIELD(i32 %4, i32 0)
  %6 = load i32, i32* %1, align 4
  %7 = or i32 %6, %5
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @HIBMC_PLL_CTRL_POWER, align 4
  %9 = call i32 @HIBMC_FIELD(i32 %8, i32 1)
  %10 = load i32, i32* %1, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* @HIBMC_PLL_CTRL_INPUT, align 4
  %13 = call i32 @HIBMC_FIELD(i32 %12, i32 0)
  %14 = load i32, i32* %1, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* @HIBMC_PLL_CTRL_POD, align 4
  %17 = getelementptr inbounds %struct.hibmc_display_panel_pll, %struct.hibmc_display_panel_pll* %2, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @HIBMC_FIELD(i32 %16, i32 %18)
  %20 = load i32, i32* %1, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* @HIBMC_PLL_CTRL_OD, align 4
  %23 = getelementptr inbounds %struct.hibmc_display_panel_pll, %struct.hibmc_display_panel_pll* %2, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @HIBMC_FIELD(i32 %22, i32 %24)
  %26 = load i32, i32* %1, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* @HIBMC_PLL_CTRL_N, align 4
  %29 = getelementptr inbounds %struct.hibmc_display_panel_pll, %struct.hibmc_display_panel_pll* %2, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @HIBMC_FIELD(i32 %28, i32 %30)
  %32 = load i32, i32* %1, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* @HIBMC_PLL_CTRL_M, align 4
  %35 = getelementptr inbounds %struct.hibmc_display_panel_pll, %struct.hibmc_display_panel_pll* %2, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @HIBMC_FIELD(i32 %34, i32 %36)
  %38 = load i32, i32* %1, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @HIBMC_FIELD(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
