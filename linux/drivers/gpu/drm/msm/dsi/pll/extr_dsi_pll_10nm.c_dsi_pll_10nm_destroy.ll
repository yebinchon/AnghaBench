; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_10nm.c_dsi_pll_10nm_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_10nm.c_dsi_pll_10nm_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_pll = type { i32 }
%struct.dsi_pll_10nm = type { %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"DSI PLL%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_dsi_pll*)* @dsi_pll_10nm_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_pll_10nm_destroy(%struct.msm_dsi_pll* %0) #0 {
  %2 = alloca %struct.msm_dsi_pll*, align 8
  %3 = alloca %struct.dsi_pll_10nm*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.msm_dsi_pll* %0, %struct.msm_dsi_pll** %2, align 8
  %5 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %2, align 8
  %6 = call %struct.dsi_pll_10nm* @to_pll_10nm(%struct.msm_dsi_pll* %5)
  store %struct.dsi_pll_10nm* %6, %struct.dsi_pll_10nm** %3, align 8
  %7 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %3, align 8
  %8 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %7, i32 0, i32 9
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %3, align 8
  %12 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @of_clk_del_provider(i32 %17)
  %19 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %3, align 8
  %20 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clk_hw_unregister_divider(i32 %21)
  %23 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %3, align 8
  %24 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @clk_hw_unregister_mux(i32 %25)
  %27 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %3, align 8
  %28 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clk_hw_unregister_fixed_factor(i32 %29)
  %31 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %3, align 8
  %32 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @clk_hw_unregister_fixed_factor(i32 %33)
  %35 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %3, align 8
  %36 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @clk_hw_unregister_fixed_factor(i32 %37)
  %39 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %3, align 8
  %40 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @clk_hw_unregister_divider(i32 %41)
  %43 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %3, align 8
  %44 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @clk_hw_unregister_divider(i32 %45)
  %47 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %3, align 8
  %48 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @clk_hw_unregister(i32* %49)
  ret void
}

declare dso_local %struct.dsi_pll_10nm* @to_pll_10nm(%struct.msm_dsi_pll*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @of_clk_del_provider(i32) #1

declare dso_local i32 @clk_hw_unregister_divider(i32) #1

declare dso_local i32 @clk_hw_unregister_mux(i32) #1

declare dso_local i32 @clk_hw_unregister_fixed_factor(i32) #1

declare dso_local i32 @clk_hw_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
