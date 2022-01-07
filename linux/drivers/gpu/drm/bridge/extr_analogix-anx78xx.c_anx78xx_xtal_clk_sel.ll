; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_xtal_clk_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_xtal_clk_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anx78xx = type { i32* }

@I2C_IDX_TX_P2 = common dso_local global i64 0, align 8
@SP_ANALOG_DEBUG2_REG = common dso_local global i32 0, align 4
@SP_XTAL_FRQ = common dso_local global i32 0, align 4
@SP_FORCE_SW_OFF_BYPASS = common dso_local global i32 0, align 4
@SP_XTAL_FRQ_27M = common dso_local global i32 0, align 4
@I2C_IDX_TX_P0 = common dso_local global i64 0, align 8
@SP_DP_AUX_CH_CTRL3_REG = common dso_local global i32 0, align 4
@XTAL_CLK = common dso_local global i32 0, align 4
@SP_WAIT_COUNTER_7_0_MASK = common dso_local global i32 0, align 4
@SP_DP_AUX_CH_CTRL4_REG = common dso_local global i32 0, align 4
@SP_I2C_GEN_10US_TIMER0_REG = common dso_local global i32 0, align 4
@SP_I2C_GEN_10US_TIMER1_REG = common dso_local global i32 0, align 4
@SP_AUX_MISC_CTRL_REG = common dso_local global i32 0, align 4
@I2C_IDX_RX_P0 = common dso_local global i64 0, align 8
@SP_HDMI_US_TIMER_CTRL_REG = common dso_local global i32 0, align 4
@SP_MS_TIMER_MARGIN_10_8_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.anx78xx*)* @anx78xx_xtal_clk_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anx78xx_xtal_clk_sel(%struct.anx78xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.anx78xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.anx78xx* %0, %struct.anx78xx** %3, align 8
  %6 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %7 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @I2C_IDX_TX_P2, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SP_ANALOG_DEBUG2_REG, align 4
  %13 = load i32, i32* @SP_XTAL_FRQ, align 4
  %14 = load i32, i32* @SP_FORCE_SW_OFF_BYPASS, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SP_XTAL_FRQ_27M, align 4
  %17 = call i32 @regmap_update_bits(i32 %11, i32 %12, i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %140

22:                                               ; preds = %1
  %23 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %24 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SP_DP_AUX_CH_CTRL3_REG, align 4
  %30 = load i32, i32* @XTAL_CLK, align 4
  %31 = load i32, i32* @SP_WAIT_COUNTER_7_0_MASK, align 4
  %32 = and i32 %30, %31
  %33 = call i32 @regmap_write(i32 %28, i32 %29, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %140

38:                                               ; preds = %22
  %39 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %40 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SP_DP_AUX_CH_CTRL4_REG, align 4
  %46 = load i32, i32* @XTAL_CLK, align 4
  %47 = and i32 %46, 65280
  %48 = ashr i32 %47, 2
  %49 = load i32, i32* @XTAL_CLK, align 4
  %50 = sdiv i32 %49, 10
  %51 = or i32 %48, %50
  %52 = call i32 @regmap_write(i32 %44, i32 %45, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %38
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %140

57:                                               ; preds = %38
  %58 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %59 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SP_I2C_GEN_10US_TIMER0_REG, align 4
  %65 = load i32, i32* @XTAL_CLK, align 4
  %66 = and i32 %65, 255
  %67 = call i32 @regmap_write(i32 %63, i32 %64, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %57
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %140

72:                                               ; preds = %57
  %73 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %74 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @SP_I2C_GEN_10US_TIMER1_REG, align 4
  %80 = load i32, i32* @XTAL_CLK, align 4
  %81 = and i32 %80, 65280
  %82 = ashr i32 %81, 8
  %83 = call i32 @regmap_write(i32 %78, i32 %79, i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %72
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %140

88:                                               ; preds = %72
  %89 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %90 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SP_AUX_MISC_CTRL_REG, align 4
  %96 = load i32, i32* @XTAL_CLK, align 4
  %97 = sdiv i32 %96, 10
  %98 = sub nsw i32 %97, 1
  %99 = call i32 @regmap_write(i32 %94, i32 %95, i32 %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %88
  %103 = load i32, i32* %5, align 4
  store i32 %103, i32* %2, align 4
  br label %140

104:                                              ; preds = %88
  %105 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %106 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @I2C_IDX_RX_P0, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @SP_HDMI_US_TIMER_CTRL_REG, align 4
  %112 = call i32 @regmap_read(i32 %110, i32 %111, i32* %4)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %104
  %116 = load i32, i32* %5, align 4
  store i32 %116, i32* %2, align 4
  br label %140

117:                                              ; preds = %104
  %118 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %119 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* @I2C_IDX_RX_P0, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @SP_HDMI_US_TIMER_CTRL_REG, align 4
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @SP_MS_TIMER_MARGIN_10_8_MASK, align 4
  %127 = and i32 %125, %126
  %128 = load i32, i32* @XTAL_CLK, align 4
  %129 = sdiv i32 %128, 10
  %130 = ashr i32 %129, 1
  %131 = sub nsw i32 %130, 2
  %132 = shl i32 %131, 3
  %133 = or i32 %127, %132
  %134 = call i32 @regmap_write(i32 %123, i32 %124, i32 %133)
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %117
  %138 = load i32, i32* %5, align 4
  store i32 %138, i32* %2, align 4
  br label %140

139:                                              ; preds = %117
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %139, %137, %115, %102, %86, %70, %55, %36, %20
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
