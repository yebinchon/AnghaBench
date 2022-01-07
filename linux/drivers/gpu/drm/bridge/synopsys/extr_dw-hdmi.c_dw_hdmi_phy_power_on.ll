; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dw_hdmi_phy_data* }
%struct.dw_hdmi_phy_data = type { i32 }

@HDMI_PHY_STAT0 = common dso_local global i32 0, align 4
@HDMI_PHY_TX_PHY_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"PHY PLL failed to lock\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"PHY PLL locked %u iterations\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_hdmi*)* @dw_hdmi_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_phy_power_on(%struct.dw_hdmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_hdmi*, align 8
  %4 = alloca %struct.dw_hdmi_phy_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %3, align 8
  %7 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %8 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.dw_hdmi_phy_data*, %struct.dw_hdmi_phy_data** %9, align 8
  store %struct.dw_hdmi_phy_data* %10, %struct.dw_hdmi_phy_data** %4, align 8
  %11 = load %struct.dw_hdmi_phy_data*, %struct.dw_hdmi_phy_data** %4, align 8
  %12 = getelementptr inbounds %struct.dw_hdmi_phy_data, %struct.dw_hdmi_phy_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %17 = call i32 @dw_hdmi_phy_enable_powerdown(%struct.dw_hdmi* %16, i32 0)
  %18 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %19 = call i32 @dw_hdmi_phy_enable_tmds(%struct.dw_hdmi* %18, i32 0)
  %20 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %21 = call i32 @dw_hdmi_phy_enable_tmds(%struct.dw_hdmi* %20, i32 1)
  store i32 0, i32* %2, align 4
  br label %60

22:                                               ; preds = %1
  %23 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %24 = call i32 @dw_hdmi_phy_gen2_txpwron(%struct.dw_hdmi* %23, i32 1)
  %25 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %26 = call i32 @dw_hdmi_phy_gen2_pddq(%struct.dw_hdmi* %25, i32 0)
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %41, %22
  %28 = load i32, i32* %5, align 4
  %29 = icmp ult i32 %28, 5
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %32 = load i32, i32* @HDMI_PHY_STAT0, align 4
  %33 = call i32 @hdmi_readb(%struct.dw_hdmi* %31, i32 %32)
  %34 = load i32, i32* @HDMI_PHY_TX_PHY_LOCK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %44

39:                                               ; preds = %30
  %40 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %41

41:                                               ; preds = %39
  %42 = load i32, i32* %5, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %27

44:                                               ; preds = %38, %27
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %49 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @ETIMEDOUT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %60

54:                                               ; preds = %44
  %55 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %56 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @dev_dbg(i32 %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %54, %47, %15
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @dw_hdmi_phy_enable_powerdown(%struct.dw_hdmi*, i32) #1

declare dso_local i32 @dw_hdmi_phy_enable_tmds(%struct.dw_hdmi*, i32) #1

declare dso_local i32 @dw_hdmi_phy_gen2_txpwron(%struct.dw_hdmi*, i32) #1

declare dso_local i32 @dw_hdmi_phy_gen2_pddq(%struct.dw_hdmi*, i32) #1

declare dso_local i32 @hdmi_readb(%struct.dw_hdmi*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
