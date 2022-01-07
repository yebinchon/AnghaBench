; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_convert_power_level_to_smc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_convert_power_level_to_smc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv7xx_pl = type { i32, i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rv7xx_power_info = type { i64, i64, i64, i64 }
%struct.evergreen_power_info = type { i64, i32, i64, i32, i32 }
%struct.ni_power_info = type { i64 }

@DC_STUTTER_CNTL = common dso_local global i32 0, align 4
@ATOM_PPLIB_R600_FLAGS_PCIEGEN2 = common dso_local global i32 0, align 4
@DC_STUTTER_ENABLE_A = common dso_local global i32 0, align 4
@DC_STUTTER_ENABLE_B = common dso_local global i32 0, align 4
@NISLANDS_SMC_MC_STUTTER_EN = common dso_local global i32 0, align 4
@NISLANDS_SMC_MC_EDC_RD_FLAG = common dso_local global i32 0, align 4
@NISLANDS_SMC_MC_EDC_WR_FLAG = common dso_local global i32 0, align 4
@NISLANDS_SMC_STROBE_ENABLE = common dso_local global i32 0, align 4
@MC_SEQ_MISC7 = common dso_local global i32 0, align 4
@MC_SEQ_MISC5 = common dso_local global i32 0, align 4
@MC_SEQ_MISC6 = common dso_local global i32 0, align 4
@NISLANDS_SMC_MC_RTT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.rv7xx_pl*, %struct.TYPE_5__*)* @ni_convert_power_level_to_smc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_convert_power_level_to_smc(%struct.radeon_device* %0, %struct.rv7xx_pl* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.rv7xx_pl*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.rv7xx_power_info*, align 8
  %9 = alloca %struct.evergreen_power_info*, align 8
  %10 = alloca %struct.ni_power_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.rv7xx_pl* %1, %struct.rv7xx_pl** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %16 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %15)
  store %struct.rv7xx_power_info* %16, %struct.rv7xx_power_info** %8, align 8
  %17 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %18 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %17)
  store %struct.evergreen_power_info* %18, %struct.evergreen_power_info** %9, align 8
  %19 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %20 = call %struct.ni_power_info* @ni_get_pi(%struct.radeon_device* %19)
  store %struct.ni_power_info* %20, %struct.ni_power_info** %10, align 8
  %21 = load i32, i32* @DC_STUTTER_CNTL, align 4
  %22 = call i32 @RREG32(i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %24 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %3
  %28 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %29 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ATOM_PPLIB_R600_FLAGS_PCIEGEN2, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  br label %37

36:                                               ; preds = %3
  br label %37

37:                                               ; preds = %36, %27
  %38 = phi i32 [ %35, %27 ], [ 0, %36 ]
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %42 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %43 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 8
  %47 = call i32 @ni_populate_sclk_value(%struct.radeon_device* %41, i32 %44, i32* %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %4, align 4
  br label %274

52:                                               ; preds = %37
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 7
  store i32 0, i32* %54, align 4
  %55 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %56 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %88

59:                                               ; preds = %52
  %60 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %61 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %64 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sle i64 %62, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %59
  %68 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %69 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %88, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* @DC_STUTTER_ENABLE_A, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %72
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @DC_STUTTER_ENABLE_B, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i32, i32* @NISLANDS_SMC_MC_STUTTER_EN, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %77, %72, %67, %59, %52
  %89 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %90 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %197

93:                                               ; preds = %88
  %94 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %95 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %98 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %96, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %93
  %102 = load i32, i32* @NISLANDS_SMC_MC_EDC_RD_FLAG, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %101, %93
  %108 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %109 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %112 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %110, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %107
  %116 = load i32, i32* @NISLANDS_SMC_MC_EDC_WR_FLAG, align 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %115, %107
  %122 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %123 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %124 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @cypress_get_strobe_mode_settings(%struct.radeon_device* %122, i64 %125)
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @NISLANDS_SMC_STROBE_ENABLE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %163

135:                                              ; preds = %121
  %136 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %137 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %138 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @cypress_get_mclk_frequency_ratio(%struct.radeon_device* %136, i64 %139, i32 1)
  %141 = load i32, i32* @MC_SEQ_MISC7, align 4
  %142 = call i32 @RREG32(i32 %141)
  %143 = ashr i32 %142, 16
  %144 = and i32 %143, 15
  %145 = icmp sge i32 %140, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %135
  %147 = load i32, i32* @MC_SEQ_MISC5, align 4
  %148 = call i32 @RREG32(i32 %147)
  %149 = ashr i32 %148, 1
  %150 = and i32 %149, 1
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 1, i32 0
  store i32 %153, i32* %12, align 4
  br label %162

154:                                              ; preds = %135
  %155 = load i32, i32* @MC_SEQ_MISC6, align 4
  %156 = call i32 @RREG32(i32 %155)
  %157 = ashr i32 %156, 1
  %158 = and i32 %157, 1
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i32 1, i32 0
  store i32 %161, i32* %12, align 4
  br label %162

162:                                              ; preds = %154, %146
  br label %178

163:                                              ; preds = %121
  store i32 0, i32* %12, align 4
  %164 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %165 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.ni_power_info*, %struct.ni_power_info** %10, align 8
  %168 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp sgt i64 %166, %169
  br i1 %170, label %171, label %177

171:                                              ; preds = %163
  %172 = load i32, i32* @NISLANDS_SMC_MC_RTT_ENABLE, align 4
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %171, %163
  br label %178

178:                                              ; preds = %177, %162
  %179 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %180 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %181 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %184 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 6
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @NISLANDS_SMC_STROBE_ENABLE, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  %194 = zext i1 %193 to i32
  %195 = load i32, i32* %12, align 4
  %196 = call i32 @ni_populate_mclk_value(%struct.radeon_device* %179, i32 %182, i64 %185, i32* %187, i32 %194, i32 %195)
  store i32 %196, i32* %11, align 4
  br label %208

197:                                              ; preds = %88
  %198 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %199 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %200 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %203 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 6
  %207 = call i32 @ni_populate_mclk_value(%struct.radeon_device* %198, i32 %201, i64 %204, i32* %206, i32 1, i32 1)
  store i32 %207, i32* %11, align 4
  br label %208

208:                                              ; preds = %197, %178
  %209 = load i32, i32* %11, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = load i32, i32* %11, align 4
  store i32 %212, i32* %4, align 4
  br label %274

213:                                              ; preds = %208
  %214 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %215 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %216 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %215, i32 0, i32 3
  %217 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %218 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 5
  %222 = call i32 @ni_populate_voltage_value(%struct.radeon_device* %214, i32* %216, i32 %219, %struct.TYPE_6__* %221)
  store i32 %222, i32* %11, align 4
  %223 = load i32, i32* %11, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %213
  %226 = load i32, i32* %11, align 4
  store i32 %226, i32* %4, align 4
  br label %274

227:                                              ; preds = %213
  %228 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 5
  %231 = call i32 @ni_get_std_voltage_value(%struct.radeon_device* %228, %struct.TYPE_6__* %230, i32* %13)
  store i32 %231, i32* %11, align 4
  %232 = load i32, i32* %11, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %227
  %235 = load i32, i32* %11, align 4
  store i32 %235, i32* %4, align 4
  br label %274

236:                                              ; preds = %227
  %237 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %238 = load i32, i32* %13, align 4
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 5
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 4
  %245 = call i32 @ni_populate_std_voltage_value(%struct.radeon_device* %237, i32 %238, i32 %242, i32* %244)
  %246 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %247 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %265

250:                                              ; preds = %236
  %251 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %252 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %253 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %252, i32 0, i32 1
  %254 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %255 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 3
  %259 = call i32 @ni_populate_voltage_value(%struct.radeon_device* %251, i32* %253, i32 %256, %struct.TYPE_6__* %258)
  store i32 %259, i32* %11, align 4
  %260 = load i32, i32* %11, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %250
  %263 = load i32, i32* %11, align 4
  store i32 %263, i32* %4, align 4
  br label %274

264:                                              ; preds = %250
  br label %265

265:                                              ; preds = %264, %236
  %266 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %267 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %268 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 2
  %272 = call i32 @ni_populate_mvdd_value(%struct.radeon_device* %266, i64 %269, i32* %271)
  %273 = load i32, i32* %11, align 4
  store i32 %273, i32* %4, align 4
  br label %274

274:                                              ; preds = %265, %262, %234, %225, %211, %50
  %275 = load i32, i32* %4, align 4
  ret i32 %275
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @ni_populate_sclk_value(%struct.radeon_device*, i32, i32*) #1

declare dso_local i32 @cypress_get_strobe_mode_settings(%struct.radeon_device*, i64) #1

declare dso_local i32 @cypress_get_mclk_frequency_ratio(%struct.radeon_device*, i64, i32) #1

declare dso_local i32 @ni_populate_mclk_value(%struct.radeon_device*, i32, i64, i32*, i32, i32) #1

declare dso_local i32 @ni_populate_voltage_value(%struct.radeon_device*, i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @ni_get_std_voltage_value(%struct.radeon_device*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @ni_populate_std_voltage_value(%struct.radeon_device*, i32, i32, i32*) #1

declare dso_local i32 @ni_populate_mvdd_value(%struct.radeon_device*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
