; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_dpm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_dpm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, %struct.evergreen_power_info* }
%struct.evergreen_power_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, %struct.TYPE_4__, %struct.rv7xx_power_info }
%struct.TYPE_4__ = type { i32 }
%struct.rv7xx_power_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.atom_clock_dividers = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@R600_VOLTAGERESPONSETIME_DFLT = common dso_local global i64 0, align 8
@R600_BACKBIASRESPONSETIME_DFLT = common dso_local global i64 0, align 8
@COMPUTE_ENGINE_PLL_PARAM = common dso_local global i32 0, align 4
@R600_REFERENCEDIVIDER_DFLT = common dso_local global i64 0, align 8
@RV770_RLP_DFLT = common dso_local global i32 0, align 4
@RV770_RMP_DFLT = common dso_local global i32 0, align 4
@RV770_LHP_DFLT = common dso_local global i32 0, align 4
@RV770_LMP_DFLT = common dso_local global i32 0, align 4
@SET_VOLTAGE_TYPE_ASIC_VDDC = common dso_local global i32 0, align 4
@SET_VOLTAGE_TYPE_ASIC_MVDDC = common dso_local global i32 0, align 4
@SET_VOLTAGE_TYPE_ASIC_VDDCI = common dso_local global i32 0, align 4
@RV770_ASI_DFLT = common dso_local global i32 0, align 4
@CYPRESS_HASI_DFLT = common dso_local global i32 0, align 4
@CYPRESS_VRC_DFLT = common dso_local global i32 0, align 4
@CHIP_CYPRESS = common dso_local global i64 0, align 8
@CHIP_HEMLOCK = common dso_local global i64 0, align 8
@THERMAL_TYPE_NONE = common dso_local global i64 0, align 8
@RADEON_IS_MOBILITY = common dso_local global i32 0, align 4
@CHIP_JUNIPER = common dso_local global i64 0, align 8
@SMC_RAM_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cypress_dpm_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv7xx_power_info*, align 8
  %5 = alloca %struct.evergreen_power_info*, align 8
  %6 = alloca %struct.atom_clock_dividers, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.evergreen_power_info* @kzalloc(i32 200, i32 %8)
  store %struct.evergreen_power_info* %9, %struct.evergreen_power_info** %5, align 8
  %10 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %11 = icmp eq %struct.evergreen_power_info* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %239

15:                                               ; preds = %1
  %16 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  store %struct.evergreen_power_info* %16, %struct.evergreen_power_info** %20, align 8
  %21 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %22 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %21, i32 0, i32 13
  store %struct.rv7xx_power_info* %22, %struct.rv7xx_power_info** %4, align 8
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = call i32 @rv770_get_max_vddc(%struct.radeon_device* %23)
  %25 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %26 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %25, i32 0, i32 12
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %29 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %28, i32 0, i32 25
  store i64 0, i64* %29, align 8
  %30 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %31 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %30, i32 0, i32 11
  store i64 0, i64* %31, align 8
  %32 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %33 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %32, i32 0, i32 24
  store i64 0, i64* %33, align 8
  %34 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %35 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %34, i32 0, i32 23
  store i64 0, i64* %35, align 8
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = call i32 @r600_get_platform_caps(%struct.radeon_device* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %15
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %239

42:                                               ; preds = %15
  %43 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %44 = call i32 @rv7xx_parse_power_table(%struct.radeon_device* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %239

49:                                               ; preds = %42
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load i64, i64* @R600_VOLTAGERESPONSETIME_DFLT, align 8
  %58 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %59 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i64 %57, i64* %61, align 8
  br label %62

62:                                               ; preds = %56, %49
  %63 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load i64, i64* @R600_BACKBIASRESPONSETIME_DFLT, align 8
  %71 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %72 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i64 %70, i64* %74, align 8
  br label %75

75:                                               ; preds = %69, %62
  %76 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %77 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %78 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %76, i32 %77, i32 0, i32 0, %struct.atom_clock_dividers* %6)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %6, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  %85 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %86 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %85, i32 0, i32 22
  store i64 %84, i64* %86, align 8
  br label %91

87:                                               ; preds = %75
  %88 = load i64, i64* @R600_REFERENCEDIVIDER_DFLT, align 8
  %89 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %90 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %89, i32 0, i32 22
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %87, %81
  %92 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %93 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %92, i32 0, i32 0
  store i32 40000, i32* %93, align 8
  %94 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %95 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %94, i32 0, i32 1
  store i32 40000, i32* %95, align 4
  %96 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %97 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %96, i32 0, i32 0
  store i32 40000, i32* %97, align 8
  %98 = load i32, i32* @RV770_RLP_DFLT, align 4
  %99 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %100 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %99, i32 0, i32 21
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @RV770_RMP_DFLT, align 4
  %102 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %103 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %102, i32 0, i32 20
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @RV770_LHP_DFLT, align 4
  %105 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %106 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %105, i32 0, i32 19
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @RV770_LMP_DFLT, align 4
  %108 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %109 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %108, i32 0, i32 18
  store i32 %107, i32* %109, align 8
  %110 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %111 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDC, align 4
  %112 = call i8* @radeon_atom_is_voltage_gpio(%struct.radeon_device* %110, i32 %111, i32 0)
  %113 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %114 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %113, i32 0, i32 17
  store i8* %112, i8** %114, align 8
  %115 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %116 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_MVDDC, align 4
  %117 = call i8* @radeon_atom_is_voltage_gpio(%struct.radeon_device* %115, i32 %116, i32 0)
  %118 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %119 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %118, i32 0, i32 16
  store i8* %117, i8** %119, align 8
  %120 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %121 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDCI, align 4
  %122 = call i8* @radeon_atom_is_voltage_gpio(%struct.radeon_device* %120, i32 %121, i32 0)
  %123 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %124 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %123, i32 0, i32 10
  store i8* %122, i8** %124, align 8
  %125 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %126 = call i32 @rv770_get_engine_memory_ss(%struct.radeon_device* %125)
  %127 = load i32, i32* @RV770_ASI_DFLT, align 4
  %128 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %129 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %128, i32 0, i32 15
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* @CYPRESS_HASI_DFLT, align 4
  %131 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %132 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %131, i32 0, i32 14
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* @CYPRESS_VRC_DFLT, align 4
  %134 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %135 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %134, i32 0, i32 13
  store i32 %133, i32* %135, align 8
  %136 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %137 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %136, i32 0, i32 2
  store i32 0, i32* %137, align 8
  %138 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %139 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @CHIP_CYPRESS, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %149, label %143

143:                                              ; preds = %91
  %144 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %145 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @CHIP_HEMLOCK, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %143, %91
  %150 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %151 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %150, i32 0, i32 3
  store i32 0, i32* %151, align 4
  br label %155

152:                                              ; preds = %143
  %153 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %154 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %153, i32 0, i32 3
  store i32 1, i32* %154, align 4
  br label %155

155:                                              ; preds = %152, %149
  %156 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %157 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %156, i32 0, i32 4
  store i32 1, i32* %157, align 8
  %158 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %159 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %158, i32 0, i32 5
  store i32 1, i32* %159, align 4
  %160 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %161 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %160, i32 0, i32 1
  store i32 0, i32* %161, align 4
  %162 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %163 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %162, i32 0, i32 2
  store i32 0, i32* %163, align 8
  %164 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %165 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %164, i32 0, i32 6
  store i32 1, i32* %165, align 8
  %166 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %167 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @THERMAL_TYPE_NONE, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %155
  %173 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %174 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %173, i32 0, i32 7
  store i32 1, i32* %174, align 4
  br label %178

175:                                              ; preds = %155
  %176 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %177 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %176, i32 0, i32 7
  store i32 0, i32* %177, align 4
  br label %178

178:                                              ; preds = %175, %172
  %179 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %180 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %179, i32 0, i32 8
  store i32 1, i32* %180, align 8
  %181 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %182 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @RADEON_IS_MOBILITY, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %178
  %188 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %189 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %188, i32 0, i32 9
  store i32 1, i32* %189, align 4
  br label %193

190:                                              ; preds = %178
  %191 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %192 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %191, i32 0, i32 9
  store i32 0, i32* %192, align 4
  br label %193

193:                                              ; preds = %190, %187
  %194 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %195 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %194, i32 0, i32 10
  store i32 1, i32* %195, align 8
  %196 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %197 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %196, i32 0, i32 3
  store i32 1, i32* %197, align 4
  %198 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %199 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %198, i32 0, i32 4
  store i32 1, i32* %199, align 8
  %200 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %201 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %200, i32 0, i32 5
  store i32 1, i32* %201, align 4
  %202 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %203 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %202, i32 0, i32 6
  store i32 1, i32* %203, align 8
  %204 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %205 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %204, i32 0, i32 7
  store i32 1, i32* %205, align 4
  %206 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %207 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %206, i32 0, i32 8
  store i32 0, i32* %207, align 8
  %208 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %209 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @CHIP_CYPRESS, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %225, label %213

213:                                              ; preds = %193
  %214 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %215 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @CHIP_HEMLOCK, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %225, label %219

219:                                              ; preds = %213
  %220 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %221 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @CHIP_JUNIPER, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %219, %213, %193
  %226 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %227 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %226, i32 0, i32 9
  store i32 1, i32* %227, align 4
  br label %231

228:                                              ; preds = %219
  %229 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %230 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %229, i32 0, i32 9
  store i32 0, i32* %230, align 4
  br label %231

231:                                              ; preds = %228, %225
  %232 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %233 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %232, i32 0, i32 2
  store i32 0, i32* %233, align 8
  %234 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %235 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %234, i32 0, i32 12
  store i64 0, i64* %235, align 8
  %236 = load i32, i32* @SMC_RAM_END, align 4
  %237 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %238 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %237, i32 0, i32 11
  store i32 %236, i32* %238, align 4
  store i32 0, i32* %2, align 4
  br label %239

239:                                              ; preds = %231, %47, %40, %12
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local %struct.evergreen_power_info* @kzalloc(i32, i32) #1

declare dso_local i32 @rv770_get_max_vddc(%struct.radeon_device*) #1

declare dso_local i32 @r600_get_platform_caps(%struct.radeon_device*) #1

declare dso_local i32 @rv7xx_parse_power_table(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i8* @radeon_atom_is_voltage_gpio(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @rv770_get_engine_memory_ss(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
