; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_phy_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_phy_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dw_hdmi_phy_data* }
%struct.dw_hdmi_phy_data = type { i32 }

@HDMI_PHY_STAT0 = common dso_local global i32 0, align 4
@HDMI_PHY_TX_PHY_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"PHY failed to power down\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"PHY powered down in %u iterations\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_hdmi*)* @dw_hdmi_phy_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_hdmi_phy_power_off(%struct.dw_hdmi* %0) #0 {
  %2 = alloca %struct.dw_hdmi*, align 8
  %3 = alloca %struct.dw_hdmi_phy_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %2, align 8
  %6 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %7 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.dw_hdmi_phy_data*, %struct.dw_hdmi_phy_data** %8, align 8
  store %struct.dw_hdmi_phy_data* %9, %struct.dw_hdmi_phy_data** %3, align 8
  %10 = load %struct.dw_hdmi_phy_data*, %struct.dw_hdmi_phy_data** %3, align 8
  %11 = getelementptr inbounds %struct.dw_hdmi_phy_data, %struct.dw_hdmi_phy_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %16 = call i32 @dw_hdmi_phy_enable_tmds(%struct.dw_hdmi* %15, i32 0)
  %17 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %18 = call i32 @dw_hdmi_phy_enable_powerdown(%struct.dw_hdmi* %17, i32 1)
  br label %58

19:                                               ; preds = %1
  %20 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %21 = call i32 @dw_hdmi_phy_gen2_txpwron(%struct.dw_hdmi* %20, i32 0)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %36, %19
  %23 = load i32, i32* %4, align 4
  %24 = icmp ult i32 %23, 5
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %27 = load i32, i32* @HDMI_PHY_STAT0, align 4
  %28 = call i32 @hdmi_readb(%struct.dw_hdmi* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @HDMI_PHY_TX_PHY_LOCK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  br label %39

34:                                               ; preds = %25
  %35 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %4, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %22

39:                                               ; preds = %33, %22
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @HDMI_PHY_TX_PHY_LOCK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %46 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_warn(i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %55

49:                                               ; preds = %39
  %50 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %51 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %57 = call i32 @dw_hdmi_phy_gen2_pddq(%struct.dw_hdmi* %56, i32 1)
  br label %58

58:                                               ; preds = %55, %14
  ret void
}

declare dso_local i32 @dw_hdmi_phy_enable_tmds(%struct.dw_hdmi*, i32) #1

declare dso_local i32 @dw_hdmi_phy_enable_powerdown(%struct.dw_hdmi*, i32) #1

declare dso_local i32 @dw_hdmi_phy_gen2_txpwron(%struct.dw_hdmi*, i32) #1

declare dso_local i32 @hdmi_readb(%struct.dw_hdmi*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dw_hdmi_phy_gen2_pddq(%struct.dw_hdmi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
