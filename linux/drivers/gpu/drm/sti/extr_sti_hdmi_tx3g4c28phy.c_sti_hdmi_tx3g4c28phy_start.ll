; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi_tx3g4c28phy.c_sti_hdmi_tx3g4c28phy_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi_tx3g4c28phy.c_sti_hdmi_tx3g4c28phy_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64* }
%struct.sti_hdmi = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"ckpxpll = %dHz\0A\00", align 1
@NB_PLL_MODE = common dso_local global i32 0, align 4
@plldividers = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"input TMDS clock speed (%d) not supported\0A\00", align 1
@PLL_CFG_NDIV_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"output TMDS clock (%d) out of range\0A\00", align 1
@PLL_CFG_IDF_SHIFT = common dso_local global i64 0, align 8
@PLL_CFG_ODF_SHIFT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"pllctrl = 0x%x\0A\00", align 1
@PLL_CFG_EN = common dso_local global i64 0, align 8
@HDMI_SRZ_PLL_CFG = common dso_local global i32 0, align 4
@HDMI_TIMEOUT_PLL_LOCK = common dso_local global i32 0, align 4
@HDMI_STA = common dso_local global i32 0, align 4
@HDMI_STA_DLL_LCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"hdmi phy pll not locked\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"got PHY PLL Lock\0A\00", align 1
@HDMI_SRZ_CFG_EN = common dso_local global i64 0, align 8
@HDMI_SRZ_CFG_EXTERNAL_DATA = common dso_local global i64 0, align 8
@HDMI_SRZ_CFG_EN_BIASRES_DETECTION = common dso_local global i64 0, align 8
@HDMI_SRZ_CFG_EN_SINK_TERM_DETECTION = common dso_local global i64 0, align 8
@HDMI_SRZ_CFG_EN_SRC_TERMINATION = common dso_local global i64 0, align 8
@NB_HDMI_PHY_CONFIG = common dso_local global i32 0, align 4
@hdmiphy_config = common dso_local global %struct.TYPE_6__* null, align 8
@HDMI_SRZ_CFG_INTERNAL_MASK = common dso_local global i64 0, align 8
@HDMI_SRZ_CFG = common dso_local global i32 0, align 4
@HDMI_SRZ_ICNTL = common dso_local global i32 0, align 4
@HDMI_SRZ_CALCODE_EXT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"serializer cfg 0x%x 0x%x 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sti_hdmi*)* @sti_hdmi_tx3g4c28phy_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_hdmi_tx3g4c28phy_start(%struct.sti_hdmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sti_hdmi*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sti_hdmi* %0, %struct.sti_hdmi** %3, align 8
  %12 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %13 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 1000
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %4, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load i64, i64* %4, align 8
  %19 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %18)
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %56, %1
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @NB_PLL_MODE, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %20
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @plldividers, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %25, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %24
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @plldividers, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %34, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %33
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @plldividers, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %7, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** @plldividers, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %8, align 8
  store i32 1, i32* %10, align 4
  br label %59

55:                                               ; preds = %33, %24
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %20

59:                                               ; preds = %42, %20
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i64, i64* %4, align 8
  %64 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %63)
  br label %242

65:                                               ; preds = %59
  %66 = load i64, i64* %4, align 8
  store i64 %66, i64* %6, align 8
  %67 = load i32, i32* @PLL_CFG_NDIV_SHIFT, align 4
  %68 = shl i32 40, %67
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %9, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %9, align 8
  %72 = load i64, i64* %6, align 8
  %73 = icmp sgt i64 %72, 340000000
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load i64, i64* %6, align 8
  %76 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %75)
  br label %242

77:                                               ; preds = %65
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* @PLL_CFG_IDF_SHIFT, align 8
  %80 = shl i64 %78, %79
  %81 = load i64, i64* %9, align 8
  %82 = or i64 %81, %80
  store i64 %82, i64* %9, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* @PLL_CFG_ODF_SHIFT, align 8
  %85 = shl i64 %83, %84
  %86 = load i64, i64* %9, align 8
  %87 = or i64 %86, %85
  store i64 %87, i64* %9, align 8
  %88 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %89 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %88, i32 0, i32 0
  store i32 0, i32* %89, align 4
  %90 = load i64, i64* %9, align 8
  %91 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %90)
  %92 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* @PLL_CFG_EN, align 8
  %95 = or i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = load i32, i32* @HDMI_SRZ_PLL_CFG, align 4
  %98 = call i32 @hdmi_write(%struct.sti_hdmi* %92, i32 %96, i32 %97)
  %99 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %100 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %103 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 1
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* @HDMI_TIMEOUT_PLL_LOCK, align 4
  %108 = call i32 @msecs_to_jiffies(i32 %107)
  %109 = call i32 @wait_event_interruptible_timeout(i32 %101, i32 %106, i32 %108)
  %110 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %111 = load i32, i32* @HDMI_STA, align 4
  %112 = call i32 @hdmi_read(%struct.sti_hdmi* %110, i32 %111)
  %113 = load i32, i32* @HDMI_STA_DLL_LCK, align 4
  %114 = and i32 %112, %113
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %77
  %117 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %242

118:                                              ; preds = %77
  %119 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %120 = load i64, i64* @HDMI_SRZ_CFG_EN, align 8
  %121 = load i64, i64* @HDMI_SRZ_CFG_EXTERNAL_DATA, align 8
  %122 = or i64 %120, %121
  %123 = load i64, i64* @HDMI_SRZ_CFG_EN_BIASRES_DETECTION, align 8
  %124 = or i64 %122, %123
  %125 = load i64, i64* @HDMI_SRZ_CFG_EN_SINK_TERM_DETECTION, align 8
  %126 = or i64 %124, %125
  store i64 %126, i64* %5, align 8
  %127 = load i64, i64* %6, align 8
  %128 = icmp sgt i64 %127, 165000000
  br i1 %128, label %129, label %133

129:                                              ; preds = %118
  %130 = load i64, i64* @HDMI_SRZ_CFG_EN_SRC_TERMINATION, align 8
  %131 = load i64, i64* %5, align 8
  %132 = or i64 %131, %130
  store i64 %132, i64* %5, align 8
  br label %133

133:                                              ; preds = %129, %118
  store i32 0, i32* %11, align 4
  br label %134

134:                                              ; preds = %227, %133
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @NB_HDMI_PHY_CONFIG, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %230

138:                                              ; preds = %134
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hdmiphy_config, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %6, align 8
  %146 = icmp sle i64 %144, %145
  br i1 %146, label %147, label %226

147:                                              ; preds = %138
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hdmiphy_config, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %6, align 8
  %155 = icmp sge i64 %153, %154
  br i1 %155, label %156, label %226

156:                                              ; preds = %147
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hdmiphy_config, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  %162 = load i64*, i64** %161, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @HDMI_SRZ_CFG_INTERNAL_MASK, align 8
  %166 = xor i64 %165, -1
  %167 = and i64 %164, %166
  %168 = load i64, i64* %5, align 8
  %169 = or i64 %168, %167
  store i64 %169, i64* %5, align 8
  %170 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %171 = load i64, i64* %5, align 8
  %172 = trunc i64 %171 to i32
  %173 = load i32, i32* @HDMI_SRZ_CFG, align 4
  %174 = call i32 @hdmi_write(%struct.sti_hdmi* %170, i32 %172, i32 %173)
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hdmiphy_config, align 8
  %176 = load i32, i32* %11, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 2
  %180 = load i64*, i64** %179, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 1
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* %5, align 8
  %183 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %184 = load i64, i64* %5, align 8
  %185 = trunc i64 %184 to i32
  %186 = load i32, i32* @HDMI_SRZ_ICNTL, align 4
  %187 = call i32 @hdmi_write(%struct.sti_hdmi* %183, i32 %185, i32 %186)
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hdmiphy_config, align 8
  %189 = load i32, i32* %11, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 2
  %193 = load i64*, i64** %192, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 2
  %195 = load i64, i64* %194, align 8
  store i64 %195, i64* %5, align 8
  %196 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %197 = load i64, i64* %5, align 8
  %198 = trunc i64 %197 to i32
  %199 = load i32, i32* @HDMI_SRZ_CALCODE_EXT, align 4
  %200 = call i32 @hdmi_write(%struct.sti_hdmi* %196, i32 %198, i32 %199)
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hdmiphy_config, align 8
  %202 = load i32, i32* %11, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 2
  %206 = load i64*, i64** %205, align 8
  %207 = getelementptr inbounds i64, i64* %206, i64 0
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hdmiphy_config, align 8
  %210 = load i32, i32* %11, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 2
  %214 = load i64*, i64** %213, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 1
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hdmiphy_config, align 8
  %218 = load i32, i32* %11, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 2
  %222 = load i64*, i64** %221, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 2
  %224 = load i64, i64* %223, align 8
  %225 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i64 %208, i64 %216, i64 %224)
  store i32 1, i32* %2, align 4
  br label %243

226:                                              ; preds = %147, %138
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %11, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %11, align 4
  br label %134

230:                                              ; preds = %134
  %231 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %232 = load i64, i64* %5, align 8
  %233 = trunc i64 %232 to i32
  %234 = load i32, i32* @HDMI_SRZ_CFG, align 4
  %235 = call i32 @hdmi_write(%struct.sti_hdmi* %231, i32 %233, i32 %234)
  %236 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %237 = load i32, i32* @HDMI_SRZ_ICNTL, align 4
  %238 = call i32 @hdmi_write(%struct.sti_hdmi* %236, i32 0, i32 %237)
  %239 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %240 = load i32, i32* @HDMI_SRZ_CALCODE_EXT, align 4
  %241 = call i32 @hdmi_write(%struct.sti_hdmi* %239, i32 0, i32 %240)
  store i32 1, i32* %2, align 4
  br label %243

242:                                              ; preds = %116, %74, %62
  store i32 0, i32* %2, align 4
  br label %243

243:                                              ; preds = %242, %230, %156
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, ...) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @hdmi_write(%struct.sti_hdmi*, i32, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @hdmi_read(%struct.sti_hdmi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
