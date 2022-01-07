; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy_8x60.c_hdmi_phy_8x60_powerup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy_8x60.c_hdmi_phy_8x60_powerup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_phy = type { i32 }

@REG_HDMI_8x60_PHY_REG0 = common dso_local global i32 0, align 4
@REG_HDMI_8x60_PHY_REG1 = common dso_local global i32 0, align 4
@REG_HDMI_8x60_PHY_REG2 = common dso_local global i32 0, align 4
@HDMI_8x60_PHY_REG2_PD_PWRGEN = common dso_local global i32 0, align 4
@HDMI_8x60_PHY_REG2_PD_PLL = common dso_local global i32 0, align 4
@HDMI_8x60_PHY_REG2_PD_DRIVE_4 = common dso_local global i32 0, align 4
@HDMI_8x60_PHY_REG2_PD_DRIVE_3 = common dso_local global i32 0, align 4
@HDMI_8x60_PHY_REG2_PD_DRIVE_2 = common dso_local global i32 0, align 4
@HDMI_8x60_PHY_REG2_PD_DRIVE_1 = common dso_local global i32 0, align 4
@HDMI_8x60_PHY_REG2_PD_DESER = common dso_local global i32 0, align 4
@REG_HDMI_8x60_PHY_REG3 = common dso_local global i32 0, align 4
@HDMI_8x60_PHY_REG3_PLL_ENABLE = common dso_local global i32 0, align 4
@REG_HDMI_8x60_PHY_REG9 = common dso_local global i32 0, align 4
@REG_HDMI_8x60_PHY_REG12 = common dso_local global i32 0, align 4
@HDMI_8x60_PHY_REG12_RETIMING_EN = common dso_local global i32 0, align 4
@HDMI_8x60_PHY_REG12_PLL_LOCK_DETECT_EN = common dso_local global i32 0, align 4
@HDMI_8x60_PHY_REG2_RCV_SENSE_EN = common dso_local global i32 0, align 4
@REG_HDMI_8x60_PHY_REG4 = common dso_local global i32 0, align 4
@REG_HDMI_8x60_PHY_REG5 = common dso_local global i32 0, align 4
@REG_HDMI_8x60_PHY_REG6 = common dso_local global i32 0, align 4
@REG_HDMI_8x60_PHY_REG7 = common dso_local global i32 0, align 4
@REG_HDMI_8x60_PHY_REG8 = common dso_local global i32 0, align 4
@REG_HDMI_8x60_PHY_REG10 = common dso_local global i32 0, align 4
@REG_HDMI_8x60_PHY_REG11 = common dso_local global i32 0, align 4
@HDMI_8x60_PHY_REG12_FORCE_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_phy*, i64)* @hdmi_phy_8x60_powerup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_phy_8x60_powerup(%struct.hdmi_phy* %0, i64 %1) #0 {
  %3 = alloca %struct.hdmi_phy*, align 8
  %4 = alloca i64, align 8
  store %struct.hdmi_phy* %0, %struct.hdmi_phy** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %6 = load i32, i32* @REG_HDMI_8x60_PHY_REG0, align 4
  %7 = call i32 @HDMI_8x60_PHY_REG0_DESER_DEL_CTRL(i32 3)
  %8 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %5, i32 %6, i32 %7)
  %9 = load i64, i64* %4, align 8
  %10 = icmp eq i64 %9, 27000000
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %13 = load i32, i32* @REG_HDMI_8x60_PHY_REG1, align 4
  %14 = call i32 @HDMI_8x60_PHY_REG1_DTEST_MUX_SEL(i32 5)
  %15 = call i32 @HDMI_8x60_PHY_REG1_OUTVOL_SWING_CTRL(i32 3)
  %16 = or i32 %14, %15
  %17 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %12, i32 %13, i32 %16)
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %20 = load i32, i32* @REG_HDMI_8x60_PHY_REG1, align 4
  %21 = call i32 @HDMI_8x60_PHY_REG1_DTEST_MUX_SEL(i32 5)
  %22 = call i32 @HDMI_8x60_PHY_REG1_OUTVOL_SWING_CTRL(i32 4)
  %23 = or i32 %21, %22
  %24 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %19, i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %18, %11
  %26 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %27 = load i32, i32* @REG_HDMI_8x60_PHY_REG2, align 4
  %28 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_PWRGEN, align 4
  %29 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_PLL, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DRIVE_4, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DRIVE_3, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DRIVE_2, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DRIVE_1, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DESER, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %26, i32 %27, i32 %40)
  %42 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %43 = load i32, i32* @REG_HDMI_8x60_PHY_REG2, align 4
  %44 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_PLL, align 4
  %45 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DRIVE_4, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DRIVE_3, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DRIVE_2, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DRIVE_1, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DESER, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %42, i32 %43, i32 %54)
  %56 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %57 = load i32, i32* @REG_HDMI_8x60_PHY_REG2, align 4
  %58 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DRIVE_4, align 4
  %59 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DRIVE_3, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DRIVE_2, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DRIVE_1, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DESER, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %56, i32 %57, i32 %66)
  %68 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %69 = load i32, i32* @REG_HDMI_8x60_PHY_REG3, align 4
  %70 = load i32, i32* @HDMI_8x60_PHY_REG3_PLL_ENABLE, align 4
  %71 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %68, i32 %69, i32 %70)
  %72 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %73 = load i32, i32* @REG_HDMI_8x60_PHY_REG9, align 4
  %74 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %72, i32 %73, i32 0)
  %75 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %76 = load i32, i32* @REG_HDMI_8x60_PHY_REG12, align 4
  %77 = load i32, i32* @HDMI_8x60_PHY_REG12_RETIMING_EN, align 4
  %78 = load i32, i32* @HDMI_8x60_PHY_REG12_PLL_LOCK_DETECT_EN, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %75, i32 %76, i32 %79)
  %81 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %82 = load i32, i32* @REG_HDMI_8x60_PHY_REG2, align 4
  %83 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DESER, align 4
  %84 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %81, i32 %82, i32 %83)
  %85 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %86 = load i32, i32* @REG_HDMI_8x60_PHY_REG2, align 4
  %87 = load i32, i32* @HDMI_8x60_PHY_REG2_RCV_SENSE_EN, align 4
  %88 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DESER, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %85, i32 %86, i32 %89)
  %91 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %92 = load i32, i32* @REG_HDMI_8x60_PHY_REG4, align 4
  %93 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %91, i32 %92, i32 0)
  %94 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %95 = load i32, i32* @REG_HDMI_8x60_PHY_REG5, align 4
  %96 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %94, i32 %95, i32 0)
  %97 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %98 = load i32, i32* @REG_HDMI_8x60_PHY_REG6, align 4
  %99 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %97, i32 %98, i32 0)
  %100 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %101 = load i32, i32* @REG_HDMI_8x60_PHY_REG7, align 4
  %102 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %100, i32 %101, i32 0)
  %103 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %104 = load i32, i32* @REG_HDMI_8x60_PHY_REG8, align 4
  %105 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %103, i32 %104, i32 0)
  %106 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %107 = load i32, i32* @REG_HDMI_8x60_PHY_REG9, align 4
  %108 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %106, i32 %107, i32 0)
  %109 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %110 = load i32, i32* @REG_HDMI_8x60_PHY_REG10, align 4
  %111 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %109, i32 %110, i32 0)
  %112 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %113 = load i32, i32* @REG_HDMI_8x60_PHY_REG11, align 4
  %114 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %112, i32 %113, i32 0)
  %115 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %116 = load i32, i32* @REG_HDMI_8x60_PHY_REG12, align 4
  %117 = load i32, i32* @HDMI_8x60_PHY_REG12_RETIMING_EN, align 4
  %118 = load i32, i32* @HDMI_8x60_PHY_REG12_PLL_LOCK_DETECT_EN, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @HDMI_8x60_PHY_REG12_FORCE_LOCK, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %115, i32 %116, i32 %121)
  ret void
}

declare dso_local i32 @hdmi_phy_write(%struct.hdmi_phy*, i32, i32) #1

declare dso_local i32 @HDMI_8x60_PHY_REG0_DESER_DEL_CTRL(i32) #1

declare dso_local i32 @HDMI_8x60_PHY_REG1_DTEST_MUX_SEL(i32) #1

declare dso_local i32 @HDMI_8x60_PHY_REG1_OUTVOL_SWING_CTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
