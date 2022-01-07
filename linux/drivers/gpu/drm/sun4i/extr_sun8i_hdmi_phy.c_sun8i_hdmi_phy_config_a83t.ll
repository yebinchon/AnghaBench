; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_hdmi_phy.c_sun8i_hdmi_phy_config_a83t.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_hdmi_phy.c_sun8i_hdmi_phy_config_a83t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32 }
%struct.sun8i_hdmi_phy = type { i32 }

@SUN8I_HDMI_PHY_REXT_CTRL_REG = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_REXT_CTRL_REXT_EN = common dso_local global i32 0, align 4
@I2C_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_hdmi*, %struct.sun8i_hdmi_phy*, i32)* @sun8i_hdmi_phy_config_a83t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_hdmi_phy_config_a83t(%struct.dw_hdmi* %0, %struct.sun8i_hdmi_phy* %1, i32 %2) #0 {
  %4 = alloca %struct.dw_hdmi*, align 8
  %5 = alloca %struct.sun8i_hdmi_phy*, align 8
  %6 = alloca i32, align 4
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %4, align 8
  store %struct.sun8i_hdmi_phy* %1, %struct.sun8i_hdmi_phy** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %5, align 8
  %8 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SUN8I_HDMI_PHY_REXT_CTRL_REG, align 4
  %11 = load i32, i32* @SUN8I_HDMI_PHY_REXT_CTRL_REXT_EN, align 4
  %12 = load i32, i32* @SUN8I_HDMI_PHY_REXT_CTRL_REXT_EN, align 4
  %13 = call i32 @regmap_update_bits(i32 %9, i32 %10, i32 %11, i32 %12)
  %14 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %15 = call i32 @dw_hdmi_phy_gen2_txpwron(%struct.dw_hdmi* %14, i32 0)
  %16 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %17 = call i32 @dw_hdmi_phy_gen2_pddq(%struct.dw_hdmi* %16, i32 1)
  %18 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %19 = call i32 @dw_hdmi_phy_reset(%struct.dw_hdmi* %18)
  %20 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %21 = call i32 @dw_hdmi_phy_gen2_pddq(%struct.dw_hdmi* %20, i32 0)
  %22 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %23 = load i32, i32* @I2C_ADDR, align 4
  %24 = call i32 @dw_hdmi_phy_i2c_set_addr(%struct.dw_hdmi* %22, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp ule i32 %25, 27000000
  br i1 %26, label %27, label %40

27:                                               ; preds = %3
  %28 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %29 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %28, i32 480, i32 6)
  %30 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %31 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %30, i32 0, i32 21)
  %32 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %33 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %32, i32 2266, i32 16)
  %34 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %35 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %34, i32 7, i32 25)
  %36 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %37 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %36, i32 792, i32 14)
  %38 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %39 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %38, i32 32777, i32 9)
  br label %87

40:                                               ; preds = %3
  %41 = load i32, i32* %6, align 4
  %42 = icmp ule i32 %41, 74250000
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %45 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %44, i32 1344, i32 6)
  %46 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %47 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %46, i32 5, i32 21)
  %48 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %49 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %48, i32 0, i32 16)
  %50 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %51 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %50, i32 7, i32 25)
  %52 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %53 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %52, i32 693, i32 14)
  %54 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %55 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %54, i32 32777, i32 9)
  br label %86

56:                                               ; preds = %40
  %57 = load i32, i32* %6, align 4
  %58 = icmp ule i32 %57, 148500000
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %61 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %60, i32 1184, i32 6)
  %62 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %63 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %62, i32 10, i32 21)
  %64 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %65 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %64, i32 0, i32 16)
  %66 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %67 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %66, i32 2, i32 25)
  %68 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %69 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %68, i32 33, i32 14)
  %70 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %71 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %70, i32 32809, i32 9)
  br label %85

72:                                               ; preds = %56
  %73 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %74 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %73, i32 0, i32 6)
  %75 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %76 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %75, i32 15, i32 21)
  %77 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %78 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %77, i32 0, i32 16)
  %79 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %80 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %79, i32 2, i32 25)
  %81 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %82 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %81, i32 0, i32 14)
  %83 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %84 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %83, i32 32811, i32 9)
  br label %85

85:                                               ; preds = %72, %59
  br label %86

86:                                               ; preds = %85, %43
  br label %87

87:                                               ; preds = %86, %27
  %88 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %89 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %88, i32 0, i32 30)
  %90 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %91 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %90, i32 0, i32 19)
  %92 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %93 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %92, i32 0, i32 23)
  %94 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %95 = call i32 @dw_hdmi_phy_gen2_txpwron(%struct.dw_hdmi* %94, i32 1)
  ret i32 0
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dw_hdmi_phy_gen2_txpwron(%struct.dw_hdmi*, i32) #1

declare dso_local i32 @dw_hdmi_phy_gen2_pddq(%struct.dw_hdmi*, i32) #1

declare dso_local i32 @dw_hdmi_phy_reset(%struct.dw_hdmi*) #1

declare dso_local i32 @dw_hdmi_phy_i2c_set_addr(%struct.dw_hdmi*, i32) #1

declare dso_local i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
