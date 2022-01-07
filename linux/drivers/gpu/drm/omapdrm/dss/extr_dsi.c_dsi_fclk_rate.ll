; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_fclk_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_fclk_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i32, i32, i32 }

@DSS_CLK_SRC_FCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dsi_data*)* @dsi_fclk_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dsi_fclk_rate(%struct.dsi_data* %0) #0 {
  %2 = alloca %struct.dsi_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %2, align 8
  %5 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %6 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %9 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dss_get_dsi_clk_source(i32 %7, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @DSS_CLK_SRC_FCK, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %17 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @clk_get_rate(i32 %18)
  store i64 %19, i64* %3, align 8
  br label %23

20:                                               ; preds = %1
  %21 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %22 = call i64 @dsi_get_pll_hsdiv_dsi_rate(%struct.dsi_data* %21)
  store i64 %22, i64* %3, align 8
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i64, i64* %3, align 8
  ret i64 %24
}

declare dso_local i32 @dss_get_dsi_clk_source(i32, i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i64 @dsi_get_pll_hsdiv_dsi_rate(%struct.dsi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
