; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_convert_power_level_to_smc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_convert_power_level_to_smc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.rv7xx_pl = type { i64, i32, i32, i32, i64 }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_15__, i32, i32, i32, i32, i8* }
%struct.TYPE_15__ = type { i32 }
%struct.rv7xx_power_info = type { i64, i64 }
%struct.evergreen_power_info = type { i64, i32, i64, i32, i32, i64 }
%struct.si_power_info = type { i64, i32, i64 }

@AMDGPU_PCIE_GEN_INVALID = common dso_local global i64 0, align 8
@DPG_PIPE_STUTTER_CONTROL = common dso_local global i32 0, align 4
@STUTTER_ENABLE = common dso_local global i32 0, align 4
@SISLANDS_SMC_MC_STUTTER_EN = common dso_local global i32 0, align 4
@SISLANDS_SMC_MC_PG_EN = common dso_local global i32 0, align 4
@AMDGPU_VRAM_TYPE_GDDR5 = common dso_local global i64 0, align 8
@SISLANDS_SMC_MC_EDC_RD_FLAG = common dso_local global i32 0, align 4
@SISLANDS_SMC_MC_EDC_WR_FLAG = common dso_local global i32 0, align 4
@SISLANDS_SMC_STROBE_ENABLE = common dso_local global i32 0, align 4
@MC_SEQ_MISC7 = common dso_local global i32 0, align 4
@MC_SEQ_MISC5 = common dso_local global i32 0, align 4
@MC_SEQ_MISC6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.rv7xx_pl*, %struct.TYPE_14__*)* @si_convert_power_level_to_smc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_convert_power_level_to_smc(%struct.amdgpu_device* %0, %struct.rv7xx_pl* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.rv7xx_pl*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.rv7xx_power_info*, align 8
  %9 = alloca %struct.evergreen_power_info*, align 8
  %10 = alloca %struct.si_power_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.rv7xx_pl* %1, %struct.rv7xx_pl** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %16 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.amdgpu_device* %15)
  store %struct.rv7xx_power_info* %16, %struct.rv7xx_power_info** %8, align 8
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %18 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.amdgpu_device* %17)
  store %struct.evergreen_power_info* %18, %struct.evergreen_power_info** %9, align 8
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %20 = call %struct.si_power_info* @si_get_pi(%struct.amdgpu_device* %19)
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
  %29 = load i64, i64* @AMDGPU_PCIE_GEN_INVALID, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.si_power_info*, %struct.si_power_info** %10, align 8
  %33 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 9
  store i8* %35, i8** %37, align 8
  br label %45

38:                                               ; preds = %25, %3
  %39 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %40 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 9
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %38, %31
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %47 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %48 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 8
  %52 = call i32 @si_populate_sclk_value(%struct.amdgpu_device* %46, i32 %49, i32* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %4, align 4
  br label %323

57:                                               ; preds = %45
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 7
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
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %85 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp sle i32 %88, 2
  br i1 %89, label %90, label %105

90:                                               ; preds = %83
  %91 = load i32, i32* @SISLANDS_SMC_MC_STUTTER_EN, align 4
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = load i32, i32* @SISLANDS_SMC_MC_PG_EN, align 4
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %90
  br label %105

105:                                              ; preds = %104, %83, %77, %72, %64, %57
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %107 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @AMDGPU_VRAM_TYPE_GDDR5, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %184

112:                                              ; preds = %105
  %113 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %114 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %117 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %115, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %112
  %121 = load i32, i32* @SISLANDS_SMC_MC_EDC_RD_FLAG, align 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %120, %112
  %127 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %128 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %131 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp sgt i64 %129, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %126
  %135 = load i32, i32* @SISLANDS_SMC_MC_EDC_WR_FLAG, align 4
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %134, %126
  %141 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %142 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %143 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i8* @si_get_strobe_mode_settings(%struct.amdgpu_device* %141, i64 %144)
  %146 = ptrtoint i8* %145 to i32
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @SISLANDS_SMC_STROBE_ENABLE, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %182

155:                                              ; preds = %140
  %156 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %157 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @si_get_mclk_frequency_ratio(i64 %158, i32 1)
  %160 = load i32, i32* @MC_SEQ_MISC7, align 4
  %161 = call i32 @RREG32(i32 %160)
  %162 = ashr i32 %161, 16
  %163 = and i32 %162, 15
  %164 = icmp sge i32 %159, %163
  br i1 %164, label %165, label %173

165:                                              ; preds = %155
  %166 = load i32, i32* @MC_SEQ_MISC5, align 4
  %167 = call i32 @RREG32(i32 %166)
  %168 = ashr i32 %167, 1
  %169 = and i32 %168, 1
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i32 1, i32 0
  store i32 %172, i32* %12, align 4
  br label %181

173:                                              ; preds = %155
  %174 = load i32, i32* @MC_SEQ_MISC6, align 4
  %175 = call i32 @RREG32(i32 %174)
  %176 = ashr i32 %175, 1
  %177 = and i32 %176, 1
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i32 1, i32 0
  store i32 %180, i32* %12, align 4
  br label %181

181:                                              ; preds = %173, %165
  br label %183

182:                                              ; preds = %140
  store i32 0, i32* %12, align 4
  br label %183

183:                                              ; preds = %182, %181
  br label %200

184:                                              ; preds = %105
  %185 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %186 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %187 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = call i8* @si_get_strobe_mode_settings(%struct.amdgpu_device* %185, i64 %188)
  %190 = ptrtoint i8* %189 to i32
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  %193 = load i32, i32* @MC_SEQ_MISC5, align 4
  %194 = call i32 @RREG32(i32 %193)
  %195 = ashr i32 %194, 1
  %196 = and i32 %195, 1
  %197 = icmp ne i32 %196, 0
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i32 1, i32 0
  store i32 %199, i32* %12, align 4
  br label %200

200:                                              ; preds = %184, %183
  %201 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %202 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %203 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %206 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 6
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @SISLANDS_SMC_STROBE_ENABLE, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  %216 = zext i1 %215 to i32
  %217 = load i32, i32* %12, align 4
  %218 = call i32 @si_populate_mclk_value(%struct.amdgpu_device* %201, i32 %204, i64 %207, i32* %209, i32 %216, i32 %217)
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* %11, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %200
  %222 = load i32, i32* %11, align 4
  store i32 %222, i32* %4, align 4
  br label %323

223:                                              ; preds = %200
  %224 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %225 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %226 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %225, i32 0, i32 3
  %227 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %228 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 3
  %232 = call i32 @si_populate_voltage_value(%struct.amdgpu_device* %224, i32* %226, i32 %229, %struct.TYPE_15__* %231)
  store i32 %232, i32* %11, align 4
  %233 = load i32, i32* %11, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %223
  %236 = load i32, i32* %11, align 4
  store i32 %236, i32* %4, align 4
  br label %323

237:                                              ; preds = %223
  %238 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 3
  %241 = call i32 @si_get_std_voltage_value(%struct.amdgpu_device* %238, %struct.TYPE_15__* %240, i32* %13)
  store i32 %241, i32* %11, align 4
  %242 = load i32, i32* %11, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %237
  %245 = load i32, i32* %11, align 4
  store i32 %245, i32* %4, align 4
  br label %323

246:                                              ; preds = %237
  %247 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %248 = load i32, i32* %13, align 4
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 5
  %255 = call i32 @si_populate_std_voltage_value(%struct.amdgpu_device* %247, i32 %248, i32 %252, i32* %254)
  store i32 %255, i32* %11, align 4
  %256 = load i32, i32* %11, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %246
  %259 = load i32, i32* %11, align 4
  store i32 %259, i32* %4, align 4
  br label %323

260:                                              ; preds = %246
  %261 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %262 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %280

265:                                              ; preds = %260
  %266 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %267 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %268 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %267, i32 0, i32 1
  %269 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %270 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 4
  %274 = call i32 @si_populate_voltage_value(%struct.amdgpu_device* %266, i32* %268, i32 %271, %struct.TYPE_15__* %273)
  store i32 %274, i32* %11, align 4
  %275 = load i32, i32* %11, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %265
  %278 = load i32, i32* %11, align 4
  store i32 %278, i32* %4, align 4
  br label %323

279:                                              ; preds = %265
  br label %280

280:                                              ; preds = %279, %260
  %281 = load %struct.si_power_info*, %struct.si_power_info** %10, align 8
  %282 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %309

285:                                              ; preds = %280
  %286 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %287 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %288 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 0
  %292 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %293 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %296 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %299 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 3
  %303 = call i32 @si_populate_phase_shedding_value(%struct.amdgpu_device* %286, i32* %291, i32 %294, i32 %297, i64 %300, %struct.TYPE_15__* %302)
  store i32 %303, i32* %11, align 4
  %304 = load i32, i32* %11, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %285
  %307 = load i32, i32* %11, align 4
  store i32 %307, i32* %4, align 4
  br label %323

308:                                              ; preds = %285
  br label %309

309:                                              ; preds = %308, %280
  %310 = load %struct.si_power_info*, %struct.si_power_info** %10, align 8
  %311 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 2
  store i32 %312, i32* %314, align 8
  %315 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %316 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %317 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 1
  %321 = call i32 @si_populate_mvdd_value(%struct.amdgpu_device* %315, i64 %318, i32* %320)
  store i32 %321, i32* %11, align 4
  %322 = load i32, i32* %11, align 4
  store i32 %322, i32* %4, align 4
  br label %323

323:                                              ; preds = %309, %306, %277, %258, %244, %235, %221, %55
  %324 = load i32, i32* %4, align 4
  ret i32 %324
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.amdgpu_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.amdgpu_device*) #1

declare dso_local %struct.si_power_info* @si_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @si_populate_sclk_value(%struct.amdgpu_device*, i32, i32*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i8* @si_get_strobe_mode_settings(%struct.amdgpu_device*, i64) #1

declare dso_local i32 @si_get_mclk_frequency_ratio(i64, i32) #1

declare dso_local i32 @si_populate_mclk_value(%struct.amdgpu_device*, i32, i64, i32*, i32, i32) #1

declare dso_local i32 @si_populate_voltage_value(%struct.amdgpu_device*, i32*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @si_get_std_voltage_value(%struct.amdgpu_device*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @si_populate_std_voltage_value(%struct.amdgpu_device*, i32, i32, i32*) #1

declare dso_local i32 @si_populate_phase_shedding_value(%struct.amdgpu_device*, i32*, i32, i32, i64, %struct.TYPE_15__*) #1

declare dso_local i32 @si_populate_mvdd_value(%struct.amdgpu_device*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
