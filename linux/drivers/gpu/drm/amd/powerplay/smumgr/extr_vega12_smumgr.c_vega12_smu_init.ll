; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vega12_smumgr.c_vega12_smu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vega12_smumgr.c_vega12_smu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.vega12_smumgr*, i64, i32 }
%struct.vega12_smumgr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i64, i32, i32 }
%struct.cgs_firmware_info = type { i32, i32 }
%struct.amdgpu_device = type { i32 }

@CGS_UCODE_ID_SMU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@TABLE_PPTABLE = common dso_local global i64 0, align 8
@TABLE_WATERMARKS = common dso_local global i64 0, align 8
@TABLE_PMSTATUSLOG = common dso_local global i64 0, align 8
@TABLE_AVFS_FUSE_OVERRIDE = common dso_local global i64 0, align 8
@TABLE_OVERDRIVE = common dso_local global i64 0, align 8
@TABLE_SMU_METRICS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega12_smu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega12_smu_init(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.vega12_smumgr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cgs_firmware_info, align 4
  %7 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %8 = bitcast %struct.cgs_firmware_info* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @CGS_UCODE_ID_SMU, align 4
  %13 = call i32 @cgs_get_firmware_info(i32 %11, i32 %12, %struct.cgs_firmware_info* %6)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %6, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16, %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %452

23:                                               ; preds = %16
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.vega12_smumgr* @kzalloc(i32 8, i32 %24)
  store %struct.vega12_smumgr* %25, %struct.vega12_smumgr** %4, align 8
  %26 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %27 = icmp ne %struct.vega12_smumgr* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %452

31:                                               ; preds = %23
  %32 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %33 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %34 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %33, i32 0, i32 0
  store %struct.vega12_smumgr* %32, %struct.vega12_smumgr** %34, align 8
  %35 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %36 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.amdgpu_device*
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %41 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %42 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i64, i64* @TABLE_PPTABLE, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  %48 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %49 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i64, i64* @TABLE_PPTABLE, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %56 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i64, i64* @TABLE_PPTABLE, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %38, i32 4, i32 %39, i32 %40, i32* %47, i32* %54, i64* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %31
  br label %445

66:                                               ; preds = %31
  %67 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %68 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i64, i64* @TABLE_PPTABLE, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %75 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i64, i64* @TABLE_PPTABLE, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  store i32 4, i32* %80, align 4
  %81 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %82 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to %struct.amdgpu_device*
  %85 = load i32, i32* @PAGE_SIZE, align 4
  %86 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %87 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %88 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load i64, i64* @TABLE_WATERMARKS, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 4
  %94 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %95 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = load i64, i64* @TABLE_WATERMARKS, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  %101 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %102 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = load i64, i64* @TABLE_WATERMARKS, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %84, i32 4, i32 %85, i32 %86, i32* %93, i32* %100, i64* %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %66
  br label %422

112:                                              ; preds = %66
  %113 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %114 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load i64, i64* @TABLE_WATERMARKS, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %121 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = load i64, i64* @TABLE_WATERMARKS, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  store i32 4, i32* %126, align 4
  store i64 102400, i64* %5, align 8
  %127 = load i64, i64* %5, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %180

129:                                              ; preds = %112
  %130 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %131 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to %struct.amdgpu_device*
  %134 = load i64, i64* %5, align 8
  %135 = trunc i64 %134 to i32
  %136 = load i32, i32* @PAGE_SIZE, align 4
  %137 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %138 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %139 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 4
  %145 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %146 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %147, align 8
  %149 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 3
  %152 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %153 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 2
  %159 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %133, i32 %135, i32 %136, i32 %137, i32* %144, i32* %151, i64* %158)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %129
  br label %399

163:                                              ; preds = %129
  %164 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %165 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %166, align 8
  %168 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  store i32 1, i32* %170, align 8
  %171 = load i64, i64* %5, align 8
  %172 = trunc i64 %171 to i32
  %173 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %174 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %175, align 8
  %177 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 1
  store i32 %172, i32* %179, align 4
  br label %180

180:                                              ; preds = %163, %112
  %181 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %182 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = inttoptr i64 %183 to %struct.amdgpu_device*
  %185 = load i32, i32* @PAGE_SIZE, align 4
  %186 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %187 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %188 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %189, align 8
  %191 = load i64, i64* @TABLE_AVFS_FUSE_OVERRIDE, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 4
  %194 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %195 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %196, align 8
  %198 = load i64, i64* @TABLE_AVFS_FUSE_OVERRIDE, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 3
  %201 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %202 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %203, align 8
  %205 = load i64, i64* @TABLE_AVFS_FUSE_OVERRIDE, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 2
  %208 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %184, i32 4, i32 %185, i32 %186, i32* %193, i32* %200, i64* %207)
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %180
  br label %365

212:                                              ; preds = %180
  %213 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %214 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %215, align 8
  %217 = load i64, i64* @TABLE_AVFS_FUSE_OVERRIDE, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 0
  store i32 1, i32* %219, align 8
  %220 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %221 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %222, align 8
  %224 = load i64, i64* @TABLE_AVFS_FUSE_OVERRIDE, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 1
  store i32 4, i32* %226, align 4
  %227 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %228 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = inttoptr i64 %229 to %struct.amdgpu_device*
  %231 = load i32, i32* @PAGE_SIZE, align 4
  %232 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %233 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %234 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %235, align 8
  %237 = load i64, i64* @TABLE_OVERDRIVE, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 4
  %240 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %241 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %242, align 8
  %244 = load i64, i64* @TABLE_OVERDRIVE, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 3
  %247 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %248 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** %249, align 8
  %251 = load i64, i64* @TABLE_OVERDRIVE, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 2
  %254 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %230, i32 4, i32 %231, i32 %232, i32* %239, i32* %246, i64* %253)
  store i32 %254, i32* %7, align 4
  %255 = load i32, i32* %7, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %212
  br label %342

258:                                              ; preds = %212
  %259 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %260 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %261, align 8
  %263 = load i64, i64* @TABLE_OVERDRIVE, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 0
  store i32 1, i32* %265, align 8
  %266 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %267 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %268, align 8
  %270 = load i64, i64* @TABLE_OVERDRIVE, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 1
  store i32 4, i32* %272, align 4
  %273 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %274 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = inttoptr i64 %275 to %struct.amdgpu_device*
  %277 = load i32, i32* @PAGE_SIZE, align 4
  %278 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %279 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %280 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** %281, align 8
  %283 = load i64, i64* @TABLE_SMU_METRICS, align 8
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 4
  %286 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %287 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_3__*, %struct.TYPE_3__** %288, align 8
  %290 = load i64, i64* @TABLE_SMU_METRICS, align 8
  %291 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 3
  %293 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %294 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 0
  %296 = load %struct.TYPE_3__*, %struct.TYPE_3__** %295, align 8
  %297 = load i64, i64* @TABLE_SMU_METRICS, align 8
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 2
  %300 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %276, i32 4, i32 %277, i32 %278, i32* %285, i32* %292, i64* %299)
  store i32 %300, i32* %7, align 4
  %301 = load i32, i32* %7, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %258
  br label %319

304:                                              ; preds = %258
  %305 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %306 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_3__*, %struct.TYPE_3__** %307, align 8
  %309 = load i64, i64* @TABLE_SMU_METRICS, align 8
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %310, i32 0, i32 0
  store i32 1, i32* %311, align 8
  %312 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %313 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 0
  %315 = load %struct.TYPE_3__*, %struct.TYPE_3__** %314, align 8
  %316 = load i64, i64* @TABLE_SMU_METRICS, align 8
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 1
  store i32 4, i32* %318, align 4
  store i32 0, i32* %2, align 4
  br label %452

319:                                              ; preds = %303
  %320 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %321 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 0
  %323 = load %struct.TYPE_3__*, %struct.TYPE_3__** %322, align 8
  %324 = load i64, i64* @TABLE_OVERDRIVE, align 8
  %325 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 4
  %327 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %328 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 0
  %330 = load %struct.TYPE_3__*, %struct.TYPE_3__** %329, align 8
  %331 = load i64, i64* @TABLE_OVERDRIVE, align 8
  %332 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %330, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %332, i32 0, i32 3
  %334 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %335 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 0
  %337 = load %struct.TYPE_3__*, %struct.TYPE_3__** %336, align 8
  %338 = load i64, i64* @TABLE_OVERDRIVE, align 8
  %339 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %337, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i32 0, i32 2
  %341 = call i32 @amdgpu_bo_free_kernel(i32* %326, i32* %333, i64* %340)
  br label %342

342:                                              ; preds = %319, %257
  %343 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %344 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 0
  %346 = load %struct.TYPE_3__*, %struct.TYPE_3__** %345, align 8
  %347 = load i64, i64* @TABLE_AVFS_FUSE_OVERRIDE, align 8
  %348 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %346, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %348, i32 0, i32 4
  %350 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %351 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 0
  %353 = load %struct.TYPE_3__*, %struct.TYPE_3__** %352, align 8
  %354 = load i64, i64* @TABLE_AVFS_FUSE_OVERRIDE, align 8
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %353, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %355, i32 0, i32 3
  %357 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %358 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %358, i32 0, i32 0
  %360 = load %struct.TYPE_3__*, %struct.TYPE_3__** %359, align 8
  %361 = load i64, i64* @TABLE_AVFS_FUSE_OVERRIDE, align 8
  %362 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %360, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %362, i32 0, i32 2
  %364 = call i32 @amdgpu_bo_free_kernel(i32* %349, i32* %356, i64* %363)
  br label %365

365:                                              ; preds = %342, %211
  %366 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %367 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 0
  %369 = load %struct.TYPE_3__*, %struct.TYPE_3__** %368, align 8
  %370 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %371 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %369, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %371, i32 0, i32 2
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %398

375:                                              ; preds = %365
  %376 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %377 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %377, i32 0, i32 0
  %379 = load %struct.TYPE_3__*, %struct.TYPE_3__** %378, align 8
  %380 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %381 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %379, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %381, i32 0, i32 4
  %383 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %384 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 0
  %386 = load %struct.TYPE_3__*, %struct.TYPE_3__** %385, align 8
  %387 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %388 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %386, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %388, i32 0, i32 3
  %390 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %391 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i32 0, i32 0
  %393 = load %struct.TYPE_3__*, %struct.TYPE_3__** %392, align 8
  %394 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %395 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %393, i64 %394
  %396 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %395, i32 0, i32 2
  %397 = call i32 @amdgpu_bo_free_kernel(i32* %382, i32* %389, i64* %396)
  br label %398

398:                                              ; preds = %375, %365
  br label %399

399:                                              ; preds = %398, %162
  %400 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %401 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i32 0, i32 0
  %403 = load %struct.TYPE_3__*, %struct.TYPE_3__** %402, align 8
  %404 = load i64, i64* @TABLE_WATERMARKS, align 8
  %405 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %403, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %405, i32 0, i32 4
  %407 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %408 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %408, i32 0, i32 0
  %410 = load %struct.TYPE_3__*, %struct.TYPE_3__** %409, align 8
  %411 = load i64, i64* @TABLE_WATERMARKS, align 8
  %412 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %410, i64 %411
  %413 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %412, i32 0, i32 3
  %414 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %415 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %415, i32 0, i32 0
  %417 = load %struct.TYPE_3__*, %struct.TYPE_3__** %416, align 8
  %418 = load i64, i64* @TABLE_WATERMARKS, align 8
  %419 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %417, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %419, i32 0, i32 2
  %421 = call i32 @amdgpu_bo_free_kernel(i32* %406, i32* %413, i64* %420)
  br label %422

422:                                              ; preds = %399, %111
  %423 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %424 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %424, i32 0, i32 0
  %426 = load %struct.TYPE_3__*, %struct.TYPE_3__** %425, align 8
  %427 = load i64, i64* @TABLE_PPTABLE, align 8
  %428 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %426, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %428, i32 0, i32 4
  %430 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %431 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %431, i32 0, i32 0
  %433 = load %struct.TYPE_3__*, %struct.TYPE_3__** %432, align 8
  %434 = load i64, i64* @TABLE_PPTABLE, align 8
  %435 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %433, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %435, i32 0, i32 3
  %437 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %4, align 8
  %438 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %438, i32 0, i32 0
  %440 = load %struct.TYPE_3__*, %struct.TYPE_3__** %439, align 8
  %441 = load i64, i64* @TABLE_PPTABLE, align 8
  %442 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %440, i64 %441
  %443 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %442, i32 0, i32 2
  %444 = call i32 @amdgpu_bo_free_kernel(i32* %429, i32* %436, i64* %443)
  br label %445

445:                                              ; preds = %422, %65
  %446 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %447 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %446, i32 0, i32 0
  %448 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %447, align 8
  %449 = call i32 @kfree(%struct.vega12_smumgr* %448)
  %450 = load i32, i32* @EINVAL, align 4
  %451 = sub nsw i32 0, %450
  store i32 %451, i32* %2, align 4
  br label %452

452:                                              ; preds = %445, %304, %28, %20
  %453 = load i32, i32* %2, align 4
  ret i32 %453
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cgs_get_firmware_info(i32, i32, %struct.cgs_firmware_info*) #2

declare dso_local %struct.vega12_smumgr* @kzalloc(i32, i32) #2

declare dso_local i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device*, i32, i32, i32, i32*, i32*, i64*) #2

declare dso_local i32 @amdgpu_bo_free_kernel(i32*, i32*, i64*) #2

declare dso_local i32 @kfree(%struct.vega12_smumgr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
