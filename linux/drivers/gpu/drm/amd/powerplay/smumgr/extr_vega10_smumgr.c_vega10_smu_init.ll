; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vega10_smumgr.c_vega10_smu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vega10_smumgr.c_vega10_smu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.vega10_smumgr*, i64, i32 }
%struct.vega10_smumgr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i64, i32, i32, i32 }
%struct.cgs_firmware_info = type { i32, i32 }
%struct.amdgpu_device = type { i32 }

@CGS_UCODE_ID_SMU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@PPTABLE = common dso_local global i64 0, align 8
@TABLE_PPTABLE = common dso_local global i32 0, align 4
@WMTABLE = common dso_local global i64 0, align 8
@TABLE_WATERMARKS = common dso_local global i32 0, align 4
@AVFSTABLE = common dso_local global i64 0, align 8
@TABLE_AVFS = common dso_local global i32 0, align 4
@TOOLSTABLE = common dso_local global i64 0, align 8
@TABLE_PMSTATUSLOG = common dso_local global i32 0, align 4
@AVFSFUSETABLE = common dso_local global i64 0, align 8
@TABLE_AVFS_FUSE_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega10_smu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_smu_init(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.vega10_smumgr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cgs_firmware_info, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %8 = bitcast %struct.cgs_firmware_info* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @CGS_UCODE_ID_SMU, align 4
  %13 = call i32 @cgs_get_firmware_info(i32 %11, i32 %12, %struct.cgs_firmware_info* %7)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %7, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16, %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %423

23:                                               ; preds = %16
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.vega10_smumgr* @kzalloc(i32 8, i32 %24)
  store %struct.vega10_smumgr* %25, %struct.vega10_smumgr** %4, align 8
  %26 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %27 = icmp ne %struct.vega10_smumgr* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %423

31:                                               ; preds = %23
  %32 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %33 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %34 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %33, i32 0, i32 0
  store %struct.vega10_smumgr* %32, %struct.vega10_smumgr** %34, align 8
  %35 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %36 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.amdgpu_device*
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %41 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %42 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i64, i64* @PPTABLE, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  %48 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %49 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i64, i64* @PPTABLE, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %56 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i64, i64* @PPTABLE, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %38, i32 4, i32 %39, i32 %40, i32* %47, i32* %54, i64* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %31
  br label %416

66:                                               ; preds = %31
  %67 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %68 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i64, i64* @PPTABLE, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %75 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i64, i64* @PPTABLE, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  store i32 4, i32* %80, align 4
  %81 = load i32, i32* @TABLE_PPTABLE, align 4
  %82 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %83 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i64, i64* @PPTABLE, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 5
  store i32 %81, i32* %88, align 8
  %89 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %90 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.amdgpu_device*
  %93 = load i32, i32* @PAGE_SIZE, align 4
  %94 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %95 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %96 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i64, i64* @WMTABLE, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 4
  %102 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %103 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = load i64, i64* @WMTABLE, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 3
  %109 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %110 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = load i64, i64* @WMTABLE, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %92, i32 4, i32 %93, i32 %94, i32* %101, i32* %108, i64* %115)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %66
  br label %393

120:                                              ; preds = %66
  %121 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %122 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = load i64, i64* @WMTABLE, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  store i32 1, i32* %127, align 8
  %128 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %129 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = load i64, i64* @WMTABLE, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  store i32 4, i32* %134, align 4
  %135 = load i32, i32* @TABLE_WATERMARKS, align 4
  %136 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %137 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = load i64, i64* @WMTABLE, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 5
  store i32 %135, i32* %142, align 8
  %143 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %144 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = inttoptr i64 %145 to %struct.amdgpu_device*
  %147 = load i32, i32* @PAGE_SIZE, align 4
  %148 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %149 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %150 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = load i64, i64* @AVFSTABLE, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 4
  %156 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %157 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = load i64, i64* @AVFSTABLE, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 3
  %163 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %164 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = load i64, i64* @AVFSTABLE, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 2
  %170 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %146, i32 4, i32 %147, i32 %148, i32* %155, i32* %162, i64* %169)
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* %6, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %120
  br label %370

174:                                              ; preds = %120
  %175 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %176 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %177, align 8
  %179 = load i64, i64* @AVFSTABLE, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  store i32 1, i32* %181, align 8
  %182 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %183 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %184, align 8
  %186 = load i64, i64* @AVFSTABLE, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 1
  store i32 4, i32* %188, align 4
  %189 = load i32, i32* @TABLE_AVFS, align 4
  %190 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %191 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %192, align 8
  %194 = load i64, i64* @AVFSTABLE, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 5
  store i32 %189, i32* %196, align 8
  store i64 102400, i64* %5, align 8
  %197 = load i64, i64* %5, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %258

199:                                              ; preds = %174
  %200 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %201 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = inttoptr i64 %202 to %struct.amdgpu_device*
  %204 = load i64, i64* %5, align 8
  %205 = trunc i64 %204 to i32
  %206 = load i32, i32* @PAGE_SIZE, align 4
  %207 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %208 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %209 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %210, align 8
  %212 = load i64, i64* @TOOLSTABLE, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 4
  %215 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %216 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %217, align 8
  %219 = load i64, i64* @TOOLSTABLE, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 3
  %222 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %223 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %224, align 8
  %226 = load i64, i64* @TOOLSTABLE, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 2
  %229 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %203, i32 %205, i32 %206, i32 %207, i32* %214, i32* %221, i64* %228)
  store i32 %229, i32* %6, align 4
  %230 = load i32, i32* %6, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %199
  br label %347

233:                                              ; preds = %199
  %234 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %235 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %236, align 8
  %238 = load i64, i64* @TOOLSTABLE, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 0
  store i32 1, i32* %240, align 8
  %241 = load i64, i64* %5, align 8
  %242 = trunc i64 %241 to i32
  %243 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %244 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %245, align 8
  %247 = load i64, i64* @TOOLSTABLE, align 8
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 1
  store i32 %242, i32* %249, align 4
  %250 = load i32, i32* @TABLE_PMSTATUSLOG, align 4
  %251 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %252 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %253, align 8
  %255 = load i64, i64* @TOOLSTABLE, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 5
  store i32 %250, i32* %257, align 8
  br label %258

258:                                              ; preds = %233, %174
  %259 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %260 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = inttoptr i64 %261 to %struct.amdgpu_device*
  %263 = load i32, i32* @PAGE_SIZE, align 4
  %264 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %265 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %266 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** %267, align 8
  %269 = load i64, i64* @AVFSFUSETABLE, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 4
  %272 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %273 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_3__*, %struct.TYPE_3__** %274, align 8
  %276 = load i64, i64* @AVFSFUSETABLE, align 8
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 3
  %279 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %280 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** %281, align 8
  %283 = load i64, i64* @AVFSFUSETABLE, align 8
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 2
  %286 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %262, i32 4, i32 %263, i32 %264, i32* %271, i32* %278, i64* %285)
  store i32 %286, i32* %6, align 4
  %287 = load i32, i32* %6, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %258
  br label %313

290:                                              ; preds = %258
  %291 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %292 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 0
  %294 = load %struct.TYPE_3__*, %struct.TYPE_3__** %293, align 8
  %295 = load i64, i64* @AVFSFUSETABLE, align 8
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 0
  store i32 1, i32* %297, align 8
  %298 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %299 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %300, align 8
  %302 = load i64, i64* @AVFSFUSETABLE, align 8
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 1
  store i32 4, i32* %304, align 4
  %305 = load i32, i32* @TABLE_AVFS_FUSE_OVERRIDE, align 4
  %306 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %307 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 0
  %309 = load %struct.TYPE_3__*, %struct.TYPE_3__** %308, align 8
  %310 = load i64, i64* @AVFSFUSETABLE, align 8
  %311 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %311, i32 0, i32 5
  store i32 %305, i32* %312, align 8
  store i32 0, i32* %2, align 4
  br label %423

313:                                              ; preds = %289
  %314 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %315 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_3__*, %struct.TYPE_3__** %316, align 8
  %318 = load i64, i64* @TOOLSTABLE, align 8
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 2
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %346

323:                                              ; preds = %313
  %324 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %325 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 0
  %327 = load %struct.TYPE_3__*, %struct.TYPE_3__** %326, align 8
  %328 = load i64, i64* @TOOLSTABLE, align 8
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %327, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %329, i32 0, i32 4
  %331 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %332 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 0
  %334 = load %struct.TYPE_3__*, %struct.TYPE_3__** %333, align 8
  %335 = load i64, i64* @TOOLSTABLE, align 8
  %336 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %334, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %336, i32 0, i32 3
  %338 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %339 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 0
  %341 = load %struct.TYPE_3__*, %struct.TYPE_3__** %340, align 8
  %342 = load i64, i64* @TOOLSTABLE, align 8
  %343 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 2
  %345 = call i32 @amdgpu_bo_free_kernel(i32* %330, i32* %337, i64* %344)
  br label %346

346:                                              ; preds = %323, %313
  br label %347

347:                                              ; preds = %346, %232
  %348 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %349 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i32 0, i32 0
  %351 = load %struct.TYPE_3__*, %struct.TYPE_3__** %350, align 8
  %352 = load i64, i64* @AVFSTABLE, align 8
  %353 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %353, i32 0, i32 4
  %355 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %356 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i32 0, i32 0
  %358 = load %struct.TYPE_3__*, %struct.TYPE_3__** %357, align 8
  %359 = load i64, i64* @AVFSTABLE, align 8
  %360 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %358, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %360, i32 0, i32 3
  %362 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %363 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %363, i32 0, i32 0
  %365 = load %struct.TYPE_3__*, %struct.TYPE_3__** %364, align 8
  %366 = load i64, i64* @AVFSTABLE, align 8
  %367 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %365, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %367, i32 0, i32 2
  %369 = call i32 @amdgpu_bo_free_kernel(i32* %354, i32* %361, i64* %368)
  br label %370

370:                                              ; preds = %347, %173
  %371 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %372 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 0
  %374 = load %struct.TYPE_3__*, %struct.TYPE_3__** %373, align 8
  %375 = load i64, i64* @WMTABLE, align 8
  %376 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %374, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %376, i32 0, i32 4
  %378 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %379 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %379, i32 0, i32 0
  %381 = load %struct.TYPE_3__*, %struct.TYPE_3__** %380, align 8
  %382 = load i64, i64* @WMTABLE, align 8
  %383 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %381, i64 %382
  %384 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %383, i32 0, i32 3
  %385 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %386 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %386, i32 0, i32 0
  %388 = load %struct.TYPE_3__*, %struct.TYPE_3__** %387, align 8
  %389 = load i64, i64* @WMTABLE, align 8
  %390 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %388, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %390, i32 0, i32 2
  %392 = call i32 @amdgpu_bo_free_kernel(i32* %377, i32* %384, i64* %391)
  br label %393

393:                                              ; preds = %370, %119
  %394 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %395 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 0
  %397 = load %struct.TYPE_3__*, %struct.TYPE_3__** %396, align 8
  %398 = load i64, i64* @PPTABLE, align 8
  %399 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %397, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %399, i32 0, i32 4
  %401 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %402 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %402, i32 0, i32 0
  %404 = load %struct.TYPE_3__*, %struct.TYPE_3__** %403, align 8
  %405 = load i64, i64* @PPTABLE, align 8
  %406 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %404, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %406, i32 0, i32 3
  %408 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %4, align 8
  %409 = getelementptr inbounds %struct.vega10_smumgr, %struct.vega10_smumgr* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i32 0, i32 0
  %411 = load %struct.TYPE_3__*, %struct.TYPE_3__** %410, align 8
  %412 = load i64, i64* @PPTABLE, align 8
  %413 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %411, i64 %412
  %414 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %413, i32 0, i32 2
  %415 = call i32 @amdgpu_bo_free_kernel(i32* %400, i32* %407, i64* %414)
  br label %416

416:                                              ; preds = %393, %65
  %417 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %418 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %417, i32 0, i32 0
  %419 = load %struct.vega10_smumgr*, %struct.vega10_smumgr** %418, align 8
  %420 = call i32 @kfree(%struct.vega10_smumgr* %419)
  %421 = load i32, i32* @EINVAL, align 4
  %422 = sub nsw i32 0, %421
  store i32 %422, i32* %2, align 4
  br label %423

423:                                              ; preds = %416, %290, %28, %20
  %424 = load i32, i32* %2, align 4
  ret i32 %424
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cgs_get_firmware_info(i32, i32, %struct.cgs_firmware_info*) #2

declare dso_local %struct.vega10_smumgr* @kzalloc(i32, i32) #2

declare dso_local i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device*, i32, i32, i32, i32*, i32*, i64*) #2

declare dso_local i32 @amdgpu_bo_free_kernel(i32*, i32*, i64*) #2

declare dso_local i32 @kfree(%struct.vega10_smumgr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
