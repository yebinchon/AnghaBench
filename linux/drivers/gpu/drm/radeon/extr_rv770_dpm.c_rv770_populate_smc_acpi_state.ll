; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_populate_smc_acpi_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_populate_smc_acpi_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_13__, i32 }
%struct.TYPE_14__ = type { i64, i8*, i8*, i8* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.rv7xx_power_info = type { i64, i64, i64, i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32 }

@PPSMC_SWSTATE_FLAG_DC = common dso_local global i32 0, align 4
@BIAS_GEN_PDNB = common dso_local global i32 0, align 4
@RESET_EN = common dso_local global i32 0, align 4
@MRDCKA0_RESET = common dso_local global i32 0, align 4
@MRDCKA1_RESET = common dso_local global i32 0, align 4
@MRDCKB0_RESET = common dso_local global i32 0, align 4
@MRDCKB1_RESET = common dso_local global i32 0, align 4
@MRDCKC0_RESET = common dso_local global i32 0, align 4
@MRDCKC1_RESET = common dso_local global i32 0, align 4
@MRDCKD0_RESET = common dso_local global i32 0, align 4
@MRDCKD1_RESET = common dso_local global i32 0, align 4
@SPLL_RESET = common dso_local global i32 0, align 4
@SPLL_SLEEP = common dso_local global i32 0, align 4
@SPLL_BYPASS_EN = common dso_local global i32 0, align 4
@SCLK_MUX_SEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.TYPE_17__*)* @rv770_populate_smc_acpi_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv770_populate_smc_acpi_state(%struct.radeon_device* %0, %struct.TYPE_17__* %1) #0 {
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
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  %56 = bitcast %struct.TYPE_16__* %53 to i8*
  %57 = bitcast %struct.TYPE_16__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 16, i1 false)
  %58 = load i32, i32* @PPSMC_SWSTATE_FLAG_DC, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %59
  store i32 %64, i32* %62, align 8
  %65 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %66 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %132

69:                                               ; preds = %2
  %70 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %71 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %72 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 5
  %80 = call i32 @rv770_populate_vddc_value(%struct.radeon_device* %70, i64 %73, i32* %79)
  %81 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %82 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %69
  %86 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %87 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  br label %104

97:                                               ; preds = %85
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  br label %104

104:                                              ; preds = %97, %90
  br label %112

105:                                              ; preds = %69
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  br label %112

112:                                              ; preds = %105, %104
  %113 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %114 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  store i32 1, i32* %123, align 4
  br label %131

124:                                              ; preds = %112
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  store i32 0, i32* %130, align 4
  br label %131

131:                                              ; preds = %124, %117
  br label %150

132:                                              ; preds = %2
  %133 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %134 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %135 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i64 0
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 5
  %143 = call i32 @rv770_populate_vddc_value(%struct.radeon_device* %133, i64 %136, i32* %142)
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i64 0
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  store i32 0, i32* %149, align 8
  br label %150

150:                                              ; preds = %132, %131
  %151 = load i32, i32* @BIAS_GEN_PDNB, align 4
  %152 = load i32, i32* @RESET_EN, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* %7, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* @BIAS_GEN_PDNB, align 4
  %157 = load i32, i32* @RESET_EN, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* %9, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* @MRDCKA0_RESET, align 4
  %162 = load i32, i32* @MRDCKA1_RESET, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @MRDCKB0_RESET, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @MRDCKB1_RESET, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @MRDCKC0_RESET, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @MRDCKC1_RESET, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @MRDCKD0_RESET, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @MRDCKD1_RESET, align 4
  %175 = or i32 %173, %174
  store i32 %175, i32* %13, align 4
  store i32 -16777216, i32* %14, align 4
  %176 = load i32, i32* @SPLL_RESET, align 4
  %177 = load i32, i32* @SPLL_SLEEP, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @SPLL_BYPASS_EN, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* %10, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %10, align 4
  %183 = load i32, i32* @SCLK_MUX_SEL_MASK, align 4
  %184 = xor i32 %183, -1
  %185 = load i32, i32* %11, align 4
  %186 = and i32 %185, %184
  store i32 %186, i32* %11, align 4
  %187 = call i32 @SCLK_MUX_SEL(i32 4)
  %188 = load i32, i32* %11, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %11, align 4
  %190 = load i32, i32* %6, align 4
  %191 = call i8* @cpu_to_be32(i32 %190)
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i64 0
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 6
  store i8* %191, i8** %199, align 8
  %200 = load i32, i32* %7, align 4
  %201 = call i8* @cpu_to_be32(i32 %200)
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i64 0
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 5
  store i8* %201, i8** %209, align 8
  %210 = load i32, i32* %8, align 4
  %211 = call i8* @cpu_to_be32(i32 %210)
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i64 0
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 4
  store i8* %211, i8** %219, align 8
  %220 = load i32, i32* %9, align 4
  %221 = call i8* @cpu_to_be32(i32 %220)
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i64 0
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 4
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 3
  store i8* %221, i8** %229, align 8
  %230 = load i32, i32* %13, align 4
  %231 = call i8* @cpu_to_be32(i32 %230)
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i64 0
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 4
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 2
  store i8* %231, i8** %239, align 8
  %240 = load i32, i32* %14, align 4
  %241 = call i8* @cpu_to_be32(i32 %240)
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i64 0
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 4
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 1
  store i8* %241, i8** %249, align 8
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i64 0
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 4
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 0
  store i64 0, i64* %257, align 8
  %258 = load i32, i32* %10, align 4
  %259 = call i8* @cpu_to_be32(i32 %258)
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i64 0
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 3
  store i8* %259, i8** %266, align 8
  %267 = load i32, i32* %11, align 4
  %268 = call i8* @cpu_to_be32(i32 %267)
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i64 0
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 2
  store i8* %268, i8** %275, align 8
  %276 = load i32, i32* %12, align 4
  %277 = call i8* @cpu_to_be32(i32 %276)
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 0
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i64 0
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 1
  store i8* %277, i8** %284, align 8
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 0
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i64 0
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 0
  store i64 0, i64* %291, align 8
  %292 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %293 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 0
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i64 0
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 2
  %299 = call i32 @rv770_populate_mvdd_value(%struct.radeon_device* %292, i32 0, i32* %298)
  %300 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 0
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i64 1
  %305 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i64 0
  %310 = bitcast %struct.TYPE_15__* %304 to i8*
  %311 = bitcast %struct.TYPE_15__* %309 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %310, i8* align 8 %311, i64 112, i1 false)
  %312 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 0
  %315 = load %struct.TYPE_15__*, %struct.TYPE_15__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i64 2
  %317 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %318, i32 0, i32 0
  %320 = load %struct.TYPE_15__*, %struct.TYPE_15__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i64 0
  %322 = bitcast %struct.TYPE_15__* %316 to i8*
  %323 = bitcast %struct.TYPE_15__* %321 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %322, i8* align 8 %323, i64 112, i1 false)
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
