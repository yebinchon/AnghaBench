; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_program_aspm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_program_aspm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32 }

@radeon_aspm = common dso_local global i64 0, align 8
@RADEON_IS_PCIE = common dso_local global i32 0, align 4
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@PB0_PIF_PAIRING = common dso_local global i32 0, align 4
@MULTI_PIF = common dso_local global i32 0, align 4
@PB1_PIF_PAIRING = common dso_local global i32 0, align 4
@PCIE_LC_CNTL = common dso_local global i32 0, align 4
@LC_L0S_INACTIVITY_MASK = common dso_local global i32 0, align 4
@LC_L1_INACTIVITY_MASK = common dso_local global i32 0, align 4
@CHIP_BARTS = common dso_local global i32 0, align 4
@PB0_PIF_PWRDOWN_0 = common dso_local global i32 0, align 4
@PLL_POWER_STATE_IN_OFF_0_MASK = common dso_local global i32 0, align 4
@PLL_POWER_STATE_IN_TXS2_0_MASK = common dso_local global i32 0, align 4
@PB0_PIF_PWRDOWN_1 = common dso_local global i32 0, align 4
@PLL_POWER_STATE_IN_OFF_1_MASK = common dso_local global i32 0, align 4
@PLL_POWER_STATE_IN_TXS2_1_MASK = common dso_local global i32 0, align 4
@PB1_PIF_PWRDOWN_0 = common dso_local global i32 0, align 4
@PB1_PIF_PWRDOWN_1 = common dso_local global i32 0, align 4
@PLL_RAMP_UP_TIME_0_MASK = common dso_local global i32 0, align 4
@PLL_RAMP_UP_TIME_1_MASK = common dso_local global i32 0, align 4
@PCIE_LC_LINK_WIDTH_CNTL = common dso_local global i32 0, align 4
@LC_DYN_LANES_PWR_STATE_MASK = common dso_local global i32 0, align 4
@PB0_PIF_CNTL = common dso_local global i32 0, align 4
@LS2_EXIT_TIME_MASK = common dso_local global i32 0, align 4
@PB1_PIF_CNTL = common dso_local global i32 0, align 4
@LC_PMI_TO_L1_DIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evergreen_program_aspm(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i64, i64* @radeon_aspm, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %363

14:                                               ; preds = %1
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RADEON_IS_PCIE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %363

22:                                               ; preds = %14
  %23 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %27 [
    i32 134, label %26
    i32 133, label %26
    i32 132, label %26
    i32 130, label %26
    i32 135, label %26
    i32 129, label %26
    i32 128, label %26
    i32 131, label %26
    i32 136, label %26
  ]

26:                                               ; preds = %22, %22, %22, %22, %22, %22, %22, %22, %22
  store i32 1, i32* %7, align 4
  br label %28

27:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %30 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @RADEON_IS_IGP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 1, i32* %10, align 4
  br label %36

36:                                               ; preds = %35, %28
  %37 = load i32, i32* @PB0_PIF_PAIRING, align 4
  %38 = call i32 @RREG32_PIF_PHY0(i32 %37)
  store i32 %38, i32* %4, align 4
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32, i32* @MULTI_PIF, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %3, align 4
  br label %50

46:                                               ; preds = %36
  %47 = load i32, i32* @MULTI_PIF, align 4
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* @PB0_PIF_PAIRING, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @WREG32_PIF_PHY0(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i32, i32* @PB1_PIF_PAIRING, align 4
  %60 = call i32 @RREG32_PIF_PHY1(i32 %59)
  store i32 %60, i32* %4, align 4
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32, i32* @MULTI_PIF, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %3, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %3, align 4
  br label %72

68:                                               ; preds = %58
  %69 = load i32, i32* @MULTI_PIF, align 4
  %70 = load i32, i32* %3, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %63
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* @PB1_PIF_PAIRING, align 4
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @WREG32_PIF_PHY1(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %72
  %81 = load i32, i32* @PCIE_LC_CNTL, align 4
  %82 = call i32 @RREG32_PCIE_PORT(i32 %81)
  store i32 %82, i32* %6, align 4
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* @LC_L0S_INACTIVITY_MASK, align 4
  %84 = load i32, i32* @LC_L1_INACTIVITY_MASK, align 4
  %85 = or i32 %83, %84
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %5, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %106, label %91

91:                                               ; preds = %80
  %92 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %93 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @CHIP_BARTS, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = call i32 @LC_L0S_INACTIVITY(i32 7)
  %99 = load i32, i32* %5, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %5, align 4
  br label %105

101:                                              ; preds = %91
  %102 = call i32 @LC_L0S_INACTIVITY(i32 3)
  %103 = load i32, i32* %5, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %101, %97
  br label %106

106:                                              ; preds = %105, %80
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %345, label %109

109:                                              ; preds = %106
  %110 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %111 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @CHIP_BARTS, align 4
  %114 = icmp sge i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = call i32 @LC_L1_INACTIVITY(i32 7)
  %117 = load i32, i32* %5, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %5, align 4
  br label %123

119:                                              ; preds = %109
  %120 = call i32 @LC_L1_INACTIVITY(i32 8)
  %121 = load i32, i32* %5, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %119, %115
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %344, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* @PB0_PIF_PWRDOWN_0, align 4
  %128 = call i32 @RREG32_PIF_PHY0(i32 %127)
  store i32 %128, i32* %4, align 4
  store i32 %128, i32* %3, align 4
  %129 = load i32, i32* @PLL_POWER_STATE_IN_OFF_0_MASK, align 4
  %130 = load i32, i32* @PLL_POWER_STATE_IN_TXS2_0_MASK, align 4
  %131 = or i32 %129, %130
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %3, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %3, align 4
  %135 = call i32 @PLL_POWER_STATE_IN_OFF_0(i32 7)
  %136 = call i32 @PLL_POWER_STATE_IN_TXS2_0(i32 7)
  %137 = or i32 %135, %136
  %138 = load i32, i32* %3, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %3, align 4
  %140 = load i32, i32* %3, align 4
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %126
  %144 = load i32, i32* @PB0_PIF_PWRDOWN_0, align 4
  %145 = load i32, i32* %3, align 4
  %146 = call i32 @WREG32_PIF_PHY0(i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %143, %126
  %148 = load i32, i32* @PB0_PIF_PWRDOWN_1, align 4
  %149 = call i32 @RREG32_PIF_PHY0(i32 %148)
  store i32 %149, i32* %4, align 4
  store i32 %149, i32* %3, align 4
  %150 = load i32, i32* @PLL_POWER_STATE_IN_OFF_1_MASK, align 4
  %151 = load i32, i32* @PLL_POWER_STATE_IN_TXS2_1_MASK, align 4
  %152 = or i32 %150, %151
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %3, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %3, align 4
  %156 = call i32 @PLL_POWER_STATE_IN_OFF_1(i32 7)
  %157 = call i32 @PLL_POWER_STATE_IN_TXS2_1(i32 7)
  %158 = or i32 %156, %157
  %159 = load i32, i32* %3, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %3, align 4
  %161 = load i32, i32* %3, align 4
  %162 = load i32, i32* %4, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %147
  %165 = load i32, i32* @PB0_PIF_PWRDOWN_1, align 4
  %166 = load i32, i32* %3, align 4
  %167 = call i32 @WREG32_PIF_PHY0(i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %164, %147
  %169 = load i32, i32* @PB1_PIF_PWRDOWN_0, align 4
  %170 = call i32 @RREG32_PIF_PHY1(i32 %169)
  store i32 %170, i32* %4, align 4
  store i32 %170, i32* %3, align 4
  %171 = load i32, i32* @PLL_POWER_STATE_IN_OFF_0_MASK, align 4
  %172 = load i32, i32* @PLL_POWER_STATE_IN_TXS2_0_MASK, align 4
  %173 = or i32 %171, %172
  %174 = xor i32 %173, -1
  %175 = load i32, i32* %3, align 4
  %176 = and i32 %175, %174
  store i32 %176, i32* %3, align 4
  %177 = call i32 @PLL_POWER_STATE_IN_OFF_0(i32 7)
  %178 = call i32 @PLL_POWER_STATE_IN_TXS2_0(i32 7)
  %179 = or i32 %177, %178
  %180 = load i32, i32* %3, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %3, align 4
  %182 = load i32, i32* %3, align 4
  %183 = load i32, i32* %4, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %168
  %186 = load i32, i32* @PB1_PIF_PWRDOWN_0, align 4
  %187 = load i32, i32* %3, align 4
  %188 = call i32 @WREG32_PIF_PHY1(i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %185, %168
  %190 = load i32, i32* @PB1_PIF_PWRDOWN_1, align 4
  %191 = call i32 @RREG32_PIF_PHY1(i32 %190)
  store i32 %191, i32* %4, align 4
  store i32 %191, i32* %3, align 4
  %192 = load i32, i32* @PLL_POWER_STATE_IN_OFF_1_MASK, align 4
  %193 = load i32, i32* @PLL_POWER_STATE_IN_TXS2_1_MASK, align 4
  %194 = or i32 %192, %193
  %195 = xor i32 %194, -1
  %196 = load i32, i32* %3, align 4
  %197 = and i32 %196, %195
  store i32 %197, i32* %3, align 4
  %198 = call i32 @PLL_POWER_STATE_IN_OFF_1(i32 7)
  %199 = call i32 @PLL_POWER_STATE_IN_TXS2_1(i32 7)
  %200 = or i32 %198, %199
  %201 = load i32, i32* %3, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %3, align 4
  %203 = load i32, i32* %3, align 4
  %204 = load i32, i32* %4, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %189
  %207 = load i32, i32* @PB1_PIF_PWRDOWN_1, align 4
  %208 = load i32, i32* %3, align 4
  %209 = call i32 @WREG32_PIF_PHY1(i32 %207, i32 %208)
  br label %210

210:                                              ; preds = %206, %189
  %211 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %212 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @CHIP_BARTS, align 4
  %215 = icmp sge i32 %213, %214
  br i1 %215, label %216, label %285

216:                                              ; preds = %210
  %217 = load i32, i32* @PB0_PIF_PWRDOWN_0, align 4
  %218 = call i32 @RREG32_PIF_PHY0(i32 %217)
  store i32 %218, i32* %4, align 4
  store i32 %218, i32* %3, align 4
  %219 = load i32, i32* @PLL_RAMP_UP_TIME_0_MASK, align 4
  %220 = xor i32 %219, -1
  %221 = load i32, i32* %3, align 4
  %222 = and i32 %221, %220
  store i32 %222, i32* %3, align 4
  %223 = call i32 @PLL_RAMP_UP_TIME_0(i32 4)
  %224 = load i32, i32* %3, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %3, align 4
  %226 = load i32, i32* %3, align 4
  %227 = load i32, i32* %4, align 4
  %228 = icmp ne i32 %226, %227
  br i1 %228, label %229, label %233

229:                                              ; preds = %216
  %230 = load i32, i32* @PB0_PIF_PWRDOWN_0, align 4
  %231 = load i32, i32* %3, align 4
  %232 = call i32 @WREG32_PIF_PHY0(i32 %230, i32 %231)
  br label %233

233:                                              ; preds = %229, %216
  %234 = load i32, i32* @PB0_PIF_PWRDOWN_1, align 4
  %235 = call i32 @RREG32_PIF_PHY0(i32 %234)
  store i32 %235, i32* %4, align 4
  store i32 %235, i32* %3, align 4
  %236 = load i32, i32* @PLL_RAMP_UP_TIME_1_MASK, align 4
  %237 = xor i32 %236, -1
  %238 = load i32, i32* %3, align 4
  %239 = and i32 %238, %237
  store i32 %239, i32* %3, align 4
  %240 = call i32 @PLL_RAMP_UP_TIME_1(i32 4)
  %241 = load i32, i32* %3, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %3, align 4
  %243 = load i32, i32* %3, align 4
  %244 = load i32, i32* %4, align 4
  %245 = icmp ne i32 %243, %244
  br i1 %245, label %246, label %250

246:                                              ; preds = %233
  %247 = load i32, i32* @PB0_PIF_PWRDOWN_1, align 4
  %248 = load i32, i32* %3, align 4
  %249 = call i32 @WREG32_PIF_PHY0(i32 %247, i32 %248)
  br label %250

250:                                              ; preds = %246, %233
  %251 = load i32, i32* @PB1_PIF_PWRDOWN_0, align 4
  %252 = call i32 @RREG32_PIF_PHY1(i32 %251)
  store i32 %252, i32* %4, align 4
  store i32 %252, i32* %3, align 4
  %253 = load i32, i32* @PLL_RAMP_UP_TIME_0_MASK, align 4
  %254 = xor i32 %253, -1
  %255 = load i32, i32* %3, align 4
  %256 = and i32 %255, %254
  store i32 %256, i32* %3, align 4
  %257 = call i32 @PLL_RAMP_UP_TIME_0(i32 4)
  %258 = load i32, i32* %3, align 4
  %259 = or i32 %258, %257
  store i32 %259, i32* %3, align 4
  %260 = load i32, i32* %3, align 4
  %261 = load i32, i32* %4, align 4
  %262 = icmp ne i32 %260, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %250
  %264 = load i32, i32* @PB1_PIF_PWRDOWN_0, align 4
  %265 = load i32, i32* %3, align 4
  %266 = call i32 @WREG32_PIF_PHY1(i32 %264, i32 %265)
  br label %267

267:                                              ; preds = %263, %250
  %268 = load i32, i32* @PB1_PIF_PWRDOWN_1, align 4
  %269 = call i32 @RREG32_PIF_PHY1(i32 %268)
  store i32 %269, i32* %4, align 4
  store i32 %269, i32* %3, align 4
  %270 = load i32, i32* @PLL_RAMP_UP_TIME_1_MASK, align 4
  %271 = xor i32 %270, -1
  %272 = load i32, i32* %3, align 4
  %273 = and i32 %272, %271
  store i32 %273, i32* %3, align 4
  %274 = call i32 @PLL_RAMP_UP_TIME_1(i32 4)
  %275 = load i32, i32* %3, align 4
  %276 = or i32 %275, %274
  store i32 %276, i32* %3, align 4
  %277 = load i32, i32* %3, align 4
  %278 = load i32, i32* %4, align 4
  %279 = icmp ne i32 %277, %278
  br i1 %279, label %280, label %284

280:                                              ; preds = %267
  %281 = load i32, i32* @PB1_PIF_PWRDOWN_1, align 4
  %282 = load i32, i32* %3, align 4
  %283 = call i32 @WREG32_PIF_PHY1(i32 %281, i32 %282)
  br label %284

284:                                              ; preds = %280, %267
  br label %285

285:                                              ; preds = %284, %210
  %286 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %287 = call i32 @RREG32_PCIE_PORT(i32 %286)
  store i32 %287, i32* %4, align 4
  store i32 %287, i32* %3, align 4
  %288 = load i32, i32* @LC_DYN_LANES_PWR_STATE_MASK, align 4
  %289 = xor i32 %288, -1
  %290 = load i32, i32* %3, align 4
  %291 = and i32 %290, %289
  store i32 %291, i32* %3, align 4
  %292 = call i32 @LC_DYN_LANES_PWR_STATE(i32 3)
  %293 = load i32, i32* %3, align 4
  %294 = or i32 %293, %292
  store i32 %294, i32* %3, align 4
  %295 = load i32, i32* %3, align 4
  %296 = load i32, i32* %4, align 4
  %297 = icmp ne i32 %295, %296
  br i1 %297, label %298, label %302

298:                                              ; preds = %285
  %299 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %300 = load i32, i32* %3, align 4
  %301 = call i32 @WREG32_PCIE_PORT(i32 %299, i32 %300)
  br label %302

302:                                              ; preds = %298, %285
  %303 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %304 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @CHIP_BARTS, align 4
  %307 = icmp sge i32 %305, %306
  br i1 %307, label %308, label %343

308:                                              ; preds = %302
  %309 = load i32, i32* @PB0_PIF_CNTL, align 4
  %310 = call i32 @RREG32_PIF_PHY0(i32 %309)
  store i32 %310, i32* %4, align 4
  store i32 %310, i32* %3, align 4
  %311 = load i32, i32* @LS2_EXIT_TIME_MASK, align 4
  %312 = xor i32 %311, -1
  %313 = load i32, i32* %3, align 4
  %314 = and i32 %313, %312
  store i32 %314, i32* %3, align 4
  %315 = call i32 @LS2_EXIT_TIME(i32 1)
  %316 = load i32, i32* %3, align 4
  %317 = or i32 %316, %315
  store i32 %317, i32* %3, align 4
  %318 = load i32, i32* %3, align 4
  %319 = load i32, i32* %4, align 4
  %320 = icmp ne i32 %318, %319
  br i1 %320, label %321, label %325

321:                                              ; preds = %308
  %322 = load i32, i32* @PB0_PIF_CNTL, align 4
  %323 = load i32, i32* %3, align 4
  %324 = call i32 @WREG32_PIF_PHY0(i32 %322, i32 %323)
  br label %325

325:                                              ; preds = %321, %308
  %326 = load i32, i32* @PB1_PIF_CNTL, align 4
  %327 = call i32 @RREG32_PIF_PHY1(i32 %326)
  store i32 %327, i32* %4, align 4
  store i32 %327, i32* %3, align 4
  %328 = load i32, i32* @LS2_EXIT_TIME_MASK, align 4
  %329 = xor i32 %328, -1
  %330 = load i32, i32* %3, align 4
  %331 = and i32 %330, %329
  store i32 %331, i32* %3, align 4
  %332 = call i32 @LS2_EXIT_TIME(i32 1)
  %333 = load i32, i32* %3, align 4
  %334 = or i32 %333, %332
  store i32 %334, i32* %3, align 4
  %335 = load i32, i32* %3, align 4
  %336 = load i32, i32* %4, align 4
  %337 = icmp ne i32 %335, %336
  br i1 %337, label %338, label %342

338:                                              ; preds = %325
  %339 = load i32, i32* @PB1_PIF_CNTL, align 4
  %340 = load i32, i32* %3, align 4
  %341 = call i32 @WREG32_PIF_PHY1(i32 %339, i32 %340)
  br label %342

342:                                              ; preds = %338, %325
  br label %343

343:                                              ; preds = %342, %302
  br label %344

344:                                              ; preds = %343, %123
  br label %345

345:                                              ; preds = %344, %106
  %346 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %347 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @CHIP_BARTS, align 4
  %350 = icmp slt i32 %348, %349
  br i1 %350, label %351, label %355

351:                                              ; preds = %345
  %352 = load i32, i32* @LC_PMI_TO_L1_DIS, align 4
  %353 = load i32, i32* %5, align 4
  %354 = or i32 %353, %352
  store i32 %354, i32* %5, align 4
  br label %355

355:                                              ; preds = %351, %345
  %356 = load i32, i32* %5, align 4
  %357 = load i32, i32* %6, align 4
  %358 = icmp ne i32 %356, %357
  br i1 %358, label %359, label %363

359:                                              ; preds = %355
  %360 = load i32, i32* @PCIE_LC_CNTL, align 4
  %361 = load i32, i32* %5, align 4
  %362 = call i32 @WREG32_PCIE_PORT(i32 %360, i32 %361)
  br label %363

363:                                              ; preds = %13, %21, %359, %355
  ret void
}

declare dso_local i32 @RREG32_PIF_PHY0(i32) #1

declare dso_local i32 @WREG32_PIF_PHY0(i32, i32) #1

declare dso_local i32 @RREG32_PIF_PHY1(i32) #1

declare dso_local i32 @WREG32_PIF_PHY1(i32, i32) #1

declare dso_local i32 @RREG32_PCIE_PORT(i32) #1

declare dso_local i32 @LC_L0S_INACTIVITY(i32) #1

declare dso_local i32 @LC_L1_INACTIVITY(i32) #1

declare dso_local i32 @PLL_POWER_STATE_IN_OFF_0(i32) #1

declare dso_local i32 @PLL_POWER_STATE_IN_TXS2_0(i32) #1

declare dso_local i32 @PLL_POWER_STATE_IN_OFF_1(i32) #1

declare dso_local i32 @PLL_POWER_STATE_IN_TXS2_1(i32) #1

declare dso_local i32 @PLL_RAMP_UP_TIME_0(i32) #1

declare dso_local i32 @PLL_RAMP_UP_TIME_1(i32) #1

declare dso_local i32 @LC_DYN_LANES_PWR_STATE(i32) #1

declare dso_local i32 @WREG32_PCIE_PORT(i32, i32) #1

declare dso_local i32 @LS2_EXIT_TIME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
