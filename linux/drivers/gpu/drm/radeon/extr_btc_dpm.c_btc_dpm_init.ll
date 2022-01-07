; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_dpm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_dpm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_17__, %struct.evergreen_power_info* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_20__ }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_14__ = type { i32*, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.evergreen_power_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.TYPE_12__*, i64, %struct.TYPE_16__, %struct.rv7xx_power_info }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_16__ = type { i32 }
%struct.rv7xx_power_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, i64, i64 }
%struct.atom_clock_dividers = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@R600_VOLTAGERESPONSETIME_DFLT = common dso_local global i64 0, align 8
@R600_BACKBIASRESPONSETIME_DFLT = common dso_local global i64 0, align 8
@COMPUTE_ENGINE_PLL_PARAM = common dso_local global i32 0, align 4
@R600_REFERENCEDIVIDER_DFLT = common dso_local global i64 0, align 8
@RV770_RLP_DFLT = common dso_local global i8* null, align 8
@RV770_RMP_DFLT = common dso_local global i8* null, align 8
@RV770_LHP_DFLT = common dso_local global i8* null, align 8
@RV770_LMP_DFLT = common dso_local global i8* null, align 8
@BTC_RLP_UVD_DFLT = common dso_local global i8* null, align 8
@BTC_RMP_UVD_DFLT = common dso_local global i8* null, align 8
@BTC_LHP_UVD_DFLT = common dso_local global i8* null, align 8
@BTC_LMP_UVD_DFLT = common dso_local global i8* null, align 8
@SET_VOLTAGE_TYPE_ASIC_VDDC = common dso_local global i32 0, align 4
@SET_VOLTAGE_TYPE_ASIC_MVDDC = common dso_local global i32 0, align 4
@SET_VOLTAGE_TYPE_ASIC_VDDCI = common dso_local global i32 0, align 4
@RV770_ASI_DFLT = common dso_local global i32 0, align 4
@CYPRESS_HASI_DFLT = common dso_local global i32 0, align 4
@CYPRESS_VRC_DFLT = common dso_local global i32 0, align 4
@THERMAL_TYPE_NONE = common dso_local global i64 0, align 8
@RADEON_IS_MOBILITY = common dso_local global i32 0, align 4
@CHIP_BARTS = common dso_local global i64 0, align 8
@SMC_RAM_END = common dso_local global i32 0, align 4
@btc_valid_sclk = common dso_local global i32 0, align 4
@CHIP_TURKS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btc_dpm_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv7xx_power_info*, align 8
  %5 = alloca %struct.evergreen_power_info*, align 8
  %6 = alloca %struct.atom_clock_dividers, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.evergreen_power_info* @kzalloc(i32 224, i32 %8)
  store %struct.evergreen_power_info* %9, %struct.evergreen_power_info** %5, align 8
  %10 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %11 = icmp eq %struct.evergreen_power_info* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %467

15:                                               ; preds = %1
  %16 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 3
  store %struct.evergreen_power_info* %16, %struct.evergreen_power_info** %20, align 8
  %21 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %22 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %21, i32 0, i32 15
  store %struct.rv7xx_power_info* %22, %struct.rv7xx_power_info** %4, align 8
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = call i32 @rv770_get_max_vddc(%struct.radeon_device* %23)
  %25 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %26 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %25, i32 0, i32 14
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %29 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %28, i32 0, i32 25
  store i64 0, i64* %29, align 8
  %30 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %31 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %30, i32 0, i32 13
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
  br label %467

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
  br label %467

49:                                               ; preds = %42
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = call i32 @r600_parse_extended_power_table(%struct.radeon_device* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %467

56:                                               ; preds = %49
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.TYPE_11__* @kcalloc(i32 4, i32 4, i32 %57)
  %59 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %64, align 8
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = icmp ne %struct.TYPE_11__* %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %56
  %74 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %75 = call i32 @r600_free_extended_power_table(%struct.radeon_device* %74)
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %467

78:                                               ; preds = %56
  %79 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %80 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  store i32 4, i32* %84, align 8
  %85 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  store i32 0, i32* %93, align 4
  %94 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %95 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  store i32 0, i32* %102, align 4
  %103 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %104 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i64 1
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  store i32 36000, i32* %111, align 4
  %112 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %113 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i64 1
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  store i32 800, i32* %120, align 4
  %121 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %122 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i64 2
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  store i32 54000, i32* %129, align 4
  %130 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %131 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i64 2
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  store i32 800, i32* %138, align 4
  %139 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %140 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i64 3
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  store i32 72000, i32* %147, align 4
  %148 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %149 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i64 3
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 1
  store i32 800, i32* %156, align 4
  %157 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %158 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %78
  %164 = load i64, i64* @R600_VOLTAGERESPONSETIME_DFLT, align 8
  %165 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %166 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  store i64 %164, i64* %168, align 8
  br label %169

169:                                              ; preds = %163, %78
  %170 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %171 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %169
  %177 = load i64, i64* @R600_BACKBIASRESPONSETIME_DFLT, align 8
  %178 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %179 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 1
  store i64 %177, i64* %181, align 8
  br label %182

182:                                              ; preds = %176, %169
  %183 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %184 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %185 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %183, i32 %184, i32 0, i32 0, %struct.atom_clock_dividers* %6)
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %182
  %189 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %6, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %190, 1
  %192 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %193 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %192, i32 0, i32 22
  store i64 %191, i64* %193, align 8
  br label %198

194:                                              ; preds = %182
  %195 = load i64, i64* @R600_REFERENCEDIVIDER_DFLT, align 8
  %196 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %197 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %196, i32 0, i32 22
  store i64 %195, i64* %197, align 8
  br label %198

198:                                              ; preds = %194, %188
  %199 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %200 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %199, i32 0, i32 0
  store i32 40000, i32* %200, align 8
  %201 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %202 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %201, i32 0, i32 1
  store i32 40000, i32* %202, align 4
  %203 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %204 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %203, i32 0, i32 0
  store i32 40000, i32* %204, align 8
  %205 = load i8*, i8** @RV770_RLP_DFLT, align 8
  %206 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %207 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %206, i32 0, i32 21
  store i8* %205, i8** %207, align 8
  %208 = load i8*, i8** @RV770_RMP_DFLT, align 8
  %209 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %210 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %209, i32 0, i32 20
  store i8* %208, i8** %210, align 8
  %211 = load i8*, i8** @RV770_LHP_DFLT, align 8
  %212 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %213 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %212, i32 0, i32 19
  store i8* %211, i8** %213, align 8
  %214 = load i8*, i8** @RV770_LMP_DFLT, align 8
  %215 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %216 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %215, i32 0, i32 18
  store i8* %214, i8** %216, align 8
  %217 = load i8*, i8** @RV770_RLP_DFLT, align 8
  %218 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %219 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %218, i32 0, i32 12
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i64 0
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 3
  store i8* %217, i8** %222, align 8
  %223 = load i8*, i8** @RV770_RMP_DFLT, align 8
  %224 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %225 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %224, i32 0, i32 12
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i64 0
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 2
  store i8* %223, i8** %228, align 8
  %229 = load i8*, i8** @RV770_LHP_DFLT, align 8
  %230 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %231 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %230, i32 0, i32 12
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i64 0
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 1
  store i8* %229, i8** %234, align 8
  %235 = load i8*, i8** @RV770_LMP_DFLT, align 8
  %236 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %237 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %236, i32 0, i32 12
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i64 0
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 0
  store i8* %235, i8** %240, align 8
  %241 = load i8*, i8** @BTC_RLP_UVD_DFLT, align 8
  %242 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %243 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %242, i32 0, i32 12
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i64 1
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 3
  store i8* %241, i8** %246, align 8
  %247 = load i8*, i8** @BTC_RMP_UVD_DFLT, align 8
  %248 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %249 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %248, i32 0, i32 12
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i64 1
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 2
  store i8* %247, i8** %252, align 8
  %253 = load i8*, i8** @BTC_LHP_UVD_DFLT, align 8
  %254 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %255 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %254, i32 0, i32 12
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i64 1
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 1
  store i8* %253, i8** %258, align 8
  %259 = load i8*, i8** @BTC_LMP_UVD_DFLT, align 8
  %260 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %261 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %260, i32 0, i32 12
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i64 1
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 0
  store i8* %259, i8** %264, align 8
  %265 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %266 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %265, i32 0, i32 1
  store i32 1, i32* %266, align 4
  %267 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %268 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDC, align 4
  %269 = call i8* @radeon_atom_is_voltage_gpio(%struct.radeon_device* %267, i32 %268, i32 0)
  %270 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %271 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %270, i32 0, i32 17
  store i8* %269, i8** %271, align 8
  %272 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %273 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_MVDDC, align 4
  %274 = call i8* @radeon_atom_is_voltage_gpio(%struct.radeon_device* %272, i32 %273, i32 0)
  %275 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %276 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %275, i32 0, i32 16
  store i8* %274, i8** %276, align 8
  %277 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %278 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDCI, align 4
  %279 = call i8* @radeon_atom_is_voltage_gpio(%struct.radeon_device* %277, i32 %278, i32 0)
  %280 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %281 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %280, i32 0, i32 11
  store i8* %279, i8** %281, align 8
  %282 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %283 = call i32 @rv770_get_engine_memory_ss(%struct.radeon_device* %282)
  %284 = load i32, i32* @RV770_ASI_DFLT, align 4
  %285 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %286 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %285, i32 0, i32 15
  store i32 %284, i32* %286, align 4
  %287 = load i32, i32* @CYPRESS_HASI_DFLT, align 4
  %288 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %289 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %288, i32 0, i32 14
  store i32 %287, i32* %289, align 8
  %290 = load i32, i32* @CYPRESS_VRC_DFLT, align 4
  %291 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %292 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %291, i32 0, i32 13
  store i32 %290, i32* %292, align 4
  %293 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %294 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %293, i32 0, i32 2
  store i32 0, i32* %294, align 8
  %295 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %296 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %295, i32 0, i32 3
  store i32 1, i32* %296, align 4
  %297 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %298 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %297, i32 0, i32 4
  store i32 1, i32* %298, align 8
  %299 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %300 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %299, i32 0, i32 5
  store i32 1, i32* %300, align 4
  %301 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %302 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %301, i32 0, i32 2
  store i32 0, i32* %302, align 8
  %303 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %304 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %303, i32 0, i32 3
  store i32 0, i32* %304, align 4
  %305 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %306 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %305, i32 0, i32 6
  store i32 1, i32* %306, align 8
  %307 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %308 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @THERMAL_TYPE_NONE, align 8
  %312 = icmp ne i64 %310, %311
  br i1 %312, label %313, label %316

313:                                              ; preds = %198
  %314 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %315 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %314, i32 0, i32 7
  store i32 1, i32* %315, align 4
  br label %319

316:                                              ; preds = %198
  %317 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %318 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %317, i32 0, i32 7
  store i32 0, i32* %318, align 4
  br label %319

319:                                              ; preds = %316, %313
  %320 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %321 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %320, i32 0, i32 8
  store i32 1, i32* %321, align 8
  %322 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %323 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @RADEON_IS_MOBILITY, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %319
  %329 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %330 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %329, i32 0, i32 9
  store i32 1, i32* %330, align 4
  br label %334

331:                                              ; preds = %319
  %332 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %333 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %332, i32 0, i32 9
  store i32 0, i32* %333, align 4
  br label %334

334:                                              ; preds = %331, %328
  %335 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %336 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %335, i32 0, i32 10
  store i32 1, i32* %336, align 8
  %337 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %338 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %337, i32 0, i32 4
  store i32 1, i32* %338, align 8
  %339 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %340 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %339, i32 0, i32 5
  store i32 1, i32* %340, align 4
  %341 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %342 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %341, i32 0, i32 6
  store i32 1, i32* %342, align 8
  %343 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %344 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %343, i32 0, i32 7
  store i32 1, i32* %344, align 4
  %345 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %346 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %345, i32 0, i32 8
  store i32 1, i32* %346, align 8
  %347 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %348 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %347, i32 0, i32 9
  store i32 0, i32* %348, align 4
  %349 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %350 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %349, i32 0, i32 1
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* @CHIP_BARTS, align 8
  %353 = icmp eq i64 %351, %352
  br i1 %353, label %354, label %357

354:                                              ; preds = %334
  %355 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %356 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %355, i32 0, i32 10
  store i32 1, i32* %356, align 8
  br label %360

357:                                              ; preds = %334
  %358 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %359 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %358, i32 0, i32 10
  store i32 0, i32* %359, align 8
  br label %360

360:                                              ; preds = %357, %354
  %361 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %362 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %361, i32 0, i32 3
  store i32 0, i32* %362, align 4
  %363 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %364 = call i64 @ASIC_IS_LOMBOK(%struct.radeon_device* %363)
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %360
  %367 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %368 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %367, i32 0, i32 11
  store i32 30000, i32* %368, align 4
  br label %372

369:                                              ; preds = %360
  %370 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %371 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %370, i32 0, i32 11
  store i32 0, i32* %371, align 4
  br label %372

372:                                              ; preds = %369, %366
  %373 = load i32, i32* @SMC_RAM_END, align 4
  %374 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %375 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %374, i32 0, i32 12
  store i32 %373, i32* %375, align 8
  %376 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %377 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %376, i32 0, i32 2
  %378 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %378, i32 0, i32 2
  %380 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %379, i32 0, i32 0
  store i32 4, i32* %380, align 8
  %381 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %382 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %381, i32 0, i32 2
  %383 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %383, i32 0, i32 2
  %385 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %384, i32 0, i32 1
  store i32 200, i32* %385, align 4
  %386 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %387 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %386, i32 0, i32 2
  %388 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %388, i32 0, i32 2
  %390 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %389, i32 0, i32 2
  store i32 900, i32* %390, align 8
  %391 = load i32, i32* @btc_valid_sclk, align 4
  %392 = call i32 @ARRAY_SIZE(i32 %391)
  %393 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %394 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %393, i32 0, i32 2
  %395 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %395, i32 0, i32 2
  %397 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %396, i32 0, i32 7
  %398 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %397, i32 0, i32 1
  store i32 %392, i32* %398, align 4
  %399 = load i32, i32* @btc_valid_sclk, align 4
  %400 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %401 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %400, i32 0, i32 2
  %402 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %402, i32 0, i32 2
  %404 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %403, i32 0, i32 7
  %405 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %404, i32 0, i32 0
  store i32 %399, i32* %405, align 8
  %406 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %407 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %406, i32 0, i32 2
  %408 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %407, i32 0, i32 1
  %409 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %408, i32 0, i32 2
  %410 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %409, i32 0, i32 6
  %411 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %410, i32 0, i32 1
  store i64 0, i64* %411, align 8
  %412 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %413 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %412, i32 0, i32 2
  %414 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %413, i32 0, i32 1
  %415 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %414, i32 0, i32 2
  %416 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %415, i32 0, i32 6
  %417 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %416, i32 0, i32 0
  store i32* null, i32** %417, align 8
  %418 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %419 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %418, i32 0, i32 1
  %420 = load i64, i64* %419, align 8
  %421 = load i64, i64* @CHIP_TURKS, align 8
  %422 = icmp eq i64 %420, %421
  br i1 %422, label %423, label %429

423:                                              ; preds = %372
  %424 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %425 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %424, i32 0, i32 2
  %426 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %426, i32 0, i32 2
  %428 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %427, i32 0, i32 3
  store i32 15000, i32* %428, align 4
  br label %435

429:                                              ; preds = %372
  %430 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %431 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %430, i32 0, i32 2
  %432 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %431, i32 0, i32 1
  %433 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %432, i32 0, i32 2
  %434 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %433, i32 0, i32 3
  store i32 10000, i32* %434, align 4
  br label %435

435:                                              ; preds = %429, %423
  %436 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %437 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %436, i32 0, i32 2
  %438 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %437, i32 0, i32 1
  %439 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %438, i32 0, i32 2
  %440 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %439, i32 0, i32 5
  %441 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = icmp eq i64 %442, 0
  br i1 %443, label %453, label %444

444:                                              ; preds = %435
  %445 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %446 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %445, i32 0, i32 2
  %447 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %446, i32 0, i32 1
  %448 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %447, i32 0, i32 2
  %449 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %448, i32 0, i32 5
  %450 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %449, i32 0, i32 1
  %451 = load i64, i64* %450, align 8
  %452 = icmp eq i64 %451, 0
  br i1 %452, label %453, label %466

453:                                              ; preds = %444, %435
  %454 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %455 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %454, i32 0, i32 2
  %456 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %455, i32 0, i32 1
  %457 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %456, i32 0, i32 2
  %458 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %457, i32 0, i32 5
  %459 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %460 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %459, i32 0, i32 2
  %461 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %460, i32 0, i32 1
  %462 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %461, i32 0, i32 2
  %463 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %462, i32 0, i32 4
  %464 = bitcast %struct.TYPE_15__* %458 to i8*
  %465 = bitcast %struct.TYPE_15__* %463 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %464, i8* align 8 %465, i64 16, i1 false)
  br label %466

466:                                              ; preds = %453, %444
  store i32 0, i32* %2, align 4
  br label %467

467:                                              ; preds = %466, %73, %54, %47, %40, %12
  %468 = load i32, i32* %2, align 4
  ret i32 %468
}

declare dso_local %struct.evergreen_power_info* @kzalloc(i32, i32) #1

declare dso_local i32 @rv770_get_max_vddc(%struct.radeon_device*) #1

declare dso_local i32 @r600_get_platform_caps(%struct.radeon_device*) #1

declare dso_local i32 @rv7xx_parse_power_table(%struct.radeon_device*) #1

declare dso_local i32 @r600_parse_extended_power_table(%struct.radeon_device*) #1

declare dso_local %struct.TYPE_11__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @r600_free_extended_power_table(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i8* @radeon_atom_is_voltage_gpio(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @rv770_get_engine_memory_ss(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_LOMBOK(%struct.radeon_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
