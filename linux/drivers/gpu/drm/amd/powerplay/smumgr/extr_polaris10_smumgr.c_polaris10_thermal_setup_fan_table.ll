; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_polaris10_smumgr.c_polaris10_thermal_setup_fan_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_polaris10_smumgr.c_polaris10_thermal_setup_fan_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_11__, %struct.TYPE_10__, i32, i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i64, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.polaris10_smumgr = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_12__ = type { i64, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.amdgpu_device = type { i32 }

@FDO_MODE_HARDWARE = common dso_local global i32 0, align 4
@PHM_PlatformCaps_MicrocodeFanControl = common dso_local global i32 0, align 4
@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@CG_FDO_CTRL1 = common dso_local global i32 0, align 4
@FMAX_DUTY100 = common dso_local global i32 0, align 4
@CG_MULT_THERMAL_CTRL = common dso_local global i32 0, align 4
@TEMP_SEL = common dso_local global i32 0, align 4
@SMC_RAM_END = common dso_local global i32 0, align 4
@PPSMC_MSG_SetFanMinPwm = common dso_local global i32 0, align 4
@PPSMC_MSG_SetFanSclkTarget = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @polaris10_thermal_setup_fan_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @polaris10_thermal_setup_fan_table(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.polaris10_smumgr*, align 8
  %5 = alloca %struct.TYPE_12__, align 8
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
  %20 = inttoptr i64 %19 to %struct.polaris10_smumgr*
  store %struct.polaris10_smumgr* %20, %struct.polaris10_smumgr** %4, align 8
  %21 = bitcast %struct.TYPE_12__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 112, i1 false)
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %23 = load i32, i32* @FDO_MODE_HARDWARE, align 4
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %22, align 8
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %26 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  %32 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %33 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PHM_PlatformCaps_MicrocodeFanControl, align 4
  %37 = call i32 @phm_cap_unset(i32 %35, i32 %36)
  store i32 0, i32* %2, align 4
  br label %278

38:                                               ; preds = %1
  %39 = load %struct.polaris10_smumgr*, %struct.polaris10_smumgr** %4, align 8
  %40 = getelementptr inbounds %struct.polaris10_smumgr, %struct.polaris10_smumgr* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %46 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PHM_PlatformCaps_MicrocodeFanControl, align 4
  %50 = call i32 @phm_cap_unset(i32 %48, i32 %49)
  store i32 0, i32* %2, align 4
  br label %278

51:                                               ; preds = %38
  %52 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %53 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %56 = load i32, i32* @CG_FDO_CTRL1, align 4
  %57 = load i32, i32* @FMAX_DUTY100, align 4
  %58 = call i32 @PHM_READ_VFPF_INDIRECT_FIELD(i32 %54, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %51
  %62 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %63 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @PHM_PlatformCaps_MicrocodeFanControl, align 4
  %67 = call i32 @phm_cap_unset(i32 %65, i32 %66)
  store i32 0, i32* %2, align 4
  br label %278

68:                                               ; preds = %51
  %69 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %70 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %278

75:                                               ; preds = %68
  %76 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %77 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = mul nsw i32 %80, %81
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @do_div(i32 %83, i32 10000)
  %85 = load i32, i32* %16, align 4
  store i32 %85, i32* %11, align 4
  %86 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %87 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %92 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %90, %95
  store i32 %96, i32* %7, align 4
  %97 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %98 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %103 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %101, %106
  store i32 %107, i32* %8, align 4
  %108 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %109 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %114 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sub nsw i32 %112, %117
  store i32 %118, i32* %9, align 4
  %119 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %120 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %125 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = sub nsw i32 %123, %128
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %6, align 4
  %131 = mul nsw i32 16, %130
  %132 = load i32, i32* %9, align 4
  %133 = mul nsw i32 %131, %132
  %134 = load i32, i32* %7, align 4
  %135 = sdiv i32 %133, %134
  %136 = add nsw i32 50, %135
  %137 = sdiv i32 %136, 100
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %6, align 4
  %139 = mul nsw i32 16, %138
  %140 = load i32, i32* %10, align 4
  %141 = mul nsw i32 %139, %140
  %142 = load i32, i32* %8, align 4
  %143 = sdiv i32 %141, %142
  %144 = add nsw i32 50, %143
  %145 = sdiv i32 %144, 100
  store i32 %145, i32* %13, align 4
  %146 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %147 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 50, %150
  %152 = sdiv i32 %151, 100
  %153 = call i8* @cpu_to_be16(i32 %152)
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 12
  store i8* %153, i8** %154, align 8
  %155 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %156 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 50, %159
  %161 = sdiv i32 %160, 100
  %162 = call i8* @cpu_to_be16(i32 %161)
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 11
  store i8* %162, i8** %163, align 8
  %164 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %165 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 50, %168
  %170 = sdiv i32 %169, 100
  %171 = call i8* @cpu_to_be16(i32 %170)
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 10
  store i8* %171, i8** %172, align 8
  %173 = load i32, i32* %12, align 4
  %174 = call i8* @cpu_to_be16(i32 %173)
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 9
  store i8* %174, i8** %175, align 8
  %176 = load i32, i32* %13, align 4
  %177 = call i8* @cpu_to_be16(i32 %176)
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 8
  store i8* %177, i8** %178, align 8
  %179 = load i32, i32* %11, align 4
  %180 = call i8* @cpu_to_be16(i32 %179)
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 7
  store i8* %180, i8** %181, align 8
  %182 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %183 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 7
  %186 = load i32, i32* %185, align 4
  %187 = call i8* @cpu_to_be16(i32 %186)
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 6
  store i8* %187, i8** %188, align 8
  %189 = call i8* @cpu_to_be16(i32 1)
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 5
  store i8* %189, i8** %190, align 8
  %191 = call i8* @cpu_to_be16(i32 1)
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 4
  store i8* %191, i8** %192, align 8
  %193 = call i8* @cpu_to_be16(i32 5)
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 3
  store i8* %193, i8** %194, align 8
  %195 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %196 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = inttoptr i64 %197 to %struct.amdgpu_device*
  %199 = call i32 @amdgpu_asic_get_xclk(%struct.amdgpu_device* %198)
  store i32 %199, i32* %14, align 4
  %200 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %201 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 8
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* %14, align 4
  %206 = mul nsw i32 %204, %205
  %207 = sdiv i32 %206, 1600
  %208 = call i32 @cpu_to_be32(i32 %207)
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  store i32 %208, i32* %209, align 8
  %210 = load i32, i32* %6, align 4
  %211 = call i8* @cpu_to_be16(i32 %210)
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  store i8* %211, i8** %212, align 8
  %213 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %214 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %217 = load i32, i32* @CG_MULT_THERMAL_CTRL, align 4
  %218 = load i32, i32* @TEMP_SEL, align 4
  %219 = call i32 @PHM_READ_VFPF_INDIRECT_FIELD(i32 %215, i32 %216, i32 %217, i32 %218)
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  store i64 %220, i64* %221, align 8
  %222 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %223 = load %struct.polaris10_smumgr*, %struct.polaris10_smumgr** %4, align 8
  %224 = getelementptr inbounds %struct.polaris10_smumgr, %struct.polaris10_smumgr* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = bitcast %struct.TYPE_12__* %5 to i64*
  %228 = load i32, i32* @SMC_RAM_END, align 4
  %229 = call i32 @smu7_copy_bytes_to_smc(%struct.pp_hwmgr* %222, i64 %226, i64* %227, i32 112, i32 %228)
  store i32 %229, i32* %15, align 4
  %230 = load i32, i32* %15, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %248, label %232

232:                                              ; preds = %75
  %233 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %234 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 10
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %248

239:                                              ; preds = %232
  %240 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %241 = load i32, i32* @PPSMC_MSG_SetFanMinPwm, align 4
  %242 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %243 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 10
  %246 = load i64, i64* %245, align 8
  %247 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %240, i32 %241, i64 %246)
  store i32 %247, i32* %15, align 4
  br label %248

248:                                              ; preds = %239, %232, %75
  %249 = load i32, i32* %15, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %267, label %251

251:                                              ; preds = %248
  %252 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %253 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 9
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %251
  %259 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %260 = load i32, i32* @PPSMC_MSG_SetFanSclkTarget, align 4
  %261 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %262 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 9
  %265 = load i64, i64* %264, align 8
  %266 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %259, i32 %260, i64 %265)
  store i32 %266, i32* %15, align 4
  br label %267

267:                                              ; preds = %258, %251, %248
  %268 = load i32, i32* %15, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %277

270:                                              ; preds = %267
  %271 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %272 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @PHM_PlatformCaps_MicrocodeFanControl, align 4
  %276 = call i32 @phm_cap_unset(i32 %274, i32 %275)
  br label %277

277:                                              ; preds = %270, %267
  store i32 0, i32* %2, align 4
  br label %278

278:                                              ; preds = %277, %74, %61, %44, %31
  %279 = load i32, i32* %2, align 4
  ret i32 %279
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @phm_cap_unset(i32, i32) #2

declare dso_local i32 @PHM_READ_VFPF_INDIRECT_FIELD(i32, i32, i32, i32) #2

declare dso_local i32 @do_div(i32, i32) #2

declare dso_local i8* @cpu_to_be16(i32) #2

declare dso_local i32 @amdgpu_asic_get_xclk(%struct.amdgpu_device*) #2

declare dso_local i32 @cpu_to_be32(i32) #2

declare dso_local i32 @smu7_copy_bytes_to_smc(%struct.pp_hwmgr*, i64, i64*, i32, i32) #2

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
