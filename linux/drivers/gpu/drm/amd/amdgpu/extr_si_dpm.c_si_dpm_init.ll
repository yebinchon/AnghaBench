; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_dpm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_dpm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_14__, %struct.si_power_info* }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32*, i64 }
%struct.TYPE_9__ = type { i32*, i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.si_power_info = type { i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, %struct.ni_power_info }
%struct.ni_power_info = type { i32, %struct.evergreen_power_info }
%struct.evergreen_power_info = type { i32, i32, i32, i32, i32, i32, i8*, i64, %struct.rv7xx_power_info }
%struct.rv7xx_power_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i64, i64, i64, i64 }
%struct.atom_clock_dividers = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CAIL_PCIE_LINK_SPEED_SUPPORT_MASK = common dso_local global i32 0, align 4
@AMDGPU_PCIE_GEN_INVALID = common dso_local global i32 0, align 4
@R600_VOLTAGERESPONSETIME_DFLT = common dso_local global i64 0, align 8
@R600_BACKBIASRESPONSETIME_DFLT = common dso_local global i64 0, align 8
@COMPUTE_ENGINE_PLL_PARAM = common dso_local global i32 0, align 4
@R600_REFERENCEDIVIDER_DFLT = common dso_local global i64 0, align 8
@SET_VOLTAGE_TYPE_ASIC_VDDC = common dso_local global i32 0, align 4
@VOLTAGE_OBJ_GPIO_LUT = common dso_local global i32 0, align 4
@VOLTAGE_OBJ_SVID2 = common dso_local global i32 0, align 4
@SET_VOLTAGE_TYPE_ASIC_MVDDC = common dso_local global i32 0, align 4
@SET_VOLTAGE_TYPE_ASIC_VDDCI = common dso_local global i32 0, align 4
@VOLTAGE_OBJ_PHASE_LUT = common dso_local global i32 0, align 4
@RV770_ASI_DFLT = common dso_local global i32 0, align 4
@CYPRESS_HASI_DFLT = common dso_local global i32 0, align 4
@SISLANDS_VRC_DFLT = common dso_local global i32 0, align 4
@THERMAL_TYPE_NONE = common dso_local global i64 0, align 8
@SMC_RAM_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @si_dpm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_dpm_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.rv7xx_power_info*, align 8
  %5 = alloca %struct.evergreen_power_info*, align 8
  %6 = alloca %struct.ni_power_info*, align 8
  %7 = alloca %struct.si_power_info*, align 8
  %8 = alloca %struct.atom_clock_dividers, align 8
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.si_power_info* @kzalloc(i32 184, i32 %10)
  store %struct.si_power_info* %11, %struct.si_power_info** %7, align 8
  %12 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %13 = icmp eq %struct.si_power_info* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %423

17:                                               ; preds = %1
  %18 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 3
  store %struct.si_power_info* %18, %struct.si_power_info** %22, align 8
  %23 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %24 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %23, i32 0, i32 11
  store %struct.ni_power_info* %24, %struct.ni_power_info** %6, align 8
  %25 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %26 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %25, i32 0, i32 1
  store %struct.evergreen_power_info* %26, %struct.evergreen_power_info** %5, align 8
  %27 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %28 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %27, i32 0, i32 8
  store %struct.rv7xx_power_info* %28, %struct.rv7xx_power_info** %4, align 8
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CAIL_PCIE_LINK_SPEED_SUPPORT_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %36 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @AMDGPU_PCIE_GEN_INVALID, align 4
  %38 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %39 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %38, i32 0, i32 10
  store i32 %37, i32* %39, align 4
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %41 = call i32 @si_get_current_pcie_speed(%struct.amdgpu_device* %40)
  %42 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %43 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %42, i32 0, i32 9
  store i32 %41, i32* %43, align 8
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %45 = call i32 @si_set_max_cu_value(%struct.amdgpu_device* %44)
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %47 = call i32 @rv770_get_max_vddc(%struct.amdgpu_device* %46)
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %49 = call i32 @si_get_leakage_vddc(%struct.amdgpu_device* %48)
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %51 = call i32 @si_patch_dependency_tables_based_on_leakage(%struct.amdgpu_device* %50)
  %52 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %53 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %52, i32 0, i32 13
  store i64 0, i64* %53, align 8
  %54 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %55 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %54, i32 0, i32 7
  store i64 0, i64* %55, align 8
  %56 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %57 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %56, i32 0, i32 12
  store i64 0, i64* %57, align 8
  %58 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %59 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %58, i32 0, i32 11
  store i64 0, i64* %59, align 8
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %61 = call i32 @amdgpu_get_platform_caps(%struct.amdgpu_device* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %17
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %2, align 4
  br label %423

66:                                               ; preds = %17
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %68 = call i32 @amdgpu_parse_extended_power_table(%struct.amdgpu_device* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %2, align 4
  br label %423

73:                                               ; preds = %66
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %75 = call i32 @si_parse_power_table(%struct.amdgpu_device* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %2, align 4
  br label %423

80:                                               ; preds = %73
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call %struct.TYPE_16__* @kcalloc(i32 4, i32 4, i32 %81)
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 7
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  store %struct.TYPE_16__* %82, %struct.TYPE_16__** %88, align 8
  %89 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %90 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 7
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = icmp ne %struct.TYPE_16__* %95, null
  br i1 %96, label %102, label %97

97:                                               ; preds = %80
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %99 = call i32 @amdgpu_free_extended_power_table(%struct.amdgpu_device* %98)
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %423

102:                                              ; preds = %80
  %103 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %104 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  store i32 4, i32* %108, align 8
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %110 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 7
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  store i32 0, i32* %117, align 4
  %118 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %119 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 7
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  store i32 0, i32* %126, align 4
  %127 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %128 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 7
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i64 1
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  store i32 36000, i32* %135, align 4
  %136 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %137 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 7
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i64 1
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 1
  store i32 720, i32* %144, align 4
  %145 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %146 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 7
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i64 2
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  store i32 54000, i32* %153, align 4
  %154 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %155 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 7
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i64 2
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 1
  store i32 810, i32* %162, align 4
  %163 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %164 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 7
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i64 3
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  store i32 72000, i32* %171, align 4
  %172 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %173 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 7
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i64 3
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 1
  store i32 900, i32* %180, align 4
  %181 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %182 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %102
  %188 = load i64, i64* @R600_VOLTAGERESPONSETIME_DFLT, align 8
  %189 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %190 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 0
  store i64 %188, i64* %192, align 8
  br label %193

193:                                              ; preds = %187, %102
  %194 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %195 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %193
  %201 = load i64, i64* @R600_BACKBIASRESPONSETIME_DFLT, align 8
  %202 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %203 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 1
  store i64 %201, i64* %205, align 8
  br label %206

206:                                              ; preds = %200, %193
  %207 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %208 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %209 = call i32 @amdgpu_atombios_get_clock_dividers(%struct.amdgpu_device* %207, i32 %208, i32 0, i32 0, %struct.atom_clock_dividers* %8)
  store i32 %209, i32* %9, align 4
  %210 = load i32, i32* %9, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %8, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 %214, 1
  %216 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %217 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %216, i32 0, i32 10
  store i64 %215, i64* %217, align 8
  br label %222

218:                                              ; preds = %206
  %219 = load i64, i64* @R600_REFERENCEDIVIDER_DFLT, align 8
  %220 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %221 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %220, i32 0, i32 10
  store i64 %219, i64* %221, align 8
  br label %222

222:                                              ; preds = %218, %212
  %223 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %224 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %223, i32 0, i32 0
  store i32 0, i32* %224, align 8
  %225 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %226 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %225, i32 0, i32 0
  store i32 40000, i32* %226, align 8
  %227 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %228 = call i64 @si_is_special_1gb_platform(%struct.amdgpu_device* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %222
  %231 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %232 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %231, i32 0, i32 1
  store i32 0, i32* %232, align 4
  br label %239

233:                                              ; preds = %222
  %234 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %235 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %238 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 4
  br label %239

239:                                              ; preds = %233, %230
  %240 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %241 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %240, i32 0, i32 2
  store i32 40000, i32* %241, align 8
  %242 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %243 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %242, i32 0, i32 1
  store i32 40000, i32* %243, align 4
  %244 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %245 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %248 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 8
  %249 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %250 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDC, align 4
  %251 = load i32, i32* @VOLTAGE_OBJ_GPIO_LUT, align 4
  %252 = call i8* @amdgpu_atombios_is_voltage_gpio(%struct.amdgpu_device* %249, i32 %250, i32 %251)
  %253 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %254 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %253, i32 0, i32 9
  store i8* %252, i8** %254, align 8
  %255 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %256 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %255, i32 0, i32 9
  %257 = load i8*, i8** %256, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %279, label %259

259:                                              ; preds = %239
  %260 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %261 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDC, align 4
  %262 = load i32, i32* @VOLTAGE_OBJ_SVID2, align 4
  %263 = call i8* @amdgpu_atombios_is_voltage_gpio(%struct.amdgpu_device* %260, i32 %261, i32 %262)
  %264 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %265 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %264, i32 0, i32 8
  store i8* %263, i8** %265, align 8
  %266 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %267 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %266, i32 0, i32 8
  %268 = load i8*, i8** %267, align 8
  %269 = icmp ne i8* %268, null
  br i1 %269, label %270, label %278

270:                                              ; preds = %259
  %271 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %272 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDC, align 4
  %273 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %274 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %273, i32 0, i32 7
  %275 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %276 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %275, i32 0, i32 6
  %277 = call i32 @amdgpu_atombios_get_svi2_info(%struct.amdgpu_device* %271, i32 %272, i32* %274, i32* %276)
  br label %278

278:                                              ; preds = %270, %259
  br label %279

279:                                              ; preds = %278, %239
  %280 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %281 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_MVDDC, align 4
  %282 = load i32, i32* @VOLTAGE_OBJ_GPIO_LUT, align 4
  %283 = call i8* @amdgpu_atombios_is_voltage_gpio(%struct.amdgpu_device* %280, i32 %281, i32 %282)
  %284 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %285 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %284, i32 0, i32 8
  store i8* %283, i8** %285, align 8
  %286 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %287 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDCI, align 4
  %288 = load i32, i32* @VOLTAGE_OBJ_GPIO_LUT, align 4
  %289 = call i8* @amdgpu_atombios_is_voltage_gpio(%struct.amdgpu_device* %286, i32 %287, i32 %288)
  %290 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %291 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %290, i32 0, i32 6
  store i8* %289, i8** %291, align 8
  %292 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %293 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %292, i32 0, i32 6
  %294 = load i8*, i8** %293, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %303, label %296

296:                                              ; preds = %279
  %297 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %298 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDCI, align 4
  %299 = load i32, i32* @VOLTAGE_OBJ_SVID2, align 4
  %300 = call i8* @amdgpu_atombios_is_voltage_gpio(%struct.amdgpu_device* %297, i32 %298, i32 %299)
  %301 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %302 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %301, i32 0, i32 5
  store i8* %300, i8** %302, align 8
  br label %303

303:                                              ; preds = %296, %279
  %304 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %305 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDC, align 4
  %306 = load i32, i32* @VOLTAGE_OBJ_PHASE_LUT, align 4
  %307 = call i8* @amdgpu_atombios_is_voltage_gpio(%struct.amdgpu_device* %304, i32 %305, i32 %306)
  %308 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %309 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %308, i32 0, i32 4
  store i8* %307, i8** %309, align 8
  %310 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %311 = call i32 @rv770_get_engine_memory_ss(%struct.amdgpu_device* %310)
  %312 = load i32, i32* @RV770_ASI_DFLT, align 4
  %313 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %314 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %313, i32 0, i32 7
  store i32 %312, i32* %314, align 4
  %315 = load i32, i32* @CYPRESS_HASI_DFLT, align 4
  %316 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %317 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %316, i32 0, i32 6
  store i32 %315, i32* %317, align 8
  %318 = load i32, i32* @SISLANDS_VRC_DFLT, align 4
  %319 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %320 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %319, i32 0, i32 5
  store i32 %318, i32* %320, align 4
  %321 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %322 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %321, i32 0, i32 3
  store i32 1, i32* %322, align 4
  %323 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %324 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %323, i32 0, i32 2
  store i32 1, i32* %324, align 8
  %325 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %326 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %325, i32 0, i32 1
  store i32 0, i32* %326, align 4
  %327 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %328 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @THERMAL_TYPE_NONE, align 8
  %332 = icmp ne i64 %330, %331
  br i1 %332, label %333, label %336

333:                                              ; preds = %303
  %334 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %335 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %334, i32 0, i32 4
  store i32 1, i32* %335, align 8
  br label %339

336:                                              ; preds = %303
  %337 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %338 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %337, i32 0, i32 4
  store i32 0, i32* %338, align 8
  br label %339

339:                                              ; preds = %336, %333
  %340 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %341 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %340, i32 0, i32 3
  store i32 1, i32* %341, align 4
  %342 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %343 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %342, i32 0, i32 4
  store i32 1, i32* %343, align 8
  %344 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %345 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %344, i32 0, i32 5
  store i32 0, i32* %345, align 4
  %346 = load i32, i32* @SMC_RAM_END, align 4
  %347 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %348 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %347, i32 0, i32 3
  store i32 %346, i32* %348, align 4
  %349 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %350 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %350, i32 0, i32 2
  %352 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %351, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %352, i32 0, i32 0
  store i32 4, i32* %353, align 8
  %354 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %355 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %355, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %356, i32 0, i32 2
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i32 0, i32 1
  store i32 15000, i32* %358, align 4
  %359 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %360 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %360, i32 0, i32 2
  %362 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %361, i32 0, i32 2
  %363 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %362, i32 0, i32 2
  store i32 200, i32* %363, align 8
  %364 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %365 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %365, i32 0, i32 2
  %367 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %366, i32 0, i32 2
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 6
  %369 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %368, i32 0, i32 1
  store i64 0, i64* %369, align 8
  %370 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %371 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %371, i32 0, i32 2
  %373 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %372, i32 0, i32 2
  %374 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %373, i32 0, i32 6
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i32 0, i32 0
  store i32* null, i32** %375, align 8
  %376 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %377 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %377, i32 0, i32 2
  %379 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %378, i32 0, i32 2
  %380 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %379, i32 0, i32 5
  %381 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %380, i32 0, i32 1
  store i64 0, i64* %381, align 8
  %382 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %383 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %383, i32 0, i32 2
  %385 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %384, i32 0, i32 2
  %386 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %385, i32 0, i32 5
  %387 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %386, i32 0, i32 0
  store i32* null, i32** %387, align 8
  %388 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %389 = call i32 @si_initialize_powertune_defaults(%struct.amdgpu_device* %388)
  %390 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %391 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %391, i32 0, i32 2
  %393 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %392, i32 0, i32 2
  %394 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %393, i32 0, i32 4
  %395 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = icmp eq i64 %396, 0
  br i1 %397, label %407, label %398

398:                                              ; preds = %339
  %399 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %400 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %400, i32 0, i32 2
  %402 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %401, i32 0, i32 2
  %403 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %402, i32 0, i32 4
  %404 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %403, i32 0, i32 1
  %405 = load i64, i64* %404, align 8
  %406 = icmp eq i64 %405, 0
  br i1 %406, label %407, label %420

407:                                              ; preds = %398, %339
  %408 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %409 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %409, i32 0, i32 2
  %411 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %410, i32 0, i32 2
  %412 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %411, i32 0, i32 4
  %413 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %414 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %414, i32 0, i32 2
  %416 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %415, i32 0, i32 2
  %417 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %416, i32 0, i32 3
  %418 = bitcast %struct.TYPE_11__* %412 to i8*
  %419 = bitcast %struct.TYPE_11__* %417 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %418, i8* align 8 %419, i64 16, i1 false)
  br label %420

420:                                              ; preds = %407, %398
  %421 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %422 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %421, i32 0, i32 2
  store i32 1, i32* %422, align 8
  store i32 0, i32* %2, align 4
  br label %423

423:                                              ; preds = %420, %97, %78, %71, %64, %14
  %424 = load i32, i32* %2, align 4
  ret i32 %424
}

declare dso_local %struct.si_power_info* @kzalloc(i32, i32) #1

declare dso_local i32 @si_get_current_pcie_speed(%struct.amdgpu_device*) #1

declare dso_local i32 @si_set_max_cu_value(%struct.amdgpu_device*) #1

declare dso_local i32 @rv770_get_max_vddc(%struct.amdgpu_device*) #1

declare dso_local i32 @si_get_leakage_vddc(%struct.amdgpu_device*) #1

declare dso_local i32 @si_patch_dependency_tables_based_on_leakage(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_get_platform_caps(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_parse_extended_power_table(%struct.amdgpu_device*) #1

declare dso_local i32 @si_parse_power_table(%struct.amdgpu_device*) #1

declare dso_local %struct.TYPE_16__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @amdgpu_free_extended_power_table(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_atombios_get_clock_dividers(%struct.amdgpu_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i64 @si_is_special_1gb_platform(%struct.amdgpu_device*) #1

declare dso_local i8* @amdgpu_atombios_is_voltage_gpio(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @amdgpu_atombios_get_svi2_info(%struct.amdgpu_device*, i32, i32*, i32*) #1

declare dso_local i32 @rv770_get_engine_memory_ss(%struct.amdgpu_device*) #1

declare dso_local i32 @si_initialize_powertune_defaults(%struct.amdgpu_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
