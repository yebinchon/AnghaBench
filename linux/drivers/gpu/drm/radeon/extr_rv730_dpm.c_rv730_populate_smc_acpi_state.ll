; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv730_dpm.c_rv730_populate_smc_acpi_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv730_dpm.c_rv730_populate_smc_acpi_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__, %struct.TYPE_13__, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i8*, i8*, i8* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i8*, i8*, i8*, i8*, i8* }
%struct.rv7xx_power_info = type { %struct.TYPE_11__, i64, i32, i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }

@PPSMC_SWSTATE_FLAG_DC = common dso_local global i32 0, align 4
@MPLL_RESET = common dso_local global i32 0, align 4
@MPLL_BYPASS_EN = common dso_local global i32 0, align 4
@MPLL_SLEEP = common dso_local global i32 0, align 4
@MCLK_MUX_SEL_MASK = common dso_local global i32 0, align 4
@MRDCKA_RESET = common dso_local global i32 0, align 4
@MRDCKB_RESET = common dso_local global i32 0, align 4
@MRDCKC_RESET = common dso_local global i32 0, align 4
@MRDCKD_RESET = common dso_local global i32 0, align 4
@MRDCKE_RESET = common dso_local global i32 0, align 4
@MRDCKF_RESET = common dso_local global i32 0, align 4
@MRDCKG_RESET = common dso_local global i32 0, align 4
@MRDCKH_RESET = common dso_local global i32 0, align 4
@MRDCKA_SLEEP = common dso_local global i32 0, align 4
@MRDCKB_SLEEP = common dso_local global i32 0, align 4
@MRDCKC_SLEEP = common dso_local global i32 0, align 4
@MRDCKD_SLEEP = common dso_local global i32 0, align 4
@MRDCKE_SLEEP = common dso_local global i32 0, align 4
@MRDCKF_SLEEP = common dso_local global i32 0, align 4
@MRDCKG_SLEEP = common dso_local global i32 0, align 4
@MRDCKH_SLEEP = common dso_local global i32 0, align 4
@SPLL_RESET = common dso_local global i32 0, align 4
@SPLL_BYPASS_EN = common dso_local global i32 0, align 4
@SPLL_SLEEP = common dso_local global i32 0, align 4
@SCLK_MUX_SEL_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv730_populate_smc_acpi_state(%struct.radeon_device* %0, %struct.TYPE_17__* %1) #0 {
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
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %14)
  store %struct.rv7xx_power_info* %15, %struct.rv7xx_power_info** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %20 = bitcast %struct.TYPE_15__* %17 to i8*
  %21 = bitcast %struct.TYPE_15__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = load i32, i32* @PPSMC_SWSTATE_FLAG_DC, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %23
  store i32 %28, i32* %26, align 8
  %29 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %30 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %71

33:                                               ; preds = %2
  %34 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %35 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %36 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 4
  %44 = call i32 @rv770_populate_vddc_value(%struct.radeon_device* %34, i64 %37, i32* %43)
  %45 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %46 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %33
  %50 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %51 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  br label %54

53:                                               ; preds = %33
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi i32 [ %52, %49 ], [ 0, %53 ]
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 3
  store i32 %55, i32* %61, align 8
  %62 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %63 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 5
  store i32 %64, i32* %70, align 8
  br label %89

71:                                               ; preds = %2
  %72 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %73 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %74 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 4
  %82 = call i32 @rv770_populate_vddc_value(%struct.radeon_device* %72, i64 %75, i32* %81)
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 3
  store i32 0, i32* %88, align 8
  br label %89

89:                                               ; preds = %71, %54
  %90 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %91 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %6, align 4
  %95 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %96 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %7, align 4
  %100 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %101 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* @MPLL_RESET, align 4
  %106 = load i32, i32* @MPLL_BYPASS_EN, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* %6, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* @MPLL_SLEEP, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %6, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* @MCLK_MUX_SEL_MASK, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %7, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %7, align 4
  %118 = call i32 @MCLK_MUX_SEL(i32 1)
  %119 = load i32, i32* %7, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* @MRDCKA_RESET, align 4
  %122 = load i32, i32* @MRDCKB_RESET, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @MRDCKC_RESET, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @MRDCKD_RESET, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @MRDCKE_RESET, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @MRDCKF_RESET, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @MRDCKG_RESET, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @MRDCKH_RESET, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @MRDCKA_SLEEP, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @MRDCKB_SLEEP, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @MRDCKC_SLEEP, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @MRDCKD_SLEEP, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @MRDCKE_SLEEP, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @MRDCKF_SLEEP, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @MRDCKG_SLEEP, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @MRDCKH_SLEEP, align 4
  %151 = or i32 %149, %150
  store i32 %151, i32* %9, align 4
  store i32 -16777216, i32* %10, align 4
  %152 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %153 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %11, align 4
  %157 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %158 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  store i32 %161, i32* %12, align 4
  %162 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %163 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* @SPLL_RESET, align 4
  %168 = load i32, i32* @SPLL_BYPASS_EN, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* %11, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* @SPLL_SLEEP, align 4
  %173 = xor i32 %172, -1
  %174 = load i32, i32* %11, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* @SCLK_MUX_SEL_MASK, align 4
  %177 = xor i32 %176, -1
  %178 = load i32, i32* %12, align 4
  %179 = and i32 %178, %177
  store i32 %179, i32* %12, align 4
  %180 = call i32 @SCLK_MUX_SEL(i32 4)
  %181 = load i32, i32* %12, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* %6, align 4
  %184 = call i8* @cpu_to_be32(i32 %183)
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i64 0
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 5
  store i8* %184, i8** %192, align 8
  %193 = load i32, i32* %7, align 4
  %194 = call i8* @cpu_to_be32(i32 %193)
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i64 0
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 4
  store i8* %194, i8** %202, align 8
  %203 = load i32, i32* %8, align 4
  %204 = call i8* @cpu_to_be32(i32 %203)
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i64 0
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 3
  store i8* %204, i8** %212, align 8
  %213 = load i32, i32* %9, align 4
  %214 = call i8* @cpu_to_be32(i32 %213)
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i64 0
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 2
  store i8* %214, i8** %222, align 8
  %223 = load i32, i32* %10, align 4
  %224 = call i8* @cpu_to_be32(i32 %223)
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i64 0
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 1
  store i8* %224, i8** %232, align 8
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i64 0
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 0
  store i64 0, i64* %240, align 8
  %241 = load i32, i32* %11, align 4
  %242 = call i8* @cpu_to_be32(i32 %241)
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i64 0
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 3
  store i8* %242, i8** %249, align 8
  %250 = load i32, i32* %12, align 4
  %251 = call i8* @cpu_to_be32(i32 %250)
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i64 0
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 2
  store i8* %251, i8** %258, align 8
  %259 = load i32, i32* %13, align 4
  %260 = call i8* @cpu_to_be32(i32 %259)
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i64 0
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 1
  store i8* %260, i8** %267, align 8
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i64 0
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 0
  store i64 0, i64* %274, align 8
  %275 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i64 0
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 0
  %282 = call i32 @rv770_populate_mvdd_value(%struct.radeon_device* %275, i32 0, i32* %281)
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i64 1
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i64 0
  %293 = bitcast %struct.TYPE_16__* %287 to i8*
  %294 = bitcast %struct.TYPE_16__* %292 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %293, i8* align 8 %294, i64 104, i1 false)
  %295 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 0
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i64 2
  %300 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 0
  %303 = load %struct.TYPE_16__*, %struct.TYPE_16__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i64 0
  %305 = bitcast %struct.TYPE_16__* %299 to i8*
  %306 = bitcast %struct.TYPE_16__* %304 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %305, i8* align 8 %306, i64 104, i1 false)
  ret i32 0
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rv770_populate_vddc_value(%struct.radeon_device*, i64, i32*) #1

declare dso_local i32 @MCLK_MUX_SEL(i32) #1

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
