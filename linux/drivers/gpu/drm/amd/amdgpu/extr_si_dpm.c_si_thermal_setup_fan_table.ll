; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_thermal_setup_fan_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_thermal_setup_fan_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.si_power_info = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@FDO_MODE_HARDWARE = common dso_local global i32 0, align 4
@CG_FDO_CTRL1 = common dso_local global i32 0, align 4
@FMAX_DUTY100_MASK = common dso_local global i32 0, align 4
@FMAX_DUTY100_SHIFT = common dso_local global i32 0, align 4
@CG_MULT_THERMAL_CTRL = common dso_local global i32 0, align 4
@TEMP_SEL_MASK = common dso_local global i32 0, align 4
@TEMP_SEL_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to load fan table to the SMC.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @si_thermal_setup_fan_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_thermal_setup_fan_table(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.si_power_info*, align 8
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
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
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %19 = call %struct.si_power_info* @si_get_pi(%struct.amdgpu_device* %18)
  store %struct.si_power_info* %19, %struct.si_power_info** %4, align 8
  %20 = bitcast %struct.TYPE_8__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 112, i1 false)
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %22 = load i32, i32* @FDO_MODE_HARDWARE, align 4
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %21, align 8
  %24 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %25 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %1
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  store i32 0, i32* %2, align 4
  br label %227

34:                                               ; preds = %1
  %35 = load i32, i32* @CG_FDO_CTRL1, align 4
  %36 = call i32 @RREG32(i32 %35)
  %37 = load i32, i32* @FMAX_DUTY100_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @FMAX_DUTY100_SHIFT, align 4
  %40 = ashr i32 %38, %39
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  store i32 0, i32* %2, align 4
  br label %227

49:                                               ; preds = %34
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = mul nsw i32 %55, %56
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = call i32 @do_div(i32 %58, i32 10000)
  %60 = load i32, i32* %17, align 4
  store i32 %60, i32* %11, align 4
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %66, %72
  store i32 %73, i32* %7, align 4
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %75 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %81 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %79, %85
  store i32 %86, i32* %8, align 4
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %94 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %92, %98
  store i32 %99, i32* %9, align 4
  %100 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %101 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %107 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %105, %111
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %6, align 4
  %114 = mul nsw i32 16, %113
  %115 = load i32, i32* %9, align 4
  %116 = mul nsw i32 %114, %115
  %117 = load i32, i32* %7, align 4
  %118 = sdiv i32 %116, %117
  %119 = add nsw i32 50, %118
  %120 = sdiv i32 %119, 100
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %6, align 4
  %122 = mul nsw i32 16, %121
  %123 = load i32, i32* %10, align 4
  %124 = mul nsw i32 %122, %123
  %125 = load i32, i32* %8, align 4
  %126 = sdiv i32 %124, %125
  %127 = add nsw i32 50, %126
  %128 = sdiv i32 %127, 100
  store i32 %128, i32* %13, align 4
  %129 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %130 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 50, %134
  %136 = sdiv i32 %135, 100
  %137 = call i8* @cpu_to_be16(i32 %136)
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 12
  store i8* %137, i8** %138, align 8
  %139 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %140 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 50, %144
  %146 = sdiv i32 %145, 100
  %147 = call i8* @cpu_to_be16(i32 %146)
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 11
  store i8* %147, i8** %148, align 8
  %149 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %150 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 50, %154
  %156 = sdiv i32 %155, 100
  %157 = call i8* @cpu_to_be16(i32 %156)
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 10
  store i8* %157, i8** %158, align 8
  %159 = load i32, i32* %12, align 4
  %160 = call i8* @cpu_to_be16(i32 %159)
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 9
  store i8* %160, i8** %161, align 8
  %162 = load i32, i32* %13, align 4
  %163 = call i8* @cpu_to_be16(i32 %162)
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 8
  store i8* %163, i8** %164, align 8
  %165 = load i32, i32* %11, align 4
  %166 = call i8* @cpu_to_be16(i32 %165)
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 7
  store i8* %166, i8** %167, align 8
  %168 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %169 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 4
  %174 = call i8* @cpu_to_be16(i32 %173)
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 6
  store i8* %174, i8** %175, align 8
  %176 = call i8* @cpu_to_be16(i32 1)
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 5
  store i8* %176, i8** %177, align 8
  %178 = call i8* @cpu_to_be16(i32 1)
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 4
  store i8* %178, i8** %179, align 8
  %180 = call i8* @cpu_to_be16(i32 5)
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  store i8* %180, i8** %181, align 8
  %182 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %183 = call i32 @amdgpu_asic_get_xclk(%struct.amdgpu_device* %182)
  store i32 %183, i32* %14, align 4
  %184 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %185 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 9
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %14, align 4
  %191 = mul nsw i32 %189, %190
  %192 = sdiv i32 %191, 1600
  %193 = call i32 @cpu_to_be32(i32 %192)
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  store i32 %193, i32* %194, align 8
  %195 = load i32, i32* %6, align 4
  %196 = call i8* @cpu_to_be16(i32 %195)
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  store i8* %196, i8** %197, align 8
  %198 = load i32, i32* @CG_MULT_THERMAL_CTRL, align 4
  %199 = call i32 @RREG32(i32 %198)
  %200 = load i32, i32* @TEMP_SEL_MASK, align 4
  %201 = and i32 %199, %200
  %202 = load i32, i32* @TEMP_SEL_SHIFT, align 4
  %203 = ashr i32 %201, %202
  store i32 %203, i32* %15, align 4
  %204 = load i32, i32* %15, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i64 %205, i64* %206, align 8
  %207 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %208 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %209 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = bitcast %struct.TYPE_8__* %5 to i32*
  %212 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %213 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @amdgpu_si_copy_bytes_to_smc(%struct.amdgpu_device* %207, i32 %210, i32* %211, i32 112, i32 %214)
  store i32 %215, i32* %16, align 4
  %216 = load i32, i32* %16, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %49
  %219 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %220 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %221 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 0
  store i32 0, i32* %224, align 4
  br label %225

225:                                              ; preds = %218, %49
  %226 = load i32, i32* %16, align 4
  store i32 %226, i32* %2, align 4
  br label %227

227:                                              ; preds = %225, %43, %28
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

declare dso_local %struct.si_power_info* @si_get_pi(%struct.amdgpu_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @amdgpu_asic_get_xclk(%struct.amdgpu_device*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @amdgpu_si_copy_bytes_to_smc(%struct.amdgpu_device*, i32, i32*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
