; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_dpm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_dpm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i64, i64 }
%struct.radeon_device = type { %struct.TYPE_19__, %struct.TYPE_29__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_17__, %struct.ni_power_info* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, %struct.TYPE_30__, %struct.TYPE_30__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_23__ }
%struct.TYPE_30__ = type { i64, i64 }
%struct.TYPE_26__ = type { i32*, i64 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.ni_power_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_21__*, %struct.TYPE_28__, %struct.evergreen_power_info }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i32, i32, i32 }
%struct.evergreen_power_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.TYPE_24__*, i64, %struct.TYPE_22__, %struct.rv7xx_power_info }
%struct.TYPE_24__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_22__ = type { i32 }
%struct.rv7xx_power_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, i64, i64 }
%struct.TYPE_29__ = type { i32 }
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
@SMC_RAM_END = common dso_local global i32 0, align 4
@btc_valid_sclk = common dso_local global i32 0, align 4
@cac_weights_cayman_xt = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@cac_weights_cayman_pro = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@cac_weights_cayman_le = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_dpm_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv7xx_power_info*, align 8
  %5 = alloca %struct.evergreen_power_info*, align 8
  %6 = alloca %struct.ni_power_info*, align 8
  %7 = alloca %struct.atom_clock_dividers, align 8
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ni_power_info* @kzalloc(i32 304, i32 %9)
  store %struct.ni_power_info* %10, %struct.ni_power_info** %6, align 8
  %11 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %12 = icmp eq %struct.ni_power_info* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %538

16:                                               ; preds = %1
  %17 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 3
  store %struct.ni_power_info* %17, %struct.ni_power_info** %21, align 8
  %22 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %23 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %22, i32 0, i32 12
  store %struct.evergreen_power_info* %23, %struct.evergreen_power_info** %5, align 8
  %24 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %25 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %24, i32 0, i32 15
  store %struct.rv7xx_power_info* %25, %struct.rv7xx_power_info** %4, align 8
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = call i32 @rv770_get_max_vddc(%struct.radeon_device* %26)
  %28 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %29 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %28, i32 0, i32 14
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %32 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %31, i32 0, i32 25
  store i64 0, i64* %32, align 8
  %33 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %34 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %33, i32 0, i32 13
  store i64 0, i64* %34, align 8
  %35 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %36 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %35, i32 0, i32 24
  store i64 0, i64* %36, align 8
  %37 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %38 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %37, i32 0, i32 23
  store i64 0, i64* %38, align 8
  %39 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %40 = call i32 @r600_get_platform_caps(%struct.radeon_device* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %16
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %2, align 4
  br label %538

45:                                               ; preds = %16
  %46 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %47 = call i32 @ni_parse_power_table(%struct.radeon_device* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %2, align 4
  br label %538

52:                                               ; preds = %45
  %53 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %54 = call i32 @r600_parse_extended_power_table(%struct.radeon_device* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %2, align 4
  br label %538

59:                                               ; preds = %52
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.TYPE_20__* @kcalloc(i32 4, i32 4, i32 %60)
  %62 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 1
  store %struct.TYPE_20__* %61, %struct.TYPE_20__** %67, align 8
  %68 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %73, align 8
  %75 = icmp ne %struct.TYPE_20__* %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %59
  %77 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %78 = call i32 @r600_free_extended_power_table(%struct.radeon_device* %77)
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %538

81:                                               ; preds = %59
  %82 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %83 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  store i32 4, i32* %87, align 8
  %88 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %89 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  store i32 0, i32* %96, align 4
  %97 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  store i32 0, i32* %105, align 4
  %106 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %107 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i64 1
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  store i32 36000, i32* %114, align 4
  %115 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %116 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i64 1
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 1
  store i32 720, i32* %123, align 4
  %124 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %125 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i64 2
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  store i32 54000, i32* %132, align 4
  %133 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %134 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i64 2
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 1
  store i32 810, i32* %141, align 4
  %142 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %143 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i64 3
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  store i32 72000, i32* %150, align 4
  %151 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %152 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i64 3
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 1
  store i32 900, i32* %159, align 4
  %160 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %161 = call i32 @ni_patch_dependency_tables_based_on_leakage(%struct.radeon_device* %160)
  %162 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %163 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %81
  %169 = load i64, i64* @R600_VOLTAGERESPONSETIME_DFLT, align 8
  %170 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %171 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  store i64 %169, i64* %173, align 8
  br label %174

174:                                              ; preds = %168, %81
  %175 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %176 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %174
  %182 = load i64, i64* @R600_BACKBIASRESPONSETIME_DFLT, align 8
  %183 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %184 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 1
  store i64 %182, i64* %186, align 8
  br label %187

187:                                              ; preds = %181, %174
  %188 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %189 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %190 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %188, i32 %189, i32 0, i32 0, %struct.atom_clock_dividers* %7)
  store i32 %190, i32* %8, align 4
  %191 = load i32, i32* %8, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %7, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %195, 1
  %197 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %198 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %197, i32 0, i32 22
  store i64 %196, i64* %198, align 8
  br label %203

199:                                              ; preds = %187
  %200 = load i64, i64* @R600_REFERENCEDIVIDER_DFLT, align 8
  %201 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %202 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %201, i32 0, i32 22
  store i64 %200, i64* %202, align 8
  br label %203

203:                                              ; preds = %199, %193
  %204 = load i8*, i8** @RV770_RLP_DFLT, align 8
  %205 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %206 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %205, i32 0, i32 21
  store i8* %204, i8** %206, align 8
  %207 = load i8*, i8** @RV770_RMP_DFLT, align 8
  %208 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %209 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %208, i32 0, i32 20
  store i8* %207, i8** %209, align 8
  %210 = load i8*, i8** @RV770_LHP_DFLT, align 8
  %211 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %212 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %211, i32 0, i32 19
  store i8* %210, i8** %212, align 8
  %213 = load i8*, i8** @RV770_LMP_DFLT, align 8
  %214 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %215 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %214, i32 0, i32 18
  store i8* %213, i8** %215, align 8
  %216 = load i8*, i8** @RV770_RLP_DFLT, align 8
  %217 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %218 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %217, i32 0, i32 12
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i64 0
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 3
  store i8* %216, i8** %221, align 8
  %222 = load i8*, i8** @RV770_RMP_DFLT, align 8
  %223 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %224 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %223, i32 0, i32 12
  %225 = load %struct.TYPE_24__*, %struct.TYPE_24__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %225, i64 0
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 2
  store i8* %222, i8** %227, align 8
  %228 = load i8*, i8** @RV770_LHP_DFLT, align 8
  %229 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %230 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %229, i32 0, i32 12
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %231, i64 0
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %232, i32 0, i32 1
  store i8* %228, i8** %233, align 8
  %234 = load i8*, i8** @RV770_LMP_DFLT, align 8
  %235 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %236 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %235, i32 0, i32 12
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i64 0
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 0
  store i8* %234, i8** %239, align 8
  %240 = load i8*, i8** @BTC_RLP_UVD_DFLT, align 8
  %241 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %242 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %241, i32 0, i32 12
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i64 1
  %245 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %244, i32 0, i32 3
  store i8* %240, i8** %245, align 8
  %246 = load i8*, i8** @BTC_RMP_UVD_DFLT, align 8
  %247 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %248 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %247, i32 0, i32 12
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i64 1
  %251 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i32 0, i32 2
  store i8* %246, i8** %251, align 8
  %252 = load i8*, i8** @BTC_LHP_UVD_DFLT, align 8
  %253 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %254 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %253, i32 0, i32 12
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %255, i64 1
  %257 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %256, i32 0, i32 1
  store i8* %252, i8** %257, align 8
  %258 = load i8*, i8** @BTC_LMP_UVD_DFLT, align 8
  %259 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %260 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %259, i32 0, i32 12
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i64 1
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %262, i32 0, i32 0
  store i8* %258, i8** %263, align 8
  %264 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %265 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %264, i32 0, i32 0
  store i32 1, i32* %265, align 8
  %266 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %267 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %266, i32 0, i32 1
  %268 = load %struct.TYPE_29__*, %struct.TYPE_29__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = icmp eq i32 %270, 26375
  br i1 %271, label %272, label %279

272:                                              ; preds = %203
  %273 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %274 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %273, i32 0, i32 0
  store i32 55000, i32* %274, align 8
  %275 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %276 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %275, i32 0, i32 1
  store i32 55000, i32* %276, align 4
  %277 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %278 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %277, i32 0, i32 1
  store i32 55000, i32* %278, align 4
  br label %286

279:                                              ; preds = %203
  %280 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %281 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %280, i32 0, i32 0
  store i32 40000, i32* %281, align 8
  %282 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %283 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %282, i32 0, i32 1
  store i32 40000, i32* %283, align 4
  %284 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %285 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %284, i32 0, i32 1
  store i32 40000, i32* %285, align 4
  br label %286

286:                                              ; preds = %279, %272
  %287 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %288 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %291 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %290, i32 0, i32 0
  store i32 %289, i32* %291, align 8
  %292 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %293 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDC, align 4
  %294 = call i8* @radeon_atom_is_voltage_gpio(%struct.radeon_device* %292, i32 %293, i32 0)
  %295 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %296 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %295, i32 0, i32 17
  store i8* %294, i8** %296, align 8
  %297 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %298 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_MVDDC, align 4
  %299 = call i8* @radeon_atom_is_voltage_gpio(%struct.radeon_device* %297, i32 %298, i32 0)
  %300 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %301 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %300, i32 0, i32 16
  store i8* %299, i8** %301, align 8
  %302 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %303 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDCI, align 4
  %304 = call i8* @radeon_atom_is_voltage_gpio(%struct.radeon_device* %302, i32 %303, i32 0)
  %305 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %306 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %305, i32 0, i32 11
  store i8* %304, i8** %306, align 8
  %307 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %308 = call i32 @rv770_get_engine_memory_ss(%struct.radeon_device* %307)
  %309 = load i32, i32* @RV770_ASI_DFLT, align 4
  %310 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %311 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %310, i32 0, i32 15
  store i32 %309, i32* %311, align 8
  %312 = load i32, i32* @CYPRESS_HASI_DFLT, align 4
  %313 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %314 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %313, i32 0, i32 14
  store i32 %312, i32* %314, align 4
  %315 = load i32, i32* @CYPRESS_VRC_DFLT, align 4
  %316 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %317 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %316, i32 0, i32 13
  store i32 %315, i32* %317, align 8
  %318 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %319 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %318, i32 0, i32 2
  store i32 0, i32* %319, align 8
  %320 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %321 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %320, i32 0, i32 3
  store i32 1, i32* %321, align 4
  %322 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %323 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %322, i32 0, i32 4
  store i32 1, i32* %323, align 8
  %324 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %325 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %324, i32 0, i32 5
  store i32 1, i32* %325, align 4
  %326 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %327 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %326, i32 0, i32 2
  store i32 0, i32* %327, align 8
  %328 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %329 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %328, i32 0, i32 3
  store i32 0, i32* %329, align 4
  %330 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %331 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %330, i32 0, i32 6
  store i32 1, i32* %331, align 8
  %332 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %333 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @THERMAL_TYPE_NONE, align 8
  %337 = icmp ne i64 %335, %336
  br i1 %337, label %338, label %341

338:                                              ; preds = %286
  %339 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %340 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %339, i32 0, i32 7
  store i32 1, i32* %340, align 4
  br label %344

341:                                              ; preds = %286
  %342 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %343 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %342, i32 0, i32 7
  store i32 0, i32* %343, align 4
  br label %344

344:                                              ; preds = %341, %338
  %345 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %346 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %345, i32 0, i32 8
  store i32 1, i32* %346, align 8
  %347 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %348 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %347, i32 0, i32 9
  store i32 1, i32* %348, align 4
  %349 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %350 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %349, i32 0, i32 10
  store i32 1, i32* %350, align 8
  %351 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %352 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %351, i32 0, i32 4
  store i32 1, i32* %352, align 8
  %353 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %354 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %353, i32 0, i32 5
  store i32 1, i32* %354, align 4
  %355 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %356 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %355, i32 0, i32 6
  store i32 1, i32* %356, align 8
  %357 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %358 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %357, i32 0, i32 7
  store i32 1, i32* %358, align 4
  %359 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %360 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %359, i32 0, i32 8
  store i32 1, i32* %360, align 8
  %361 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %362 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %361, i32 0, i32 9
  store i32 0, i32* %362, align 4
  %363 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %364 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %363, i32 0, i32 10
  store i32 0, i32* %364, align 8
  %365 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %366 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %365, i32 0, i32 3
  store i32 0, i32* %366, align 4
  %367 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %368 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %367, i32 0, i32 12
  store i64 0, i64* %368, align 8
  %369 = load i32, i32* @SMC_RAM_END, align 4
  %370 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %371 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %370, i32 0, i32 11
  store i32 %369, i32* %371, align 4
  %372 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %373 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %374, i32 0, i32 2
  %376 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %375, i32 0, i32 0
  store i32 3, i32* %376, align 8
  %377 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %378 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %379, i32 0, i32 2
  %381 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %380, i32 0, i32 1
  store i32 200, i32* %381, align 4
  %382 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %383 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %383, i32 0, i32 1
  %385 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %384, i32 0, i32 2
  %386 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %385, i32 0, i32 2
  store i32 900, i32* %386, align 8
  %387 = load i32, i32* @btc_valid_sclk, align 4
  %388 = call i32 @ARRAY_SIZE(i32 %387)
  %389 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %390 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %391, i32 0, i32 2
  %393 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %392, i32 0, i32 7
  %394 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %393, i32 0, i32 1
  store i32 %388, i32* %394, align 4
  %395 = load i32, i32* @btc_valid_sclk, align 4
  %396 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %397 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %398, i32 0, i32 2
  %400 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %399, i32 0, i32 7
  %401 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %400, i32 0, i32 0
  store i32 %395, i32* %401, align 8
  %402 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %403 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %404, i32 0, i32 2
  %406 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %405, i32 0, i32 6
  %407 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %406, i32 0, i32 1
  store i64 0, i64* %407, align 8
  %408 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %409 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %410, i32 0, i32 2
  %412 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %411, i32 0, i32 6
  %413 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %412, i32 0, i32 0
  store i32* null, i32** %413, align 8
  %414 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %415 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %415, i32 0, i32 1
  %417 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %416, i32 0, i32 2
  %418 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %417, i32 0, i32 3
  store i32 12500, i32* %418, align 4
  %419 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %420 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %419, i32 0, i32 11
  %421 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %421, i32 0, i32 0
  store i32 516, i32* %422, align 8
  %423 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %424 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %423, i32 0, i32 11
  %425 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %425, i32 0, i32 1
  store i32 18, i32* %426, align 4
  %427 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %428 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %427, i32 0, i32 11
  %429 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %429, i32 0, i32 2
  store i32 51, i32* %430, align 8
  %431 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %432 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %431, i32 0, i32 11
  %433 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %433, i32 0, i32 3
  store i32 2957, i32* %434, align 4
  %435 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %436 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %435, i32 0, i32 1
  %437 = load %struct.TYPE_29__*, %struct.TYPE_29__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 4
  switch i32 %439, label %444 [
    i32 26368, label %440
    i32 26369, label %440
    i32 26370, label %440
    i32 26371, label %440
    i32 26392, label %440
    i32 26373, label %443
    i32 26393, label %443
    i32 26397, label %443
    i32 26396, label %443
    i32 26372, label %447
    i32 26374, label %447
    i32 26375, label %447
    i32 26376, label %447
    i32 26377, label %447
  ]

440:                                              ; preds = %344, %344, %344, %344, %344
  %441 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %442 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %441, i32 0, i32 10
  store %struct.TYPE_21__* @cac_weights_cayman_xt, %struct.TYPE_21__** %442, align 8
  br label %450

443:                                              ; preds = %344, %344, %344, %344
  br label %444

444:                                              ; preds = %344, %443
  %445 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %446 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %445, i32 0, i32 10
  store %struct.TYPE_21__* @cac_weights_cayman_pro, %struct.TYPE_21__** %446, align 8
  br label %450

447:                                              ; preds = %344, %344, %344, %344, %344
  %448 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %449 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %448, i32 0, i32 10
  store %struct.TYPE_21__* @cac_weights_cayman_le, %struct.TYPE_21__** %449, align 8
  br label %450

450:                                              ; preds = %447, %444, %440
  %451 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %452 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %451, i32 0, i32 10
  %453 = load %struct.TYPE_21__*, %struct.TYPE_21__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %453, i32 0, i32 2
  %455 = load i64, i64* %454, align 8
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %457, label %464

457:                                              ; preds = %450
  %458 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %459 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %458, i32 0, i32 1
  store i32 1, i32* %459, align 4
  %460 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %461 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %460, i32 0, i32 2
  store i32 1, i32* %461, align 8
  %462 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %463 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %462, i32 0, i32 3
  store i32 1, i32* %463, align 4
  br label %471

464:                                              ; preds = %450
  %465 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %466 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %465, i32 0, i32 1
  store i32 0, i32* %466, align 4
  %467 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %468 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %467, i32 0, i32 2
  store i32 0, i32* %468, align 8
  %469 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %470 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %469, i32 0, i32 3
  store i32 0, i32* %470, align 4
  br label %471

471:                                              ; preds = %464, %457
  %472 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %473 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %472, i32 0, i32 4
  store i32 0, i32* %473, align 8
  %474 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %475 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %474, i32 0, i32 5
  store i32 1, i32* %475, align 4
  %476 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %477 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %476, i32 0, i32 5
  %478 = load i32, i32* %477, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %497

480:                                              ; preds = %471
  %481 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %482 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %481, i32 0, i32 6
  store i32 1, i32* %482, align 8
  %483 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %484 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %483, i32 0, i32 10
  %485 = load %struct.TYPE_21__*, %struct.TYPE_21__** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %485, i32 0, i32 1
  %487 = load i64, i64* %486, align 8
  %488 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %489 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %488, i32 0, i32 9
  store i64 %487, i64* %489, align 8
  %490 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %491 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %490, i32 0, i32 10
  %492 = load %struct.TYPE_21__*, %struct.TYPE_21__** %491, align 8
  %493 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %492, i32 0, i32 0
  %494 = load i64, i64* %493, align 8
  %495 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %496 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %495, i32 0, i32 8
  store i64 %494, i64* %496, align 8
  br label %504

497:                                              ; preds = %471
  %498 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %499 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %498, i32 0, i32 6
  store i32 0, i32* %499, align 8
  %500 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %501 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %500, i32 0, i32 9
  store i64 0, i64* %501, align 8
  %502 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %503 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %502, i32 0, i32 8
  store i64 0, i64* %503, align 8
  br label %504

504:                                              ; preds = %497, %480
  %505 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %506 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %505, i32 0, i32 7
  store i32 1, i32* %506, align 4
  %507 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %508 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %507, i32 0, i32 0
  %509 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %508, i32 0, i32 1
  %510 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %509, i32 0, i32 2
  %511 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %510, i32 0, i32 5
  %512 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %511, i32 0, i32 0
  %513 = load i64, i64* %512, align 8
  %514 = icmp eq i64 %513, 0
  br i1 %514, label %524, label %515

515:                                              ; preds = %504
  %516 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %517 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %516, i32 0, i32 0
  %518 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %517, i32 0, i32 1
  %519 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %518, i32 0, i32 2
  %520 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %519, i32 0, i32 5
  %521 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %520, i32 0, i32 1
  %522 = load i64, i64* %521, align 8
  %523 = icmp eq i64 %522, 0
  br i1 %523, label %524, label %537

524:                                              ; preds = %515, %504
  %525 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %526 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %525, i32 0, i32 0
  %527 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %526, i32 0, i32 1
  %528 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %527, i32 0, i32 2
  %529 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %528, i32 0, i32 5
  %530 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %531 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %530, i32 0, i32 0
  %532 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %531, i32 0, i32 1
  %533 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %532, i32 0, i32 2
  %534 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %533, i32 0, i32 4
  %535 = bitcast %struct.TYPE_30__* %529 to i8*
  %536 = bitcast %struct.TYPE_30__* %534 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %535, i8* align 8 %536, i64 16, i1 false)
  br label %537

537:                                              ; preds = %524, %515
  store i32 0, i32* %2, align 4
  br label %538

538:                                              ; preds = %537, %76, %57, %50, %43, %13
  %539 = load i32, i32* %2, align 4
  ret i32 %539
}

declare dso_local %struct.ni_power_info* @kzalloc(i32, i32) #1

declare dso_local i32 @rv770_get_max_vddc(%struct.radeon_device*) #1

declare dso_local i32 @r600_get_platform_caps(%struct.radeon_device*) #1

declare dso_local i32 @ni_parse_power_table(%struct.radeon_device*) #1

declare dso_local i32 @r600_parse_extended_power_table(%struct.radeon_device*) #1

declare dso_local %struct.TYPE_20__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @r600_free_extended_power_table(%struct.radeon_device*) #1

declare dso_local i32 @ni_patch_dependency_tables_based_on_leakage(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i8* @radeon_atom_is_voltage_gpio(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @rv770_get_engine_memory_ss(%struct.radeon_device*) #1

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
