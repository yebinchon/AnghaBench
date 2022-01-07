; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_display_uninit_dsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_display_uninit_dsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i32, i32, i32, i32, i32, i32 }

@DSS_CLK_SRC_FCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsi_data*, i32, i32)* @dsi_display_uninit_dsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_display_uninit_dsi(%struct.dsi_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dsi_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %11 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %16 = call i32 @dsi_enter_ulps(%struct.dsi_data* %15)
  br label %17

17:                                               ; preds = %14, %9, %3
  %18 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %19 = call i32 @dsi_if_enable(%struct.dsi_data* %18, i32 0)
  %20 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %21 = call i32 @dsi_vc_enable(%struct.dsi_data* %20, i32 0, i32 0)
  %22 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %23 = call i32 @dsi_vc_enable(%struct.dsi_data* %22, i32 1, i32 0)
  %24 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %25 = call i32 @dsi_vc_enable(%struct.dsi_data* %24, i32 2, i32 0)
  %26 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %27 = call i32 @dsi_vc_enable(%struct.dsi_data* %26, i32 3, i32 0)
  %28 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %29 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %32 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @DSS_CLK_SRC_FCK, align 4
  %35 = call i32 @dss_select_dsi_clk_source(i32 %30, i32 %33, i32 %34)
  %36 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %37 = call i32 @dsi_cio_uninit(%struct.dsi_data* %36)
  %38 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %39 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %38, i32 0, i32 2
  %40 = call i32 @dss_pll_disable(i32* %39)
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %17
  %44 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %45 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @regulator_disable(i32 %46)
  %48 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %49 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %48, i32 0, i32 0
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %43, %17
  ret void
}

declare dso_local i32 @dsi_enter_ulps(%struct.dsi_data*) #1

declare dso_local i32 @dsi_if_enable(%struct.dsi_data*, i32) #1

declare dso_local i32 @dsi_vc_enable(%struct.dsi_data*, i32, i32) #1

declare dso_local i32 @dss_select_dsi_clk_source(i32, i32, i32) #1

declare dso_local i32 @dsi_cio_uninit(%struct.dsi_data*) #1

declare dso_local i32 @dss_pll_disable(i32*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
