; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_dp_link_training.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_dp_link_training.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anx78xx = type { i32*, i32*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@I2C_IDX_RX_P0 = common dso_local global i64 0, align 8
@SP_HDMI_MUTE_CTRL_REG = common dso_local global i32 0, align 4
@I2C_IDX_TX_P2 = common dso_local global i64 0, align 8
@SP_POWERDOWN_CTRL_REG = common dso_local global i64 0, align 8
@SP_TOTAL_PD = common dso_local global i32 0, align 4
@DP_MAX_LINK_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"DP bandwidth (%#02x) not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SP_VID_CTRL1_REG = common dso_local global i64 0, align 8
@SP_VIDEO_MUTE = common dso_local global i32 0, align 4
@SP_VIDEO_EN = common dso_local global i32 0, align 4
@DP_DPCD_REV = common dso_local global i32 0, align 4
@DP_RECEIVER_CAP_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to read DPCD: %d\0A\00", align 1
@I2C_IDX_TX_P0 = common dso_local global i64 0, align 8
@SP_DP_ANALOG_POWER_DOWN_REG = common dso_local global i64 0, align 8
@SP_CH0_PD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to probe link capabilities: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to power up DisplayPort link: %d\0A\00", align 1
@SP_DP_DOWNSPREAD_CTRL1_REG = common dso_local global i32 0, align 4
@DP_MAX_DOWNSPREAD = common dso_local global i64 0, align 8
@DP_MAX_DOWNSPREAD_0_5 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Enable downspread on the sink\0A\00", align 1
@DP_DOWNSPREAD_CTRL = common dso_local global i32 0, align 4
@DP_SPREAD_AMP_0_5 = common dso_local global i32 0, align 4
@SP_DP_SYSTEM_CTRL_BASE = common dso_local global i64 0, align 8
@SP_ENHANCED_MODE = common dso_local global i32 0, align 4
@SP_DP_MAIN_LINK_BW_SET_REG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Failed to configure DisplayPort link: %d\0A\00", align 1
@SP_DP_LT_CTRL_REG = common dso_local global i32 0, align 4
@SP_LT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.anx78xx*)* @anx78xx_dp_link_training to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anx78xx_dp_link_training(%struct.anx78xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.anx78xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.anx78xx* %0, %struct.anx78xx** %3, align 8
  %7 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %8 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @I2C_IDX_RX_P0, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SP_HDMI_MUTE_CTRL_REG, align 4
  %14 = call i32 @regmap_write(i32 %12, i32 %13, i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %267

19:                                               ; preds = %1
  %20 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %21 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @I2C_IDX_TX_P2, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* @SP_POWERDOWN_CTRL_REG, align 8
  %27 = load i32, i32* @SP_TOTAL_PD, align 4
  %28 = call i32 @anx78xx_clear_bits(i32 %25, i64 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %267

33:                                               ; preds = %19
  %34 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %35 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %34, i32 0, i32 3
  %36 = load i32, i32* @DP_MAX_LINK_RATE, align 4
  %37 = call i32 @drm_dp_dpcd_readb(i32* %35, i32 %36, i32* %4)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %267

42:                                               ; preds = %33
  %43 = load i32, i32* %4, align 4
  switch i32 %43, label %45 [
    i32 130, label %44
    i32 129, label %44
    i32 128, label %44
  ]

44:                                               ; preds = %42, %42, %42
  br label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %267

50:                                               ; preds = %44
  %51 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %52 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @I2C_IDX_TX_P2, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* @SP_VID_CTRL1_REG, align 8
  %58 = load i32, i32* @SP_VIDEO_MUTE, align 4
  %59 = call i32 @anx78xx_set_bits(i32 %56, i64 %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %267

64:                                               ; preds = %50
  %65 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %66 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @I2C_IDX_TX_P2, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* @SP_VID_CTRL1_REG, align 8
  %72 = load i32, i32* @SP_VIDEO_EN, align 4
  %73 = call i32 @anx78xx_clear_bits(i32 %70, i64 %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %64
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %267

78:                                               ; preds = %64
  %79 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %80 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %79, i32 0, i32 3
  %81 = load i32, i32* @DP_DPCD_REV, align 4
  %82 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %83 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %82, i32 0, i32 0
  %84 = load i32, i32* @DP_RECEIVER_CAP_SIZE, align 4
  %85 = call i32 @drm_dp_dpcd_read(i32* %80, i32 %81, i32** %83, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %2, align 4
  br label %267

92:                                               ; preds = %78
  %93 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %94 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* @SP_DP_ANALOG_POWER_DOWN_REG, align 8
  %100 = load i32, i32* @SP_CH0_PD, align 4
  %101 = call i32 @anx78xx_clear_bits(i32 %98, i64 %99, i32 %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %92
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %2, align 4
  br label %267

106:                                              ; preds = %92
  %107 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %108 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %107, i32 0, i32 3
  %109 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %110 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %109, i32 0, i32 2
  %111 = call i32 @drm_dp_link_probe(i32* %108, %struct.TYPE_4__* %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %106
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %2, align 4
  br label %267

118:                                              ; preds = %106
  %119 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %120 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %119, i32 0, i32 3
  %121 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %122 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %121, i32 0, i32 2
  %123 = call i32 @drm_dp_link_power_up(i32* %120, %struct.TYPE_4__* %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %118
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %2, align 4
  br label %267

130:                                              ; preds = %118
  %131 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %132 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @SP_DP_DOWNSPREAD_CTRL1_REG, align 4
  %138 = call i32 @regmap_write(i32 %136, i32 %137, i32 0)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %130
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* %2, align 4
  br label %267

143:                                              ; preds = %130
  %144 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %145 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* @DP_MAX_DOWNSPREAD, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @DP_MAX_DOWNSPREAD_0_5, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %178

153:                                              ; preds = %143
  %154 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %155 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %156 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @SP_DP_DOWNSPREAD_CTRL1_REG, align 4
  %162 = call i32 @regmap_write(i32 %160, i32 %161, i32 8)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %153
  %166 = load i32, i32* %6, align 4
  store i32 %166, i32* %2, align 4
  br label %267

167:                                              ; preds = %153
  %168 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %169 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %168, i32 0, i32 3
  %170 = load i32, i32* @DP_DOWNSPREAD_CTRL, align 4
  %171 = load i32, i32* @DP_SPREAD_AMP_0_5, align 4
  %172 = call i32 @drm_dp_dpcd_writeb(i32* %169, i32 %170, i32 %171)
  store i32 %172, i32* %6, align 4
  %173 = load i32, i32* %6, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %167
  %176 = load i32, i32* %6, align 4
  store i32 %176, i32* %2, align 4
  br label %267

177:                                              ; preds = %167
  br label %188

178:                                              ; preds = %143
  %179 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %180 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %179, i32 0, i32 3
  %181 = load i32, i32* @DP_DOWNSPREAD_CTRL, align 4
  %182 = call i32 @drm_dp_dpcd_writeb(i32* %180, i32 %181, i32 0)
  store i32 %182, i32* %6, align 4
  %183 = load i32, i32* %6, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %178
  %186 = load i32, i32* %6, align 4
  store i32 %186, i32* %2, align 4
  br label %267

187:                                              ; preds = %178
  br label %188

188:                                              ; preds = %187, %177
  %189 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %190 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = call i64 @drm_dp_enhanced_frame_cap(i32* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %205

194:                                              ; preds = %188
  %195 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %196 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load i64, i64* @SP_DP_SYSTEM_CTRL_BASE, align 8
  %202 = add nsw i64 %201, 4
  %203 = load i32, i32* @SP_ENHANCED_MODE, align 4
  %204 = call i32 @anx78xx_set_bits(i32 %200, i64 %202, i32 %203)
  store i32 %204, i32* %6, align 4
  br label %216

205:                                              ; preds = %188
  %206 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %207 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load i64, i64* @SP_DP_SYSTEM_CTRL_BASE, align 8
  %213 = add nsw i64 %212, 4
  %214 = load i32, i32* @SP_ENHANCED_MODE, align 4
  %215 = call i32 @anx78xx_clear_bits(i32 %211, i64 %213, i32 %214)
  store i32 %215, i32* %6, align 4
  br label %216

216:                                              ; preds = %205, %194
  %217 = load i32, i32* %6, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = load i32, i32* %6, align 4
  store i32 %220, i32* %2, align 4
  br label %267

221:                                              ; preds = %216
  %222 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %223 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @drm_dp_link_rate_to_bw_code(i32 %225)
  store i32 %226, i32* %5, align 4
  %227 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %228 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @SP_DP_MAIN_LINK_BW_SET_REG, align 4
  %234 = load i32, i32* %5, align 4
  %235 = call i32 @regmap_write(i32 %232, i32 %233, i32 %234)
  store i32 %235, i32* %6, align 4
  %236 = load i32, i32* %6, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %221
  %239 = load i32, i32* %6, align 4
  store i32 %239, i32* %2, align 4
  br label %267

240:                                              ; preds = %221
  %241 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %242 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %241, i32 0, i32 3
  %243 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %244 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %243, i32 0, i32 2
  %245 = call i32 @drm_dp_link_configure(i32* %242, %struct.TYPE_4__* %244)
  store i32 %245, i32* %6, align 4
  %246 = load i32, i32* %6, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %240
  %249 = load i32, i32* %6, align 4
  %250 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %249)
  %251 = load i32, i32* %6, align 4
  store i32 %251, i32* %2, align 4
  br label %267

252:                                              ; preds = %240
  %253 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %254 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = load i64, i64* @I2C_IDX_TX_P0, align 8
  %257 = getelementptr inbounds i32, i32* %255, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @SP_DP_LT_CTRL_REG, align 4
  %260 = load i32, i32* @SP_LT_EN, align 4
  %261 = call i32 @regmap_write(i32 %258, i32 %259, i32 %260)
  store i32 %261, i32* %6, align 4
  %262 = load i32, i32* %6, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %252
  %265 = load i32, i32* %6, align 4
  store i32 %265, i32* %2, align 4
  br label %267

266:                                              ; preds = %252
  store i32 0, i32* %2, align 4
  br label %267

267:                                              ; preds = %266, %264, %248, %238, %219, %185, %175, %165, %141, %126, %114, %104, %88, %76, %62, %45, %40, %31, %17
  %268 = load i32, i32* %2, align 4
  ret i32 %268
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @anx78xx_clear_bits(i32, i64, i32) #1

declare dso_local i32 @drm_dp_dpcd_readb(i32*, i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @anx78xx_set_bits(i32, i64, i32) #1

declare dso_local i32 @drm_dp_dpcd_read(i32*, i32, i32**, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @drm_dp_link_probe(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @drm_dp_link_power_up(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @drm_dp_dpcd_writeb(i32*, i32, i32) #1

declare dso_local i64 @drm_dp_enhanced_frame_cap(i32*) #1

declare dso_local i32 @drm_dp_link_rate_to_bw_code(i32) #1

declare dso_local i32 @drm_dp_link_configure(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
