; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_thermal_setup_fan_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_thermal_setup_fan_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, %struct.TYPE_9__, i64, %struct.TYPE_7__, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.ci_smumgr = type { i64 }
%struct.TYPE_10__ = type { i64, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.amdgpu_device = type { i32 }

@FDO_MODE_HARDWARE = common dso_local global i32 0, align 4
@PHM_PlatformCaps_MicrocodeFanControl = common dso_local global i32 0, align 4
@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@CG_FDO_CTRL1 = common dso_local global i32 0, align 4
@FMAX_DUTY100 = common dso_local global i32 0, align 4
@CG_MULT_THERMAL_CTRL = common dso_local global i32 0, align 4
@TEMP_SEL = common dso_local global i32 0, align 4
@SMC_RAM_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @ci_thermal_setup_fan_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_thermal_setup_fan_table(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.ci_smumgr*, align 8
  %5 = alloca %struct.TYPE_10__, align 8
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
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ci_smumgr*
  store %struct.ci_smumgr* %20, %struct.ci_smumgr** %4, align 8
  %21 = bitcast %struct.TYPE_10__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 112, i1 false)
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %23 = load i32, i32* @FDO_MODE_HARDWARE, align 4
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %22, align 8
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %26 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PHM_PlatformCaps_MicrocodeFanControl, align 4
  %30 = call i32 @phm_cap_enabled(i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %230

33:                                               ; preds = %1
  %34 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %35 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %42 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PHM_PlatformCaps_MicrocodeFanControl, align 4
  %46 = call i32 @phm_cap_unset(i32 %44, i32 %45)
  store i32 0, i32* %2, align 4
  br label %230

47:                                               ; preds = %33
  %48 = load %struct.ci_smumgr*, %struct.ci_smumgr** %4, align 8
  %49 = getelementptr inbounds %struct.ci_smumgr, %struct.ci_smumgr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 0, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %54 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @PHM_PlatformCaps_MicrocodeFanControl, align 4
  %58 = call i32 @phm_cap_unset(i32 %56, i32 %57)
  store i32 0, i32* %2, align 4
  br label %230

59:                                               ; preds = %47
  %60 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %61 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %64 = load i32, i32* @CG_FDO_CTRL1, align 4
  %65 = load i32, i32* @FMAX_DUTY100, align 4
  %66 = call i32 @PHM_READ_VFPF_INDIRECT_FIELD(i32 %62, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 0, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %59
  %70 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %71 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @PHM_PlatformCaps_MicrocodeFanControl, align 4
  %75 = call i32 @phm_cap_unset(i32 %73, i32 %74)
  store i32 0, i32* %2, align 4
  br label %230

76:                                               ; preds = %59
  %77 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %78 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = mul nsw i32 %81, %82
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @do_div(i32 %84, i32 10000)
  %86 = load i32, i32* %16, align 4
  store i32 %86, i32* %11, align 4
  %87 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %88 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %93 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %91, %96
  store i32 %97, i32* %7, align 4
  %98 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %99 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %104 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %102, %107
  store i32 %108, i32* %8, align 4
  %109 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %110 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %115 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %113, %118
  store i32 %119, i32* %9, align 4
  %120 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %121 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %126 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = sub nsw i32 %124, %129
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %6, align 4
  %132 = mul nsw i32 16, %131
  %133 = load i32, i32* %9, align 4
  %134 = mul nsw i32 %132, %133
  %135 = load i32, i32* %7, align 4
  %136 = sdiv i32 %134, %135
  %137 = add nsw i32 50, %136
  %138 = sdiv i32 %137, 100
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %6, align 4
  %140 = mul nsw i32 16, %139
  %141 = load i32, i32* %10, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32, i32* %8, align 4
  %144 = sdiv i32 %142, %143
  %145 = add nsw i32 50, %144
  %146 = sdiv i32 %145, 100
  store i32 %146, i32* %13, align 4
  %147 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %148 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 50, %151
  %153 = sdiv i32 %152, 100
  %154 = call i8* @cpu_to_be16(i32 %153)
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 12
  store i8* %154, i8** %155, align 8
  %156 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %157 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 50, %160
  %162 = sdiv i32 %161, 100
  %163 = call i8* @cpu_to_be16(i32 %162)
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 11
  store i8* %163, i8** %164, align 8
  %165 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %166 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 50, %169
  %171 = sdiv i32 %170, 100
  %172 = call i8* @cpu_to_be16(i32 %171)
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 10
  store i8* %172, i8** %173, align 8
  %174 = load i32, i32* %12, align 4
  %175 = call i8* @cpu_to_be16(i32 %174)
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 9
  store i8* %175, i8** %176, align 8
  %177 = load i32, i32* %13, align 4
  %178 = call i8* @cpu_to_be16(i32 %177)
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 8
  store i8* %178, i8** %179, align 8
  %180 = load i32, i32* %11, align 4
  %181 = call i8* @cpu_to_be16(i32 %180)
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 7
  store i8* %181, i8** %182, align 8
  %183 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %184 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 7
  %187 = load i32, i32* %186, align 4
  %188 = call i8* @cpu_to_be16(i32 %187)
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 6
  store i8* %188, i8** %189, align 8
  %190 = call i8* @cpu_to_be16(i32 1)
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 5
  store i8* %190, i8** %191, align 8
  %192 = call i8* @cpu_to_be16(i32 1)
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  store i8* %192, i8** %193, align 8
  %194 = call i8* @cpu_to_be16(i32 5)
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 3
  store i8* %194, i8** %195, align 8
  %196 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %197 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = inttoptr i64 %198 to %struct.amdgpu_device*
  %200 = call i32 @amdgpu_asic_get_xclk(%struct.amdgpu_device* %199)
  store i32 %200, i32* %14, align 4
  %201 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %202 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 8
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* %14, align 4
  %207 = mul nsw i32 %205, %206
  %208 = sdiv i32 %207, 1600
  %209 = call i32 @cpu_to_be32(i32 %208)
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  store i32 %209, i32* %210, align 8
  %211 = load i32, i32* %6, align 4
  %212 = call i8* @cpu_to_be16(i32 %211)
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  store i8* %212, i8** %213, align 8
  %214 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %215 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %218 = load i32, i32* @CG_MULT_THERMAL_CTRL, align 4
  %219 = load i32, i32* @TEMP_SEL, align 4
  %220 = call i32 @PHM_READ_VFPF_INDIRECT_FIELD(i32 %216, i32 %217, i32 %218, i32 %219)
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  store i64 %221, i64* %222, align 8
  %223 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %224 = load %struct.ci_smumgr*, %struct.ci_smumgr** %4, align 8
  %225 = getelementptr inbounds %struct.ci_smumgr, %struct.ci_smumgr* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = bitcast %struct.TYPE_10__* %5 to i64*
  %228 = load i32, i32* @SMC_RAM_END, align 4
  %229 = call i32 @ci_copy_bytes_to_smc(%struct.pp_hwmgr* %223, i64 %226, i64* %227, i32 112, i32 %228)
  store i32 %229, i32* %15, align 4
  store i32 0, i32* %2, align 4
  br label %230

230:                                              ; preds = %76, %69, %52, %40, %32
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @phm_cap_enabled(i32, i32) #2

declare dso_local i32 @phm_cap_unset(i32, i32) #2

declare dso_local i32 @PHM_READ_VFPF_INDIRECT_FIELD(i32, i32, i32, i32) #2

declare dso_local i32 @do_div(i32, i32) #2

declare dso_local i8* @cpu_to_be16(i32) #2

declare dso_local i32 @amdgpu_asic_get_xclk(%struct.amdgpu_device*) #2

declare dso_local i32 @cpu_to_be32(i32) #2

declare dso_local i32 @ci_copy_bytes_to_smc(%struct.pp_hwmgr*, i64, i64*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
