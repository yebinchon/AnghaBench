; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_phy.c_msm_edp_phy_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_phy.c_msm_edp_phy_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edp_phy = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"enable=%d\00", align 1
@REG_EDP_PHY_CTRL = common dso_local global i64 0, align 8
@EDP_PHY_CTRL_SW_RESET = common dso_local global i32 0, align 4
@EDP_PHY_CTRL_SW_RESET_PLL = common dso_local global i32 0, align 4
@REG_EDP_PHY_GLB_PD_CTL = common dso_local global i64 0, align 8
@REG_EDP_PHY_GLB_CFG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_edp_phy_ctrl(%struct.edp_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.edp_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.edp_phy* %0, %struct.edp_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %2
  %10 = load %struct.edp_phy*, %struct.edp_phy** %3, align 8
  %11 = getelementptr inbounds %struct.edp_phy, %struct.edp_phy* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @REG_EDP_PHY_CTRL, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* @EDP_PHY_CTRL_SW_RESET, align 4
  %16 = load i32, i32* @EDP_PHY_CTRL_SW_RESET_PLL, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @edp_write(i64 %14, i32 %17)
  %19 = call i32 (...) @wmb()
  %20 = call i32 @usleep_range(i32 500, i32 1000)
  %21 = load %struct.edp_phy*, %struct.edp_phy** %3, align 8
  %22 = getelementptr inbounds %struct.edp_phy, %struct.edp_phy* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @REG_EDP_PHY_CTRL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @edp_write(i64 %25, i32 0)
  %27 = load %struct.edp_phy*, %struct.edp_phy** %3, align 8
  %28 = getelementptr inbounds %struct.edp_phy, %struct.edp_phy* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @REG_EDP_PHY_GLB_PD_CTL, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @edp_write(i64 %31, i32 63)
  %33 = load %struct.edp_phy*, %struct.edp_phy** %3, align 8
  %34 = getelementptr inbounds %struct.edp_phy, %struct.edp_phy* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @REG_EDP_PHY_GLB_CFG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @edp_write(i64 %37, i32 1)
  br label %46

39:                                               ; preds = %2
  %40 = load %struct.edp_phy*, %struct.edp_phy** %3, align 8
  %41 = getelementptr inbounds %struct.edp_phy, %struct.edp_phy* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @REG_EDP_PHY_GLB_PD_CTL, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @edp_write(i64 %44, i32 192)
  br label %46

46:                                               ; preds = %39, %9
  ret void
}

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @edp_write(i64, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
