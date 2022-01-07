; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv740_dpm.c_rv740_populate_smc_acpi_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv740_dpm.c_rv740_populate_smc_acpi_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__, %struct.TYPE_13__, i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i8*, i8*, i8* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.rv7xx_power_info = type { i64, i32, i64, i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PPSMC_SWSTATE_FLAG_DC = common dso_local global i32 0, align 4
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
@MRDCKA0_BYPASS = common dso_local global i32 0, align 4
@MRDCKA1_BYPASS = common dso_local global i32 0, align 4
@MRDCKB0_BYPASS = common dso_local global i32 0, align 4
@MRDCKB1_BYPASS = common dso_local global i32 0, align 4
@MRDCKC0_BYPASS = common dso_local global i32 0, align 4
@MRDCKC1_BYPASS = common dso_local global i32 0, align 4
@MRDCKD0_BYPASS = common dso_local global i32 0, align 4
@MRDCKD1_BYPASS = common dso_local global i32 0, align 4
@SPLL_RESET = common dso_local global i32 0, align 4
@SPLL_SLEEP = common dso_local global i32 0, align 4
@SPLL_BYPASS_EN = common dso_local global i32 0, align 4
@SCLK_MUX_SEL_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv740_populate_smc_acpi_state(%struct.radeon_device* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.rv7xx_power_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %15)
  store %struct.rv7xx_power_info* %16, %struct.rv7xx_power_info** %5, align 8
  %17 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %18 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %23 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %28 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  %32 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %33 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %38 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %10, align 4
  %42 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %43 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %48 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %12, align 4
  %52 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %53 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %13, align 4
  %57 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %58 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %14, align 4
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = bitcast %struct.TYPE_14__* %63 to i8*
  %67 = bitcast %struct.TYPE_14__* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 16, i1 false)
  %68 = load i32, i32* @PPSMC_SWSTATE_FLAG_DC, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, %69
  store i32 %74, i32* %72, align 8
  %75 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %76 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %117

79:                                               ; preds = %2
  %80 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %81 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %82 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 4
  %90 = call i32 @rv770_populate_vddc_value(%struct.radeon_device* %80, i64 %83, i32* %89)
  %91 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %92 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %79
  %96 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %97 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  br label %100

99:                                               ; preds = %79
  br label %100

100:                                              ; preds = %99, %95
  %101 = phi i32 [ %98, %95 ], [ 0, %99 ]
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 3
  store i32 %101, i32* %107, align 8
  %108 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %109 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 5
  store i32 %110, i32* %116, align 8
  br label %135

117:                                              ; preds = %2
  %118 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %119 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %120 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 4
  %128 = call i32 @rv770_populate_vddc_value(%struct.radeon_device* %118, i64 %121, i32* %127)
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i64 0
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 3
  store i32 0, i32* %134, align 8
  br label %135

135:                                              ; preds = %117, %100
  %136 = load i32, i32* @BIAS_GEN_PDNB, align 4
  %137 = load i32, i32* @RESET_EN, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* %7, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* @BYPASS, align 4
  %142 = load i32, i32* @BIAS_GEN_PDNB, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @RESET_EN, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* %9, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* @MRDCKA0_RESET, align 4
  %149 = load i32, i32* @MRDCKA1_RESET, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @MRDCKB0_RESET, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @MRDCKB1_RESET, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @MRDCKC0_RESET, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @MRDCKC1_RESET, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @MRDCKD0_RESET, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @MRDCKD1_RESET, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* %13, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %13, align 4
  %165 = load i32, i32* @MRDCKA0_BYPASS, align 4
  %166 = load i32, i32* @MRDCKA1_BYPASS, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @MRDCKB0_BYPASS, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @MRDCKB1_BYPASS, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @MRDCKC0_BYPASS, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @MRDCKC1_BYPASS, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @MRDCKD0_BYPASS, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @MRDCKD1_BYPASS, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* %14, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %14, align 4
  %182 = load i32, i32* @SPLL_RESET, align 4
  %183 = load i32, i32* @SPLL_SLEEP, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @SPLL_BYPASS_EN, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* %10, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %10, align 4
  %189 = load i32, i32* @SCLK_MUX_SEL_MASK, align 4
  %190 = xor i32 %189, -1
  %191 = load i32, i32* %11, align 4
  %192 = and i32 %191, %190
  store i32 %192, i32* %11, align 4
  %193 = call i32 @SCLK_MUX_SEL(i32 4)
  %194 = load i32, i32* %11, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %11, align 4
  %196 = load i32, i32* %6, align 4
  %197 = call i8* @cpu_to_be32(i32 %196)
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i64 0
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 6
  store i8* %197, i8** %205, align 8
  %206 = load i32, i32* %7, align 4
  %207 = call i8* @cpu_to_be32(i32 %206)
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i64 0
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 5
  store i8* %207, i8** %215, align 8
  %216 = load i32, i32* %8, align 4
  %217 = call i8* @cpu_to_be32(i32 %216)
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i64 0
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 4
  store i8* %217, i8** %225, align 8
  %226 = load i32, i32* %9, align 4
  %227 = call i8* @cpu_to_be32(i32 %226)
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i64 0
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 3
  store i8* %227, i8** %235, align 8
  %236 = load i32, i32* %13, align 4
  %237 = call i8* @cpu_to_be32(i32 %236)
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i64 0
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 2
  store i8* %237, i8** %245, align 8
  %246 = load i32, i32* %14, align 4
  %247 = call i8* @cpu_to_be32(i32 %246)
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i64 0
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 1
  store i8* %247, i8** %255, align 8
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i64 0
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 0
  store i64 0, i64* %263, align 8
  %264 = load i32, i32* %10, align 4
  %265 = call i8* @cpu_to_be32(i32 %264)
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i64 0
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 3
  store i8* %265, i8** %272, align 8
  %273 = load i32, i32* %11, align 4
  %274 = call i8* @cpu_to_be32(i32 %273)
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i64 0
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 2
  store i8* %274, i8** %281, align 8
  %282 = load i32, i32* %12, align 4
  %283 = call i8* @cpu_to_be32(i32 %282)
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i64 0
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 1
  store i8* %283, i8** %290, align 8
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 0
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i64 0
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 0
  store i64 0, i64* %297, align 8
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i64 1
  %303 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_16__*, %struct.TYPE_16__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %306, i64 0
  %308 = bitcast %struct.TYPE_16__* %302 to i8*
  %309 = bitcast %struct.TYPE_16__* %307 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %308, i8* align 8 %309, i64 112, i1 false)
  %310 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 0
  %313 = load %struct.TYPE_16__*, %struct.TYPE_16__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i64 2
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 0
  %318 = load %struct.TYPE_16__*, %struct.TYPE_16__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %318, i64 0
  %320 = bitcast %struct.TYPE_16__* %314 to i8*
  %321 = bitcast %struct.TYPE_16__* %319 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %320, i8* align 8 %321, i64 112, i1 false)
  %322 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %323 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 0
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i64 0
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 0
  %329 = call i32 @rv770_populate_mvdd_value(%struct.radeon_device* %322, i32 0, i32* %328)
  ret i32 0
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rv770_populate_vddc_value(%struct.radeon_device*, i64, i32*) #1

declare dso_local i32 @SCLK_MUX_SEL(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @rv770_populate_mvdd_value(%struct.radeon_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
