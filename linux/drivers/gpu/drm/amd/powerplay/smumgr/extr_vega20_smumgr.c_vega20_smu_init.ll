; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vega20_smumgr.c_vega20_smu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vega20_smumgr.c_vega20_smu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.vega20_smumgr*, i64, i32 }
%struct.vega20_smumgr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.cgs_firmware_info = type { i32, i32 }
%struct.amdgpu_device = type { i32 }

@UCODE_ID_SMU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@TABLE_PPTABLE = common dso_local global i64 0, align 8
@TABLE_WATERMARKS = common dso_local global i64 0, align 8
@TABLE_PMSTATUSLOG = common dso_local global i64 0, align 8
@TABLE_OVERDRIVE = common dso_local global i64 0, align 8
@TABLE_SMU_METRICS = common dso_local global i64 0, align 8
@TABLE_ACTIVITY_MONITOR_COEFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega20_smu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_smu_init(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.vega20_smumgr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cgs_firmware_info, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i64 102400, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %8 = bitcast %struct.cgs_firmware_info* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @UCODE_ID_SMU, align 4
  %13 = call i32 @smu7_convert_fw_type_to_cgs(i32 %12)
  %14 = call i32 @cgs_get_firmware_info(i32 %11, i32 %13, %struct.cgs_firmware_info* %7)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17, %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %438

24:                                               ; preds = %17
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.vega20_smumgr* @kzalloc(i32 8, i32 %25)
  store %struct.vega20_smumgr* %26, %struct.vega20_smumgr** %4, align 8
  %27 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %28 = icmp ne %struct.vega20_smumgr* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %438

32:                                               ; preds = %24
  %33 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %34 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %35 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %34, i32 0, i32 0
  store %struct.vega20_smumgr* %33, %struct.vega20_smumgr** %35, align 8
  %36 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %37 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.amdgpu_device*
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %42 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %43 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i64, i64* @TABLE_PPTABLE, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  %49 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %50 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i64, i64* @TABLE_PPTABLE, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %57 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i64, i64* @TABLE_PPTABLE, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %39, i32 4, i32 %40, i32 %41, i32* %48, i32* %55, i32* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %32
  br label %431

67:                                               ; preds = %32
  %68 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %69 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i64, i64* @TABLE_PPTABLE, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  %75 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %76 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i64, i64* @TABLE_PPTABLE, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 4, i32* %81, align 4
  %82 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %83 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.amdgpu_device*
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %88 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %89 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i64, i64* @TABLE_WATERMARKS, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 4
  %95 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %96 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i64, i64* @TABLE_WATERMARKS, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %103 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i64, i64* @TABLE_WATERMARKS, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %85, i32 4, i32 %86, i32 %87, i32* %94, i32* %101, i32* %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %67
  br label %408

113:                                              ; preds = %67
  %114 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %115 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i64, i64* @TABLE_WATERMARKS, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  store i32 1, i32* %120, align 4
  %121 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %122 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i64, i64* @TABLE_WATERMARKS, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  store i32 4, i32* %127, align 4
  %128 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %129 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to %struct.amdgpu_device*
  %132 = load i64, i64* %5, align 8
  %133 = trunc i64 %132 to i32
  %134 = load i32, i32* @PAGE_SIZE, align 4
  %135 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %136 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %137 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 4
  %143 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %144 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 3
  %150 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %151 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 2
  %157 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %131, i32 %133, i32 %134, i32 %135, i32* %142, i32* %149, i32* %156)
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %113
  br label %385

161:                                              ; preds = %113
  %162 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %163 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  store i32 1, i32* %168, align 4
  %169 = load i64, i64* %5, align 8
  %170 = trunc i64 %169 to i32
  %171 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %172 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  store i32 %170, i32* %177, align 4
  %178 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %179 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = inttoptr i64 %180 to %struct.amdgpu_device*
  %182 = load i32, i32* @PAGE_SIZE, align 4
  %183 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %184 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %185 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = load i64, i64* @TABLE_OVERDRIVE, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 4
  %191 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %192 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = load i64, i64* @TABLE_OVERDRIVE, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 3
  %198 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %199 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = load i64, i64* @TABLE_OVERDRIVE, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 2
  %205 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %181, i32 4, i32 %182, i32 %183, i32* %190, i32* %197, i32* %204)
  store i32 %205, i32* %6, align 4
  %206 = load i32, i32* %6, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %161
  br label %362

209:                                              ; preds = %161
  %210 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %211 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = load i64, i64* @TABLE_OVERDRIVE, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  store i32 1, i32* %216, align 4
  %217 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %218 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  %221 = load i64, i64* @TABLE_OVERDRIVE, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 1
  store i32 4, i32* %223, align 4
  %224 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %225 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = inttoptr i64 %226 to %struct.amdgpu_device*
  %228 = load i32, i32* @PAGE_SIZE, align 4
  %229 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %230 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %231 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %232, align 8
  %234 = load i64, i64* @TABLE_SMU_METRICS, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 4
  %237 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %238 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %239, align 8
  %241 = load i64, i64* @TABLE_SMU_METRICS, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 3
  %244 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %245 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %246, align 8
  %248 = load i64, i64* @TABLE_SMU_METRICS, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 2
  %251 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %227, i32 4, i32 %228, i32 %229, i32* %236, i32* %243, i32* %250)
  store i32 %251, i32* %6, align 4
  %252 = load i32, i32* %6, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %209
  br label %339

255:                                              ; preds = %209
  %256 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %257 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %258, align 8
  %260 = load i64, i64* @TABLE_SMU_METRICS, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 0
  store i32 1, i32* %262, align 4
  %263 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %264 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %265, align 8
  %267 = load i64, i64* @TABLE_SMU_METRICS, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 1
  store i32 4, i32* %269, align 4
  %270 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %271 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = inttoptr i64 %272 to %struct.amdgpu_device*
  %274 = load i32, i32* @PAGE_SIZE, align 4
  %275 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %276 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %277 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %278, align 8
  %280 = load i64, i64* @TABLE_ACTIVITY_MONITOR_COEFF, align 8
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 4
  %283 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %284 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %285, align 8
  %287 = load i64, i64* @TABLE_ACTIVITY_MONITOR_COEFF, align 8
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 3
  %290 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %291 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** %292, align 8
  %294 = load i64, i64* @TABLE_ACTIVITY_MONITOR_COEFF, align 8
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 2
  %297 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %273, i32 4, i32 %274, i32 %275, i32* %282, i32* %289, i32* %296)
  store i32 %297, i32* %6, align 4
  %298 = load i32, i32* %6, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %255
  br label %316

301:                                              ; preds = %255
  %302 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %303 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_4__*, %struct.TYPE_4__** %304, align 8
  %306 = load i64, i64* @TABLE_ACTIVITY_MONITOR_COEFF, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 0
  store i32 1, i32* %308, align 4
  %309 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %310 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %310, i32 0, i32 0
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %311, align 8
  %313 = load i64, i64* @TABLE_ACTIVITY_MONITOR_COEFF, align 8
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 1
  store i32 4, i32* %315, align 4
  store i32 0, i32* %2, align 4
  br label %438

316:                                              ; preds = %300
  %317 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %318 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %318, i32 0, i32 0
  %320 = load %struct.TYPE_4__*, %struct.TYPE_4__** %319, align 8
  %321 = load i64, i64* @TABLE_SMU_METRICS, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 4
  %324 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %325 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 0
  %327 = load %struct.TYPE_4__*, %struct.TYPE_4__** %326, align 8
  %328 = load i64, i64* @TABLE_SMU_METRICS, align 8
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 3
  %331 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %332 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %332, i32 0, i32 0
  %334 = load %struct.TYPE_4__*, %struct.TYPE_4__** %333, align 8
  %335 = load i64, i64* @TABLE_SMU_METRICS, align 8
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 2
  %338 = call i32 @amdgpu_bo_free_kernel(i32* %323, i32* %330, i32* %337)
  br label %339

339:                                              ; preds = %316, %254
  %340 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %341 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i32 0, i32 0
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** %342, align 8
  %344 = load i64, i64* @TABLE_OVERDRIVE, align 8
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 4
  %347 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %348 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %348, i32 0, i32 0
  %350 = load %struct.TYPE_4__*, %struct.TYPE_4__** %349, align 8
  %351 = load i64, i64* @TABLE_OVERDRIVE, align 8
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %350, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 3
  %354 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %355 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %355, i32 0, i32 0
  %357 = load %struct.TYPE_4__*, %struct.TYPE_4__** %356, align 8
  %358 = load i64, i64* @TABLE_OVERDRIVE, align 8
  %359 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 2
  %361 = call i32 @amdgpu_bo_free_kernel(i32* %346, i32* %353, i32* %360)
  br label %362

362:                                              ; preds = %339, %208
  %363 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %364 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %364, i32 0, i32 0
  %366 = load %struct.TYPE_4__*, %struct.TYPE_4__** %365, align 8
  %367 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %368, i32 0, i32 4
  %370 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %371 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %371, i32 0, i32 0
  %373 = load %struct.TYPE_4__*, %struct.TYPE_4__** %372, align 8
  %374 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %375 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %373, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 3
  %377 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %378 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %378, i32 0, i32 0
  %380 = load %struct.TYPE_4__*, %struct.TYPE_4__** %379, align 8
  %381 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %382, i32 0, i32 2
  %384 = call i32 @amdgpu_bo_free_kernel(i32* %369, i32* %376, i32* %383)
  br label %385

385:                                              ; preds = %362, %160
  %386 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %387 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %387, i32 0, i32 0
  %389 = load %struct.TYPE_4__*, %struct.TYPE_4__** %388, align 8
  %390 = load i64, i64* @TABLE_WATERMARKS, align 8
  %391 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i64 %390
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i32 0, i32 4
  %393 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %394 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %394, i32 0, i32 0
  %396 = load %struct.TYPE_4__*, %struct.TYPE_4__** %395, align 8
  %397 = load i64, i64* @TABLE_WATERMARKS, align 8
  %398 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %396, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %398, i32 0, i32 3
  %400 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %401 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %401, i32 0, i32 0
  %403 = load %struct.TYPE_4__*, %struct.TYPE_4__** %402, align 8
  %404 = load i64, i64* @TABLE_WATERMARKS, align 8
  %405 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %403, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i32 0, i32 2
  %407 = call i32 @amdgpu_bo_free_kernel(i32* %392, i32* %399, i32* %406)
  br label %408

408:                                              ; preds = %385, %112
  %409 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %410 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %410, i32 0, i32 0
  %412 = load %struct.TYPE_4__*, %struct.TYPE_4__** %411, align 8
  %413 = load i64, i64* @TABLE_PPTABLE, align 8
  %414 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %412, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %414, i32 0, i32 4
  %416 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %417 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %417, i32 0, i32 0
  %419 = load %struct.TYPE_4__*, %struct.TYPE_4__** %418, align 8
  %420 = load i64, i64* @TABLE_PPTABLE, align 8
  %421 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i64 %420
  %422 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %421, i32 0, i32 3
  %423 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %4, align 8
  %424 = getelementptr inbounds %struct.vega20_smumgr, %struct.vega20_smumgr* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %424, i32 0, i32 0
  %426 = load %struct.TYPE_4__*, %struct.TYPE_4__** %425, align 8
  %427 = load i64, i64* @TABLE_PPTABLE, align 8
  %428 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %426, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %428, i32 0, i32 2
  %430 = call i32 @amdgpu_bo_free_kernel(i32* %415, i32* %422, i32* %429)
  br label %431

431:                                              ; preds = %408, %66
  %432 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %433 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %432, i32 0, i32 0
  %434 = load %struct.vega20_smumgr*, %struct.vega20_smumgr** %433, align 8
  %435 = call i32 @kfree(%struct.vega20_smumgr* %434)
  %436 = load i32, i32* @EINVAL, align 4
  %437 = sub nsw i32 0, %436
  store i32 %437, i32* %2, align 4
  br label %438

438:                                              ; preds = %431, %301, %29, %21
  %439 = load i32, i32* %2, align 4
  ret i32 %439
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cgs_get_firmware_info(i32, i32, %struct.cgs_firmware_info*) #2

declare dso_local i32 @smu7_convert_fw_type_to_cgs(i32) #2

declare dso_local %struct.vega20_smumgr* @kzalloc(i32, i32) #2

declare dso_local i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device*, i32, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @amdgpu_bo_free_kernel(i32*, i32*, i32*) #2

declare dso_local i32 @kfree(%struct.vega20_smumgr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
