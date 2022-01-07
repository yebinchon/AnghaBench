; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll.c_msm_dsi_pll_get_clk_provider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll.c_msm_dsi_pll_get_clk_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_pll = type { i32 (%struct.msm_dsi_pll*, %struct.clk**, %struct.clk**)* }
%struct.clk = type opaque
%struct.clk.0 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_dsi_pll_get_clk_provider(%struct.msm_dsi_pll* %0, %struct.clk.0** %1, %struct.clk.0** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msm_dsi_pll*, align 8
  %6 = alloca %struct.clk.0**, align 8
  %7 = alloca %struct.clk.0**, align 8
  store %struct.msm_dsi_pll* %0, %struct.msm_dsi_pll** %5, align 8
  store %struct.clk.0** %1, %struct.clk.0*** %6, align 8
  store %struct.clk.0** %2, %struct.clk.0*** %7, align 8
  %8 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %5, align 8
  %9 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %8, i32 0, i32 0
  %10 = load i32 (%struct.msm_dsi_pll*, %struct.clk**, %struct.clk**)*, i32 (%struct.msm_dsi_pll*, %struct.clk**, %struct.clk**)** %9, align 8
  %11 = icmp ne i32 (%struct.msm_dsi_pll*, %struct.clk**, %struct.clk**)* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %5, align 8
  %14 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %13, i32 0, i32 0
  %15 = load i32 (%struct.msm_dsi_pll*, %struct.clk**, %struct.clk**)*, i32 (%struct.msm_dsi_pll*, %struct.clk**, %struct.clk**)** %14, align 8
  %16 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %5, align 8
  %17 = load %struct.clk.0**, %struct.clk.0*** %6, align 8
  %18 = bitcast %struct.clk.0** %17 to %struct.clk**
  %19 = load %struct.clk.0**, %struct.clk.0*** %7, align 8
  %20 = bitcast %struct.clk.0** %19 to %struct.clk**
  %21 = call i32 %15(%struct.msm_dsi_pll* %16, %struct.clk** %18, %struct.clk** %20)
  store i32 %21, i32* %4, align 4
  br label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %12
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
