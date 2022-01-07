; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_rx_initialization.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_rx_initialization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anx78xx = type { i32* }

@I2C_IDX_RX_P0 = common dso_local global i64 0, align 8
@SP_HDMI_MUTE_CTRL_REG = common dso_local global i32 0, align 4
@SP_AUD_MUTE = common dso_local global i32 0, align 4
@SP_VID_MUTE = common dso_local global i32 0, align 4
@SP_CHIP_CTRL_REG = common dso_local global i64 0, align 8
@SP_MAN_HDMI5V_DET = common dso_local global i32 0, align 4
@SP_PLLLOCK_CKDT_EN = common dso_local global i32 0, align 4
@SP_DIGITAL_CKDT_EN = common dso_local global i32 0, align 4
@SP_SOFTWARE_RESET1_REG = common dso_local global i64 0, align 8
@SP_HDCP_MAN_RST = common dso_local global i32 0, align 4
@SP_SW_MAN_RST = common dso_local global i32 0, align 4
@SP_TMDS_RST = common dso_local global i32 0, align 4
@SP_VIDEO_RST = common dso_local global i32 0, align 4
@SP_AUD_EXCEPTION_ENABLE_BASE = common dso_local global i64 0, align 8
@SP_AEC_EN21 = common dso_local global i32 0, align 4
@SP_AUDVID_CTRL_REG = common dso_local global i64 0, align 8
@SP_AVC_EN = common dso_local global i32 0, align 4
@SP_AAC_OE = common dso_local global i32 0, align 4
@SP_AAC_EN = common dso_local global i32 0, align 4
@SP_SYSTEM_POWER_DOWN1_REG = common dso_local global i64 0, align 8
@SP_PWDN_CTRL = common dso_local global i32 0, align 4
@SP_VID_DATA_RANGE_CTRL_REG = common dso_local global i64 0, align 8
@SP_R2Y_INPUT_LIMIT = common dso_local global i32 0, align 4
@I2C_IDX_TX_P0 = common dso_local global i64 0, align 8
@SP_DP_EXTRA_I2C_DEV_ADDR_REG = common dso_local global i32 0, align 4
@SP_I2C_EXTRA_ADDR = common dso_local global i32 0, align 4
@tmds_phy_initialization = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.anx78xx*)* @anx78xx_rx_initialization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anx78xx_rx_initialization(%struct.anx78xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.anx78xx*, align 8
  %4 = alloca i32, align 4
  store %struct.anx78xx* %0, %struct.anx78xx** %3, align 8
  %5 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %6 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* @I2C_IDX_RX_P0, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SP_HDMI_MUTE_CTRL_REG, align 4
  %12 = load i32, i32* @SP_AUD_MUTE, align 4
  %13 = load i32, i32* @SP_VID_MUTE, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @regmap_write(i32 %10, i32 %11, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %193

20:                                               ; preds = %1
  %21 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %22 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @I2C_IDX_RX_P0, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* @SP_CHIP_CTRL_REG, align 8
  %28 = load i32, i32* @SP_MAN_HDMI5V_DET, align 4
  %29 = load i32, i32* @SP_PLLLOCK_CKDT_EN, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SP_DIGITAL_CKDT_EN, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @anx78xx_set_bits(i32 %26, i64 %27, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %20
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %193

38:                                               ; preds = %20
  %39 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %40 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @I2C_IDX_RX_P0, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* @SP_SOFTWARE_RESET1_REG, align 8
  %46 = load i32, i32* @SP_HDCP_MAN_RST, align 4
  %47 = load i32, i32* @SP_SW_MAN_RST, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @SP_TMDS_RST, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @SP_VIDEO_RST, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @anx78xx_set_bits(i32 %44, i64 %45, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %38
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %193

58:                                               ; preds = %38
  %59 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %60 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @I2C_IDX_RX_P0, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* @SP_SOFTWARE_RESET1_REG, align 8
  %66 = load i32, i32* @SP_HDCP_MAN_RST, align 4
  %67 = load i32, i32* @SP_SW_MAN_RST, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @SP_TMDS_RST, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @SP_VIDEO_RST, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @anx78xx_clear_bits(i32 %64, i64 %65, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %58
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %193

78:                                               ; preds = %58
  %79 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %80 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @I2C_IDX_RX_P0, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* @SP_AUD_EXCEPTION_ENABLE_BASE, align 8
  %86 = add nsw i64 %85, 1
  %87 = call i32 @BIT(i32 5)
  %88 = call i32 @BIT(i32 6)
  %89 = or i32 %87, %88
  %90 = call i32 @anx78xx_set_bits(i32 %84, i64 %86, i32 %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %78
  %94 = load i32, i32* %4, align 4
  store i32 %94, i32* %2, align 4
  br label %193

95:                                               ; preds = %78
  %96 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %97 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @I2C_IDX_RX_P0, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* @SP_AUD_EXCEPTION_ENABLE_BASE, align 8
  %103 = add nsw i64 %102, 3
  %104 = load i32, i32* @SP_AEC_EN21, align 4
  %105 = call i32 @anx78xx_set_bits(i32 %101, i64 %103, i32 %104)
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %95
  %109 = load i32, i32* %4, align 4
  store i32 %109, i32* %2, align 4
  br label %193

110:                                              ; preds = %95
  %111 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %112 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* @I2C_IDX_RX_P0, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i64, i64* @SP_AUDVID_CTRL_REG, align 8
  %118 = load i32, i32* @SP_AVC_EN, align 4
  %119 = load i32, i32* @SP_AAC_OE, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @SP_AAC_EN, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @anx78xx_set_bits(i32 %116, i64 %117, i32 %122)
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %110
  %127 = load i32, i32* %4, align 4
  store i32 %127, i32* %2, align 4
  br label %193

128:                                              ; preds = %110
  %129 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %130 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* @I2C_IDX_RX_P0, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i64, i64* @SP_SYSTEM_POWER_DOWN1_REG, align 8
  %136 = load i32, i32* @SP_PWDN_CTRL, align 4
  %137 = call i32 @anx78xx_clear_bits(i32 %134, i64 %135, i32 %136)
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* %4, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %128
  %141 = load i32, i32* %4, align 4
  store i32 %141, i32* %2, align 4
  br label %193

142:                                              ; preds = %128
  %143 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %144 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i64, i64* @I2C_IDX_RX_P0, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i64, i64* @SP_VID_DATA_RANGE_CTRL_REG, align 8
  %150 = load i32, i32* @SP_R2Y_INPUT_LIMIT, align 4
  %151 = call i32 @anx78xx_set_bits(i32 %148, i64 %149, i32 %150)
  store i32 %151, i32* %4, align 4
  %152 = load i32, i32* %4, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %142
  %155 = load i32, i32* %4, align 4
  store i32 %155, i32* %2, align 4
  br label %193

156:                                              ; preds = %142
  %157 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %158 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @SP_DP_EXTRA_I2C_DEV_ADDR_REG, align 4
  %164 = load i32, i32* @SP_I2C_EXTRA_ADDR, align 4
  %165 = call i32 @regmap_write(i32 %162, i32 %163, i32 %164)
  store i32 %165, i32* %4, align 4
  %166 = load i32, i32* %4, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %156
  %169 = load i32, i32* %4, align 4
  store i32 %169, i32* %2, align 4
  br label %193

170:                                              ; preds = %156
  %171 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %172 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i64, i64* @I2C_IDX_RX_P0, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @tmds_phy_initialization, align 4
  %178 = load i32, i32* @tmds_phy_initialization, align 4
  %179 = call i32 @ARRAY_SIZE(i32 %178)
  %180 = call i32 @regmap_multi_reg_write(i32 %176, i32 %177, i32 %179)
  store i32 %180, i32* %4, align 4
  %181 = load i32, i32* %4, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %170
  %184 = load i32, i32* %4, align 4
  store i32 %184, i32* %2, align 4
  br label %193

185:                                              ; preds = %170
  %186 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %187 = call i32 @anx78xx_clear_hpd(%struct.anx78xx* %186)
  store i32 %187, i32* %4, align 4
  %188 = load i32, i32* %4, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  %191 = load i32, i32* %4, align 4
  store i32 %191, i32* %2, align 4
  br label %193

192:                                              ; preds = %185
  store i32 0, i32* %2, align 4
  br label %193

193:                                              ; preds = %192, %190, %183, %168, %154, %140, %126, %108, %93, %76, %56, %36, %18
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @anx78xx_set_bits(i32, i64, i32) #1

declare dso_local i32 @anx78xx_clear_bits(i32, i64, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_multi_reg_write(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @anx78xx_clear_hpd(%struct.anx78xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
