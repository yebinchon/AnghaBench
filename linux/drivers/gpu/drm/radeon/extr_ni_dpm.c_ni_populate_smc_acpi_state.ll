; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_populate_smc_acpi_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_populate_smc_acpi_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i32, i8*, i8*, %struct.TYPE_13__, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_18__, i32, %struct.TYPE_18__ }
%struct.TYPE_13__ = type { i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i64, i8*, i8*, i8*, i8* }
%struct.TYPE_11__ = type { i64, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_18__ = type { i32 }
%struct.rv7xx_power_info = type { i64, i64, i64, i64, i64 }
%struct.evergreen_power_info = type { i64, i64, i32, i64, i32 }
%struct.ni_power_info = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PPSMC_SWSTATE_FLAG_DC = common dso_local global i32 0, align 4
@PDNB = common dso_local global i32 0, align 4
@BIAS_GEN_PDNB = common dso_local global i32 0, align 4
@RESET_EN = common dso_local global i32 0, align 4
@BYPASS = common dso_local global i32 0, align 4
@MRDCKA0_RESET = common dso_local global i32 0, align 4
@MRDCKA1_RESET = common dso_local global i32 0, align 4
@MRDCKB0_RESET = common dso_local global i32 0, align 4
@MRDCKB1_RESET = common dso_local global i32 0, align 4
@MRDCKC0_RESET = common dso_local global i32 0, align 4
@MRDCKC1_RESET = common dso_local global i32 0, align 4
@MRDCKD0_RESET = common dso_local global i32 0, align 4
@MRDCKD1_RESET = common dso_local global i32 0, align 4
@MRDCKA0_PDNB = common dso_local global i32 0, align 4
@MRDCKA1_PDNB = common dso_local global i32 0, align 4
@MRDCKB0_PDNB = common dso_local global i32 0, align 4
@MRDCKB1_PDNB = common dso_local global i32 0, align 4
@MRDCKC0_PDNB = common dso_local global i32 0, align 4
@MRDCKC1_PDNB = common dso_local global i32 0, align 4
@MRDCKD0_PDNB = common dso_local global i32 0, align 4
@MRDCKD1_PDNB = common dso_local global i32 0, align 4
@MRDCKA0_BYPASS = common dso_local global i32 0, align 4
@MRDCKA1_BYPASS = common dso_local global i32 0, align 4
@MRDCKB0_BYPASS = common dso_local global i32 0, align 4
@MRDCKB1_BYPASS = common dso_local global i32 0, align 4
@MRDCKC0_BYPASS = common dso_local global i32 0, align 4
@MRDCKC1_BYPASS = common dso_local global i32 0, align 4
@MRDCKD0_BYPASS = common dso_local global i32 0, align 4
@MRDCKD1_BYPASS = common dso_local global i32 0, align 4
@SCLK_MUX_SEL_MASK = common dso_local global i32 0, align 4
@MIN_POWER_MASK = common dso_local global i32 0, align 4
@MAX_POWER_MASK = common dso_local global i32 0, align 4
@MAX_POWER_DELTA_MASK = common dso_local global i32 0, align 4
@STI_SIZE_MASK = common dso_local global i32 0, align 4
@LTI_RATIO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.TYPE_17__*)* @ni_populate_smc_acpi_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_populate_smc_acpi_state(%struct.radeon_device* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.rv7xx_power_info*, align 8
  %6 = alloca %struct.evergreen_power_info*, align 8
  %7 = alloca %struct.ni_power_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %22)
  store %struct.rv7xx_power_info* %23, %struct.rv7xx_power_info** %5, align 8
  %24 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %25 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %24)
  store %struct.evergreen_power_info* %25, %struct.evergreen_power_info** %6, align 8
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = call %struct.ni_power_info* @ni_get_pi(%struct.radeon_device* %26)
  store %struct.ni_power_info* %27, %struct.ni_power_info** %7, align 8
  %28 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %29 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %33 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %37 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %41 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  %44 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %45 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %12, align 4
  %48 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %49 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %13, align 4
  %52 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %53 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %14, align 4
  %56 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %57 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %15, align 4
  %60 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %61 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %16, align 4
  %64 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %65 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %17, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = bitcast %struct.TYPE_15__* %69 to i8*
  %73 = bitcast %struct.TYPE_15__* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 16, i1 false)
  %74 = load i32, i32* @PPSMC_SWSTATE_FLAG_DC, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, %75
  store i32 %80, i32* %78, align 8
  %81 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %82 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %164

85:                                               ; preds = %2
  %86 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %87 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %88 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %87, i32 0, i32 4
  %89 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %90 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 10
  %98 = call i32 @ni_populate_voltage_value(%struct.radeon_device* %86, i32* %88, i64 %91, %struct.TYPE_18__* %97)
  store i32 %98, i32* %19, align 4
  %99 = load i32, i32* %19, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %131, label %101

101:                                              ; preds = %85
  %102 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 10
  %109 = call i32 @ni_get_std_voltage_value(%struct.radeon_device* %102, %struct.TYPE_18__* %108, i32* %20)
  store i32 %109, i32* %19, align 4
  %110 = load i32, i32* %19, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %130, label %112

112:                                              ; preds = %101
  %113 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %114 = load i32, i32* %20, align 4
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 10
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 9
  %129 = call i32 @ni_populate_std_voltage_value(%struct.radeon_device* %113, i32 %114, i32 %122, i32* %128)
  br label %130

130:                                              ; preds = %112, %101
  br label %131

131:                                              ; preds = %130, %85
  %132 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %133 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %156

136:                                              ; preds = %131
  %137 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %138 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %136
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  store i32 1, i32* %147, align 8
  br label %155

148:                                              ; preds = %136
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i64 0
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  store i32 0, i32* %154, align 8
  br label %155

155:                                              ; preds = %148, %141
  br label %163

156:                                              ; preds = %131
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  store i32 0, i32* %162, align 8
  br label %163

163:                                              ; preds = %156, %155
  br label %217

164:                                              ; preds = %2
  %165 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %166 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %167 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %166, i32 0, i32 4
  %168 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %169 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i64 0
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 10
  %177 = call i32 @ni_populate_voltage_value(%struct.radeon_device* %165, i32* %167, i64 %170, %struct.TYPE_18__* %176)
  store i32 %177, i32* %19, align 4
  %178 = load i32, i32* %19, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %210, label %180

180:                                              ; preds = %164
  %181 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i64 0
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 10
  %188 = call i32 @ni_get_std_voltage_value(%struct.radeon_device* %181, %struct.TYPE_18__* %187, i32* %21)
  store i32 %188, i32* %19, align 4
  %189 = load i32, i32* %19, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %209, label %191

191:                                              ; preds = %180
  %192 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %193 = load i32, i32* %21, align 4
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i64 0
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 10
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i64 0
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 9
  %208 = call i32 @ni_populate_std_voltage_value(%struct.radeon_device* %192, i32 %193, i32 %201, i32* %207)
  br label %209

209:                                              ; preds = %191, %180
  br label %210

210:                                              ; preds = %209, %164
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i64 0
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 0
  store i32 0, i32* %216, align 8
  br label %217

217:                                              ; preds = %210, %163
  %218 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %219 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %242

222:                                              ; preds = %217
  %223 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %224 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %241

227:                                              ; preds = %222
  %228 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %229 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %230 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %229, i32 0, i32 2
  %231 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %232 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i64 0
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 8
  %240 = call i32 @ni_populate_voltage_value(%struct.radeon_device* %228, i32* %230, i64 %233, %struct.TYPE_18__* %239)
  br label %241

241:                                              ; preds = %227, %222
  br label %242

242:                                              ; preds = %241, %217
  %243 = load i32, i32* @PDNB, align 4
  %244 = xor i32 %243, -1
  %245 = load i32, i32* %8, align 4
  %246 = and i32 %245, %244
  store i32 %246, i32* %8, align 4
  %247 = load i32, i32* @BIAS_GEN_PDNB, align 4
  %248 = load i32, i32* @RESET_EN, align 4
  %249 = or i32 %247, %248
  %250 = load i32, i32* %9, align 4
  %251 = or i32 %250, %249
  store i32 %251, i32* %9, align 4
  %252 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %253 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %242
  %257 = load i32, i32* @PDNB, align 4
  %258 = xor i32 %257, -1
  %259 = load i32, i32* %10, align 4
  %260 = and i32 %259, %258
  store i32 %260, i32* %10, align 4
  br label %261

261:                                              ; preds = %256, %242
  %262 = load i32, i32* @BIAS_GEN_PDNB, align 4
  %263 = load i32, i32* @RESET_EN, align 4
  %264 = or i32 %262, %263
  %265 = load i32, i32* @BYPASS, align 4
  %266 = or i32 %264, %265
  %267 = load i32, i32* %11, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %11, align 4
  %269 = load i32, i32* @MRDCKA0_RESET, align 4
  %270 = load i32, i32* @MRDCKA1_RESET, align 4
  %271 = or i32 %269, %270
  %272 = load i32, i32* @MRDCKB0_RESET, align 4
  %273 = or i32 %271, %272
  %274 = load i32, i32* @MRDCKB1_RESET, align 4
  %275 = or i32 %273, %274
  %276 = load i32, i32* @MRDCKC0_RESET, align 4
  %277 = or i32 %275, %276
  %278 = load i32, i32* @MRDCKC1_RESET, align 4
  %279 = or i32 %277, %278
  %280 = load i32, i32* @MRDCKD0_RESET, align 4
  %281 = or i32 %279, %280
  %282 = load i32, i32* @MRDCKD1_RESET, align 4
  %283 = or i32 %281, %282
  %284 = load i32, i32* %16, align 4
  %285 = or i32 %284, %283
  store i32 %285, i32* %16, align 4
  %286 = load i32, i32* @MRDCKA0_PDNB, align 4
  %287 = load i32, i32* @MRDCKA1_PDNB, align 4
  %288 = or i32 %286, %287
  %289 = load i32, i32* @MRDCKB0_PDNB, align 4
  %290 = or i32 %288, %289
  %291 = load i32, i32* @MRDCKB1_PDNB, align 4
  %292 = or i32 %290, %291
  %293 = load i32, i32* @MRDCKC0_PDNB, align 4
  %294 = or i32 %292, %293
  %295 = load i32, i32* @MRDCKC1_PDNB, align 4
  %296 = or i32 %294, %295
  %297 = load i32, i32* @MRDCKD0_PDNB, align 4
  %298 = or i32 %296, %297
  %299 = load i32, i32* @MRDCKD1_PDNB, align 4
  %300 = or i32 %298, %299
  %301 = xor i32 %300, -1
  %302 = load i32, i32* %16, align 4
  %303 = and i32 %302, %301
  store i32 %303, i32* %16, align 4
  %304 = load i32, i32* @MRDCKA0_BYPASS, align 4
  %305 = load i32, i32* @MRDCKA1_BYPASS, align 4
  %306 = or i32 %304, %305
  %307 = load i32, i32* @MRDCKB0_BYPASS, align 4
  %308 = or i32 %306, %307
  %309 = load i32, i32* @MRDCKB1_BYPASS, align 4
  %310 = or i32 %308, %309
  %311 = load i32, i32* @MRDCKC0_BYPASS, align 4
  %312 = or i32 %310, %311
  %313 = load i32, i32* @MRDCKC1_BYPASS, align 4
  %314 = or i32 %312, %313
  %315 = load i32, i32* @MRDCKD0_BYPASS, align 4
  %316 = or i32 %314, %315
  %317 = load i32, i32* @MRDCKD1_BYPASS, align 4
  %318 = or i32 %316, %317
  %319 = load i32, i32* %17, align 4
  %320 = or i32 %319, %318
  store i32 %320, i32* %17, align 4
  %321 = load i32, i32* @SCLK_MUX_SEL_MASK, align 4
  %322 = xor i32 %321, -1
  %323 = load i32, i32* %13, align 4
  %324 = and i32 %323, %322
  store i32 %324, i32* %13, align 4
  %325 = call i32 @SCLK_MUX_SEL(i32 4)
  %326 = load i32, i32* %13, align 4
  %327 = or i32 %326, %325
  store i32 %327, i32* %13, align 4
  %328 = load i32, i32* %8, align 4
  %329 = call i8* @cpu_to_be32(i32 %328)
  %330 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %331, i32 0, i32 0
  %333 = load %struct.TYPE_16__*, %struct.TYPE_16__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %333, i64 0
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 7
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i32 0, i32 6
  store i8* %329, i8** %336, align 8
  %337 = load i32, i32* %9, align 4
  %338 = call i8* @cpu_to_be32(i32 %337)
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %340, i32 0, i32 0
  %342 = load %struct.TYPE_16__*, %struct.TYPE_16__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i64 0
  %344 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %343, i32 0, i32 7
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 5
  store i8* %338, i8** %345, align 8
  %346 = load i32, i32* %10, align 4
  %347 = call i8* @cpu_to_be32(i32 %346)
  %348 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %349, i32 0, i32 0
  %351 = load %struct.TYPE_16__*, %struct.TYPE_16__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %351, i64 0
  %353 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %352, i32 0, i32 7
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 4
  store i8* %347, i8** %354, align 8
  %355 = load i32, i32* %11, align 4
  %356 = call i8* @cpu_to_be32(i32 %355)
  %357 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %358, i32 0, i32 0
  %360 = load %struct.TYPE_16__*, %struct.TYPE_16__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %360, i64 0
  %362 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %361, i32 0, i32 7
  %363 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %362, i32 0, i32 3
  store i8* %356, i8** %363, align 8
  %364 = load i32, i32* %16, align 4
  %365 = call i8* @cpu_to_be32(i32 %364)
  %366 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %367, i32 0, i32 0
  %369 = load %struct.TYPE_16__*, %struct.TYPE_16__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %369, i64 0
  %371 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %370, i32 0, i32 7
  %372 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %371, i32 0, i32 2
  store i8* %365, i8** %372, align 8
  %373 = load i32, i32* %17, align 4
  %374 = call i8* @cpu_to_be32(i32 %373)
  %375 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %376 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %376, i32 0, i32 0
  %378 = load %struct.TYPE_16__*, %struct.TYPE_16__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %378, i64 0
  %380 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %379, i32 0, i32 7
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i32 0, i32 1
  store i8* %374, i8** %381, align 8
  %382 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %383 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %383, i32 0, i32 0
  %385 = load %struct.TYPE_16__*, %struct.TYPE_16__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %385, i64 0
  %387 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %386, i32 0, i32 7
  %388 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %387, i32 0, i32 0
  store i64 0, i64* %388, align 8
  %389 = load i32, i32* %12, align 4
  %390 = call i8* @cpu_to_be32(i32 %389)
  %391 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %392, i32 0, i32 0
  %394 = load %struct.TYPE_16__*, %struct.TYPE_16__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %394, i64 0
  %396 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %395, i32 0, i32 6
  %397 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %396, i32 0, i32 4
  store i8* %390, i8** %397, align 8
  %398 = load i32, i32* %13, align 4
  %399 = call i8* @cpu_to_be32(i32 %398)
  %400 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %401, i32 0, i32 0
  %403 = load %struct.TYPE_16__*, %struct.TYPE_16__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %403, i64 0
  %405 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %404, i32 0, i32 6
  %406 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %405, i32 0, i32 3
  store i8* %399, i8** %406, align 8
  %407 = load i32, i32* %14, align 4
  %408 = call i8* @cpu_to_be32(i32 %407)
  %409 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %410 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %410, i32 0, i32 0
  %412 = load %struct.TYPE_16__*, %struct.TYPE_16__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %412, i64 0
  %414 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %413, i32 0, i32 6
  %415 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %414, i32 0, i32 2
  store i8* %408, i8** %415, align 8
  %416 = load i32, i32* %15, align 4
  %417 = call i8* @cpu_to_be32(i32 %416)
  %418 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %419 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %419, i32 0, i32 0
  %421 = load %struct.TYPE_16__*, %struct.TYPE_16__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %421, i64 0
  %423 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %422, i32 0, i32 6
  %424 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %423, i32 0, i32 1
  store i8* %417, i8** %424, align 8
  %425 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %426 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %426, i32 0, i32 0
  %428 = load %struct.TYPE_16__*, %struct.TYPE_16__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %428, i64 0
  %430 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %429, i32 0, i32 6
  %431 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %430, i32 0, i32 0
  store i64 0, i64* %431, align 8
  %432 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %433 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %434 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %434, i32 0, i32 0
  %436 = load %struct.TYPE_16__*, %struct.TYPE_16__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %436, i64 0
  %438 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %437, i32 0, i32 5
  %439 = call i32 @ni_populate_mvdd_value(%struct.radeon_device* %432, i32 0, i32* %438)
  %440 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %441 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %444, label %451

444:                                              ; preds = %261
  %445 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %446 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %446, i32 0, i32 0
  %448 = load %struct.TYPE_16__*, %struct.TYPE_16__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %448, i64 0
  %450 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %449, i32 0, i32 1
  store i32 1, i32* %450, align 4
  br label %451

451:                                              ; preds = %444, %261
  %452 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %453 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %453, i32 0, i32 0
  %455 = load %struct.TYPE_16__*, %struct.TYPE_16__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %455, i64 0
  %457 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %456, i32 0, i32 4
  %458 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %457, i32 0, i32 3
  store i64 0, i64* %458, align 8
  %459 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %460 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %459, i32 0, i32 0
  %461 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %460, i32 0, i32 0
  %462 = load %struct.TYPE_16__*, %struct.TYPE_16__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %462, i64 0
  %464 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %463, i32 0, i32 4
  %465 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %464, i32 0, i32 2
  store i64 0, i64* %465, align 8
  %466 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %467 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %467, i32 0, i32 0
  %469 = load %struct.TYPE_16__*, %struct.TYPE_16__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %469, i64 0
  %471 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %470, i32 0, i32 4
  %472 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %471, i32 0, i32 1
  store i64 0, i64* %472, align 8
  %473 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %474 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %473, i32 0, i32 0
  %475 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %474, i32 0, i32 0
  %476 = load %struct.TYPE_16__*, %struct.TYPE_16__** %475, align 8
  %477 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %476, i64 0
  %478 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %477, i32 0, i32 4
  %479 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %478, i32 0, i32 0
  store i64 0, i64* %479, align 8
  %480 = load i32, i32* @MIN_POWER_MASK, align 4
  %481 = load i32, i32* @MAX_POWER_MASK, align 4
  %482 = or i32 %480, %481
  store i32 %482, i32* %18, align 4
  %483 = load i32, i32* %18, align 4
  %484 = call i8* @cpu_to_be32(i32 %483)
  %485 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %486 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %485, i32 0, i32 0
  %487 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %486, i32 0, i32 0
  %488 = load %struct.TYPE_16__*, %struct.TYPE_16__** %487, align 8
  %489 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %488, i64 0
  %490 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %489, i32 0, i32 3
  store i8* %484, i8** %490, align 8
  %491 = load i32, i32* @MAX_POWER_DELTA_MASK, align 4
  %492 = load i32, i32* @STI_SIZE_MASK, align 4
  %493 = or i32 %491, %492
  %494 = load i32, i32* @LTI_RATIO_MASK, align 4
  %495 = or i32 %493, %494
  store i32 %495, i32* %18, align 4
  %496 = load i32, i32* %18, align 4
  %497 = call i8* @cpu_to_be32(i32 %496)
  %498 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %499 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %498, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %499, i32 0, i32 0
  %501 = load %struct.TYPE_16__*, %struct.TYPE_16__** %500, align 8
  %502 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %501, i64 0
  %503 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %502, i32 0, i32 2
  store i8* %497, i8** %503, align 8
  ret i32 0
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.radeon_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ni_populate_voltage_value(%struct.radeon_device*, i32*, i64, %struct.TYPE_18__*) #1

declare dso_local i32 @ni_get_std_voltage_value(%struct.radeon_device*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @ni_populate_std_voltage_value(%struct.radeon_device*, i32, i32, i32*) #1

declare dso_local i32 @SCLK_MUX_SEL(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @ni_populate_mvdd_value(%struct.radeon_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
