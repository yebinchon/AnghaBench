; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_convert_power_level_to_smc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_convert_power_level_to_smc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv7xx_pl = type { i32, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rv7xx_power_info = type { i64, i64, i64, i64 }
%struct.evergreen_power_info = type { i64, i32, i32, i64, i32, i64, i32 }

@ATOM_PPLIB_R600_FLAGS_PCIEGEN2 = common dso_local global i32 0, align 4
@ATOM_PPLIB_R600_FLAGS_BACKBIASENABLE = common dso_local global i32 0, align 4
@SMC_MC_STUTTER_EN = common dso_local global i32 0, align 4
@PPSMC_STATEFLAG_AUTO_PULSE_SKIP = common dso_local global i32 0, align 4
@SMC_MC_EDC_RD_FLAG = common dso_local global i32 0, align 4
@SMC_MC_EDC_WR_FLAG = common dso_local global i32 0, align 4
@SMC_STROBE_ENABLE = common dso_local global i32 0, align 4
@MC_SEQ_MISC7 = common dso_local global i32 0, align 4
@MC_SEQ_MISC5 = common dso_local global i32 0, align 4
@MC_SEQ_MISC6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cypress_convert_power_level_to_smc(%struct.radeon_device* %0, %struct.rv7xx_pl* %1, %struct.TYPE_3__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.rv7xx_pl*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rv7xx_power_info*, align 8
  %11 = alloca %struct.evergreen_power_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store %struct.rv7xx_pl* %1, %struct.rv7xx_pl** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %15 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %14)
  store %struct.rv7xx_power_info* %15, %struct.rv7xx_power_info** %10, align 8
  %16 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %17 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %16)
  store %struct.evergreen_power_info* %17, %struct.evergreen_power_info** %11, align 8
  %18 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %19 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %4
  %23 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %24 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ATOM_PPLIB_R600_FLAGS_PCIEGEN2, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  br label %32

31:                                               ; preds = %4
  br label %32

32:                                               ; preds = %31, %22
  %33 = phi i32 [ %30, %22 ], [ 0, %31 ]
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %37 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ATOM_PPLIB_R600_FLAGS_PCIEGEN2, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %47 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ATOM_PPLIB_R600_FLAGS_BACKBIASENABLE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 11
  store i32 %56, i32* %58, align 4
  %59 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %60 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %61 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 10
  %65 = call i32 @rv740_populate_sclk_value(%struct.radeon_device* %59, i32 %62, i32* %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %32
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %5, align 4
  br label %271

70:                                               ; preds = %32
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 8
  store i32 0, i32* %72, align 4
  %73 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %74 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %114

77:                                               ; preds = %70
  %78 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %79 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %82 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sle i64 %80, %83
  br i1 %84, label %85, label %114

85:                                               ; preds = %77
  %86 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %11, align 8
  %87 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %114, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* @SMC_MC_STUTTER_EN, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %11, align 8
  %97 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %90
  %101 = load i32, i32* @PPSMC_STATEFLAG_AUTO_PULSE_SKIP, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %113

106:                                              ; preds = %90
  %107 = load i32, i32* @PPSMC_STATEFLAG_AUTO_PULSE_SKIP, align 4
  %108 = xor i32 %107, -1
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %106, %100
  br label %114

114:                                              ; preds = %113, %85, %77, %70
  %115 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %116 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %212

119:                                              ; preds = %114
  %120 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %121 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %124 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp sgt i64 %122, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %119
  %128 = load i32, i32* @SMC_MC_EDC_RD_FLAG, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %127, %119
  %134 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %135 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %11, align 8
  %138 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp sgt i64 %136, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %133
  %142 = load i32, i32* @SMC_MC_EDC_WR_FLAG, align 4
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 8
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %141, %133
  %148 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %149 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %150 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @cypress_get_strobe_mode_settings(%struct.radeon_device* %148, i64 %151)
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 4
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @SMC_STROBE_ENABLE, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %189

161:                                              ; preds = %147
  %162 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %163 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %164 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @cypress_get_mclk_frequency_ratio(%struct.radeon_device* %162, i64 %165, i32 1)
  %167 = load i32, i32* @MC_SEQ_MISC7, align 4
  %168 = call i32 @RREG32(i32 %167)
  %169 = ashr i32 %168, 16
  %170 = and i32 %169, 15
  %171 = icmp sge i32 %166, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %161
  %173 = load i32, i32* @MC_SEQ_MISC5, align 4
  %174 = call i32 @RREG32(i32 %173)
  %175 = ashr i32 %174, 1
  %176 = and i32 %175, 1
  %177 = icmp ne i32 %176, 0
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i32 1, i32 0
  store i32 %179, i32* %13, align 4
  br label %188

180:                                              ; preds = %161
  %181 = load i32, i32* @MC_SEQ_MISC6, align 4
  %182 = call i32 @RREG32(i32 %181)
  %183 = ashr i32 %182, 1
  %184 = and i32 %183, 1
  %185 = icmp ne i32 %184, 0
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i32 1, i32 0
  store i32 %187, i32* %13, align 4
  br label %188

188:                                              ; preds = %180, %172
  br label %193

189:                                              ; preds = %147
  %190 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %11, align 8
  %191 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  store i32 %192, i32* %13, align 4
  br label %193

193:                                              ; preds = %189, %188
  %194 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %195 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %196 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %199 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 7
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @SMC_STROBE_ENABLE, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  %209 = zext i1 %208 to i32
  %210 = load i32, i32* %13, align 4
  %211 = call i32 @cypress_populate_mclk_value(%struct.radeon_device* %194, i32 %197, i64 %200, i32* %202, i32 %209, i32 %210)
  store i32 %211, i32* %12, align 4
  br label %223

212:                                              ; preds = %114
  %213 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %214 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %215 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %218 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 7
  %222 = call i32 @cypress_populate_mclk_value(%struct.radeon_device* %213, i32 %216, i64 %219, i32* %221, i32 1, i32 1)
  store i32 %222, i32* %12, align 4
  br label %223

223:                                              ; preds = %212, %193
  %224 = load i32, i32* %12, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %223
  %227 = load i32, i32* %12, align 4
  store i32 %227, i32* %5, align 4
  br label %271

228:                                              ; preds = %223
  %229 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %230 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %11, align 8
  %231 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %230, i32 0, i32 4
  %232 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %233 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 6
  %237 = call i32 @cypress_populate_voltage_value(%struct.radeon_device* %229, i32* %231, i32 %234, i32* %236)
  store i32 %237, i32* %12, align 4
  %238 = load i32, i32* %12, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %228
  %241 = load i32, i32* %12, align 4
  store i32 %241, i32* %5, align 4
  br label %271

242:                                              ; preds = %228
  %243 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %11, align 8
  %244 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %262

247:                                              ; preds = %242
  %248 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %249 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %11, align 8
  %250 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %249, i32 0, i32 2
  %251 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %252 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 5
  %256 = call i32 @cypress_populate_voltage_value(%struct.radeon_device* %248, i32* %250, i32 %253, i32* %255)
  store i32 %256, i32* %12, align 4
  %257 = load i32, i32* %12, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %247
  %260 = load i32, i32* %12, align 4
  store i32 %260, i32* %5, align 4
  br label %271

261:                                              ; preds = %247
  br label %262

262:                                              ; preds = %261, %242
  %263 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %264 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %265 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 4
  %269 = call i32 @cypress_populate_mvdd_value(%struct.radeon_device* %263, i64 %266, i32* %268)
  store i32 %269, i32* %12, align 4
  %270 = load i32, i32* %12, align 4
  store i32 %270, i32* %5, align 4
  br label %271

271:                                              ; preds = %262, %259, %240, %226, %68
  %272 = load i32, i32* %5, align 4
  ret i32 %272
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @rv740_populate_sclk_value(%struct.radeon_device*, i32, i32*) #1

declare dso_local i32 @cypress_get_strobe_mode_settings(%struct.radeon_device*, i64) #1

declare dso_local i32 @cypress_get_mclk_frequency_ratio(%struct.radeon_device*, i64, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @cypress_populate_mclk_value(%struct.radeon_device*, i32, i64, i32*, i32, i32) #1

declare dso_local i32 @cypress_populate_voltage_value(%struct.radeon_device*, i32*, i32, i32*) #1

declare dso_local i32 @cypress_populate_mvdd_value(%struct.radeon_device*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
