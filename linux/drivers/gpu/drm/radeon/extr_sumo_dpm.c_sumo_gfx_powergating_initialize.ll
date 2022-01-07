; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_gfx_powergating_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_gfx_powergating_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }

@CHIP_PALM = common dso_local global i64 0, align 8
@CG_SCRATCH2 = common dso_local global i32 0, align 4
@SUMO_GFXPOWERGATINGT_DFLT = common dso_local global i32 0, align 4
@CG_PWR_GATING_CNTL = common dso_local global i32 0, align 4
@PGP_MASK = common dso_local global i32 0, align 4
@PGU_MASK = common dso_local global i32 0, align 4
@SUMO_VOLTAGEDROPT_DFLT = common dso_local global i32 0, align 4
@CG_CG_VOLTAGE_CNTL = common dso_local global i32 0, align 4
@RCU_PWR_GATING_SEQ0 = common dso_local global i32 0, align 4
@RCU_PWR_GATING_SEQ1 = common dso_local global i32 0, align 4
@RCU_PWR_GATING_CNTL = common dso_local global i32 0, align 4
@RSVD_MASK = common dso_local global i32 0, align 4
@PCV_MASK = common dso_local global i32 0, align 4
@PGS_MASK = common dso_local global i32 0, align 4
@PWR_GATING_EN = common dso_local global i32 0, align 4
@PCP_MASK = common dso_local global i32 0, align 4
@RCU_PWR_GATING_CNTL_2 = common dso_local global i32 0, align 4
@MPPU_MASK = common dso_local global i32 0, align 4
@MPPD_MASK = common dso_local global i32 0, align 4
@RCU_PWR_GATING_CNTL_3 = common dso_local global i32 0, align 4
@DPPU_MASK = common dso_local global i32 0, align 4
@DPPD_MASK = common dso_local global i32 0, align 4
@RCU_PWR_GATING_CNTL_4 = common dso_local global i32 0, align 4
@RT_MASK = common dso_local global i32 0, align 4
@IT_MASK = common dso_local global i32 0, align 4
@RCU_PWR_GATING_CNTL_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @sumo_gfx_powergating_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sumo_gfx_powergating_initialize(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = call i32 @radeon_get_xclk(%struct.radeon_device* %12)
  store i32 %13, i32* %11, align 4
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CHIP_PALM, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 4, i32* %6, align 4
  store i32 10, i32* %8, align 4
  store i32 10, i32* %9, align 4
  store i32 4, i32* %10, align 4
  store i32 247, i32* %7, align 4
  br label %21

20:                                               ; preds = %1
  store i32 16, i32* %6, align 4
  store i32 50, i32* %8, align 4
  store i32 50, i32* %9, align 4
  store i32 50, i32* %10, align 4
  store i32 113, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load i32, i32* @CG_SCRATCH2, align 4
  %23 = call i32 @WREG32(i32 %22, i32 28707351)
  %24 = load i32, i32* @SUMO_GFXPOWERGATINGT_DFLT, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @r600_calculate_u_and_p(i32 %24, i32 %25, i32 16, i32* %4, i32* %5)
  %27 = load i32, i32* @CG_PWR_GATING_CNTL, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @PGP(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @PGU(i32 %30)
  %32 = or i32 %29, %31
  %33 = load i32, i32* @PGP_MASK, align 4
  %34 = load i32, i32* @PGU_MASK, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = call i32 @WREG32_P(i32 %27, i32 %32, i32 %36)
  %38 = load i32, i32* @SUMO_VOLTAGEDROPT_DFLT, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @r600_calculate_u_and_p(i32 %38, i32 %39, i32 16, i32* %4, i32* %5)
  %41 = load i32, i32* @CG_CG_VOLTAGE_CNTL, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @PGP(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @PGU(i32 %44)
  %46 = or i32 %43, %45
  %47 = load i32, i32* @PGP_MASK, align 4
  %48 = load i32, i32* @PGU_MASK, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = call i32 @WREG32_P(i32 %41, i32 %46, i32 %50)
  %52 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CHIP_PALM, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %21
  %58 = load i32, i32* @RCU_PWR_GATING_SEQ0, align 4
  %59 = call i32 @WREG32_RCU(i32 %58, i32 269496848)
  %60 = load i32, i32* @RCU_PWR_GATING_SEQ1, align 4
  %61 = call i32 @WREG32_RCU(i32 %60, i32 269488144)
  br label %67

62:                                               ; preds = %21
  %63 = load i32, i32* @RCU_PWR_GATING_SEQ0, align 4
  %64 = call i32 @WREG32_RCU(i32 %63, i32 1985229328)
  %65 = load i32, i32* @RCU_PWR_GATING_SEQ1, align 4
  %66 = call i32 @WREG32_RCU(i32 %65, i32 -19088744)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load i32, i32* @RCU_PWR_GATING_CNTL, align 4
  %69 = call i32 @RREG32_RCU(i32 %68)
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* @RSVD_MASK, align 4
  %71 = load i32, i32* @PCV_MASK, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @PGS_MASK, align 4
  %74 = or i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %3, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @PCV(i32 %78)
  %80 = call i32 @PGS(i32 1)
  %81 = or i32 %79, %80
  %82 = load i32, i32* @PWR_GATING_EN, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %3, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %3, align 4
  %86 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %87 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @CHIP_PALM, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %67
  %92 = load i32, i32* @PCP_MASK, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %3, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %3, align 4
  %96 = call i32 @PCP(i32 119)
  %97 = load i32, i32* %3, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %91, %67
  %100 = load i32, i32* @RCU_PWR_GATING_CNTL, align 4
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @WREG32_RCU(i32 %100, i32 %101)
  %103 = load i32, i32* @RCU_PWR_GATING_CNTL_2, align 4
  %104 = call i32 @RREG32_RCU(i32 %103)
  store i32 %104, i32* %3, align 4
  %105 = load i32, i32* @MPPU_MASK, align 4
  %106 = load i32, i32* @MPPD_MASK, align 4
  %107 = or i32 %105, %106
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %3, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @MPPU(i32 %111)
  %113 = call i32 @MPPD(i32 50)
  %114 = or i32 %112, %113
  %115 = load i32, i32* %3, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %3, align 4
  %117 = load i32, i32* @RCU_PWR_GATING_CNTL_2, align 4
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @WREG32_RCU(i32 %117, i32 %118)
  %120 = load i32, i32* @RCU_PWR_GATING_CNTL_3, align 4
  %121 = call i32 @RREG32_RCU(i32 %120)
  store i32 %121, i32* %3, align 4
  %122 = load i32, i32* @DPPU_MASK, align 4
  %123 = load i32, i32* @DPPD_MASK, align 4
  %124 = or i32 %122, %123
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %3, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %3, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @DPPU(i32 %128)
  %130 = call i32 @DPPD(i32 50)
  %131 = or i32 %129, %130
  %132 = load i32, i32* %3, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %3, align 4
  %134 = load i32, i32* @RCU_PWR_GATING_CNTL_3, align 4
  %135 = load i32, i32* %3, align 4
  %136 = call i32 @WREG32_RCU(i32 %134, i32 %135)
  %137 = load i32, i32* @RCU_PWR_GATING_CNTL_4, align 4
  %138 = call i32 @RREG32_RCU(i32 %137)
  store i32 %138, i32* %3, align 4
  %139 = load i32, i32* @RT_MASK, align 4
  %140 = load i32, i32* @IT_MASK, align 4
  %141 = or i32 %139, %140
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %3, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %3, align 4
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @RT(i32 %145)
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @IT(i32 %147)
  %149 = or i32 %146, %148
  %150 = load i32, i32* %3, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %3, align 4
  %152 = load i32, i32* @RCU_PWR_GATING_CNTL_4, align 4
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @WREG32_RCU(i32 %152, i32 %153)
  %155 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %156 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @CHIP_PALM, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %99
  %161 = load i32, i32* @RCU_PWR_GATING_CNTL_5, align 4
  %162 = call i32 @WREG32_RCU(i32 %161, i32 2562)
  br label %163

163:                                              ; preds = %160, %99
  %164 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %165 = call i32 @sumo_smu_pg_init(%struct.radeon_device* %164)
  %166 = load i32, i32* @RCU_PWR_GATING_CNTL, align 4
  %167 = call i32 @RREG32_RCU(i32 %166)
  store i32 %167, i32* %3, align 4
  %168 = load i32, i32* @RSVD_MASK, align 4
  %169 = load i32, i32* @PCV_MASK, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @PGS_MASK, align 4
  %172 = or i32 %170, %171
  %173 = xor i32 %172, -1
  %174 = load i32, i32* %3, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %3, align 4
  %176 = load i32, i32* %6, align 4
  %177 = call i32 @PCV(i32 %176)
  %178 = call i32 @PGS(i32 4)
  %179 = or i32 %177, %178
  %180 = load i32, i32* @PWR_GATING_EN, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* %3, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %3, align 4
  %184 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %185 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @CHIP_PALM, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %197

189:                                              ; preds = %163
  %190 = load i32, i32* @PCP_MASK, align 4
  %191 = xor i32 %190, -1
  %192 = load i32, i32* %3, align 4
  %193 = and i32 %192, %191
  store i32 %193, i32* %3, align 4
  %194 = call i32 @PCP(i32 119)
  %195 = load i32, i32* %3, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %189, %163
  %198 = load i32, i32* @RCU_PWR_GATING_CNTL, align 4
  %199 = load i32, i32* %3, align 4
  %200 = call i32 @WREG32_RCU(i32 %198, i32 %199)
  %201 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %202 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @CHIP_PALM, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %239

206:                                              ; preds = %197
  %207 = load i32, i32* @RCU_PWR_GATING_CNTL_2, align 4
  %208 = call i32 @RREG32_RCU(i32 %207)
  store i32 %208, i32* %3, align 4
  %209 = load i32, i32* @MPPU_MASK, align 4
  %210 = load i32, i32* @MPPD_MASK, align 4
  %211 = or i32 %209, %210
  %212 = xor i32 %211, -1
  %213 = load i32, i32* %3, align 4
  %214 = and i32 %213, %212
  store i32 %214, i32* %3, align 4
  %215 = call i32 @MPPU(i32 113)
  %216 = call i32 @MPPD(i32 50)
  %217 = or i32 %215, %216
  %218 = load i32, i32* %3, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %3, align 4
  %220 = load i32, i32* @RCU_PWR_GATING_CNTL_2, align 4
  %221 = load i32, i32* %3, align 4
  %222 = call i32 @WREG32_RCU(i32 %220, i32 %221)
  %223 = load i32, i32* @RCU_PWR_GATING_CNTL_3, align 4
  %224 = call i32 @RREG32_RCU(i32 %223)
  store i32 %224, i32* %3, align 4
  %225 = load i32, i32* @DPPU_MASK, align 4
  %226 = load i32, i32* @DPPD_MASK, align 4
  %227 = or i32 %225, %226
  %228 = xor i32 %227, -1
  %229 = load i32, i32* %3, align 4
  %230 = and i32 %229, %228
  store i32 %230, i32* %3, align 4
  %231 = call i32 @DPPU(i32 16)
  %232 = call i32 @DPPD(i32 50)
  %233 = or i32 %231, %232
  %234 = load i32, i32* %3, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %3, align 4
  %236 = load i32, i32* @RCU_PWR_GATING_CNTL_3, align 4
  %237 = load i32, i32* %3, align 4
  %238 = call i32 @WREG32_RCU(i32 %236, i32 %237)
  br label %239

239:                                              ; preds = %206, %197
  %240 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %241 = call i32 @sumo_smu_pg_init(%struct.radeon_device* %240)
  %242 = load i32, i32* @RCU_PWR_GATING_CNTL, align 4
  %243 = call i32 @RREG32_RCU(i32 %242)
  store i32 %243, i32* %3, align 4
  %244 = load i32, i32* @RSVD_MASK, align 4
  %245 = load i32, i32* @PCV_MASK, align 4
  %246 = or i32 %244, %245
  %247 = load i32, i32* @PGS_MASK, align 4
  %248 = or i32 %246, %247
  %249 = xor i32 %248, -1
  %250 = load i32, i32* %3, align 4
  %251 = and i32 %250, %249
  store i32 %251, i32* %3, align 4
  %252 = call i32 @PGS(i32 5)
  %253 = load i32, i32* @PWR_GATING_EN, align 4
  %254 = or i32 %252, %253
  %255 = load i32, i32* %3, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %3, align 4
  %257 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %258 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @CHIP_PALM, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %273

262:                                              ; preds = %239
  %263 = call i32 @PCV(i32 4)
  %264 = load i32, i32* %3, align 4
  %265 = or i32 %264, %263
  store i32 %265, i32* %3, align 4
  %266 = load i32, i32* @PCP_MASK, align 4
  %267 = xor i32 %266, -1
  %268 = load i32, i32* %3, align 4
  %269 = and i32 %268, %267
  store i32 %269, i32* %3, align 4
  %270 = call i32 @PCP(i32 119)
  %271 = load i32, i32* %3, align 4
  %272 = or i32 %271, %270
  store i32 %272, i32* %3, align 4
  br label %277

273:                                              ; preds = %239
  %274 = call i32 @PCV(i32 11)
  %275 = load i32, i32* %3, align 4
  %276 = or i32 %275, %274
  store i32 %276, i32* %3, align 4
  br label %277

277:                                              ; preds = %273, %262
  %278 = load i32, i32* @RCU_PWR_GATING_CNTL, align 4
  %279 = load i32, i32* %3, align 4
  %280 = call i32 @WREG32_RCU(i32 %278, i32 %279)
  %281 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %282 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @CHIP_PALM, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %286, label %319

286:                                              ; preds = %277
  %287 = load i32, i32* @RCU_PWR_GATING_CNTL_2, align 4
  %288 = call i32 @RREG32_RCU(i32 %287)
  store i32 %288, i32* %3, align 4
  %289 = load i32, i32* @MPPU_MASK, align 4
  %290 = load i32, i32* @MPPD_MASK, align 4
  %291 = or i32 %289, %290
  %292 = xor i32 %291, -1
  %293 = load i32, i32* %3, align 4
  %294 = and i32 %293, %292
  store i32 %294, i32* %3, align 4
  %295 = call i32 @MPPU(i32 113)
  %296 = call i32 @MPPD(i32 50)
  %297 = or i32 %295, %296
  %298 = load i32, i32* %3, align 4
  %299 = or i32 %298, %297
  store i32 %299, i32* %3, align 4
  %300 = load i32, i32* @RCU_PWR_GATING_CNTL_2, align 4
  %301 = load i32, i32* %3, align 4
  %302 = call i32 @WREG32_RCU(i32 %300, i32 %301)
  %303 = load i32, i32* @RCU_PWR_GATING_CNTL_3, align 4
  %304 = call i32 @RREG32_RCU(i32 %303)
  store i32 %304, i32* %3, align 4
  %305 = load i32, i32* @DPPU_MASK, align 4
  %306 = load i32, i32* @DPPD_MASK, align 4
  %307 = or i32 %305, %306
  %308 = xor i32 %307, -1
  %309 = load i32, i32* %3, align 4
  %310 = and i32 %309, %308
  store i32 %310, i32* %3, align 4
  %311 = call i32 @DPPU(i32 22)
  %312 = call i32 @DPPD(i32 50)
  %313 = or i32 %311, %312
  %314 = load i32, i32* %3, align 4
  %315 = or i32 %314, %313
  store i32 %315, i32* %3, align 4
  %316 = load i32, i32* @RCU_PWR_GATING_CNTL_3, align 4
  %317 = load i32, i32* %3, align 4
  %318 = call i32 @WREG32_RCU(i32 %316, i32 %317)
  br label %319

319:                                              ; preds = %286, %277
  %320 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %321 = call i32 @sumo_smu_pg_init(%struct.radeon_device* %320)
  ret void
}

declare dso_local i32 @radeon_get_xclk(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @r600_calculate_u_and_p(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @PGP(i32) #1

declare dso_local i32 @PGU(i32) #1

declare dso_local i32 @WREG32_RCU(i32, i32) #1

declare dso_local i32 @RREG32_RCU(i32) #1

declare dso_local i32 @PCV(i32) #1

declare dso_local i32 @PGS(i32) #1

declare dso_local i32 @PCP(i32) #1

declare dso_local i32 @MPPU(i32) #1

declare dso_local i32 @MPPD(i32) #1

declare dso_local i32 @DPPU(i32) #1

declare dso_local i32 @DPPD(i32) #1

declare dso_local i32 @RT(i32) #1

declare dso_local i32 @IT(i32) #1

declare dso_local i32 @sumo_smu_pg_init(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
