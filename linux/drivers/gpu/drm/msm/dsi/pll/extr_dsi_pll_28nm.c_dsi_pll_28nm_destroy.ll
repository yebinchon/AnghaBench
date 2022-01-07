; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_28nm.c_dsi_pll_28nm_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_28nm.c_dsi_pll_28nm_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_pll = type { i32 }
%struct.dsi_pll_28nm = type { %struct.TYPE_2__, i64, i32**, i32, i32 }
%struct.TYPE_2__ = type { i64, i32* }

@NUM_PROVIDED_CLKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_dsi_pll*)* @dsi_pll_28nm_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_pll_28nm_destroy(%struct.msm_dsi_pll* %0) #0 {
  %2 = alloca %struct.msm_dsi_pll*, align 8
  %3 = alloca %struct.dsi_pll_28nm*, align 8
  %4 = alloca i32, align 4
  store %struct.msm_dsi_pll* %0, %struct.msm_dsi_pll** %2, align 8
  %5 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %2, align 8
  %6 = call %struct.dsi_pll_28nm* @to_pll_28nm(%struct.msm_dsi_pll* %5)
  store %struct.dsi_pll_28nm* %6, %struct.dsi_pll_28nm** %3, align 8
  %7 = load %struct.dsi_pll_28nm*, %struct.dsi_pll_28nm** %3, align 8
  %8 = getelementptr inbounds %struct.dsi_pll_28nm, %struct.dsi_pll_28nm* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.dsi_pll_28nm*, %struct.dsi_pll_28nm** %3, align 8
  %11 = getelementptr inbounds %struct.dsi_pll_28nm, %struct.dsi_pll_28nm* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.dsi_pll_28nm*, %struct.dsi_pll_28nm** %3, align 8
  %14 = getelementptr inbounds %struct.dsi_pll_28nm, %struct.dsi_pll_28nm* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @msm_dsi_pll_helper_unregister_clks(i32 %9, i32 %12, i64 %15)
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %28, %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @NUM_PROVIDED_CLKS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load %struct.dsi_pll_28nm*, %struct.dsi_pll_28nm** %3, align 8
  %23 = getelementptr inbounds %struct.dsi_pll_28nm, %struct.dsi_pll_28nm* %22, i32 0, i32 2
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %17

31:                                               ; preds = %17
  %32 = load %struct.dsi_pll_28nm*, %struct.dsi_pll_28nm** %3, align 8
  %33 = getelementptr inbounds %struct.dsi_pll_28nm, %struct.dsi_pll_28nm* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.dsi_pll_28nm*, %struct.dsi_pll_28nm** %3, align 8
  %35 = getelementptr inbounds %struct.dsi_pll_28nm, %struct.dsi_pll_28nm* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.dsi_pll_28nm*, %struct.dsi_pll_28nm** %3, align 8
  %38 = getelementptr inbounds %struct.dsi_pll_28nm, %struct.dsi_pll_28nm* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  ret void
}

declare dso_local %struct.dsi_pll_28nm* @to_pll_28nm(%struct.msm_dsi_pll*) #1

declare dso_local i32 @msm_dsi_pll_helper_unregister_clks(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
