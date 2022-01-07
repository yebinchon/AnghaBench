; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_convert_power_level_to_smc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_convert_power_level_to_smc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.rv7xx_pl = type { i64, i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_13__, i32, i32, i32, i32, i8* }
%struct.TYPE_13__ = type { i32 }
%struct.rv7xx_power_info = type { i64, i64, i64 }
%struct.evergreen_power_info = type { i64, i32, i64, i32, i32, i64 }
%struct.si_power_info = type { i64, i32, i64 }

@RADEON_PCIE_GEN_INVALID = common dso_local global i64 0, align 8
@DPG_PIPE_STUTTER_CONTROL = common dso_local global i32 0, align 4
@STUTTER_ENABLE = common dso_local global i32 0, align 4
@SISLANDS_SMC_MC_STUTTER_EN = common dso_local global i32 0, align 4
@SISLANDS_SMC_MC_PG_EN = common dso_local global i32 0, align 4
@SISLANDS_SMC_MC_EDC_RD_FLAG = common dso_local global i32 0, align 4
@SISLANDS_SMC_MC_EDC_WR_FLAG = common dso_local global i32 0, align 4
@SISLANDS_SMC_STROBE_ENABLE = common dso_local global i32 0, align 4
@MC_SEQ_MISC7 = common dso_local global i32 0, align 4
@MC_SEQ_MISC5 = common dso_local global i32 0, align 4
@MC_SEQ_MISC6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.rv7xx_pl*, %struct.TYPE_12__*)* @si_convert_power_level_to_smc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_convert_power_level_to_smc(%struct.radeon_device* %0, %struct.rv7xx_pl* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.rv7xx_pl*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.rv7xx_power_info*, align 8
  %9 = alloca %struct.evergreen_power_info*, align 8
  %10 = alloca %struct.si_power_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.rv7xx_pl* %1, %struct.rv7xx_pl** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %16 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %15)
  store %struct.rv7xx_power_info* %16, %struct.rv7xx_power_info** %8, align 8
  %17 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %18 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %17)
  store %struct.evergreen_power_info* %18, %struct.evergreen_power_info** %9, align 8
  %19 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %20 = call %struct.si_power_info* @si_get_pi(%struct.radeon_device* %19)
  store %struct.si_power_info* %20, %struct.si_power_info** %10, align 8
  store i32 0, i32* %14, align 4
  %21 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %22 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %3
  %26 = load %struct.si_power_info*, %struct.si_power_info** %10, align 8
  %27 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RADEON_PCIE_GEN_INVALID, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.si_power_info*, %struct.si_power_info** %10, align 8
  %33 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 9
  store i8* %35, i8** %37, align 8
  br label %45

38:                                               ; preds = %25, %3
  %39 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %40 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 9
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %38, %31
  %46 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %47 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %48 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 8
  %52 = call i32 @si_populate_sclk_value(%struct.radeon_device* %46, i32 %49, i32* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %4, align 4
  br label %321

57:                                               ; preds = %45
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 7
  store i32 0, i32* %59, align 4
  %60 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %61 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %105

64:                                               ; preds = %57
  %65 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %66 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %69 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sle i64 %67, %70
  br i1 %71, label %72, label %105

72:                                               ; preds = %64
  %73 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %74 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %105, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @DPG_PIPE_STUTTER_CONTROL, align 4
  %79 = call i32 @RREG32(i32 %78)
  %80 = load i32, i32* @STUTTER_ENABLE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %77
  %84 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %85 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp sle i32 %88, 2
  br i1 %89, label %90, label %105

90:                                               ; preds = %83
  %91 = load i32, i32* @SISLANDS_SMC_MC_STUTTER_EN, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = load i32, i32* @SISLANDS_SMC_MC_PG_EN, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %90
  br label %105

105:                                              ; preds = %104, %83, %77, %72, %64, %57
  %106 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %107 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %182

110:                                              ; preds = %105
  %111 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %112 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %115 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %113, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %110
  %119 = load i32, i32* @SISLANDS_SMC_MC_EDC_RD_FLAG, align 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %118, %110
  %125 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %126 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %129 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp sgt i64 %127, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %124
  %133 = load i32, i32* @SISLANDS_SMC_MC_EDC_WR_FLAG, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %132, %124
  %139 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %140 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %141 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i8* @si_get_strobe_mode_settings(%struct.radeon_device* %139, i64 %142)
  %144 = ptrtoint i8* %143 to i32
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @SISLANDS_SMC_STROBE_ENABLE, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %180

153:                                              ; preds = %138
  %154 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %155 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @si_get_mclk_frequency_ratio(i64 %156, i32 1)
  %158 = load i32, i32* @MC_SEQ_MISC7, align 4
  %159 = call i32 @RREG32(i32 %158)
  %160 = ashr i32 %159, 16
  %161 = and i32 %160, 15
  %162 = icmp sge i32 %157, %161
  br i1 %162, label %163, label %171

163:                                              ; preds = %153
  %164 = load i32, i32* @MC_SEQ_MISC5, align 4
  %165 = call i32 @RREG32(i32 %164)
  %166 = ashr i32 %165, 1
  %167 = and i32 %166, 1
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i32 1, i32 0
  store i32 %170, i32* %12, align 4
  br label %179

171:                                              ; preds = %153
  %172 = load i32, i32* @MC_SEQ_MISC6, align 4
  %173 = call i32 @RREG32(i32 %172)
  %174 = ashr i32 %173, 1
  %175 = and i32 %174, 1
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i32 1, i32 0
  store i32 %178, i32* %12, align 4
  br label %179

179:                                              ; preds = %171, %163
  br label %181

180:                                              ; preds = %138
  store i32 0, i32* %12, align 4
  br label %181

181:                                              ; preds = %180, %179
  br label %198

182:                                              ; preds = %105
  %183 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %184 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %185 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = call i8* @si_get_strobe_mode_settings(%struct.radeon_device* %183, i64 %186)
  %188 = ptrtoint i8* %187 to i32
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  %191 = load i32, i32* @MC_SEQ_MISC5, align 4
  %192 = call i32 @RREG32(i32 %191)
  %193 = ashr i32 %192, 1
  %194 = and i32 %193, 1
  %195 = icmp ne i32 %194, 0
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i32 1, i32 0
  store i32 %197, i32* %12, align 4
  br label %198

198:                                              ; preds = %182, %181
  %199 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %200 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %201 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %204 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 6
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @SISLANDS_SMC_STROBE_ENABLE, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  %214 = zext i1 %213 to i32
  %215 = load i32, i32* %12, align 4
  %216 = call i32 @si_populate_mclk_value(%struct.radeon_device* %199, i32 %202, i64 %205, i32* %207, i32 %214, i32 %215)
  store i32 %216, i32* %11, align 4
  %217 = load i32, i32* %11, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %198
  %220 = load i32, i32* %11, align 4
  store i32 %220, i32* %4, align 4
  br label %321

221:                                              ; preds = %198
  %222 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %223 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %224 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %223, i32 0, i32 3
  %225 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %226 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 3
  %230 = call i32 @si_populate_voltage_value(%struct.radeon_device* %222, i32* %224, i32 %227, %struct.TYPE_13__* %229)
  store i32 %230, i32* %11, align 4
  %231 = load i32, i32* %11, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %221
  %234 = load i32, i32* %11, align 4
  store i32 %234, i32* %4, align 4
  br label %321

235:                                              ; preds = %221
  %236 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 3
  %239 = call i32 @si_get_std_voltage_value(%struct.radeon_device* %236, %struct.TYPE_13__* %238, i32* %13)
  store i32 %239, i32* %11, align 4
  %240 = load i32, i32* %11, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %235
  %243 = load i32, i32* %11, align 4
  store i32 %243, i32* %4, align 4
  br label %321

244:                                              ; preds = %235
  %245 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %246 = load i32, i32* %13, align 4
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 5
  %253 = call i32 @si_populate_std_voltage_value(%struct.radeon_device* %245, i32 %246, i32 %250, i32* %252)
  store i32 %253, i32* %11, align 4
  %254 = load i32, i32* %11, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %244
  %257 = load i32, i32* %11, align 4
  store i32 %257, i32* %4, align 4
  br label %321

258:                                              ; preds = %244
  %259 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %260 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %278

263:                                              ; preds = %258
  %264 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %265 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %266 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %265, i32 0, i32 1
  %267 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %268 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 4
  %272 = call i32 @si_populate_voltage_value(%struct.radeon_device* %264, i32* %266, i32 %269, %struct.TYPE_13__* %271)
  store i32 %272, i32* %11, align 4
  %273 = load i32, i32* %11, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %263
  %276 = load i32, i32* %11, align 4
  store i32 %276, i32* %4, align 4
  br label %321

277:                                              ; preds = %263
  br label %278

278:                                              ; preds = %277, %258
  %279 = load %struct.si_power_info*, %struct.si_power_info** %10, align 8
  %280 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %307

283:                                              ; preds = %278
  %284 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %285 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %286 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 0
  %290 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %291 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %294 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %297 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 3
  %301 = call i32 @si_populate_phase_shedding_value(%struct.radeon_device* %284, i32* %289, i32 %292, i32 %295, i64 %298, %struct.TYPE_13__* %300)
  store i32 %301, i32* %11, align 4
  %302 = load i32, i32* %11, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %283
  %305 = load i32, i32* %11, align 4
  store i32 %305, i32* %4, align 4
  br label %321

306:                                              ; preds = %283
  br label %307

307:                                              ; preds = %306, %278
  %308 = load %struct.si_power_info*, %struct.si_power_info** %10, align 8
  %309 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 2
  store i32 %310, i32* %312, align 8
  %313 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %314 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %315 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 1
  %319 = call i32 @si_populate_mvdd_value(%struct.radeon_device* %313, i64 %316, i32* %318)
  store i32 %319, i32* %11, align 4
  %320 = load i32, i32* %11, align 4
  store i32 %320, i32* %4, align 4
  br label %321

321:                                              ; preds = %307, %304, %275, %256, %242, %233, %219, %55
  %322 = load i32, i32* %4, align 4
  ret i32 %322
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.si_power_info* @si_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @si_populate_sclk_value(%struct.radeon_device*, i32, i32*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i8* @si_get_strobe_mode_settings(%struct.radeon_device*, i64) #1

declare dso_local i32 @si_get_mclk_frequency_ratio(i64, i32) #1

declare dso_local i32 @si_populate_mclk_value(%struct.radeon_device*, i32, i64, i32*, i32, i32) #1

declare dso_local i32 @si_populate_voltage_value(%struct.radeon_device*, i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @si_get_std_voltage_value(%struct.radeon_device*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @si_populate_std_voltage_value(%struct.radeon_device*, i32, i32, i32*) #1

declare dso_local i32 @si_populate_phase_shedding_value(%struct.radeon_device*, i32*, i32, i32, i64, %struct.TYPE_13__*) #1

declare dso_local i32 @si_populate_mvdd_value(%struct.radeon_device*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
