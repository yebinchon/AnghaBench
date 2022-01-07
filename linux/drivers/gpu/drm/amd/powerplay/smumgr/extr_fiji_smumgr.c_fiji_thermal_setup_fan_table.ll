; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_thermal_setup_fan_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_thermal_setup_fan_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_11__, %struct.TYPE_10__, i32, i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.fiji_smumgr = type { %struct.TYPE_8__ }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @fiji_thermal_setup_fan_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiji_thermal_setup_fan_table(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.fiji_smumgr*, align 8
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
  %20 = inttoptr i64 %19 to %struct.fiji_smumgr*
  store %struct.fiji_smumgr* %20, %struct.fiji_smumgr** %4, align 8
  %21 = bitcast %struct.TYPE_12__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 112, i1 false)
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %23 = load i32, i32* @FDO_MODE_HARDWARE, align 4
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %22, align 8
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %26 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
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
  br label %271

38:                                               ; preds = %1
  %39 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %4, align 8
  %40 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %39, i32 0, i32 0
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
  br label %271

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
  br label %271

68:                                               ; preds = %51
  %69 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %70 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = mul nsw i32 %73, %74
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @do_div(i32 %76, i32 10000)
  %78 = load i32, i32* %16, align 4
  store i32 %78, i32* %11, align 4
  %79 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %80 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %85 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %83, %88
  store i32 %89, i32* %7, align 4
  %90 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %91 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %96 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %94, %99
  store i32 %100, i32* %8, align 4
  %101 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %102 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %107 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %105, %110
  store i32 %111, i32* %9, align 4
  %112 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %113 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %118 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %116, %121
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %6, align 4
  %124 = mul nsw i32 16, %123
  %125 = load i32, i32* %9, align 4
  %126 = mul nsw i32 %124, %125
  %127 = load i32, i32* %7, align 4
  %128 = sdiv i32 %126, %127
  %129 = add nsw i32 50, %128
  %130 = sdiv i32 %129, 100
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %6, align 4
  %132 = mul nsw i32 16, %131
  %133 = load i32, i32* %10, align 4
  %134 = mul nsw i32 %132, %133
  %135 = load i32, i32* %8, align 4
  %136 = sdiv i32 %134, %135
  %137 = add nsw i32 50, %136
  %138 = sdiv i32 %137, 100
  store i32 %138, i32* %13, align 4
  %139 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %140 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 50, %143
  %145 = sdiv i32 %144, 100
  %146 = call i8* @cpu_to_be16(i32 %145)
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 12
  store i8* %146, i8** %147, align 8
  %148 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %149 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 50, %152
  %154 = sdiv i32 %153, 100
  %155 = call i8* @cpu_to_be16(i32 %154)
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 11
  store i8* %155, i8** %156, align 8
  %157 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %158 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 50, %161
  %163 = sdiv i32 %162, 100
  %164 = call i8* @cpu_to_be16(i32 %163)
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 10
  store i8* %164, i8** %165, align 8
  %166 = load i32, i32* %12, align 4
  %167 = call i8* @cpu_to_be16(i32 %166)
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 9
  store i8* %167, i8** %168, align 8
  %169 = load i32, i32* %13, align 4
  %170 = call i8* @cpu_to_be16(i32 %169)
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 8
  store i8* %170, i8** %171, align 8
  %172 = load i32, i32* %11, align 4
  %173 = call i8* @cpu_to_be16(i32 %172)
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 7
  store i8* %173, i8** %174, align 8
  %175 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %176 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 7
  %179 = load i32, i32* %178, align 4
  %180 = call i8* @cpu_to_be16(i32 %179)
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 6
  store i8* %180, i8** %181, align 8
  %182 = call i8* @cpu_to_be16(i32 1)
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 5
  store i8* %182, i8** %183, align 8
  %184 = call i8* @cpu_to_be16(i32 1)
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 4
  store i8* %184, i8** %185, align 8
  %186 = call i8* @cpu_to_be16(i32 5)
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 3
  store i8* %186, i8** %187, align 8
  %188 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %189 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = inttoptr i64 %190 to %struct.amdgpu_device*
  %192 = call i32 @amdgpu_asic_get_xclk(%struct.amdgpu_device* %191)
  store i32 %192, i32* %14, align 4
  %193 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %194 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 8
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %14, align 4
  %199 = mul nsw i32 %197, %198
  %200 = sdiv i32 %199, 1600
  %201 = call i32 @cpu_to_be32(i32 %200)
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  store i32 %201, i32* %202, align 8
  %203 = load i32, i32* %6, align 4
  %204 = call i8* @cpu_to_be16(i32 %203)
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  store i8* %204, i8** %205, align 8
  %206 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %207 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %210 = load i32, i32* @CG_MULT_THERMAL_CTRL, align 4
  %211 = load i32, i32* @TEMP_SEL, align 4
  %212 = call i32 @PHM_READ_VFPF_INDIRECT_FIELD(i32 %208, i32 %209, i32 %210, i32 %211)
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  store i64 %213, i64* %214, align 8
  %215 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %216 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %4, align 8
  %217 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = bitcast %struct.TYPE_12__* %5 to i64*
  %221 = load i32, i32* @SMC_RAM_END, align 4
  %222 = call i32 @smu7_copy_bytes_to_smc(%struct.pp_hwmgr* %215, i64 %219, i64* %220, i32 112, i32 %221)
  store i32 %222, i32* %15, align 4
  %223 = load i32, i32* %15, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %241, label %225

225:                                              ; preds = %68
  %226 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %227 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 10
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %241

232:                                              ; preds = %225
  %233 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %234 = load i32, i32* @PPSMC_MSG_SetFanMinPwm, align 4
  %235 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %236 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 10
  %239 = load i64, i64* %238, align 8
  %240 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %233, i32 %234, i64 %239)
  store i32 %240, i32* %15, align 4
  br label %241

241:                                              ; preds = %232, %225, %68
  %242 = load i32, i32* %15, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %260, label %244

244:                                              ; preds = %241
  %245 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %246 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 9
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %260

251:                                              ; preds = %244
  %252 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %253 = load i32, i32* @PPSMC_MSG_SetFanSclkTarget, align 4
  %254 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %255 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 9
  %258 = load i64, i64* %257, align 8
  %259 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %252, i32 %253, i64 %258)
  store i32 %259, i32* %15, align 4
  br label %260

260:                                              ; preds = %251, %244, %241
  %261 = load i32, i32* %15, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %260
  %264 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %265 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @PHM_PlatformCaps_MicrocodeFanControl, align 4
  %269 = call i32 @phm_cap_unset(i32 %267, i32 %268)
  br label %270

270:                                              ; preds = %263, %260
  store i32 0, i32* %2, align 4
  br label %271

271:                                              ; preds = %270, %61, %44, %31
  %272 = load i32, i32* %2, align 4
  ret i32 %272
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
