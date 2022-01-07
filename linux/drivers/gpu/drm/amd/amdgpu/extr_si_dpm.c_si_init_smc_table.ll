; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_init_smc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_init_smc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, %struct.amdgpu_ps* }
%struct.amdgpu_ps = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.si_power_info = type { i32, i32, %struct.TYPE_15__, %struct.si_ulv_param }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32 }
%struct.si_ulv_param = type { i32, i32, %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { i64 }

@PPSMC_THERMAL_PROTECT_TYPE_INTERNAL = common dso_local global i32 0, align 4
@PPSMC_THERMAL_PROTECT_TYPE_NONE = common dso_local global i32 0, align 4
@PPSMC_THERMAL_PROTECT_TYPE_EXTERNAL = common dso_local global i32 0, align 4
@ATOM_PP_PLATFORM_CAP_HARDWAREDC = common dso_local global i32 0, align 4
@PPSMC_SYSTEMFLAG_GPIO_DC = common dso_local global i32 0, align 4
@ATOM_PP_PLATFORM_CAP_REGULATOR_HOT = common dso_local global i32 0, align 4
@PPSMC_SYSTEMFLAG_REGULATOR_HOT = common dso_local global i32 0, align 4
@ATOM_PP_PLATFORM_CAP_STEPVDDC = common dso_local global i32 0, align 4
@PPSMC_SYSTEMFLAG_STEPVDDC = common dso_local global i32 0, align 4
@AMDGPU_VRAM_TYPE_GDDR5 = common dso_local global i64 0, align 8
@PPSMC_SYSTEMFLAG_GDDR5 = common dso_local global i32 0, align 4
@ATOM_PP_PLATFORM_CAP_REVERT_GPIO5_POLARITY = common dso_local global i32 0, align 4
@PPSMC_EXTRAFLAGS_AC2DC_GPIO5_POLARITY_HIGH = common dso_local global i32 0, align 4
@ATOM_PP_PLATFORM_CAP_VRHOT_GPIO_CONFIGURABLE = common dso_local global i32 0, align 4
@PPSMC_SYSTEMFLAG_REGULATOR_HOT_PROG_GPIO = common dso_local global i32 0, align 4
@SI_SMC_SOFT_REGISTER_vr_hot_gpio = common dso_local global i32 0, align 4
@SISLANDS_INITIAL_STATE_ARB_INDEX = common dso_local global i32 0, align 4
@CG_ULV_CONTROL = common dso_local global i32 0, align 4
@CG_ULV_PARAMETER = common dso_local global i32 0, align 4
@SI_SMC_SOFT_REGISTER_non_ulv_pcie_link_width = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @si_init_smc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_init_smc_table(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.si_power_info*, align 8
  %5 = alloca %struct.amdgpu_ps*, align 8
  %6 = alloca %struct.si_ulv_param*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = call %struct.si_power_info* @si_get_pi(%struct.amdgpu_device* %11)
  store %struct.si_power_info* %12, %struct.si_power_info** %4, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %17 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %16, align 8
  store %struct.amdgpu_ps* %17, %struct.amdgpu_ps** %5, align 8
  %18 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %19 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %18, i32 0, i32 3
  store %struct.si_ulv_param* %19, %struct.si_ulv_param** %6, align 8
  %20 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %21 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %20, i32 0, i32 2
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %7, align 8
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %24 = call i32 @si_populate_smc_voltage_tables(%struct.amdgpu_device* %22, %struct.TYPE_15__* %23)
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %37 [
    i32 128, label %29
    i32 130, label %29
    i32 129, label %33
  ]

29:                                               ; preds = %1, %1
  %30 = load i32, i32* @PPSMC_THERMAL_PROTECT_TYPE_INTERNAL, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  br label %41

33:                                               ; preds = %1
  %34 = load i32, i32* @PPSMC_THERMAL_PROTECT_TYPE_NONE, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  br label %41

37:                                               ; preds = %1
  %38 = load i32, i32* @PPSMC_THERMAL_PROTECT_TYPE_EXTERNAL, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %33, %29
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ATOM_PP_PLATFORM_CAP_HARDWAREDC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load i32, i32* @PPSMC_SYSTEMFLAG_GPIO_DC, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %41
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ATOM_PP_PLATFORM_CAP_REGULATOR_HOT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %56
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %67 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %66, i32 0, i32 2
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 26648
  br i1 %71, label %72, label %85

72:                                               ; preds = %65
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 2
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 26649
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i32, i32* @PPSMC_SYSTEMFLAG_REGULATOR_HOT, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %72, %65
  br label %86

86:                                               ; preds = %85, %56
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @ATOM_PP_PLATFORM_CAP_STEPVDDC, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %86
  %96 = load i32, i32* @PPSMC_SYSTEMFLAG_STEPVDDC, align 4
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %86
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %103 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @AMDGPU_VRAM_TYPE_GDDR5, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load i32, i32* @PPSMC_SYSTEMFLAG_GDDR5, align 4
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %108, %101
  %115 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %116 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @ATOM_PP_PLATFORM_CAP_REVERT_GPIO5_POLARITY, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %114
  %124 = load i32, i32* @PPSMC_EXTRAFLAGS_AC2DC_GPIO5_POLARITY_HIGH, align 4
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %123, %114
  %130 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %131 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @ATOM_PP_PLATFORM_CAP_VRHOT_GPIO_CONFIGURABLE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %129
  %139 = load i32, i32* @PPSMC_SYSTEMFLAG_REGULATOR_HOT_PROG_GPIO, align 4
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %145 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %10, align 4
  %149 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %150 = load i32, i32* @SI_SMC_SOFT_REGISTER_vr_hot_gpio, align 4
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @si_write_smc_soft_register(%struct.amdgpu_device* %149, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %138, %129
  %154 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %155 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %5, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %157 = call i32 @si_populate_smc_initial_state(%struct.amdgpu_device* %154, %struct.amdgpu_ps* %155, %struct.TYPE_15__* %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %153
  %161 = load i32, i32* %8, align 4
  store i32 %161, i32* %2, align 4
  br label %245

162:                                              ; preds = %153
  %163 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %165 = call i32 @si_populate_smc_acpi_state(%struct.amdgpu_device* %163, %struct.TYPE_15__* %164)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = load i32, i32* %8, align 4
  store i32 %169, i32* %2, align 4
  br label %245

170:                                              ; preds = %162
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 4
  %176 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %177 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %5, align 8
  %178 = load i32, i32* @SISLANDS_INITIAL_STATE_ARB_INDEX, align 4
  %179 = call i32 @si_do_program_memory_timing_parameters(%struct.amdgpu_device* %176, %struct.amdgpu_ps* %177, i32 %178)
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* %8, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %170
  %183 = load i32, i32* %8, align 4
  store i32 %183, i32* %2, align 4
  br label %245

184:                                              ; preds = %170
  %185 = load %struct.si_ulv_param*, %struct.si_ulv_param** %6, align 8
  %186 = getelementptr inbounds %struct.si_ulv_param, %struct.si_ulv_param* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %228

189:                                              ; preds = %184
  %190 = load %struct.si_ulv_param*, %struct.si_ulv_param** %6, align 8
  %191 = getelementptr inbounds %struct.si_ulv_param, %struct.si_ulv_param* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %228

195:                                              ; preds = %189
  %196 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 1
  %199 = call i32 @si_populate_ulv_state(%struct.amdgpu_device* %196, i32* %198)
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* %8, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %195
  %203 = load i32, i32* %8, align 4
  store i32 %203, i32* %2, align 4
  br label %245

204:                                              ; preds = %195
  %205 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %206 = call i32 @si_program_ulv_memory_timing_parameters(%struct.amdgpu_device* %205)
  store i32 %206, i32* %8, align 4
  %207 = load i32, i32* %8, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %204
  %210 = load i32, i32* %8, align 4
  store i32 %210, i32* %2, align 4
  br label %245

211:                                              ; preds = %204
  %212 = load i32, i32* @CG_ULV_CONTROL, align 4
  %213 = load %struct.si_ulv_param*, %struct.si_ulv_param** %6, align 8
  %214 = getelementptr inbounds %struct.si_ulv_param, %struct.si_ulv_param* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @WREG32(i32 %212, i32 %215)
  %217 = load i32, i32* @CG_ULV_PARAMETER, align 4
  %218 = load %struct.si_ulv_param*, %struct.si_ulv_param** %6, align 8
  %219 = getelementptr inbounds %struct.si_ulv_param, %struct.si_ulv_param* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @WREG32(i32 %217, i32 %220)
  %222 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %223 = call i32 @amdgpu_get_pcie_lanes(%struct.amdgpu_device* %222)
  store i32 %223, i32* %9, align 4
  %224 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %225 = load i32, i32* @SI_SMC_SOFT_REGISTER_non_ulv_pcie_link_width, align 4
  %226 = load i32, i32* %9, align 4
  %227 = call i32 @si_write_smc_soft_register(%struct.amdgpu_device* %224, i32 %225, i32 %226)
  br label %234

228:                                              ; preds = %189, %184
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 1
  store i32 %231, i32* %233, align 4
  br label %234

234:                                              ; preds = %228, %211
  %235 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %236 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %237 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %240 = bitcast %struct.TYPE_15__* %239 to i32*
  %241 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %242 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @amdgpu_si_copy_bytes_to_smc(%struct.amdgpu_device* %235, i32 %238, i32* %240, i32 24, i32 %243)
  store i32 %244, i32* %2, align 4
  br label %245

245:                                              ; preds = %234, %209, %202, %182, %168, %160
  %246 = load i32, i32* %2, align 4
  ret i32 %246
}

declare dso_local %struct.si_power_info* @si_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @si_populate_smc_voltage_tables(%struct.amdgpu_device*, %struct.TYPE_15__*) #1

declare dso_local i32 @si_write_smc_soft_register(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @si_populate_smc_initial_state(%struct.amdgpu_device*, %struct.amdgpu_ps*, %struct.TYPE_15__*) #1

declare dso_local i32 @si_populate_smc_acpi_state(%struct.amdgpu_device*, %struct.TYPE_15__*) #1

declare dso_local i32 @si_do_program_memory_timing_parameters(%struct.amdgpu_device*, %struct.amdgpu_ps*, i32) #1

declare dso_local i32 @si_populate_ulv_state(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @si_program_ulv_memory_timing_parameters(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @amdgpu_get_pcie_lanes(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_si_copy_bytes_to_smc(%struct.amdgpu_device*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
