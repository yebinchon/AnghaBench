; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_main_link_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_main_link_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_data = type { i32, %struct.device*, %struct.TYPE_3__, i32, %struct.drm_dp_aux }
%struct.device = type { i32 }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.drm_dp_aux = type { i32 }

@DP_LINK_STATUS_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"link enable\0A\00", align 1
@DP0CTL = common dso_local global i32 0, align 4
@DP_EN = common dso_local global i32 0, align 4
@DP0_SRCCTRL = common dso_local global i32 0, align 4
@DP1_SRCCTRL = common dso_local global i32 0, align 4
@DP0_SRCCTRL_SSCG = common dso_local global i32 0, align 4
@DP0_SRCCTRL_BW27 = common dso_local global i32 0, align 4
@BGREN = common dso_local global i32 0, align 4
@PWR_SW_EN = common dso_local global i32 0, align 4
@PHY_A0_EN = common dso_local global i32 0, align 4
@PHY_M0_EN = common dso_local global i32 0, align 4
@PHY_2LANE = common dso_local global i32 0, align 4
@DP_PHY_CTRL = common dso_local global i32 0, align 4
@DP0_PLLCTRL = common dso_local global i32 0, align 4
@DP1_PLLCTRL = common dso_local global i32 0, align 4
@DP_PHY_RST = common dso_local global i32 0, align 4
@PHY_M1_RST = common dso_local global i32 0, align 4
@PHY_M0_RST = common dso_local global i32 0, align 4
@PHY_RDY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"timeout waiting for phy become ready\00", align 1
@DP0_MISC = common dso_local global i32 0, align 4
@BPC_8 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Trying to set display to ASSR: %d\0A\00", align 1
@DP_EDP_CONFIGURATION_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [71 x i8] c"Failed to switch display ASSR to %d, falling back to unscrambled mode\0A\00", align 1
@DP_SPREAD_AMP_0_5 = common dso_local global i32 0, align 4
@DP_SET_ANSI_8B10B = common dso_local global i32 0, align 4
@DP_DOWNSPREAD_CTRL = common dso_local global i32 0, align 4
@DP_TRAIN_VOLTAGE_SWING_LEVEL_0 = common dso_local global i32 0, align 4
@DP_TRAIN_PRE_EMPH_LEVEL_0 = common dso_local global i32 0, align 4
@DP_TRAINING_LANE0_SET = common dso_local global i32 0, align 4
@DP0_SNKLTCTRL = common dso_local global i32 0, align 4
@DP_LINK_SCRAMBLING_DISABLE = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_1 = common dso_local global i32 0, align 4
@DP0_LTLOOPCTRL = common dso_local global i32 0, align 4
@DP0_SRCCTRL_SCRMBLDIS = common dso_local global i32 0, align 4
@DP0_SRCCTRL_AUTOCORRECT = common dso_local global i32 0, align 4
@DP0_SRCCTRL_TP1 = common dso_local global i32 0, align 4
@DP_LINK_CAP_ENHANCED_FRAMING = common dso_local global i32 0, align 4
@EF_EN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Link training phase 1 failed: %s\0A\00", align 1
@training_pattern1_errors = common dso_local global i32* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_2 = common dso_local global i32 0, align 4
@DP0_SRCCTRL_TP2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Link training phase 2 failed: %s\0A\00", align 1
@training_pattern2_errors = common dso_local global i32* null, align 8
@DP_TRAINING_PATTERN_SET = common dso_local global i32 0, align 4
@DP_CHANNEL_EQ_BITS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"Lane 0 failed: %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Lane 1 failed: %x\0A\00", align 1
@DP_INTERLANE_ALIGN_DONE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"Interlane align failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"0x0202 LANE0_1_STATUS:            0x%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"0x0203 LANE2_3_STATUS             0x%02x\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"0x0204 LANE_ALIGN_STATUS_UPDATED: 0x%02x\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"0x0205 SINK_STATUS:               0x%02x\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"0x0206 ADJUST_REQUEST_LANE0_1:    0x%02x\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"0x0207 ADJUST_REQUEST_LANE2_3:    0x%02x\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Failed to read DPCD: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"Failed to write DPCD: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tc_data*)* @tc_main_link_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_main_link_enable(%struct.tc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tc_data*, align 8
  %4 = alloca %struct.drm_dp_aux*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.tc_data* %0, %struct.tc_data** %3, align 8
  %12 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %13 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %12, i32 0, i32 4
  store %struct.drm_dp_aux* %13, %struct.drm_dp_aux** %4, align 8
  %14 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %15 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %14, i32 0, i32 1
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %5, align 8
  %17 = load i32, i32* @DP_LINK_STATUS_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %22 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %21, i32 0, i32 1
  %23 = load %struct.device*, %struct.device** %22, align 8
  %24 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %26 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @DP0CTL, align 4
  %29 = call i32 @regmap_read(i32 %27, i32 %28, i32* %7)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %570

34:                                               ; preds = %1
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @DP_EN, align 4
  %37 = and i32 %35, %36
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %42 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DP0CTL, align 4
  %45 = call i32 @regmap_write(i32 %43, i32 %44, i32 0)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %570

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %34
  %52 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %53 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @DP0_SRCCTRL, align 4
  %56 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %57 = call i32 @tc_srcctrl(%struct.tc_data* %56)
  %58 = call i32 @regmap_write(i32 %54, i32 %55, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %570

63:                                               ; preds = %51
  %64 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %65 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @DP1_SRCCTRL, align 4
  %68 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %69 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i32, i32* @DP0_SRCCTRL_SSCG, align 4
  br label %76

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 0, %75 ]
  %78 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %79 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 162000
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32, i32* @DP0_SRCCTRL_BW27, align 4
  br label %87

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %84
  %88 = phi i32 [ %85, %84 ], [ 0, %86 ]
  %89 = or i32 %77, %88
  %90 = call i32 @regmap_write(i32 %66, i32 %67, i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %570

95:                                               ; preds = %87
  %96 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %97 = call i32 @tc_set_syspllparam(%struct.tc_data* %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %570

102:                                              ; preds = %95
  %103 = load i32, i32* @BGREN, align 4
  %104 = load i32, i32* @PWR_SW_EN, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @PHY_A0_EN, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @PHY_M0_EN, align 4
  %109 = or i32 %107, %108
  store i32 %109, i32* %6, align 4
  %110 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %111 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %116, label %120

116:                                              ; preds = %102
  %117 = load i32, i32* @PHY_2LANE, align 4
  %118 = load i32, i32* %6, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %116, %102
  %121 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %122 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @DP_PHY_CTRL, align 4
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @regmap_write(i32 %123, i32 %124, i32 %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %120
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %570

131:                                              ; preds = %120
  %132 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %133 = load i32, i32* @DP0_PLLCTRL, align 4
  %134 = call i32 @tc_pllupdate(%struct.tc_data* %132, i32 %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %570

139:                                              ; preds = %131
  %140 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %141 = load i32, i32* @DP1_PLLCTRL, align 4
  %142 = call i32 @tc_pllupdate(%struct.tc_data* %140, i32 %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %570

147:                                              ; preds = %139
  %148 = load i32, i32* @DP_PHY_RST, align 4
  %149 = load i32, i32* @PHY_M1_RST, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @PHY_M0_RST, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* %6, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %6, align 4
  %155 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %156 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @DP_PHY_CTRL, align 4
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @regmap_write(i32 %157, i32 %158, i32 %159)
  store i32 %160, i32* %8, align 4
  %161 = call i32 @usleep_range(i32 100, i32 200)
  %162 = load i32, i32* @DP_PHY_RST, align 4
  %163 = load i32, i32* @PHY_M1_RST, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @PHY_M0_RST, align 4
  %166 = or i32 %164, %165
  %167 = xor i32 %166, -1
  %168 = load i32, i32* %6, align 4
  %169 = and i32 %168, %167
  store i32 %169, i32* %6, align 4
  %170 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %171 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @DP_PHY_CTRL, align 4
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @regmap_write(i32 %172, i32 %173, i32 %174)
  store i32 %175, i32* %8, align 4
  %176 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %177 = load i32, i32* @DP_PHY_CTRL, align 4
  %178 = load i32, i32* @PHY_RDY, align 4
  %179 = load i32, i32* @PHY_RDY, align 4
  %180 = call i32 @tc_poll_timeout(%struct.tc_data* %176, i32 %177, i32 %178, i32 %179, i32 1, i32 1000)
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %147
  %184 = load %struct.device*, %struct.device** %5, align 8
  %185 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %184, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %186 = load i32, i32* %8, align 4
  store i32 %186, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %570

187:                                              ; preds = %147
  %188 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %189 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @DP0_MISC, align 4
  %192 = load i32, i32* @BPC_8, align 4
  %193 = load i32, i32* @BPC_8, align 4
  %194 = call i32 @regmap_update_bits(i32 %190, i32 %191, i32 %192, i32 %193)
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %187
  %198 = load i32, i32* %8, align 4
  store i32 %198, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %570

199:                                              ; preds = %187
  %200 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %201 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %204 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %202, %206
  br i1 %207, label %208, label %250

208:                                              ; preds = %199
  %209 = load %struct.device*, %struct.device** %5, align 8
  %210 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %211 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %209, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %212)
  %214 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %215 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %216, i32* %217, align 16
  %218 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %219 = load i32, i32* @DP_EDP_CONFIGURATION_SET, align 4
  %220 = getelementptr inbounds i32, i32* %20, i64 0
  %221 = load i32, i32* %220, align 16
  %222 = call i32 @drm_dp_dpcd_writeb(%struct.drm_dp_aux* %218, i32 %219, i32 %221)
  store i32 %222, i32* %8, align 4
  %223 = load i32, i32* %8, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %208
  br label %556

226:                                              ; preds = %208
  %227 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %228 = load i32, i32* @DP_EDP_CONFIGURATION_SET, align 4
  %229 = call i32 @drm_dp_dpcd_readb(%struct.drm_dp_aux* %227, i32 %228, i32* %20)
  store i32 %229, i32* %8, align 4
  %230 = load i32, i32* %8, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %226
  br label %556

233:                                              ; preds = %226
  %234 = getelementptr inbounds i32, i32* %20, i64 0
  %235 = load i32, i32* %234, align 16
  %236 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %237 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %235, %238
  br i1 %239, label %240, label %249

240:                                              ; preds = %233
  %241 = load %struct.device*, %struct.device** %5, align 8
  %242 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %243 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %241, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %244)
  %246 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %247 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 1
  store i32 1, i32* %248, align 4
  br label %249

249:                                              ; preds = %240, %233
  br label %250

250:                                              ; preds = %249, %199
  %251 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %252 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %253 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 2
  %255 = call i32 @drm_dp_link_configure(%struct.drm_dp_aux* %251, %struct.TYPE_4__* %254)
  store i32 %255, i32* %8, align 4
  %256 = load i32, i32* %8, align 4
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %250
  br label %563

259:                                              ; preds = %250
  %260 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %261 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 3
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %259
  %266 = load i32, i32* @DP_SPREAD_AMP_0_5, align 4
  br label %268

267:                                              ; preds = %259
  br label %268

268:                                              ; preds = %267, %265
  %269 = phi i32 [ %266, %265 ], [ 0, %267 ]
  %270 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %269, i32* %270, align 16
  %271 = load i32, i32* @DP_SET_ANSI_8B10B, align 4
  %272 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %271, i32* %272, align 4
  %273 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %274 = load i32, i32* @DP_DOWNSPREAD_CTRL, align 4
  %275 = call i32 @drm_dp_dpcd_write(%struct.drm_dp_aux* %273, i32 %274, i32* %20, i32 2)
  store i32 %275, i32* %8, align 4
  %276 = load i32, i32* %8, align 4
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %268
  br label %563

279:                                              ; preds = %268
  %280 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_LEVEL_0, align 4
  %281 = load i32, i32* @DP_TRAIN_PRE_EMPH_LEVEL_0, align 4
  %282 = or i32 %280, %281
  %283 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %282, i32* %283, align 4
  %284 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %282, i32* %284, align 16
  %285 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %286 = load i32, i32* @DP_TRAINING_LANE0_SET, align 4
  %287 = call i32 @drm_dp_dpcd_write(%struct.drm_dp_aux* %285, i32 %286, i32* %20, i32 2)
  store i32 %287, i32* %8, align 4
  %288 = load i32, i32* %8, align 4
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %279
  br label %563

291:                                              ; preds = %279
  %292 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %293 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @DP0_SNKLTCTRL, align 4
  %296 = load i32, i32* @DP_LINK_SCRAMBLING_DISABLE, align 4
  %297 = load i32, i32* @DP_TRAINING_PATTERN_1, align 4
  %298 = or i32 %296, %297
  %299 = call i32 @regmap_write(i32 %294, i32 %295, i32 %298)
  store i32 %299, i32* %8, align 4
  %300 = load i32, i32* %8, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %291
  %303 = load i32, i32* %8, align 4
  store i32 %303, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %570

304:                                              ; preds = %291
  %305 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %306 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @DP0_LTLOOPCTRL, align 4
  %309 = call i32 @regmap_write(i32 %307, i32 %308, i32 -16777203)
  store i32 %309, i32* %8, align 4
  %310 = load i32, i32* %8, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %304
  %313 = load i32, i32* %8, align 4
  store i32 %313, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %570

314:                                              ; preds = %304
  %315 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %316 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @DP0_SRCCTRL, align 4
  %319 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %320 = call i32 @tc_srcctrl(%struct.tc_data* %319)
  %321 = load i32, i32* @DP0_SRCCTRL_SCRMBLDIS, align 4
  %322 = or i32 %320, %321
  %323 = load i32, i32* @DP0_SRCCTRL_AUTOCORRECT, align 4
  %324 = or i32 %322, %323
  %325 = load i32, i32* @DP0_SRCCTRL_TP1, align 4
  %326 = or i32 %324, %325
  %327 = call i32 @regmap_write(i32 %317, i32 %318, i32 %326)
  store i32 %327, i32* %8, align 4
  %328 = load i32, i32* %8, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %314
  %331 = load i32, i32* %8, align 4
  store i32 %331, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %570

332:                                              ; preds = %314
  %333 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %334 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @DP0CTL, align 4
  %337 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %338 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %337, i32 0, i32 2
  %339 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %338, i32 0, i32 2
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* @DP_LINK_CAP_ENHANCED_FRAMING, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %347

345:                                              ; preds = %332
  %346 = load i32, i32* @EF_EN, align 4
  br label %348

347:                                              ; preds = %332
  br label %348

348:                                              ; preds = %347, %345
  %349 = phi i32 [ %346, %345 ], [ 0, %347 ]
  %350 = load i32, i32* @DP_EN, align 4
  %351 = or i32 %349, %350
  %352 = call i32 @regmap_write(i32 %335, i32 %336, i32 %351)
  store i32 %352, i32* %8, align 4
  %353 = load i32, i32* %8, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %348
  %356 = load i32, i32* %8, align 4
  store i32 %356, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %570

357:                                              ; preds = %348
  %358 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %359 = call i32 @tc_wait_link_training(%struct.tc_data* %358)
  store i32 %359, i32* %8, align 4
  %360 = load i32, i32* %8, align 4
  %361 = icmp slt i32 %360, 0
  br i1 %361, label %362, label %364

362:                                              ; preds = %357
  %363 = load i32, i32* %8, align 4
  store i32 %363, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %570

364:                                              ; preds = %357
  %365 = load i32, i32* %8, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %379

367:                                              ; preds = %364
  %368 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %369 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %368, i32 0, i32 1
  %370 = load %struct.device*, %struct.device** %369, align 8
  %371 = load i32*, i32** @training_pattern1_errors, align 8
  %372 = load i32, i32* %8, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %371, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %370, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %375)
  %377 = load i32, i32* @ENODEV, align 4
  %378 = sub nsw i32 0, %377
  store i32 %378, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %570

379:                                              ; preds = %364
  %380 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %381 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %380, i32 0, i32 3
  %382 = load i32, i32* %381, align 8
  %383 = load i32, i32* @DP0_SNKLTCTRL, align 4
  %384 = load i32, i32* @DP_LINK_SCRAMBLING_DISABLE, align 4
  %385 = load i32, i32* @DP_TRAINING_PATTERN_2, align 4
  %386 = or i32 %384, %385
  %387 = call i32 @regmap_write(i32 %382, i32 %383, i32 %386)
  store i32 %387, i32* %8, align 4
  %388 = load i32, i32* %8, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %392

390:                                              ; preds = %379
  %391 = load i32, i32* %8, align 4
  store i32 %391, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %570

392:                                              ; preds = %379
  %393 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %394 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %393, i32 0, i32 3
  %395 = load i32, i32* %394, align 8
  %396 = load i32, i32* @DP0_SRCCTRL, align 4
  %397 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %398 = call i32 @tc_srcctrl(%struct.tc_data* %397)
  %399 = load i32, i32* @DP0_SRCCTRL_SCRMBLDIS, align 4
  %400 = or i32 %398, %399
  %401 = load i32, i32* @DP0_SRCCTRL_AUTOCORRECT, align 4
  %402 = or i32 %400, %401
  %403 = load i32, i32* @DP0_SRCCTRL_TP2, align 4
  %404 = or i32 %402, %403
  %405 = call i32 @regmap_write(i32 %395, i32 %396, i32 %404)
  store i32 %405, i32* %8, align 4
  %406 = load i32, i32* %8, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %410

408:                                              ; preds = %392
  %409 = load i32, i32* %8, align 4
  store i32 %409, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %570

410:                                              ; preds = %392
  %411 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %412 = call i32 @tc_wait_link_training(%struct.tc_data* %411)
  store i32 %412, i32* %8, align 4
  %413 = load i32, i32* %8, align 4
  %414 = icmp slt i32 %413, 0
  br i1 %414, label %415, label %417

415:                                              ; preds = %410
  %416 = load i32, i32* %8, align 4
  store i32 %416, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %570

417:                                              ; preds = %410
  %418 = load i32, i32* %8, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %432

420:                                              ; preds = %417
  %421 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %422 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %421, i32 0, i32 1
  %423 = load %struct.device*, %struct.device** %422, align 8
  %424 = load i32*, i32** @training_pattern2_errors, align 8
  %425 = load i32, i32* %8, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %424, i64 %426
  %428 = load i32, i32* %427, align 4
  %429 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %423, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %428)
  %430 = load i32, i32* @ENODEV, align 4
  %431 = sub nsw i32 0, %430
  store i32 %431, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %570

432:                                              ; preds = %417
  %433 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %434 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %433, i32 0, i32 3
  %435 = load i32, i32* %434, align 8
  %436 = load i32, i32* @DP0_SRCCTRL, align 4
  %437 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %438 = call i32 @tc_srcctrl(%struct.tc_data* %437)
  %439 = load i32, i32* @DP0_SRCCTRL_AUTOCORRECT, align 4
  %440 = or i32 %438, %439
  %441 = call i32 @regmap_write(i32 %435, i32 %436, i32 %440)
  store i32 %441, i32* %8, align 4
  %442 = load i32, i32* %8, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %446

444:                                              ; preds = %432
  %445 = load i32, i32* %8, align 4
  store i32 %445, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %570

446:                                              ; preds = %432
  %447 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %448 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %447, i32 0, i32 2
  %449 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %454

452:                                              ; preds = %446
  %453 = load i32, i32* @DP_LINK_SCRAMBLING_DISABLE, align 4
  br label %455

454:                                              ; preds = %446
  br label %455

455:                                              ; preds = %454, %452
  %456 = phi i32 [ %453, %452 ], [ 0, %454 ]
  %457 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %456, i32* %457, align 16
  %458 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %459 = load i32, i32* @DP_TRAINING_PATTERN_SET, align 4
  %460 = getelementptr inbounds i32, i32* %20, i64 0
  %461 = load i32, i32* %460, align 16
  %462 = call i32 @drm_dp_dpcd_writeb(%struct.drm_dp_aux* %458, i32 %459, i32 %461)
  store i32 %462, i32* %8, align 4
  %463 = load i32, i32* %8, align 4
  %464 = icmp slt i32 %463, 0
  br i1 %464, label %465, label %466

465:                                              ; preds = %455
  br label %563

466:                                              ; preds = %455
  %467 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %468 = call i32 @drm_dp_dpcd_read_link_status(%struct.drm_dp_aux* %467, i32* %20)
  store i32 %468, i32* %8, align 4
  %469 = load i32, i32* %8, align 4
  %470 = icmp slt i32 %469, 0
  br i1 %470, label %471, label %472

471:                                              ; preds = %466
  br label %556

472:                                              ; preds = %466
  store i32 0, i32* %8, align 4
  %473 = getelementptr inbounds i32, i32* %20, i64 0
  %474 = load i32, i32* %473, align 16
  %475 = load i32, i32* @DP_CHANNEL_EQ_BITS, align 4
  %476 = and i32 %474, %475
  store i32 %476, i32* %7, align 4
  %477 = load i32, i32* %7, align 4
  %478 = load i32, i32* @DP_CHANNEL_EQ_BITS, align 4
  %479 = icmp ne i32 %477, %478
  br i1 %479, label %480, label %488

480:                                              ; preds = %472
  %481 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %482 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %481, i32 0, i32 1
  %483 = load %struct.device*, %struct.device** %482, align 8
  %484 = load i32, i32* %7, align 4
  %485 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %483, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %484)
  %486 = load i32, i32* @ENODEV, align 4
  %487 = sub nsw i32 0, %486
  store i32 %487, i32* %8, align 4
  br label %488

488:                                              ; preds = %480, %472
  %489 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %490 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %489, i32 0, i32 2
  %491 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %490, i32 0, i32 2
  %492 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = icmp eq i32 %493, 2
  br i1 %494, label %495, label %526

495:                                              ; preds = %488
  %496 = getelementptr inbounds i32, i32* %20, i64 0
  %497 = load i32, i32* %496, align 16
  %498 = ashr i32 %497, 4
  %499 = load i32, i32* @DP_CHANNEL_EQ_BITS, align 4
  %500 = and i32 %498, %499
  store i32 %500, i32* %7, align 4
  %501 = load i32, i32* %7, align 4
  %502 = load i32, i32* @DP_CHANNEL_EQ_BITS, align 4
  %503 = icmp ne i32 %501, %502
  br i1 %503, label %504, label %512

504:                                              ; preds = %495
  %505 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %506 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %505, i32 0, i32 1
  %507 = load %struct.device*, %struct.device** %506, align 8
  %508 = load i32, i32* %7, align 4
  %509 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %507, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %508)
  %510 = load i32, i32* @ENODEV, align 4
  %511 = sub nsw i32 0, %510
  store i32 %511, i32* %8, align 4
  br label %512

512:                                              ; preds = %504, %495
  %513 = getelementptr inbounds i32, i32* %20, i64 2
  %514 = load i32, i32* %513, align 8
  %515 = load i32, i32* @DP_INTERLANE_ALIGN_DONE, align 4
  %516 = and i32 %514, %515
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %525, label %518

518:                                              ; preds = %512
  %519 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %520 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %519, i32 0, i32 1
  %521 = load %struct.device*, %struct.device** %520, align 8
  %522 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %521, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %523 = load i32, i32* @ENODEV, align 4
  %524 = sub nsw i32 0, %523
  store i32 %524, i32* %8, align 4
  br label %525

525:                                              ; preds = %518, %512
  br label %526

526:                                              ; preds = %525, %488
  %527 = load i32, i32* %8, align 4
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %555

529:                                              ; preds = %526
  %530 = load %struct.device*, %struct.device** %5, align 8
  %531 = getelementptr inbounds i32, i32* %20, i64 0
  %532 = load i32, i32* %531, align 16
  %533 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %530, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %532)
  %534 = load %struct.device*, %struct.device** %5, align 8
  %535 = getelementptr inbounds i32, i32* %20, i64 1
  %536 = load i32, i32* %535, align 4
  %537 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %534, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i32 %536)
  %538 = load %struct.device*, %struct.device** %5, align 8
  %539 = getelementptr inbounds i32, i32* %20, i64 2
  %540 = load i32, i32* %539, align 8
  %541 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %538, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 %540)
  %542 = load %struct.device*, %struct.device** %5, align 8
  %543 = getelementptr inbounds i32, i32* %20, i64 3
  %544 = load i32, i32* %543, align 4
  %545 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %542, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i32 %544)
  %546 = load %struct.device*, %struct.device** %5, align 8
  %547 = getelementptr inbounds i32, i32* %20, i64 4
  %548 = load i32, i32* %547, align 16
  %549 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %546, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 %548)
  %550 = load %struct.device*, %struct.device** %5, align 8
  %551 = getelementptr inbounds i32, i32* %20, i64 5
  %552 = load i32, i32* %551, align 4
  %553 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %550, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i32 %552)
  %554 = load i32, i32* %8, align 4
  store i32 %554, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %570

555:                                              ; preds = %526
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %570

556:                                              ; preds = %471, %232, %225
  %557 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %558 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %557, i32 0, i32 1
  %559 = load %struct.device*, %struct.device** %558, align 8
  %560 = load i32, i32* %8, align 4
  %561 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %559, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 %560)
  %562 = load i32, i32* %8, align 4
  store i32 %562, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %570

563:                                              ; preds = %465, %290, %278, %258
  %564 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %565 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %564, i32 0, i32 1
  %566 = load %struct.device*, %struct.device** %565, align 8
  %567 = load i32, i32* %8, align 4
  %568 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %566, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i32 %567)
  %569 = load i32, i32* %8, align 4
  store i32 %569, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %570

570:                                              ; preds = %563, %556, %555, %529, %444, %420, %415, %408, %390, %367, %362, %355, %330, %312, %302, %197, %183, %145, %137, %129, %100, %93, %61, %48, %32
  %571 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %571)
  %572 = load i32, i32* %2, align 4
  ret i32 %572
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #2

declare dso_local i32 @regmap_read(i32, i32, i32*) #2

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i32 @regmap_write(i32, i32, i32) #2

declare dso_local i32 @tc_srcctrl(%struct.tc_data*) #2

declare dso_local i32 @tc_set_syspllparam(%struct.tc_data*) #2

declare dso_local i32 @tc_pllupdate(%struct.tc_data*, i32) #2

declare dso_local i32 @usleep_range(i32, i32) #2

declare dso_local i32 @tc_poll_timeout(%struct.tc_data*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #2

declare dso_local i32 @drm_dp_dpcd_writeb(%struct.drm_dp_aux*, i32, i32) #2

declare dso_local i32 @drm_dp_dpcd_readb(%struct.drm_dp_aux*, i32, i32*) #2

declare dso_local i32 @drm_dp_link_configure(%struct.drm_dp_aux*, %struct.TYPE_4__*) #2

declare dso_local i32 @drm_dp_dpcd_write(%struct.drm_dp_aux*, i32, i32*, i32) #2

declare dso_local i32 @tc_wait_link_training(%struct.tc_data*) #2

declare dso_local i32 @drm_dp_dpcd_read_link_status(%struct.drm_dp_aux*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
