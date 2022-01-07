; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_ctrl.c_edp_ctrl_phy_aux_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_ctrl.c_edp_ctrl_phy_aux_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edp_ctrl = type { i32, i32, i32 }

@EDP_CLK_MASK_AUX_CHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edp_ctrl*, i32)* @edp_ctrl_phy_aux_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edp_ctrl_phy_aux_enable(%struct.edp_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.edp_ctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.edp_ctrl* %0, %struct.edp_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  %8 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %9 = call i32 @edp_regulator_enable(%struct.edp_ctrl* %8)
  %10 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %11 = load i32, i32* @EDP_CLK_MASK_AUX_CHAN, align 4
  %12 = call i32 @edp_clk_enable(%struct.edp_ctrl* %10, i32 %11)
  %13 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %14 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @msm_edp_phy_ctrl(i32 %15, i32 1)
  %17 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %18 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @msm_edp_aux_ctrl(i32 %19, i32 1)
  %21 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %22 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @gpiod_set_value(i32 %23, i32 1)
  br label %43

25:                                               ; preds = %2
  %26 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %27 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @gpiod_set_value(i32 %28, i32 0)
  %30 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %31 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @msm_edp_aux_ctrl(i32 %32, i32 0)
  %34 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %35 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @msm_edp_phy_ctrl(i32 %36, i32 0)
  %38 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %39 = load i32, i32* @EDP_CLK_MASK_AUX_CHAN, align 4
  %40 = call i32 @edp_clk_disable(%struct.edp_ctrl* %38, i32 %39)
  %41 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %42 = call i32 @edp_regulator_disable(%struct.edp_ctrl* %41)
  br label %43

43:                                               ; preds = %25, %7
  ret void
}

declare dso_local i32 @edp_regulator_enable(%struct.edp_ctrl*) #1

declare dso_local i32 @edp_clk_enable(%struct.edp_ctrl*, i32) #1

declare dso_local i32 @msm_edp_phy_ctrl(i32, i32) #1

declare dso_local i32 @msm_edp_aux_ctrl(i32, i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @edp_clk_disable(%struct.edp_ctrl*, i32) #1

declare dso_local i32 @edp_regulator_disable(%struct.edp_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
