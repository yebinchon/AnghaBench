; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_ctrl.c_edp_ctrl_link_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_ctrl.c_edp_ctrl_link_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edp_ctrl = type { i32, i32, i32 }

@EDP_CLK_MASK_LINK_CHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edp_ctrl*, i32)* @edp_ctrl_link_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edp_ctrl_link_enable(%struct.edp_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.edp_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.edp_ctrl* %0, %struct.edp_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %42

9:                                                ; preds = %2
  %10 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %11 = load i32, i32* @EDP_CLK_MASK_LINK_CHAN, align 4
  %12 = call i32 @edp_clk_enable(%struct.edp_ctrl* %10, i32 %11)
  %13 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %14 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %17 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @msm_edp_phy_lane_power_ctrl(i32 %15, i32 1, i32 %18)
  %20 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %21 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @msm_edp_phy_vm_pe_init(i32 %22)
  %24 = call i32 (...) @wmb()
  %25 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %26 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @msm_edp_phy_ready(i32 %27)
  %29 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %30 = call i32 @edp_config_ctrl(%struct.edp_ctrl* %29)
  %31 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %32 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %33 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @msm_edp_ctrl_pixel_clock_valid(%struct.edp_ctrl* %31, i32 %34, i32* %5, i32* %6)
  %36 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @edp_sw_mvid_nvid(%struct.edp_ctrl* %36, i32 %37, i32 %38)
  %40 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %41 = call i32 @edp_mainlink_ctrl(%struct.edp_ctrl* %40, i32 1)
  br label %52

42:                                               ; preds = %2
  %43 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %44 = call i32 @edp_mainlink_ctrl(%struct.edp_ctrl* %43, i32 0)
  %45 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %46 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @msm_edp_phy_lane_power_ctrl(i32 %47, i32 0, i32 0)
  %49 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %50 = load i32, i32* @EDP_CLK_MASK_LINK_CHAN, align 4
  %51 = call i32 @edp_clk_disable(%struct.edp_ctrl* %49, i32 %50)
  br label %52

52:                                               ; preds = %42, %9
  ret void
}

declare dso_local i32 @edp_clk_enable(%struct.edp_ctrl*, i32) #1

declare dso_local i32 @msm_edp_phy_lane_power_ctrl(i32, i32, i32) #1

declare dso_local i32 @msm_edp_phy_vm_pe_init(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @msm_edp_phy_ready(i32) #1

declare dso_local i32 @edp_config_ctrl(%struct.edp_ctrl*) #1

declare dso_local i32 @msm_edp_ctrl_pixel_clock_valid(%struct.edp_ctrl*, i32, i32*, i32*) #1

declare dso_local i32 @edp_sw_mvid_nvid(%struct.edp_ctrl*, i32, i32) #1

declare dso_local i32 @edp_mainlink_ctrl(%struct.edp_ctrl*, i32) #1

declare dso_local i32 @edp_clk_disable(%struct.edp_ctrl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
