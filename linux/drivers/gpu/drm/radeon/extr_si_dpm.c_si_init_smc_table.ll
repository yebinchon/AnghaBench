; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_init_smc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_init_smc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_11__, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, %struct.radeon_ps* }
%struct.radeon_ps = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.rv7xx_power_info = type { i64 }
%struct.si_power_info = type { i32, i32, %struct.TYPE_13__, %struct.si_ulv_param }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }
%struct.si_ulv_param = type { i32, i32, %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { i64 }

@PPSMC_THERMAL_PROTECT_TYPE_INTERNAL = common dso_local global i32 0, align 4
@PPSMC_THERMAL_PROTECT_TYPE_NONE = common dso_local global i32 0, align 4
@PPSMC_THERMAL_PROTECT_TYPE_EXTERNAL = common dso_local global i32 0, align 4
@ATOM_PP_PLATFORM_CAP_HARDWAREDC = common dso_local global i32 0, align 4
@PPSMC_SYSTEMFLAG_GPIO_DC = common dso_local global i32 0, align 4
@ATOM_PP_PLATFORM_CAP_REGULATOR_HOT = common dso_local global i32 0, align 4
@PPSMC_SYSTEMFLAG_REGULATOR_HOT = common dso_local global i32 0, align 4
@ATOM_PP_PLATFORM_CAP_STEPVDDC = common dso_local global i32 0, align 4
@PPSMC_SYSTEMFLAG_STEPVDDC = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @si_init_smc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_init_smc_table(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv7xx_power_info*, align 8
  %5 = alloca %struct.si_power_info*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct.si_ulv_param*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %12)
  store %struct.rv7xx_power_info* %13, %struct.rv7xx_power_info** %4, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = call %struct.si_power_info* @si_get_pi(%struct.radeon_device* %14)
  store %struct.si_power_info* %15, %struct.si_power_info** %5, align 8
  %16 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load %struct.radeon_ps*, %struct.radeon_ps** %19, align 8
  store %struct.radeon_ps* %20, %struct.radeon_ps** %6, align 8
  %21 = load %struct.si_power_info*, %struct.si_power_info** %5, align 8
  %22 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %21, i32 0, i32 3
  store %struct.si_ulv_param* %22, %struct.si_ulv_param** %7, align 8
  %23 = load %struct.si_power_info*, %struct.si_power_info** %5, align 8
  %24 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %23, i32 0, i32 2
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %8, align 8
  %25 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %27 = call i32 @si_populate_smc_voltage_tables(%struct.radeon_device* %25, %struct.TYPE_13__* %26)
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %40 [
    i32 128, label %32
    i32 130, label %32
    i32 129, label %36
  ]

32:                                               ; preds = %1, %1
  %33 = load i32, i32* @PPSMC_THERMAL_PROTECT_TYPE_INTERNAL, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  br label %44

36:                                               ; preds = %1
  %37 = load i32, i32* @PPSMC_THERMAL_PROTECT_TYPE_NONE, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  br label %44

40:                                               ; preds = %1
  %41 = load i32, i32* @PPSMC_THERMAL_PROTECT_TYPE_EXTERNAL, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %36, %32
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ATOM_PP_PLATFORM_CAP_HARDWAREDC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load i32, i32* @PPSMC_SYSTEMFLAG_GPIO_DC, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %44
  %60 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ATOM_PP_PLATFORM_CAP_REGULATOR_HOT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %59
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 26648
  br i1 %74, label %75, label %88

75:                                               ; preds = %68
  %76 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 1
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 26649
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load i32, i32* @PPSMC_SYSTEMFLAG_REGULATOR_HOT, align 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %75, %68
  br label %89

89:                                               ; preds = %88, %59
  %90 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %91 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @ATOM_PP_PLATFORM_CAP_STEPVDDC, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %89
  %99 = load i32, i32* @PPSMC_SYSTEMFLAG_STEPVDDC, align 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %89
  %105 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %106 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load i32, i32* @PPSMC_SYSTEMFLAG_GDDR5, align 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %109, %104
  %116 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %117 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @ATOM_PP_PLATFORM_CAP_REVERT_GPIO5_POLARITY, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %115
  %125 = load i32, i32* @PPSMC_EXTRAFLAGS_AC2DC_GPIO5_POLARITY_HIGH, align 4
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %124, %115
  %131 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %132 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @ATOM_PP_PLATFORM_CAP_VRHOT_GPIO_CONFIGURABLE, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %130
  %140 = load i32, i32* @PPSMC_SYSTEMFLAG_REGULATOR_HOT_PROG_GPIO, align 4
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 4
  %145 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %146 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %11, align 4
  %150 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %151 = load i32, i32* @SI_SMC_SOFT_REGISTER_vr_hot_gpio, align 4
  %152 = load i32, i32* %11, align 4
  %153 = call i32 @si_write_smc_soft_register(%struct.radeon_device* %150, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %139, %130
  %155 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %156 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %158 = call i32 @si_populate_smc_initial_state(%struct.radeon_device* %155, %struct.radeon_ps* %156, %struct.TYPE_13__* %157)
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = load i32, i32* %9, align 4
  store i32 %162, i32* %2, align 4
  br label %246

163:                                              ; preds = %154
  %164 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %166 = call i32 @si_populate_smc_acpi_state(%struct.radeon_device* %164, %struct.TYPE_13__* %165)
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* %9, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = load i32, i32* %9, align 4
  store i32 %170, i32* %2, align 4
  br label %246

171:                                              ; preds = %163
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 4
  %177 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %178 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %179 = load i32, i32* @SISLANDS_INITIAL_STATE_ARB_INDEX, align 4
  %180 = call i32 @si_do_program_memory_timing_parameters(%struct.radeon_device* %177, %struct.radeon_ps* %178, i32 %179)
  store i32 %180, i32* %9, align 4
  %181 = load i32, i32* %9, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %171
  %184 = load i32, i32* %9, align 4
  store i32 %184, i32* %2, align 4
  br label %246

185:                                              ; preds = %171
  %186 = load %struct.si_ulv_param*, %struct.si_ulv_param** %7, align 8
  %187 = getelementptr inbounds %struct.si_ulv_param, %struct.si_ulv_param* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %229

190:                                              ; preds = %185
  %191 = load %struct.si_ulv_param*, %struct.si_ulv_param** %7, align 8
  %192 = getelementptr inbounds %struct.si_ulv_param, %struct.si_ulv_param* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %229

196:                                              ; preds = %190
  %197 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 1
  %200 = call i32 @si_populate_ulv_state(%struct.radeon_device* %197, i32* %199)
  store i32 %200, i32* %9, align 4
  %201 = load i32, i32* %9, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %196
  %204 = load i32, i32* %9, align 4
  store i32 %204, i32* %2, align 4
  br label %246

205:                                              ; preds = %196
  %206 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %207 = call i32 @si_program_ulv_memory_timing_parameters(%struct.radeon_device* %206)
  store i32 %207, i32* %9, align 4
  %208 = load i32, i32* %9, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  %211 = load i32, i32* %9, align 4
  store i32 %211, i32* %2, align 4
  br label %246

212:                                              ; preds = %205
  %213 = load i32, i32* @CG_ULV_CONTROL, align 4
  %214 = load %struct.si_ulv_param*, %struct.si_ulv_param** %7, align 8
  %215 = getelementptr inbounds %struct.si_ulv_param, %struct.si_ulv_param* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @WREG32(i32 %213, i32 %216)
  %218 = load i32, i32* @CG_ULV_PARAMETER, align 4
  %219 = load %struct.si_ulv_param*, %struct.si_ulv_param** %7, align 8
  %220 = getelementptr inbounds %struct.si_ulv_param, %struct.si_ulv_param* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @WREG32(i32 %218, i32 %221)
  %223 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %224 = call i32 @radeon_get_pcie_lanes(%struct.radeon_device* %223)
  store i32 %224, i32* %10, align 4
  %225 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %226 = load i32, i32* @SI_SMC_SOFT_REGISTER_non_ulv_pcie_link_width, align 4
  %227 = load i32, i32* %10, align 4
  %228 = call i32 @si_write_smc_soft_register(%struct.radeon_device* %225, i32 %226, i32 %227)
  br label %235

229:                                              ; preds = %190, %185
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 1
  store i32 %232, i32* %234, align 4
  br label %235

235:                                              ; preds = %229, %212
  %236 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %237 = load %struct.si_power_info*, %struct.si_power_info** %5, align 8
  %238 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %241 = bitcast %struct.TYPE_13__* %240 to i32*
  %242 = load %struct.si_power_info*, %struct.si_power_info** %5, align 8
  %243 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @si_copy_bytes_to_smc(%struct.radeon_device* %236, i32 %239, i32* %241, i32 24, i32 %244)
  store i32 %245, i32* %2, align 4
  br label %246

246:                                              ; preds = %235, %210, %203, %183, %169, %161
  %247 = load i32, i32* %2, align 4
  ret i32 %247
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.si_power_info* @si_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @si_populate_smc_voltage_tables(%struct.radeon_device*, %struct.TYPE_13__*) #1

declare dso_local i32 @si_write_smc_soft_register(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @si_populate_smc_initial_state(%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_13__*) #1

declare dso_local i32 @si_populate_smc_acpi_state(%struct.radeon_device*, %struct.TYPE_13__*) #1

declare dso_local i32 @si_do_program_memory_timing_parameters(%struct.radeon_device*, %struct.radeon_ps*, i32) #1

declare dso_local i32 @si_populate_ulv_state(%struct.radeon_device*, i32*) #1

declare dso_local i32 @si_program_ulv_memory_timing_parameters(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_get_pcie_lanes(%struct.radeon_device*) #1

declare dso_local i32 @si_copy_bytes_to_smc(%struct.radeon_device*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
