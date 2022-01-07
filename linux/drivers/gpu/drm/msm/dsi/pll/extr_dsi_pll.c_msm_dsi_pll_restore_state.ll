; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll.c_msm_dsi_pll_restore_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll.c_msm_dsi_pll_restore_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_pll = type { {}*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_dsi_pll_restore_state(%struct.msm_dsi_pll* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_dsi_pll*, align 8
  %4 = alloca i32, align 4
  store %struct.msm_dsi_pll* %0, %struct.msm_dsi_pll** %3, align 8
  %5 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %3, align 8
  %6 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %5, i32 0, i32 0
  %7 = bitcast {}** %6 to i32 (%struct.msm_dsi_pll*)**
  %8 = load i32 (%struct.msm_dsi_pll*)*, i32 (%struct.msm_dsi_pll*)** %7, align 8
  %9 = icmp ne i32 (%struct.msm_dsi_pll*)* %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %3, align 8
  %12 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %10
  %16 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %3, align 8
  %17 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.msm_dsi_pll*)**
  %19 = load i32 (%struct.msm_dsi_pll*)*, i32 (%struct.msm_dsi_pll*)** %18, align 8
  %20 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %3, align 8
  %21 = call i32 %19(%struct.msm_dsi_pll* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %30

26:                                               ; preds = %15
  %27 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %3, align 8
  %28 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %27, i32 0, i32 1
  store i32 0, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %10, %1
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %24
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
