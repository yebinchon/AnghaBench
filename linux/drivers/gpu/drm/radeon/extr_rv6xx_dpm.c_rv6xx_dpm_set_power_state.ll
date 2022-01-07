; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_dpm_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_dpm_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, %struct.radeon_ps*, %struct.radeon_ps* }
%struct.radeon_ps = type { i32 }
%struct.rv6xx_power_info = type { i64, i64, i64, i64 }

@R600_POWER_LEVEL_LOW = common dso_local global i32 0, align 4
@R600_POWER_LEVEL_HIGH = common dso_local global i32 0, align 4
@R600_POWER_LEVEL_MEDIUM = common dso_local global i32 0, align 4
@ATOM_PP_PLATFORM_CAP_STEPVDDC = common dso_local global i32 0, align 4
@ATOM_PP_PLATFORM_CAP_BACKBIAS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv6xx_dpm_set_power_state(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv6xx_power_info*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device* %8)
  store %struct.rv6xx_power_info* %9, %struct.rv6xx_power_info** %4, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %14 = load %struct.radeon_ps*, %struct.radeon_ps** %13, align 8
  store %struct.radeon_ps* %14, %struct.radeon_ps** %5, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load %struct.radeon_ps*, %struct.radeon_ps** %18, align 8
  store %struct.radeon_ps* %19, %struct.radeon_ps** %6, align 8
  %20 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %4, align 8
  %21 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %24 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %25 = call i32 @rv6xx_set_uvd_clock_before_set_eng_clock(%struct.radeon_device* %22, %struct.radeon_ps* %23, %struct.radeon_ps* %24)
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = call i32 @rv6xx_clear_vc(%struct.radeon_device* %26)
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = load i32, i32* @R600_POWER_LEVEL_LOW, align 4
  %30 = call i32 @r600_power_level_enable(%struct.radeon_device* %28, i32 %29, i32 1)
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = call i32 @r600_set_at(%struct.radeon_device* %31, i32 65535, i32 65535, i32 65535, i32 65535)
  %33 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %4, align 8
  %34 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = call i32 @r600_enable_thermal_protection(%struct.radeon_device* %38, i32 0)
  br label %40

40:                                               ; preds = %37, %1
  %41 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %42 = load i32, i32* @R600_POWER_LEVEL_LOW, align 4
  %43 = call i32 @r600_wait_for_power_level(%struct.radeon_device* %41, i32 %42)
  %44 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %45 = load i32, i32* @R600_POWER_LEVEL_HIGH, align 4
  %46 = call i32 @r600_power_level_enable(%struct.radeon_device* %44, i32 %45, i32 0)
  %47 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %48 = load i32, i32* @R600_POWER_LEVEL_MEDIUM, align 4
  %49 = call i32 @r600_power_level_enable(%struct.radeon_device* %47, i32 %48, i32 0)
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %52 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %53 = call i32 @rv6xx_generate_transition_stepping(%struct.radeon_device* %50, %struct.radeon_ps* %51, %struct.radeon_ps* %52)
  %54 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %55 = call i32 @rv6xx_program_power_level_medium_for_transition(%struct.radeon_device* %54)
  %56 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %4, align 8
  %57 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %40
  %61 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %62 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %63 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %64 = call i32 @rv6xx_set_sw_voltage_to_safe(%struct.radeon_device* %61, %struct.radeon_ps* %62, %struct.radeon_ps* %63)
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @ATOM_PP_PLATFORM_CAP_STEPVDDC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %60
  %74 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %75 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %76 = call i32 @rv6xx_set_sw_voltage_to_low(%struct.radeon_device* %74, %struct.radeon_ps* %75)
  br label %77

77:                                               ; preds = %73, %60
  br label %78

78:                                               ; preds = %77, %40
  %79 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %80 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @ATOM_PP_PLATFORM_CAP_BACKBIAS, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %78
  %88 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %89 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %90 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %91 = call i32 @rv6xx_set_safe_backbias(%struct.radeon_device* %88, %struct.radeon_ps* %89, %struct.radeon_ps* %90)
  br label %92

92:                                               ; preds = %87, %78
  %93 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %4, align 8
  %94 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %99 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %100 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %101 = call i32 @rv6xx_set_safe_pcie_gen2(%struct.radeon_device* %98, %struct.radeon_ps* %99, %struct.radeon_ps* %100)
  br label %102

102:                                              ; preds = %97, %92
  %103 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %4, align 8
  %104 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %109 = call i32 @rv6xx_enable_dynamic_voltage_control(%struct.radeon_device* %108, i32 0)
  br label %110

110:                                              ; preds = %107, %102
  %111 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %112 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @ATOM_PP_PLATFORM_CAP_BACKBIAS, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %110
  %120 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %121 = call i32 @rv6xx_enable_dynamic_backbias_control(%struct.radeon_device* %120, i32 0)
  br label %122

122:                                              ; preds = %119, %110
  %123 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %4, align 8
  %124 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %150

127:                                              ; preds = %122
  %128 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %129 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @ATOM_PP_PLATFORM_CAP_STEPVDDC, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %127
  %137 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %138 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %139 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %140 = call i32 @rv6xx_step_voltage_if_increasing(%struct.radeon_device* %137, %struct.radeon_ps* %138, %struct.radeon_ps* %139)
  br label %141

141:                                              ; preds = %136, %127
  %142 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %143 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 999
  %148 = sdiv i32 %147, 1000
  %149 = call i32 @msleep(i32 %148)
  br label %150

150:                                              ; preds = %141, %122
  %151 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %152 = load i32, i32* @R600_POWER_LEVEL_MEDIUM, align 4
  %153 = call i32 @r600_power_level_enable(%struct.radeon_device* %151, i32 %152, i32 1)
  %154 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %155 = load i32, i32* @R600_POWER_LEVEL_LOW, align 4
  %156 = call i32 @r600_power_level_enable(%struct.radeon_device* %154, i32 %155, i32 0)
  %157 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %158 = load i32, i32* @R600_POWER_LEVEL_LOW, align 4
  %159 = call i32 @r600_wait_for_power_level_unequal(%struct.radeon_device* %157, i32 %158)
  %160 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %161 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %162 = call i32 @rv6xx_generate_low_step(%struct.radeon_device* %160, %struct.radeon_ps* %161)
  %163 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %164 = call i32 @rv6xx_invalidate_intermediate_steps(%struct.radeon_device* %163)
  %165 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %166 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %167 = call i32 @rv6xx_calculate_stepping_parameters(%struct.radeon_device* %165, %struct.radeon_ps* %166)
  %168 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %169 = call i32 @rv6xx_program_stepping_parameters_lowest_entry(%struct.radeon_device* %168)
  %170 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %171 = call i32 @rv6xx_program_power_level_low_to_lowest_state(%struct.radeon_device* %170)
  %172 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %173 = load i32, i32* @R600_POWER_LEVEL_LOW, align 4
  %174 = call i32 @r600_power_level_enable(%struct.radeon_device* %172, i32 %173, i32 1)
  %175 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %176 = load i32, i32* @R600_POWER_LEVEL_LOW, align 4
  %177 = call i32 @r600_wait_for_power_level(%struct.radeon_device* %175, i32 %176)
  %178 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %179 = load i32, i32* @R600_POWER_LEVEL_MEDIUM, align 4
  %180 = call i32 @r600_power_level_enable(%struct.radeon_device* %178, i32 %179, i32 0)
  %181 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %4, align 8
  %182 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %207

185:                                              ; preds = %150
  %186 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %187 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @ATOM_PP_PLATFORM_CAP_STEPVDDC, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %185
  %195 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %196 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %197 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %198 = call i32 @rv6xx_step_voltage_if_decreasing(%struct.radeon_device* %195, %struct.radeon_ps* %196, %struct.radeon_ps* %197)
  store i32 %198, i32* %7, align 4
  %199 = load i32, i32* %7, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %194
  %202 = load i32, i32* %7, align 4
  store i32 %202, i32* %2, align 4
  br label %262

203:                                              ; preds = %194
  br label %204

204:                                              ; preds = %203, %185
  %205 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %206 = call i32 @rv6xx_enable_dynamic_voltage_control(%struct.radeon_device* %205, i32 1)
  br label %207

207:                                              ; preds = %204, %150
  %208 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %209 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @ATOM_PP_PLATFORM_CAP_BACKBIAS, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %207
  %217 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %218 = call i32 @rv6xx_enable_dynamic_backbias_control(%struct.radeon_device* %217, i32 1)
  br label %219

219:                                              ; preds = %216, %207
  %220 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %4, align 8
  %221 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %219
  %225 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %226 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %227 = call i32 @rv6xx_enable_dynamic_pcie_gen2(%struct.radeon_device* %225, %struct.radeon_ps* %226, i32 1)
  br label %228

228:                                              ; preds = %224, %219
  %229 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %230 = call i32 @rv6xx_reset_lvtm_data_sync(%struct.radeon_device* %229)
  %231 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %232 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %233 = call i32 @rv6xx_generate_stepping_table(%struct.radeon_device* %231, %struct.radeon_ps* %232)
  %234 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %235 = call i32 @rv6xx_program_stepping_parameters_except_lowest_entry(%struct.radeon_device* %234)
  %236 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %237 = call i32 @rv6xx_program_power_level_low(%struct.radeon_device* %236)
  %238 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %239 = call i32 @rv6xx_program_power_level_medium(%struct.radeon_device* %238)
  %240 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %241 = call i32 @rv6xx_program_power_level_high(%struct.radeon_device* %240)
  %242 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %243 = call i32 @rv6xx_enable_medium(%struct.radeon_device* %242)
  %244 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %245 = call i32 @rv6xx_enable_high(%struct.radeon_device* %244)
  %246 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %4, align 8
  %247 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %228
  %251 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %252 = call i32 @rv6xx_enable_thermal_protection(%struct.radeon_device* %251, i32 1)
  br label %253

253:                                              ; preds = %250, %228
  %254 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %255 = call i32 @rv6xx_program_vc(%struct.radeon_device* %254)
  %256 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %257 = call i32 @rv6xx_program_at(%struct.radeon_device* %256)
  %258 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %259 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %260 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %261 = call i32 @rv6xx_set_uvd_clock_after_set_eng_clock(%struct.radeon_device* %258, %struct.radeon_ps* %259, %struct.radeon_ps* %260)
  store i32 0, i32* %2, align 4
  br label %262

262:                                              ; preds = %253, %201
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

declare dso_local %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_set_uvd_clock_before_set_eng_clock(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @rv6xx_clear_vc(%struct.radeon_device*) #1

declare dso_local i32 @r600_power_level_enable(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @r600_set_at(%struct.radeon_device*, i32, i32, i32, i32) #1

declare dso_local i32 @r600_enable_thermal_protection(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_wait_for_power_level(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv6xx_generate_transition_stepping(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @rv6xx_program_power_level_medium_for_transition(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_set_sw_voltage_to_safe(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @rv6xx_set_sw_voltage_to_low(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @rv6xx_set_safe_backbias(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @rv6xx_set_safe_pcie_gen2(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @rv6xx_enable_dynamic_voltage_control(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv6xx_enable_dynamic_backbias_control(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv6xx_step_voltage_if_increasing(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @r600_wait_for_power_level_unequal(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv6xx_generate_low_step(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @rv6xx_invalidate_intermediate_steps(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_calculate_stepping_parameters(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @rv6xx_program_stepping_parameters_lowest_entry(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_program_power_level_low_to_lowest_state(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_step_voltage_if_decreasing(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @rv6xx_enable_dynamic_pcie_gen2(%struct.radeon_device*, %struct.radeon_ps*, i32) #1

declare dso_local i32 @rv6xx_reset_lvtm_data_sync(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_generate_stepping_table(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @rv6xx_program_stepping_parameters_except_lowest_entry(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_program_power_level_low(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_program_power_level_medium(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_program_power_level_high(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_enable_medium(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_enable_high(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_enable_thermal_protection(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv6xx_program_vc(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_program_at(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_set_uvd_clock_after_set_eng_clock(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
