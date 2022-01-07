; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_connector.c_msm_hdmi_phy_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_connector.c_msm_hdmi_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi = type { i32 }

@REG_HDMI_PHY_CTRL = common dso_local global i32 0, align 4
@HDMI_PHY_CTRL_SW_RESET_LOW = common dso_local global i32 0, align 4
@HDMI_PHY_CTRL_SW_RESET = common dso_local global i32 0, align 4
@HDMI_PHY_CTRL_SW_RESET_PLL_LOW = common dso_local global i32 0, align 4
@HDMI_PHY_CTRL_SW_RESET_PLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi*)* @msm_hdmi_phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_hdmi_phy_reset(%struct.hdmi* %0) #0 {
  %2 = alloca %struct.hdmi*, align 8
  %3 = alloca i32, align 4
  store %struct.hdmi* %0, %struct.hdmi** %2, align 8
  %4 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %5 = load i32, i32* @REG_HDMI_PHY_CTRL, align 4
  %6 = call i32 @hdmi_read(%struct.hdmi* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @HDMI_PHY_CTRL_SW_RESET_LOW, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %13 = load i32, i32* @REG_HDMI_PHY_CTRL, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @HDMI_PHY_CTRL_SW_RESET, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = call i32 @hdmi_write(%struct.hdmi* %12, i32 %13, i32 %17)
  br label %26

19:                                               ; preds = %1
  %20 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %21 = load i32, i32* @REG_HDMI_PHY_CTRL, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @HDMI_PHY_CTRL_SW_RESET, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @hdmi_write(%struct.hdmi* %20, i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %19, %11
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @HDMI_PHY_CTRL_SW_RESET_PLL_LOW, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %33 = load i32, i32* @REG_HDMI_PHY_CTRL, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @HDMI_PHY_CTRL_SW_RESET_PLL, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = call i32 @hdmi_write(%struct.hdmi* %32, i32 %33, i32 %37)
  br label %46

39:                                               ; preds = %26
  %40 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %41 = load i32, i32* @REG_HDMI_PHY_CTRL, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @HDMI_PHY_CTRL_SW_RESET_PLL, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @hdmi_write(%struct.hdmi* %40, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %39, %31
  %47 = call i32 @msleep(i32 100)
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @HDMI_PHY_CTRL_SW_RESET_LOW, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %54 = load i32, i32* @REG_HDMI_PHY_CTRL, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @HDMI_PHY_CTRL_SW_RESET, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @hdmi_write(%struct.hdmi* %53, i32 %54, i32 %57)
  br label %67

59:                                               ; preds = %46
  %60 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %61 = load i32, i32* @REG_HDMI_PHY_CTRL, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @HDMI_PHY_CTRL_SW_RESET, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = call i32 @hdmi_write(%struct.hdmi* %60, i32 %61, i32 %65)
  br label %67

67:                                               ; preds = %59, %52
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @HDMI_PHY_CTRL_SW_RESET_PLL_LOW, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %74 = load i32, i32* @REG_HDMI_PHY_CTRL, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @HDMI_PHY_CTRL_SW_RESET_PLL, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @hdmi_write(%struct.hdmi* %73, i32 %74, i32 %77)
  br label %87

79:                                               ; preds = %67
  %80 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %81 = load i32, i32* @REG_HDMI_PHY_CTRL, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @HDMI_PHY_CTRL_SW_RESET_PLL, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  %86 = call i32 @hdmi_write(%struct.hdmi* %80, i32 %81, i32 %85)
  br label %87

87:                                               ; preds = %79, %72
  ret void
}

declare dso_local i32 @hdmi_read(%struct.hdmi*, i32) #1

declare dso_local i32 @hdmi_write(%struct.hdmi*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
