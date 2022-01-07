; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_manager.c_enable_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_manager.c_enable_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi = type { i32, i32 }
%struct.msm_dsi_phy_shared_timings = type { i32 }
%struct.msm_dsi_phy_clk_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_dsi*, i32, %struct.msm_dsi_phy_shared_timings*)* @enable_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_phy(%struct.msm_dsi* %0, i32 %1, %struct.msm_dsi_phy_shared_timings* %2) #0 {
  %4 = alloca %struct.msm_dsi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msm_dsi_phy_shared_timings*, align 8
  %7 = alloca %struct.msm_dsi_phy_clk_request, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.msm_dsi* %0, %struct.msm_dsi** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.msm_dsi_phy_shared_timings* %2, %struct.msm_dsi_phy_shared_timings** %6, align 8
  %10 = call i32 (...) @IS_DUAL_DSI()
  store i32 %10, i32* %9, align 4
  %11 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  %12 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @msm_dsi_host_get_phy_clk_req(i32 %13, %struct.msm_dsi_phy_clk_request* %7, i32 %14)
  %16 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  %17 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @msm_dsi_phy_enable(i32 %18, i32 %19, %struct.msm_dsi_phy_clk_request* %7)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  %22 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.msm_dsi_phy_shared_timings*, %struct.msm_dsi_phy_shared_timings** %6, align 8
  %25 = call i32 @msm_dsi_phy_get_shared_timings(i32 %23, %struct.msm_dsi_phy_shared_timings* %24)
  %26 = load i32, i32* %8, align 4
  ret i32 %26
}

declare dso_local i32 @IS_DUAL_DSI(...) #1

declare dso_local i32 @msm_dsi_host_get_phy_clk_req(i32, %struct.msm_dsi_phy_clk_request*, i32) #1

declare dso_local i32 @msm_dsi_phy_enable(i32, i32, %struct.msm_dsi_phy_clk_request*) #1

declare dso_local i32 @msm_dsi_phy_get_shared_timings(i32, %struct.msm_dsi_phy_shared_timings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
