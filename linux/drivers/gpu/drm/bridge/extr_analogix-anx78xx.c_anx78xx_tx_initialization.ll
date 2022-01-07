; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_tx_initialization.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_tx_initialization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anx78xx = type { i32* }

@I2C_IDX_TX_P0 = common dso_local global i64 0, align 8
@SP_DP_AUX_CH_CTRL2_REG = common dso_local global i32 0, align 4
@SP_DP_HDCP_CTRL_REG = common dso_local global i32 0, align 4
@SP_AUTO_EN = common dso_local global i32 0, align 4
@SP_AUTO_START = common dso_local global i32 0, align 4
@otp_key_protect = common dso_local global i32 0, align 4
@SP_HDCP_KEY_COMMAND_REG = common dso_local global i32 0, align 4
@SP_DISABLE_SYNC_HDCP = common dso_local global i32 0, align 4
@I2C_IDX_TX_P2 = common dso_local global i64 0, align 8
@SP_VID_CTRL8_REG = common dso_local global i32 0, align 4
@SP_VID_VRES_TH = common dso_local global i32 0, align 4
@SP_HDCP_AUTO_TIMER_REG = common dso_local global i32 0, align 4
@SP_LINK_POLLING = common dso_local global i32 0, align 4
@SP_DP_LINK_DEBUG_CTRL_REG = common dso_local global i32 0, align 4
@SP_M_VID_DEBUG = common dso_local global i32 0, align 4
@SP_ANALOG_DEBUG2_REG = common dso_local global i32 0, align 4
@SP_POWERON_TIME_1P5MS = common dso_local global i32 0, align 4
@SP_AUX_DEFER_CTRL_REG = common dso_local global i32 0, align 4
@SP_DEFER_CTRL_EN = common dso_local global i32 0, align 4
@SP_DP_POLLING_CTRL_REG = common dso_local global i32 0, align 4
@SP_AUTO_POLLING_DISABLE = common dso_local global i32 0, align 4
@SP_HDCP_LINK_CHECK_TIMER_REG = common dso_local global i32 0, align 4
@SP_DP_MISC_CTRL_REG = common dso_local global i32 0, align 4
@SP_EQ_TRAINING_LOOP = common dso_local global i32 0, align 4
@SP_DP_ANALOG_POWER_DOWN_REG = common dso_local global i32 0, align 4
@SP_CH0_PD = common dso_local global i32 0, align 4
@SP_DP_M_CALCULATION_CTRL_REG = common dso_local global i32 0, align 4
@SP_M_GEN_CLK_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.anx78xx*)* @anx78xx_tx_initialization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anx78xx_tx_initialization(%struct.anx78xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.anx78xx*, align 8
  %4 = alloca i32, align 4
  store %struct.anx78xx* %0, %struct.anx78xx** %3, align 8
  %5 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %6 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SP_DP_AUX_CH_CTRL2_REG, align 4
  %12 = call i32 @regmap_write(i32 %10, i32 %11, i32 48)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %243

17:                                               ; preds = %1
  %18 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %19 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SP_DP_AUX_CH_CTRL2_REG, align 4
  %25 = call i32 @anx78xx_set_bits(i32 %23, i32 %24, i32 8)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %243

30:                                               ; preds = %17
  %31 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %32 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SP_DP_HDCP_CTRL_REG, align 4
  %38 = load i32, i32* @SP_AUTO_EN, align 4
  %39 = load i32, i32* @SP_AUTO_START, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @anx78xx_clear_bits(i32 %36, i32 %37, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %243

46:                                               ; preds = %30
  %47 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %48 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @otp_key_protect, align 4
  %54 = load i32, i32* @otp_key_protect, align 4
  %55 = call i32 @ARRAY_SIZE(i32 %54)
  %56 = call i32 @regmap_multi_reg_write(i32 %52, i32 %53, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %46
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %243

61:                                               ; preds = %46
  %62 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %63 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SP_HDCP_KEY_COMMAND_REG, align 4
  %69 = load i32, i32* @SP_DISABLE_SYNC_HDCP, align 4
  %70 = call i32 @anx78xx_set_bits(i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %243

75:                                               ; preds = %61
  %76 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %77 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @I2C_IDX_TX_P2, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @SP_VID_CTRL8_REG, align 4
  %83 = load i32, i32* @SP_VID_VRES_TH, align 4
  %84 = call i32 @regmap_write(i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %75
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %243

89:                                               ; preds = %75
  %90 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %91 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @SP_HDCP_AUTO_TIMER_REG, align 4
  %97 = call i32 @regmap_write(i32 %95, i32 %96, i32 0)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %89
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %2, align 4
  br label %243

102:                                              ; preds = %89
  %103 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %104 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @SP_DP_HDCP_CTRL_REG, align 4
  %110 = load i32, i32* @SP_LINK_POLLING, align 4
  %111 = call i32 @anx78xx_set_bits(i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %102
  %115 = load i32, i32* %4, align 4
  store i32 %115, i32* %2, align 4
  br label %243

116:                                              ; preds = %102
  %117 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %118 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @SP_DP_LINK_DEBUG_CTRL_REG, align 4
  %124 = load i32, i32* @SP_M_VID_DEBUG, align 4
  %125 = call i32 @anx78xx_set_bits(i32 %122, i32 %123, i32 %124)
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %116
  %129 = load i32, i32* %4, align 4
  store i32 %129, i32* %2, align 4
  br label %243

130:                                              ; preds = %116
  %131 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %132 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @I2C_IDX_TX_P2, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @SP_ANALOG_DEBUG2_REG, align 4
  %138 = load i32, i32* @SP_POWERON_TIME_1P5MS, align 4
  %139 = call i32 @anx78xx_set_bits(i32 %136, i32 %137, i32 %138)
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %130
  %143 = load i32, i32* %4, align 4
  store i32 %143, i32* %2, align 4
  br label %243

144:                                              ; preds = %130
  %145 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %146 = call i32 @anx78xx_xtal_clk_sel(%struct.anx78xx* %145)
  store i32 %146, i32* %4, align 4
  %147 = load i32, i32* %4, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = load i32, i32* %4, align 4
  store i32 %150, i32* %2, align 4
  br label %243

151:                                              ; preds = %144
  %152 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %153 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @SP_AUX_DEFER_CTRL_REG, align 4
  %159 = load i32, i32* @SP_DEFER_CTRL_EN, align 4
  %160 = or i32 %159, 12
  %161 = call i32 @regmap_write(i32 %157, i32 %158, i32 %160)
  store i32 %161, i32* %4, align 4
  %162 = load i32, i32* %4, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %151
  %165 = load i32, i32* %4, align 4
  store i32 %165, i32* %2, align 4
  br label %243

166:                                              ; preds = %151
  %167 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %168 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @SP_DP_POLLING_CTRL_REG, align 4
  %174 = load i32, i32* @SP_AUTO_POLLING_DISABLE, align 4
  %175 = call i32 @anx78xx_set_bits(i32 %172, i32 %173, i32 %174)
  store i32 %175, i32* %4, align 4
  %176 = load i32, i32* %4, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %166
  %179 = load i32, i32* %4, align 4
  store i32 %179, i32* %2, align 4
  br label %243

180:                                              ; preds = %166
  %181 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %182 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @SP_HDCP_LINK_CHECK_TIMER_REG, align 4
  %188 = call i32 @regmap_write(i32 %186, i32 %187, i32 29)
  store i32 %188, i32* %4, align 4
  %189 = load i32, i32* %4, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %180
  %192 = load i32, i32* %4, align 4
  store i32 %192, i32* %2, align 4
  br label %243

193:                                              ; preds = %180
  %194 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %195 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @SP_DP_MISC_CTRL_REG, align 4
  %201 = load i32, i32* @SP_EQ_TRAINING_LOOP, align 4
  %202 = call i32 @anx78xx_set_bits(i32 %199, i32 %200, i32 %201)
  store i32 %202, i32* %4, align 4
  %203 = load i32, i32* %4, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %193
  %206 = load i32, i32* %4, align 4
  store i32 %206, i32* %2, align 4
  br label %243

207:                                              ; preds = %193
  %208 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %209 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @SP_DP_ANALOG_POWER_DOWN_REG, align 4
  %215 = load i32, i32* @SP_CH0_PD, align 4
  %216 = call i32 @anx78xx_set_bits(i32 %213, i32 %214, i32 %215)
  store i32 %216, i32* %4, align 4
  %217 = load i32, i32* %4, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %207
  %220 = load i32, i32* %4, align 4
  store i32 %220, i32* %2, align 4
  br label %243

221:                                              ; preds = %207
  %222 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %223 = call i32 @anx78xx_link_phy_initialization(%struct.anx78xx* %222)
  store i32 %223, i32* %4, align 4
  %224 = load i32, i32* %4, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %221
  %227 = load i32, i32* %4, align 4
  store i32 %227, i32* %2, align 4
  br label %243

228:                                              ; preds = %221
  %229 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %230 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @SP_DP_M_CALCULATION_CTRL_REG, align 4
  %236 = load i32, i32* @SP_M_GEN_CLK_SEL, align 4
  %237 = call i32 @anx78xx_set_bits(i32 %234, i32 %235, i32 %236)
  store i32 %237, i32* %4, align 4
  %238 = load i32, i32* %4, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %228
  %241 = load i32, i32* %4, align 4
  store i32 %241, i32* %2, align 4
  br label %243

242:                                              ; preds = %228
  store i32 0, i32* %2, align 4
  br label %243

243:                                              ; preds = %242, %240, %226, %219, %205, %191, %178, %164, %149, %142, %128, %114, %100, %87, %73, %59, %44, %28, %15
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @anx78xx_set_bits(i32, i32, i32) #1

declare dso_local i32 @anx78xx_clear_bits(i32, i32, i32) #1

declare dso_local i32 @regmap_multi_reg_write(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @anx78xx_xtal_clk_sel(%struct.anx78xx*) #1

declare dso_local i32 @anx78xx_link_phy_initialization(%struct.anx78xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
