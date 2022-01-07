; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_populate_smc_acpi_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_populate_smc_acpi_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_24__, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__*, i32 }
%struct.TYPE_23__ = type { i8*, i8*, %struct.TYPE_22__, i64, i32, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_16__, %struct.TYPE_16__, i32, i32 }
%struct.TYPE_22__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_21__ = type { i64, i8*, i8*, i8*, i8* }
%struct.TYPE_20__ = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_16__ = type { i32 }
%struct.rv7xx_power_info = type { i64, i64 }
%struct.evergreen_power_info = type { i64, i64, i32, i32 }
%struct.si_power_info = type { %struct.TYPE_25__, i64, i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PPSMC_SWSTATE_FLAG_DC = common dso_local global i32 0, align 4
@RADEON_PCIE_GEN1 = common dso_local global i32 0, align 4
@MRDCK0_RESET = common dso_local global i32 0, align 4
@MRDCK1_RESET = common dso_local global i32 0, align 4
@MRDCK0_PDNB = common dso_local global i32 0, align 4
@MRDCK1_PDNB = common dso_local global i32 0, align 4
@MRDCK0_BYPASS = common dso_local global i32 0, align 4
@MRDCK1_BYPASS = common dso_local global i32 0, align 4
@SCLK_MUX_SEL_MASK = common dso_local global i32 0, align 4
@MIN_POWER_MASK = common dso_local global i32 0, align 4
@MAX_POWER_MASK = common dso_local global i32 0, align 4
@MAX_POWER_DELTA_MASK = common dso_local global i32 0, align 4
@STI_SIZE_MASK = common dso_local global i32 0, align 4
@LTI_RATIO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.TYPE_15__*)* @si_populate_smc_acpi_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_populate_smc_acpi_state(%struct.radeon_device* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.rv7xx_power_info*, align 8
  %6 = alloca %struct.evergreen_power_info*, align 8
  %7 = alloca %struct.si_power_info*, align 8
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
  %22 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %23)
  store %struct.rv7xx_power_info* %24, %struct.rv7xx_power_info** %5, align 8
  %25 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %26 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %25)
  store %struct.evergreen_power_info* %26, %struct.evergreen_power_info** %6, align 8
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = call %struct.si_power_info* @si_get_pi(%struct.radeon_device* %27)
  store %struct.si_power_info* %28, %struct.si_power_info** %7, align 8
  %29 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %30 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %8, align 4
  %33 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %34 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %38 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %10, align 4
  %41 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %42 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  %45 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %46 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %12, align 4
  %49 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %50 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %13, align 4
  %53 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %54 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %14, align 4
  %57 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %58 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %15, align 4
  %61 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %62 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %16, align 4
  %65 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %66 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %17, align 4
  %69 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %70 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %18, align 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = bitcast %struct.TYPE_24__* %74 to i8*
  %78 = bitcast %struct.TYPE_24__* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 16, i1 false)
  %79 = load i32, i32* @PPSMC_SWSTATE_FLAG_DC, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, %80
  store i32 %85, i32* %83, align 8
  %86 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %87 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %168

90:                                               ; preds = %2
  %91 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %92 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %93 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %92, i32 0, i32 3
  %94 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %95 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 8
  %103 = call i32 @si_populate_voltage_value(%struct.radeon_device* %91, i32* %93, i64 %96, %struct.TYPE_16__* %102)
  store i32 %103, i32* %20, align 4
  %104 = load i32, i32* %20, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %136, label %106

106:                                              ; preds = %90
  %107 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 8
  %114 = call i32 @si_get_std_voltage_value(%struct.radeon_device* %107, %struct.TYPE_16__* %113, i32* %21)
  store i32 %114, i32* %20, align 4
  %115 = load i32, i32* %20, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %135, label %117

117:                                              ; preds = %106
  %118 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %119 = load i32, i32* %21, align 4
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 10
  %134 = call i32 @si_populate_std_voltage_value(%struct.radeon_device* %118, i32 %119, i32 %127, i32* %133)
  br label %135

135:                                              ; preds = %117, %106
  br label %136

136:                                              ; preds = %135, %90
  %137 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %138 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 9
  store i32 %139, i32* %145, align 8
  %146 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %147 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %167

150:                                              ; preds = %136
  %151 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %152 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %153 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %158 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 8
  %166 = call i32 @si_populate_phase_shedding_value(%struct.radeon_device* %151, i32* %156, i64 %159, i32 0, i32 0, %struct.TYPE_16__* %165)
  br label %167

167:                                              ; preds = %150, %136
  br label %253

168:                                              ; preds = %2
  %169 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %170 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %171 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %170, i32 0, i32 3
  %172 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %173 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i64 0
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 8
  %181 = call i32 @si_populate_voltage_value(%struct.radeon_device* %169, i32* %171, i64 %174, %struct.TYPE_16__* %180)
  store i32 %181, i32* %20, align 4
  %182 = load i32, i32* %20, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %214, label %184

184:                                              ; preds = %168
  %185 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i64 0
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 8
  %192 = call i32 @si_get_std_voltage_value(%struct.radeon_device* %185, %struct.TYPE_16__* %191, i32* %22)
  store i32 %192, i32* %20, align 4
  %193 = load i32, i32* %20, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %213, label %195

195:                                              ; preds = %184
  %196 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %197 = load i32, i32* %22, align 4
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i64 0
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i64 0
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 10
  %212 = call i32 @si_populate_std_voltage_value(%struct.radeon_device* %196, i32 %197, i32 %205, i32* %211)
  br label %213

213:                                              ; preds = %195, %184
  br label %214

214:                                              ; preds = %213, %168
  %215 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %216 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %217 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %220 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @RADEON_PCIE_GEN1, align 4
  %223 = call i64 @r600_get_pcie_gen_support(%struct.radeon_device* %215, i32 %218, i32 %221, i32 %222)
  %224 = trunc i64 %223 to i32
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i64 0
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 9
  store i32 %224, i32* %230, align 8
  %231 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %232 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %252

235:                                              ; preds = %214
  %236 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %237 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %238 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 0
  %242 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %243 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i64 0
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %249, i32 0, i32 8
  %251 = call i32 @si_populate_phase_shedding_value(%struct.radeon_device* %236, i32* %241, i64 %244, i32 0, i32 0, %struct.TYPE_16__* %250)
  br label %252

252:                                              ; preds = %235, %214
  br label %253

253:                                              ; preds = %252, %167
  %254 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %255 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %278

258:                                              ; preds = %253
  %259 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %260 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %277

263:                                              ; preds = %258
  %264 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %265 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %266 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %265, i32 0, i32 2
  %267 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %268 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_23__*, %struct.TYPE_23__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %273, i64 0
  %275 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %274, i32 0, i32 7
  %276 = call i32 @si_populate_voltage_value(%struct.radeon_device* %264, i32* %266, i64 %269, %struct.TYPE_16__* %275)
  br label %277

277:                                              ; preds = %263, %258
  br label %278

278:                                              ; preds = %277, %253
  %279 = load i32, i32* @MRDCK0_RESET, align 4
  %280 = load i32, i32* @MRDCK1_RESET, align 4
  %281 = or i32 %279, %280
  %282 = load i32, i32* %13, align 4
  %283 = or i32 %282, %281
  store i32 %283, i32* %13, align 4
  %284 = load i32, i32* @MRDCK0_PDNB, align 4
  %285 = load i32, i32* @MRDCK1_PDNB, align 4
  %286 = or i32 %284, %285
  %287 = xor i32 %286, -1
  %288 = load i32, i32* %13, align 4
  %289 = and i32 %288, %287
  store i32 %289, i32* %13, align 4
  %290 = load i32, i32* @MRDCK0_BYPASS, align 4
  %291 = load i32, i32* @MRDCK1_BYPASS, align 4
  %292 = or i32 %290, %291
  %293 = xor i32 %292, -1
  %294 = load i32, i32* %12, align 4
  %295 = and i32 %294, %293
  store i32 %295, i32* %12, align 4
  %296 = load i32, i32* @SCLK_MUX_SEL_MASK, align 4
  %297 = xor i32 %296, -1
  %298 = load i32, i32* %9, align 4
  %299 = and i32 %298, %297
  store i32 %299, i32* %9, align 4
  %300 = call i32 @SCLK_MUX_SEL(i32 4)
  %301 = load i32, i32* %9, align 4
  %302 = or i32 %301, %300
  store i32 %302, i32* %9, align 4
  %303 = load i32, i32* %12, align 4
  %304 = call i8* @cpu_to_be32(i32 %303)
  %305 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_23__*, %struct.TYPE_23__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %308, i64 0
  %310 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %309, i32 0, i32 6
  %311 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %310, i32 0, i32 9
  store i8* %304, i8** %311, align 8
  %312 = load i32, i32* %13, align 4
  %313 = call i8* @cpu_to_be32(i32 %312)
  %314 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_23__*, %struct.TYPE_23__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %317, i64 0
  %319 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %318, i32 0, i32 6
  %320 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %319, i32 0, i32 8
  store i8* %313, i8** %320, align 8
  %321 = load i32, i32* %14, align 4
  %322 = call i8* @cpu_to_be32(i32 %321)
  %323 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %324, i32 0, i32 0
  %326 = load %struct.TYPE_23__*, %struct.TYPE_23__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %326, i64 0
  %328 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %327, i32 0, i32 6
  %329 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %328, i32 0, i32 7
  store i8* %322, i8** %329, align 8
  %330 = load i32, i32* %15, align 4
  %331 = call i8* @cpu_to_be32(i32 %330)
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %333, i32 0, i32 0
  %335 = load %struct.TYPE_23__*, %struct.TYPE_23__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %335, i64 0
  %337 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %336, i32 0, i32 6
  %338 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %337, i32 0, i32 6
  store i8* %331, i8** %338, align 8
  %339 = load i32, i32* %16, align 4
  %340 = call i8* @cpu_to_be32(i32 %339)
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %342, i32 0, i32 0
  %344 = load %struct.TYPE_23__*, %struct.TYPE_23__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %344, i64 0
  %346 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %345, i32 0, i32 6
  %347 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %346, i32 0, i32 5
  store i8* %340, i8** %347, align 8
  %348 = load i32, i32* %17, align 4
  %349 = call i8* @cpu_to_be32(i32 %348)
  %350 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %351, i32 0, i32 0
  %353 = load %struct.TYPE_23__*, %struct.TYPE_23__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %353, i64 0
  %355 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %354, i32 0, i32 6
  %356 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %355, i32 0, i32 4
  store i8* %349, i8** %356, align 8
  %357 = load i32, i32* %18, align 4
  %358 = call i8* @cpu_to_be32(i32 %357)
  %359 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %360, i32 0, i32 0
  %362 = load %struct.TYPE_23__*, %struct.TYPE_23__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %362, i64 0
  %364 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %363, i32 0, i32 6
  %365 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %364, i32 0, i32 3
  store i8* %358, i8** %365, align 8
  %366 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %367 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %367, i32 0, i32 11
  %369 = load i32, i32* %368, align 4
  %370 = call i8* @cpu_to_be32(i32 %369)
  %371 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %372 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %372, i32 0, i32 0
  %374 = load %struct.TYPE_23__*, %struct.TYPE_23__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %374, i64 0
  %376 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %375, i32 0, i32 6
  %377 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %376, i32 0, i32 2
  store i8* %370, i8** %377, align 8
  %378 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %379 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %379, i32 0, i32 12
  %381 = load i32, i32* %380, align 8
  %382 = call i8* @cpu_to_be32(i32 %381)
  %383 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %384, i32 0, i32 0
  %386 = load %struct.TYPE_23__*, %struct.TYPE_23__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %386, i64 0
  %388 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %387, i32 0, i32 6
  %389 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %388, i32 0, i32 1
  store i8* %382, i8** %389, align 8
  %390 = load i32, i32* %8, align 4
  %391 = call i8* @cpu_to_be32(i32 %390)
  %392 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %393, i32 0, i32 0
  %395 = load %struct.TYPE_23__*, %struct.TYPE_23__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %395, i64 0
  %397 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %396, i32 0, i32 5
  %398 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %397, i32 0, i32 4
  store i8* %391, i8** %398, align 8
  %399 = load i32, i32* %9, align 4
  %400 = call i8* @cpu_to_be32(i32 %399)
  %401 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %402 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %402, i32 0, i32 0
  %404 = load %struct.TYPE_23__*, %struct.TYPE_23__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %404, i64 0
  %406 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %405, i32 0, i32 5
  %407 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %406, i32 0, i32 3
  store i8* %400, i8** %407, align 8
  %408 = load i32, i32* %10, align 4
  %409 = call i8* @cpu_to_be32(i32 %408)
  %410 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %411 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %411, i32 0, i32 0
  %413 = load %struct.TYPE_23__*, %struct.TYPE_23__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %413, i64 0
  %415 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %414, i32 0, i32 5
  %416 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %415, i32 0, i32 2
  store i8* %409, i8** %416, align 8
  %417 = load i32, i32* %11, align 4
  %418 = call i8* @cpu_to_be32(i32 %417)
  %419 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %420 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %420, i32 0, i32 0
  %422 = load %struct.TYPE_23__*, %struct.TYPE_23__** %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %422, i64 0
  %424 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %423, i32 0, i32 5
  %425 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %424, i32 0, i32 1
  store i8* %418, i8** %425, align 8
  %426 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %427 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %427, i32 0, i32 0
  %429 = load %struct.TYPE_23__*, %struct.TYPE_23__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %429, i64 0
  %431 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %430, i32 0, i32 6
  %432 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %431, i32 0, i32 0
  store i64 0, i64* %432, align 8
  %433 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %434 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %434, i32 0, i32 0
  %436 = load %struct.TYPE_23__*, %struct.TYPE_23__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %436, i64 0
  %438 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %437, i32 0, i32 5
  %439 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %438, i32 0, i32 0
  store i64 0, i64* %439, align 8
  %440 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %441 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %442 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %442, i32 0, i32 0
  %444 = load %struct.TYPE_23__*, %struct.TYPE_23__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %444, i64 0
  %446 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %445, i32 0, i32 4
  %447 = call i32 @si_populate_mvdd_value(%struct.radeon_device* %440, i32 0, i32* %446)
  %448 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %449 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %448, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %459

452:                                              ; preds = %278
  %453 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %454 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %454, i32 0, i32 0
  %456 = load %struct.TYPE_23__*, %struct.TYPE_23__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %456, i64 0
  %458 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %457, i32 0, i32 3
  store i64 0, i64* %458, align 8
  br label %459

459:                                              ; preds = %452, %278
  %460 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %461 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %460, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %461, i32 0, i32 0
  %463 = load %struct.TYPE_23__*, %struct.TYPE_23__** %462, align 8
  %464 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %463, i64 0
  %465 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %464, i32 0, i32 2
  %466 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %465, i32 0, i32 4
  store i64 0, i64* %466, align 8
  %467 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %468 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %468, i32 0, i32 0
  %470 = load %struct.TYPE_23__*, %struct.TYPE_23__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %470, i64 0
  %472 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %471, i32 0, i32 2
  %473 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %472, i32 0, i32 3
  store i64 0, i64* %473, align 8
  %474 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %475 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %475, i32 0, i32 0
  %477 = load %struct.TYPE_23__*, %struct.TYPE_23__** %476, align 8
  %478 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %477, i64 0
  %479 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %478, i32 0, i32 2
  %480 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %479, i32 0, i32 2
  store i64 0, i64* %480, align 8
  %481 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %482 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %481, i32 0, i32 0
  %483 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %482, i32 0, i32 0
  %484 = load %struct.TYPE_23__*, %struct.TYPE_23__** %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %484, i64 0
  %486 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %485, i32 0, i32 2
  %487 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %486, i32 0, i32 1
  store i64 0, i64* %487, align 8
  %488 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %489 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %489, i32 0, i32 0
  %491 = load %struct.TYPE_23__*, %struct.TYPE_23__** %490, align 8
  %492 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %491, i64 0
  %493 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %492, i32 0, i32 2
  %494 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %493, i32 0, i32 0
  store i64 0, i64* %494, align 8
  %495 = load i32, i32* @MIN_POWER_MASK, align 4
  %496 = load i32, i32* @MAX_POWER_MASK, align 4
  %497 = or i32 %495, %496
  store i32 %497, i32* %19, align 4
  %498 = load i32, i32* %19, align 4
  %499 = call i8* @cpu_to_be32(i32 %498)
  %500 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %501 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %500, i32 0, i32 0
  %502 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %501, i32 0, i32 0
  %503 = load %struct.TYPE_23__*, %struct.TYPE_23__** %502, align 8
  %504 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %503, i64 0
  %505 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %504, i32 0, i32 1
  store i8* %499, i8** %505, align 8
  %506 = load i32, i32* @MAX_POWER_DELTA_MASK, align 4
  %507 = load i32, i32* @STI_SIZE_MASK, align 4
  %508 = or i32 %506, %507
  %509 = load i32, i32* @LTI_RATIO_MASK, align 4
  %510 = or i32 %508, %509
  store i32 %510, i32* %19, align 4
  %511 = load i32, i32* %19, align 4
  %512 = call i8* @cpu_to_be32(i32 %511)
  %513 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %514 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %513, i32 0, i32 0
  %515 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %514, i32 0, i32 0
  %516 = load %struct.TYPE_23__*, %struct.TYPE_23__** %515, align 8
  %517 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %516, i64 0
  %518 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %517, i32 0, i32 0
  store i8* %512, i8** %518, align 8
  ret i32 0
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.si_power_info* @si_get_pi(%struct.radeon_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @si_populate_voltage_value(%struct.radeon_device*, i32*, i64, %struct.TYPE_16__*) #1

declare dso_local i32 @si_get_std_voltage_value(%struct.radeon_device*, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @si_populate_std_voltage_value(%struct.radeon_device*, i32, i32, i32*) #1

declare dso_local i32 @si_populate_phase_shedding_value(%struct.radeon_device*, i32*, i64, i32, i32, %struct.TYPE_16__*) #1

declare dso_local i64 @r600_get_pcie_gen_support(%struct.radeon_device*, i32, i32, i32) #1

declare dso_local i32 @SCLK_MUX_SEL(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @si_populate_mvdd_value(%struct.radeon_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
