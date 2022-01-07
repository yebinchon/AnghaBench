; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_initialize_smc_cac_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_initialize_smc_cac_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.ni_power_info = type { i32, i32, i64 }
%struct.si_power_info = type { i32, i32, %struct.TYPE_13__*, %struct.TYPE_12__, i64 }
%struct.TYPE_13__ = type { i32, i32, i32*, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CG_CAC_CTRL = common dso_local global i32 0, align 4
@CAC_WINDOW_MASK = common dso_local global i32 0, align 4
@NISLANDS_DCCAC_LEVEL_0 = common dso_local global i64 0, align 8
@SMC_SISLANDS_LKGE_LUT_NUM_OF_VOLT_ENTRIES = common dso_local global i32 0, align 4
@SMC_SISLANDS_SCALE_R = common dso_local global i32 0, align 4
@SI_SMC_SOFT_REGISTER_ticks_per_us = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @si_initialize_smc_cac_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_initialize_smc_cac_tables(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.ni_power_info*, align 8
  %5 = alloca %struct.si_power_info*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
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
  %16 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %17 = call %struct.ni_power_info* @ni_get_pi(%struct.radeon_device* %16)
  store %struct.ni_power_info* %17, %struct.ni_power_info** %4, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = call %struct.si_power_info* @si_get_pi(%struct.radeon_device* %18)
  store %struct.si_power_info* %19, %struct.si_power_info** %5, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = call i32 @radeon_get_xclk(%struct.radeon_device* %20)
  %22 = sdiv i32 %21, 100
  store i32 %22, i32* %15, align 4
  %23 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %24 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %232

28:                                               ; preds = %1
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.TYPE_14__* @kzalloc(i32 96, i32 %29)
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %6, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = icmp ne %struct.TYPE_14__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %232

36:                                               ; preds = %28
  %37 = load i32, i32* @CG_CAC_CTRL, align 4
  %38 = call i32 @RREG32(i32 %37)
  %39 = load i32, i32* @CAC_WINDOW_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  store i32 %41, i32* %13, align 4
  %42 = load %struct.si_power_info*, %struct.si_power_info** %5, align 8
  %43 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %42, i32 0, i32 2
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @CAC_WINDOW(i32 %46)
  %48 = load i32, i32* %13, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* @CG_CAC_CTRL, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @WREG32(i32 %50, i32 %51)
  %53 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %54 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.si_power_info*, %struct.si_power_info** %5, align 8
  %59 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 6
  store i32 %57, i32* %60, align 8
  %61 = load %struct.si_power_info*, %struct.si_power_info** %5, align 8
  %62 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %61, i32 0, i32 2
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @NISLANDS_DCCAC_LEVEL_0, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.si_power_info*, %struct.si_power_info** %5, align 8
  %70 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 5
  store i32 %68, i32* %71, align 4
  %72 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %73 = call i32 @si_calculate_cac_wintime(%struct.radeon_device* %72)
  %74 = load %struct.si_power_info*, %struct.si_power_info** %5, align 8
  %75 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = load %struct.si_power_info*, %struct.si_power_info** %5, align 8
  %78 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %77, i32 0, i32 2
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.si_power_info*, %struct.si_power_info** %5, align 8
  %83 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 3
  store i32 %81, i32* %84, align 4
  %85 = load %struct.si_power_info*, %struct.si_power_info** %5, align 8
  %86 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  store i32 80000, i32* %87, align 4
  %88 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %89 = call i32 @si_get_cac_std_voltage_max_min(%struct.radeon_device* %88, i32* %7, i32* %8)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %36
  br label %221

93:                                               ; preds = %36
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @si_get_cac_std_voltage_step(i32 %94, i32 %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @SMC_SISLANDS_LKGE_LUT_NUM_OF_VOLT_ENTRIES, align 4
  %100 = sub nsw i32 %99, 1
  %101 = mul nsw i32 %98, %100
  %102 = sub nsw i32 %97, %101
  store i32 %102, i32* %8, align 4
  store i32 4, i32* %11, align 4
  store i32 60, i32* %10, align 4
  %103 = load %struct.si_power_info*, %struct.si_power_info** %5, align 8
  %104 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %93
  %108 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %109 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %107, %93
  %113 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @si_init_dte_leakage_table(%struct.radeon_device* %113, %struct.TYPE_14__* %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119)
  store i32 %120, i32* %14, align 4
  br label %128

121:                                              ; preds = %107
  %122 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @si_init_simplified_leakage_table(%struct.radeon_device* %122, %struct.TYPE_14__* %123, i32 %124, i32 %125, i32 %126)
  store i32 %127, i32* %14, align 4
  br label %128

128:                                              ; preds = %121, %112
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %221

132:                                              ; preds = %128
  %133 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %134 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = load i32, i32* @SMC_SISLANDS_SCALE_R, align 4
  %140 = shl i32 %138, %139
  %141 = sdiv i32 %140, 100
  store i32 %141, i32* %12, align 4
  %142 = load %struct.si_power_info*, %struct.si_power_info** %5, align 8
  %143 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i8* @cpu_to_be32(i32 %145)
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 12
  store i8* %146, i8** %148, align 8
  %149 = load %struct.si_power_info*, %struct.si_power_info** %5, align 8
  %150 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 11
  store i32 %152, i32* %154, align 4
  %155 = load %struct.si_power_info*, %struct.si_power_info** %5, align 8
  %156 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 10
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* %8, align 4
  %162 = call i8* @cpu_to_be32(i32 %161)
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 9
  store i8* %162, i8** %164, align 8
  %165 = load i32, i32* %9, align 4
  %166 = call i8* @cpu_to_be32(i32 %165)
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 8
  store i8* %166, i8** %168, align 8
  %169 = load i32, i32* %12, align 4
  %170 = call i8* @cpu_to_be32(i32 %169)
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 7
  store i8* %170, i8** %172, align 8
  %173 = load %struct.si_power_info*, %struct.si_power_info** %5, align 8
  %174 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i8* @cpu_to_be32(i32 %176)
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 6
  store i8* %177, i8** %179, align 8
  %180 = call i8* @cpu_to_be32(i32 2)
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 5
  store i8* %180, i8** %182, align 8
  %183 = call i8* @cpu_to_be32(i32 0)
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 4
  store i8* %183, i8** %185, align 8
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  store i32 12, i32* %187, align 8
  %188 = load %struct.si_power_info*, %struct.si_power_info** %5, align 8
  %189 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %188, i32 0, i32 2
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 3
  store i32 %192, i32* %194, align 8
  %195 = load i32, i32* %10, align 4
  %196 = call i8* @cpu_to_be32(i32 %195)
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 2
  store i8* %196, i8** %198, align 8
  %199 = load i32, i32* %11, align 4
  %200 = call i8* @cpu_to_be32(i32 %199)
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 1
  store i8* %200, i8** %202, align 8
  %203 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %204 = load %struct.si_power_info*, %struct.si_power_info** %5, align 8
  %205 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %208 = bitcast %struct.TYPE_14__* %207 to i32*
  %209 = load %struct.si_power_info*, %struct.si_power_info** %5, align 8
  %210 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @si_copy_bytes_to_smc(%struct.radeon_device* %203, i32 %206, i32* %208, i32 96, i32 %211)
  store i32 %212, i32* %14, align 4
  %213 = load i32, i32* %14, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %132
  br label %221

216:                                              ; preds = %132
  %217 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %218 = load i32, i32* @SI_SMC_SOFT_REGISTER_ticks_per_us, align 4
  %219 = load i32, i32* %15, align 4
  %220 = call i32 @si_write_smc_soft_register(%struct.radeon_device* %217, i32 %218, i32 %219)
  store i32 %220, i32* %14, align 4
  br label %221

221:                                              ; preds = %216, %215, %131, %92
  %222 = load i32, i32* %14, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %221
  %225 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %226 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %225, i32 0, i32 0
  store i32 0, i32* %226, align 8
  %227 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %228 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %227, i32 0, i32 1
  store i32 0, i32* %228, align 4
  br label %229

229:                                              ; preds = %224, %221
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %231 = call i32 @kfree(%struct.TYPE_14__* %230)
  store i32 0, i32* %2, align 4
  br label %232

232:                                              ; preds = %229, %33, %27
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.si_power_info* @si_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @radeon_get_xclk(%struct.radeon_device*) #1

declare dso_local %struct.TYPE_14__* @kzalloc(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @CAC_WINDOW(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @si_calculate_cac_wintime(%struct.radeon_device*) #1

declare dso_local i32 @si_get_cac_std_voltage_max_min(%struct.radeon_device*, i32*, i32*) #1

declare dso_local i32 @si_get_cac_std_voltage_step(i32, i32) #1

declare dso_local i32 @si_init_dte_leakage_table(%struct.radeon_device*, %struct.TYPE_14__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @si_init_simplified_leakage_table(%struct.radeon_device*, %struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @si_copy_bytes_to_smc(%struct.radeon_device*, i32, i32*, i32, i32) #1

declare dso_local i32 @si_write_smc_soft_register(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
