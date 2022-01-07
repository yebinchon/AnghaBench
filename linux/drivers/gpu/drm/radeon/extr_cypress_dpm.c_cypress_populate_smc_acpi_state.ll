; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_populate_smc_acpi_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_populate_smc_acpi_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_12__ = type { i64, i8*, i8*, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.rv7xx_power_info = type { i64, i64, i64, i64, i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.evergreen_power_info = type { i64, i64, i32, i64, i32 }

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
@CHIP_HEMLOCK = common dso_local global i64 0, align 8
@SPLL_RESET = common dso_local global i32 0, align 4
@SPLL_SLEEP = common dso_local global i32 0, align 4
@SPLL_BYPASS_EN = common dso_local global i32 0, align 4
@SCLK_MUX_SEL_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cypress_populate_smc_acpi_state(%struct.radeon_device* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.rv7xx_power_info*, align 8
  %6 = alloca %struct.evergreen_power_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %16 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %17 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %16)
  store %struct.rv7xx_power_info* %17, %struct.rv7xx_power_info** %5, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %18)
  store %struct.evergreen_power_info* %19, %struct.evergreen_power_info** %6, align 8
  %20 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %21 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %26 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %31 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %9, align 4
  %35 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %36 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %41 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %11, align 4
  %45 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %46 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %12, align 4
  %50 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %51 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %13, align 4
  %55 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %56 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %14, align 4
  %60 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %61 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %15, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = bitcast %struct.TYPE_16__* %66 to i8*
  %70 = bitcast %struct.TYPE_16__* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 16, i1 false)
  %71 = load i32, i32* @PPSMC_SWSTATE_FLAG_DC, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %72
  store i32 %77, i32* %75, align 8
  %78 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %79 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %147

82:                                               ; preds = %2
  %83 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %84 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %85 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %84, i32 0, i32 4
  %86 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %87 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 7
  %95 = call i32 @cypress_populate_voltage_value(%struct.radeon_device* %83, i32* %85, i64 %88, i32* %94)
  %96 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %97 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %120

100:                                              ; preds = %82
  %101 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %102 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  br label %119

112:                                              ; preds = %100
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  br label %119

119:                                              ; preds = %112, %105
  br label %127

120:                                              ; preds = %82
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  store i32 0, i32* %126, align 8
  br label %127

127:                                              ; preds = %120, %119
  %128 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %129 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %127
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 1
  store i32 1, i32* %138, align 4
  br label %146

139:                                              ; preds = %127
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 1
  store i32 0, i32* %145, align 4
  br label %146

146:                                              ; preds = %139, %132
  br label %167

147:                                              ; preds = %2
  %148 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %149 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %150 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %149, i32 0, i32 4
  %151 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %152 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i64 0
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 7
  %160 = call i32 @cypress_populate_voltage_value(%struct.radeon_device* %148, i32* %150, i64 %153, i32* %159)
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  store i32 0, i32* %166, align 8
  br label %167

167:                                              ; preds = %147, %146
  %168 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %169 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %192

172:                                              ; preds = %167
  %173 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %174 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %191

177:                                              ; preds = %172
  %178 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %179 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %180 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %179, i32 0, i32 2
  %181 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %182 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i64 0
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 6
  %190 = call i32 @cypress_populate_voltage_value(%struct.radeon_device* %178, i32* %180, i64 %183, i32* %189)
  br label %191

191:                                              ; preds = %177, %172
  br label %192

192:                                              ; preds = %191, %167
  %193 = load i32, i32* @PDNB, align 4
  %194 = xor i32 %193, -1
  %195 = load i32, i32* %7, align 4
  %196 = and i32 %195, %194
  store i32 %196, i32* %7, align 4
  %197 = load i32, i32* @BIAS_GEN_PDNB, align 4
  %198 = load i32, i32* @RESET_EN, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* %8, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %8, align 4
  %202 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %203 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %192
  %207 = load i32, i32* @PDNB, align 4
  %208 = xor i32 %207, -1
  %209 = load i32, i32* %9, align 4
  %210 = and i32 %209, %208
  store i32 %210, i32* %9, align 4
  br label %211

211:                                              ; preds = %206, %192
  %212 = load i32, i32* @BIAS_GEN_PDNB, align 4
  %213 = load i32, i32* @RESET_EN, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @BYPASS, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* %10, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %10, align 4
  %219 = load i32, i32* @MRDCKA0_RESET, align 4
  %220 = load i32, i32* @MRDCKA1_RESET, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @MRDCKB0_RESET, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @MRDCKB1_RESET, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @MRDCKC0_RESET, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @MRDCKC1_RESET, align 4
  %229 = or i32 %227, %228
  %230 = load i32, i32* @MRDCKD0_RESET, align 4
  %231 = or i32 %229, %230
  %232 = load i32, i32* @MRDCKD1_RESET, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* %14, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %14, align 4
  %236 = load i32, i32* @MRDCKA0_PDNB, align 4
  %237 = load i32, i32* @MRDCKA1_PDNB, align 4
  %238 = or i32 %236, %237
  %239 = load i32, i32* @MRDCKB0_PDNB, align 4
  %240 = or i32 %238, %239
  %241 = load i32, i32* @MRDCKB1_PDNB, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* @MRDCKC0_PDNB, align 4
  %244 = or i32 %242, %243
  %245 = load i32, i32* @MRDCKC1_PDNB, align 4
  %246 = or i32 %244, %245
  %247 = load i32, i32* @MRDCKD0_PDNB, align 4
  %248 = or i32 %246, %247
  %249 = load i32, i32* @MRDCKD1_PDNB, align 4
  %250 = or i32 %248, %249
  %251 = xor i32 %250, -1
  %252 = load i32, i32* %14, align 4
  %253 = and i32 %252, %251
  store i32 %253, i32* %14, align 4
  %254 = load i32, i32* @MRDCKA0_BYPASS, align 4
  %255 = load i32, i32* @MRDCKA1_BYPASS, align 4
  %256 = or i32 %254, %255
  %257 = load i32, i32* @MRDCKB0_BYPASS, align 4
  %258 = or i32 %256, %257
  %259 = load i32, i32* @MRDCKB1_BYPASS, align 4
  %260 = or i32 %258, %259
  %261 = load i32, i32* @MRDCKC0_BYPASS, align 4
  %262 = or i32 %260, %261
  %263 = load i32, i32* @MRDCKC1_BYPASS, align 4
  %264 = or i32 %262, %263
  %265 = load i32, i32* @MRDCKD0_BYPASS, align 4
  %266 = or i32 %264, %265
  %267 = load i32, i32* @MRDCKD1_BYPASS, align 4
  %268 = or i32 %266, %267
  %269 = load i32, i32* %15, align 4
  %270 = or i32 %269, %268
  store i32 %270, i32* %15, align 4
  %271 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %272 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @CHIP_HEMLOCK, align 8
  %275 = icmp sle i64 %273, %274
  br i1 %275, label %276, label %284

276:                                              ; preds = %211
  %277 = load i32, i32* @SPLL_RESET, align 4
  %278 = load i32, i32* @SPLL_SLEEP, align 4
  %279 = or i32 %277, %278
  %280 = load i32, i32* @SPLL_BYPASS_EN, align 4
  %281 = or i32 %279, %280
  %282 = load i32, i32* %11, align 4
  %283 = or i32 %282, %281
  store i32 %283, i32* %11, align 4
  br label %284

284:                                              ; preds = %276, %211
  %285 = load i32, i32* @SCLK_MUX_SEL_MASK, align 4
  %286 = xor i32 %285, -1
  %287 = load i32, i32* %12, align 4
  %288 = and i32 %287, %286
  store i32 %288, i32* %12, align 4
  %289 = call i32 @SCLK_MUX_SEL(i32 4)
  %290 = load i32, i32* %12, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %12, align 4
  %292 = load i32, i32* %7, align 4
  %293 = call i8* @cpu_to_be32(i32 %292)
  %294 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 0
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i64 0
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 5
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 6
  store i8* %293, i8** %301, align 8
  %302 = load i32, i32* %8, align 4
  %303 = call i8* @cpu_to_be32(i32 %302)
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %307, i64 0
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 5
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 5
  store i8* %303, i8** %311, align 8
  %312 = load i32, i32* %9, align 4
  %313 = call i8* @cpu_to_be32(i32 %312)
  %314 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_15__*, %struct.TYPE_15__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i64 0
  %319 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i32 0, i32 5
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i32 0, i32 4
  store i8* %313, i8** %321, align 8
  %322 = load i32, i32* %10, align 4
  %323 = call i8* @cpu_to_be32(i32 %322)
  %324 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 0
  %327 = load %struct.TYPE_15__*, %struct.TYPE_15__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %327, i64 0
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %328, i32 0, i32 5
  %330 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i32 0, i32 3
  store i8* %323, i8** %331, align 8
  %332 = load i32, i32* %14, align 4
  %333 = call i8* @cpu_to_be32(i32 %332)
  %334 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i32 0, i32 0
  %337 = load %struct.TYPE_15__*, %struct.TYPE_15__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %337, i64 0
  %339 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %338, i32 0, i32 5
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 2
  store i8* %333, i8** %341, align 8
  %342 = load i32, i32* %15, align 4
  %343 = call i8* @cpu_to_be32(i32 %342)
  %344 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %345, i32 0, i32 0
  %347 = load %struct.TYPE_15__*, %struct.TYPE_15__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %347, i64 0
  %349 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %348, i32 0, i32 5
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i32 0, i32 1
  store i8* %343, i8** %351, align 8
  %352 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %353, i32 0, i32 0
  %355 = load %struct.TYPE_15__*, %struct.TYPE_15__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %355, i64 0
  %357 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %356, i32 0, i32 5
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 0
  store i64 0, i64* %359, align 8
  %360 = load i32, i32* %11, align 4
  %361 = call i8* @cpu_to_be32(i32 %360)
  %362 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %363, i32 0, i32 0
  %365 = load %struct.TYPE_15__*, %struct.TYPE_15__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %365, i64 0
  %367 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %366, i32 0, i32 4
  %368 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %367, i32 0, i32 3
  store i8* %361, i8** %368, align 8
  %369 = load i32, i32* %12, align 4
  %370 = call i8* @cpu_to_be32(i32 %369)
  %371 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %372 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %372, i32 0, i32 0
  %374 = load %struct.TYPE_15__*, %struct.TYPE_15__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %374, i64 0
  %376 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %375, i32 0, i32 4
  %377 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i32 0, i32 2
  store i8* %370, i8** %377, align 8
  %378 = load i32, i32* %13, align 4
  %379 = call i8* @cpu_to_be32(i32 %378)
  %380 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %381, i32 0, i32 0
  %383 = load %struct.TYPE_15__*, %struct.TYPE_15__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %383, i64 0
  %385 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %384, i32 0, i32 4
  %386 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %385, i32 0, i32 1
  store i8* %379, i8** %386, align 8
  %387 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %388, i32 0, i32 0
  %390 = load %struct.TYPE_15__*, %struct.TYPE_15__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %390, i64 0
  %392 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %391, i32 0, i32 4
  %393 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %392, i32 0, i32 0
  store i64 0, i64* %393, align 8
  %394 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %395 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %396, i32 0, i32 0
  %398 = load %struct.TYPE_15__*, %struct.TYPE_15__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %398, i64 0
  %400 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %399, i32 0, i32 3
  %401 = call i32 @cypress_populate_mvdd_value(%struct.radeon_device* %394, i32 0, i32* %400)
  %402 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %403 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %413

406:                                              ; preds = %284
  %407 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %408, i32 0, i32 0
  %410 = load %struct.TYPE_15__*, %struct.TYPE_15__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %410, i64 0
  %412 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %411, i32 0, i32 2
  store i32 1, i32* %412, align 8
  br label %413

413:                                              ; preds = %406, %284
  %414 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %415 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %415, i32 0, i32 0
  %417 = load %struct.TYPE_15__*, %struct.TYPE_15__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %417, i64 1
  %419 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %420 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %420, i32 0, i32 0
  %422 = load %struct.TYPE_15__*, %struct.TYPE_15__** %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %422, i64 0
  %424 = bitcast %struct.TYPE_15__* %418 to i8*
  %425 = bitcast %struct.TYPE_15__* %423 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %424, i8* align 8 %425, i64 112, i1 false)
  %426 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %427 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %427, i32 0, i32 0
  %429 = load %struct.TYPE_15__*, %struct.TYPE_15__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %429, i64 2
  %431 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %432 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %432, i32 0, i32 0
  %434 = load %struct.TYPE_15__*, %struct.TYPE_15__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %434, i64 0
  %436 = bitcast %struct.TYPE_15__* %430 to i8*
  %437 = bitcast %struct.TYPE_15__* %435 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %436, i8* align 8 %437, i64 112, i1 false)
  ret i32 0
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cypress_populate_voltage_value(%struct.radeon_device*, i32*, i64, i32*) #1

declare dso_local i32 @SCLK_MUX_SEL(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cypress_populate_mvdd_value(%struct.radeon_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
