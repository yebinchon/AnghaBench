; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cgs.c_amdgpu_cgs_get_firmware_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cgs.c_amdgpu_cgs_get_firmware_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_13__, %struct.TYPE_12__, i32, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32, %struct.amdgpu_firmware_info* }
%struct.amdgpu_firmware_info = type { i64, %struct.TYPE_14__*, i8*, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.cgs_device = type { i32 }
%struct.cgs_firmware_info = type { i32, i32, i32, i8*, i8*, i8*, i32, i32 }
%struct.gfx_firmware_header_v1_0 = type { i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.smc_firmware_header_v1_0 = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.common_firmware_header = type { i32 }

@CGS_FUNC_ADEV = common dso_local global i32 0, align 4
@CGS_UCODE_ID_SMU = common dso_local global i32 0, align 4
@CGS_UCODE_ID_SMU_SK = common dso_local global i32 0, align 4
@adev = common dso_local global %struct.TYPE_16__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@CGS_UCODE_ID_CP_MEC_JT1 = common dso_local global i32 0, align 4
@CGS_UCODE_ID_CP_MEC_JT2 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@CGS_UCODE_ID_CP_MEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"radeon/tahiti_smc.bin\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"radeon/pitcairn_k_smc.bin\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"radeon/pitcairn_smc.bin\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"radeon/verde_k_smc.bin\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"radeon/verde_smc.bin\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"radeon/oland_k_smc.bin\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"radeon/oland_smc.bin\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"radeon/hainan_k_smc.bin\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"radeon/banks_k_2_smc.bin\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"radeon/hainan_smc.bin\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"amdgpu/bonaire_k_smc.bin\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"amdgpu/bonaire_smc.bin\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"amdgpu/hawaii_k_smc.bin\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"amdgpu/hawaii_smc.bin\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"amdgpu/topaz_k_smc.bin\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"amdgpu/topaz_smc.bin\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"amdgpu/tonga_k_smc.bin\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"amdgpu/tonga_smc.bin\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"amdgpu/fiji_smc.bin\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"amdgpu/polaris11_k_smc.bin\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"amdgpu/polaris11_k2_smc.bin\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"amdgpu/polaris11_smc.bin\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"amdgpu/polaris11_smc_sk.bin\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"amdgpu/polaris10_k_smc.bin\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"amdgpu/polaris10_k2_smc.bin\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"amdgpu/polaris10_smc.bin\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"amdgpu/polaris10_smc_sk.bin\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"amdgpu/polaris12_k_smc.bin\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"amdgpu/polaris12_smc.bin\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"amdgpu/vegam_smc.bin\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"amdgpu/vega10_acg_smc.bin\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"amdgpu/vega10_smc.bin\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"amdgpu/vega12_smc.bin\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"amdgpu/vega20_smc.bin\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"SMC firmware not supported\0A\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"Failed to request firmware\0A\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"Failed to load firmware \22%s\22\00", align 1
@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_SMC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgs_device*, i32, %struct.cgs_firmware_info*)* @amdgpu_cgs_get_firmware_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_cgs_get_firmware_info(%struct.cgs_device* %0, i32 %1, %struct.cgs_firmware_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgs_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cgs_firmware_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.amdgpu_firmware_info*, align 8
  %13 = alloca [30 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.smc_firmware_header_v1_0*, align 8
  %19 = alloca %struct.common_firmware_header*, align 8
  %20 = alloca %struct.amdgpu_firmware_info*, align 8
  store %struct.cgs_device* %0, %struct.cgs_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cgs_firmware_info* %2, %struct.cgs_firmware_info** %7, align 8
  %21 = load i32, i32* @CGS_FUNC_ADEV, align 4
  %22 = load i32, i32* @CGS_UCODE_ID_SMU, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %139

25:                                               ; preds = %3
  %26 = load i32, i32* @CGS_UCODE_ID_SMU_SK, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %139

29:                                               ; preds = %25
  %30 = load %struct.cgs_device*, %struct.cgs_device** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @fw_type_convert(%struct.cgs_device* %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %36, i64 %38
  store %struct.amdgpu_firmware_info* %39, %struct.amdgpu_firmware_info** %12, align 8
  %40 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %12, align 8
  %41 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %40, i32 0, i32 1
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = icmp eq %struct.TYPE_14__* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %29
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %1015

47:                                               ; preds = %29
  %48 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %12, align 8
  %49 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %8, align 4
  %51 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %12, align 8
  %52 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %51, i32 0, i32 1
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %57, %struct.gfx_firmware_header_v1_0** %10, align 8
  %58 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %10, align 8
  %59 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le32_to_cpu(i32 %61)
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  store i8* %64, i8** %9, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @CGS_UCODE_ID_CP_MEC_JT1, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %47
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @CGS_UCODE_ID_CP_MEC_JT2, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %68, %47
  %73 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %10, align 8
  %74 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le32_to_cpu(i32 %76)
  %78 = load i32, i32* @PAGE_SIZE, align 4
  %79 = call i64 @ALIGN(i32 %77, i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %8, align 4
  %84 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %10, align 8
  %85 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le32_to_cpu(i32 %86)
  %88 = shl i32 %87, 2
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  store i8* %90, i8** %9, align 8
  br label %91

91:                                               ; preds = %72, %68
  %92 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %12, align 8
  %93 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.cgs_firmware_info*, %struct.cgs_firmware_info** %7, align 8
  %96 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.cgs_firmware_info*, %struct.cgs_firmware_info** %7, align 8
  %100 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.cgs_firmware_info*, %struct.cgs_firmware_info** %7, align 8
  %103 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %102, i32 0, i32 7
  store i32 %101, i32* %103, align 4
  %104 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %10, align 8
  %105 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @le32_to_cpu(i32 %107)
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = ptrtoint i8* %110 to i32
  %112 = load %struct.cgs_firmware_info*, %struct.cgs_firmware_info** %7, align 8
  %113 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @CGS_UCODE_ID_CP_MEC, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %91
  %118 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %10, align 8
  %119 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @le32_to_cpu(i32 %120)
  %122 = shl i32 %121, 2
  %123 = load %struct.cgs_firmware_info*, %struct.cgs_firmware_info** %7, align 8
  %124 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  br label %125

125:                                              ; preds = %117, %91
  %126 = load %struct.cgs_device*, %struct.cgs_device** %5, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @amdgpu_get_firmware_version(%struct.cgs_device* %126, i32 %127)
  %129 = load %struct.cgs_firmware_info*, %struct.cgs_firmware_info** %7, align 8
  %130 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %129, i32 0, i32 6
  store i32 %128, i32* %130, align 8
  %131 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %10, align 8
  %132 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @le32_to_cpu(i32 %133)
  %135 = sext i32 %134 to i64
  %136 = inttoptr i64 %135 to i8*
  %137 = load %struct.cgs_firmware_info*, %struct.cgs_firmware_info** %7, align 8
  %138 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %137, i32 0, i32 5
  store i8* %136, i8** %138, align 8
  br label %1014

139:                                              ; preds = %25, %3
  %140 = bitcast [30 x i8]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %140, i8 0, i64 30, i1 false)
  store i32 0, i32* %14, align 4
  store %struct.amdgpu_firmware_info* null, %struct.amdgpu_firmware_info** %20, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %143, align 8
  %145 = icmp ne %struct.TYPE_14__* %144, null
  br i1 %145, label %950, label %146

146:                                              ; preds = %139
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  switch i32 %149, label %868 [
    i32 135, label %150
    i32 139, label %153
    i32 128, label %183
    i32 140, label %255
    i32 142, label %313
    i32 144, label %391
    i32 141, label %421
    i32 133, label %437
    i32 134, label %516
    i32 143, label %553
    i32 137, label %556
    i32 138, label %647
    i32 136, label %766
    i32 129, label %824
    i32 132, label %827
    i32 131, label %862
    i32 130, label %865
  ]

150:                                              ; preds = %146
  %151 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %152 = call i32 @strcpy(i8* %151, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %872

153:                                              ; preds = %146
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 4
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 129
  br i1 %159, label %160, label %179

160:                                              ; preds = %153
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 4
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 26640
  br i1 %166, label %174, label %167

167:                                              ; preds = %160
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 4
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 26641
  br i1 %173, label %174, label %179

174:                                              ; preds = %167, %160
  %175 = load %struct.cgs_firmware_info*, %struct.cgs_firmware_info** %7, align 8
  %176 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %175, i32 0, i32 2
  store i32 1, i32* %176, align 8
  %177 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %178 = call i32 @strcpy(i8* %177, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %182

179:                                              ; preds = %167, %153
  %180 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %181 = call i32 @strcpy(i8* %180, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %182

182:                                              ; preds = %179, %174
  br label %872

183:                                              ; preds = %146
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 4
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %188, 26656
  br i1 %189, label %190, label %204

190:                                              ; preds = %183
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 4
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 129
  br i1 %196, label %246, label %197

197:                                              ; preds = %190
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 4
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 131
  br i1 %203, label %246, label %204

204:                                              ; preds = %197, %183
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 4
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 26657
  br i1 %210, label %211, label %225

211:                                              ; preds = %204
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 4
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 131
  br i1 %217, label %246, label %218

218:                                              ; preds = %211
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 4
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, 135
  br i1 %224, label %246, label %225

225:                                              ; preds = %218, %204
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 4
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = icmp eq i32 %230, 135
  br i1 %231, label %232, label %251

232:                                              ; preds = %225
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 4
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %237, 26659
  br i1 %238, label %246, label %239

239:                                              ; preds = %232
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 4
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = icmp eq i32 %244, 26667
  br i1 %245, label %246, label %251

246:                                              ; preds = %239, %232, %218, %211, %197, %190
  %247 = load %struct.cgs_firmware_info*, %struct.cgs_firmware_info** %7, align 8
  %248 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %247, i32 0, i32 2
  store i32 1, i32* %248, align 8
  %249 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %250 = call i32 @strcpy(i8* %249, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %254

251:                                              ; preds = %239, %225
  %252 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %253 = call i32 @strcpy(i8* %252, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %254

254:                                              ; preds = %251, %246
  br label %872

255:                                              ; preds = %146
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 4
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = icmp eq i32 %260, 129
  br i1 %261, label %262, label %290

262:                                              ; preds = %255
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 4
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = icmp eq i32 %267, 26112
  br i1 %268, label %304, label %269

269:                                              ; preds = %262
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 4
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = icmp eq i32 %274, 26116
  br i1 %275, label %304, label %276

276:                                              ; preds = %269
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 4
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = icmp eq i32 %281, 26117
  br i1 %282, label %304, label %283

283:                                              ; preds = %276
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 4
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = icmp eq i32 %288, 26128
  br i1 %289, label %304, label %290

290:                                              ; preds = %283, %255
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 4
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = icmp eq i32 %295, 131
  br i1 %296, label %297, label %309

297:                                              ; preds = %290
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 4
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = icmp eq i32 %302, 26128
  br i1 %303, label %304, label %309

304:                                              ; preds = %297, %283, %276, %269, %262
  %305 = load %struct.cgs_firmware_info*, %struct.cgs_firmware_info** %7, align 8
  %306 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %305, i32 0, i32 2
  store i32 1, i32* %306, align 8
  %307 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %308 = call i32 @strcpy(i8* %307, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %312

309:                                              ; preds = %297, %290
  %310 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %311 = call i32 @strcpy(i8* %310, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %312

312:                                              ; preds = %309, %304
  br label %872

313:                                              ; preds = %146
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 4
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = icmp eq i32 %318, 129
  br i1 %319, label %320, label %327

320:                                              ; preds = %313
  %321 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %322 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %321, i32 0, i32 4
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = icmp eq i32 %325, 26208
  br i1 %326, label %362, label %327

327:                                              ; preds = %320, %313
  %328 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i32 0, i32 4
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = icmp eq i32 %332, 131
  br i1 %333, label %334, label %367

334:                                              ; preds = %327
  %335 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i32 0, i32 4
  %337 = load %struct.TYPE_11__*, %struct.TYPE_11__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = icmp eq i32 %339, 26208
  br i1 %340, label %362, label %341

341:                                              ; preds = %334
  %342 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 4
  %344 = load %struct.TYPE_11__*, %struct.TYPE_11__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = icmp eq i32 %346, 26211
  br i1 %347, label %362, label %348

348:                                              ; preds = %341
  %349 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %350 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %349, i32 0, i32 4
  %351 = load %struct.TYPE_11__*, %struct.TYPE_11__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = icmp eq i32 %353, 26213
  br i1 %354, label %362, label %355

355:                                              ; preds = %348
  %356 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 4
  %358 = load %struct.TYPE_11__*, %struct.TYPE_11__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = icmp eq i32 %360, 26215
  br i1 %361, label %362, label %367

362:                                              ; preds = %355, %348, %341, %334, %320
  %363 = load %struct.cgs_firmware_info*, %struct.cgs_firmware_info** %7, align 8
  %364 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %363, i32 0, i32 2
  store i32 1, i32* %364, align 8
  %365 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %366 = call i32 @strcpy(i8* %365, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %390

367:                                              ; preds = %355, %327
  %368 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %369 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %368, i32 0, i32 4
  %370 = load %struct.TYPE_11__*, %struct.TYPE_11__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = icmp eq i32 %372, 195
  br i1 %373, label %374, label %386

374:                                              ; preds = %367
  %375 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %376 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %375, i32 0, i32 4
  %377 = load %struct.TYPE_11__*, %struct.TYPE_11__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = icmp eq i32 %379, 26213
  br i1 %380, label %381, label %386

381:                                              ; preds = %374
  %382 = load %struct.cgs_firmware_info*, %struct.cgs_firmware_info** %7, align 8
  %383 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %382, i32 0, i32 2
  store i32 1, i32* %383, align 8
  %384 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %385 = call i32 @strcpy(i8* %384, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %389

386:                                              ; preds = %374, %367
  %387 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %388 = call i32 @strcpy(i8* %387, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %389

389:                                              ; preds = %386, %381
  br label %390

390:                                              ; preds = %389, %362
  br label %872

391:                                              ; preds = %146
  %392 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %393 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %392, i32 0, i32 4
  %394 = load %struct.TYPE_11__*, %struct.TYPE_11__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = icmp eq i32 %396, 128
  br i1 %397, label %412, label %398

398:                                              ; preds = %391
  %399 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %400 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %399, i32 0, i32 4
  %401 = load %struct.TYPE_11__*, %struct.TYPE_11__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = icmp eq i32 %403, 129
  br i1 %404, label %412, label %405

405:                                              ; preds = %398
  %406 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %407 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %406, i32 0, i32 4
  %408 = load %struct.TYPE_11__*, %struct.TYPE_11__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = icmp eq i32 %410, 26207
  br i1 %411, label %412, label %417

412:                                              ; preds = %405, %398, %391
  %413 = load %struct.cgs_firmware_info*, %struct.cgs_firmware_info** %7, align 8
  %414 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %413, i32 0, i32 2
  store i32 1, i32* %414, align 8
  %415 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %416 = call i32 @strcpy(i8* %415, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %420

417:                                              ; preds = %405
  %418 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %419 = call i32 @strcpy(i8* %418, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  br label %420

420:                                              ; preds = %417, %412
  br label %872

421:                                              ; preds = %146
  %422 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %423 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %422, i32 0, i32 4
  %424 = load %struct.TYPE_11__*, %struct.TYPE_11__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = icmp eq i32 %426, 128
  br i1 %427, label %428, label %433

428:                                              ; preds = %421
  %429 = load %struct.cgs_firmware_info*, %struct.cgs_firmware_info** %7, align 8
  %430 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %429, i32 0, i32 2
  store i32 1, i32* %430, align 8
  %431 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %432 = call i32 @strcpy(i8* %431, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  br label %436

433:                                              ; preds = %421
  %434 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %435 = call i32 @strcpy(i8* %434, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  br label %436

436:                                              ; preds = %433, %428
  br label %872

437:                                              ; preds = %146
  %438 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %439 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %438, i32 0, i32 4
  %440 = load %struct.TYPE_11__*, %struct.TYPE_11__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 4
  %443 = icmp eq i32 %442, 26880
  br i1 %443, label %444, label %451

444:                                              ; preds = %437
  %445 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %446 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %445, i32 0, i32 4
  %447 = load %struct.TYPE_11__*, %struct.TYPE_11__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 4
  %450 = icmp eq i32 %449, 129
  br i1 %450, label %507, label %451

451:                                              ; preds = %444, %437
  %452 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %453 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %452, i32 0, i32 4
  %454 = load %struct.TYPE_11__*, %struct.TYPE_11__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 4
  %457 = icmp eq i32 %456, 26880
  br i1 %457, label %458, label %465

458:                                              ; preds = %451
  %459 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %460 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %459, i32 0, i32 4
  %461 = load %struct.TYPE_11__*, %struct.TYPE_11__** %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 4
  %464 = icmp eq i32 %463, 131
  br i1 %464, label %507, label %465

465:                                              ; preds = %458, %451
  %466 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %467 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %466, i32 0, i32 4
  %468 = load %struct.TYPE_11__*, %struct.TYPE_11__** %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = icmp eq i32 %470, 26887
  br i1 %471, label %472, label %479

472:                                              ; preds = %465
  %473 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %474 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %473, i32 0, i32 4
  %475 = load %struct.TYPE_11__*, %struct.TYPE_11__** %474, align 8
  %476 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 4
  %478 = icmp eq i32 %477, 135
  br i1 %478, label %507, label %479

479:                                              ; preds = %472, %465
  %480 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %481 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %480, i32 0, i32 4
  %482 = load %struct.TYPE_11__*, %struct.TYPE_11__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %482, i32 0, i32 1
  %484 = load i32, i32* %483, align 4
  %485 = icmp eq i32 %484, 26880
  br i1 %485, label %486, label %493

486:                                              ; preds = %479
  %487 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %488 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %487, i32 0, i32 4
  %489 = load %struct.TYPE_11__*, %struct.TYPE_11__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 4
  %492 = icmp eq i32 %491, 209
  br i1 %492, label %507, label %493

493:                                              ; preds = %486, %479
  %494 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %495 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %494, i32 0, i32 4
  %496 = load %struct.TYPE_11__*, %struct.TYPE_11__** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %496, i32 0, i32 1
  %498 = load i32, i32* %497, align 4
  %499 = icmp eq i32 %498, 26880
  br i1 %499, label %500, label %512

500:                                              ; preds = %493
  %501 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %502 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %501, i32 0, i32 4
  %503 = load %struct.TYPE_11__*, %struct.TYPE_11__** %502, align 8
  %504 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %503, i32 0, i32 0
  %505 = load i32, i32* %504, align 4
  %506 = icmp eq i32 %505, 211
  br i1 %506, label %507, label %512

507:                                              ; preds = %500, %486, %472, %458, %444
  %508 = load %struct.cgs_firmware_info*, %struct.cgs_firmware_info** %7, align 8
  %509 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %508, i32 0, i32 2
  store i32 1, i32* %509, align 8
  %510 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %511 = call i32 @strcpy(i8* %510, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  br label %515

512:                                              ; preds = %500, %493
  %513 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %514 = call i32 @strcpy(i8* %513, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  br label %515

515:                                              ; preds = %512, %507
  br label %872

516:                                              ; preds = %146
  %517 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %518 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %517, i32 0, i32 4
  %519 = load %struct.TYPE_11__*, %struct.TYPE_11__** %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 4
  %522 = icmp eq i32 %521, 26937
  br i1 %522, label %523, label %530

523:                                              ; preds = %516
  %524 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %525 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %524, i32 0, i32 4
  %526 = load %struct.TYPE_11__*, %struct.TYPE_11__** %525, align 8
  %527 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %526, i32 0, i32 0
  %528 = load i32, i32* %527, align 4
  %529 = icmp eq i32 %528, 241
  br i1 %529, label %544, label %530

530:                                              ; preds = %523, %516
  %531 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %532 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %531, i32 0, i32 4
  %533 = load %struct.TYPE_11__*, %struct.TYPE_11__** %532, align 8
  %534 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %533, i32 0, i32 1
  %535 = load i32, i32* %534, align 4
  %536 = icmp eq i32 %535, 26936
  br i1 %536, label %537, label %549

537:                                              ; preds = %530
  %538 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %539 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %538, i32 0, i32 4
  %540 = load %struct.TYPE_11__*, %struct.TYPE_11__** %539, align 8
  %541 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 4
  %543 = icmp eq i32 %542, 241
  br i1 %543, label %544, label %549

544:                                              ; preds = %537, %523
  %545 = load %struct.cgs_firmware_info*, %struct.cgs_firmware_info** %7, align 8
  %546 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %545, i32 0, i32 2
  store i32 1, i32* %546, align 8
  %547 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %548 = call i32 @strcpy(i8* %547, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  br label %552

549:                                              ; preds = %537, %530
  %550 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %551 = call i32 @strcpy(i8* %550, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  br label %552

552:                                              ; preds = %549, %544
  br label %872

553:                                              ; preds = %146
  %554 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %555 = call i32 @strcpy(i8* %554, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0))
  br label %872

556:                                              ; preds = %146
  %557 = load i32, i32* %6, align 4
  %558 = load i32, i32* @CGS_UCODE_ID_SMU, align 4
  %559 = icmp eq i32 %557, %558
  br i1 %559, label %560, label %638

560:                                              ; preds = %556
  %561 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %562 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %561, i32 0, i32 4
  %563 = load %struct.TYPE_11__*, %struct.TYPE_11__** %562, align 8
  %564 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %563, i32 0, i32 1
  %565 = load i32, i32* %564, align 4
  %566 = icmp eq i32 %565, 26607
  br i1 %566, label %567, label %581

567:                                              ; preds = %560
  %568 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %569 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %568, i32 0, i32 4
  %570 = load %struct.TYPE_11__*, %struct.TYPE_11__** %569, align 8
  %571 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %570, i32 0, i32 0
  %572 = load i32, i32* %571, align 4
  %573 = icmp eq i32 %572, 224
  br i1 %573, label %609, label %574

574:                                              ; preds = %567
  %575 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %576 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %575, i32 0, i32 4
  %577 = load %struct.TYPE_11__*, %struct.TYPE_11__** %576, align 8
  %578 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %577, i32 0, i32 0
  %579 = load i32, i32* %578, align 4
  %580 = icmp eq i32 %579, 229
  br i1 %580, label %609, label %581

581:                                              ; preds = %574, %560
  %582 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %583 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %582, i32 0, i32 4
  %584 = load %struct.TYPE_11__*, %struct.TYPE_11__** %583, align 8
  %585 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %584, i32 0, i32 1
  %586 = load i32, i32* %585, align 4
  %587 = icmp eq i32 %586, 26623
  br i1 %587, label %588, label %614

588:                                              ; preds = %581
  %589 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %590 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %589, i32 0, i32 4
  %591 = load %struct.TYPE_11__*, %struct.TYPE_11__** %590, align 8
  %592 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %591, i32 0, i32 0
  %593 = load i32, i32* %592, align 4
  %594 = icmp eq i32 %593, 207
  br i1 %594, label %609, label %595

595:                                              ; preds = %588
  %596 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %597 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %596, i32 0, i32 4
  %598 = load %struct.TYPE_11__*, %struct.TYPE_11__** %597, align 8
  %599 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %598, i32 0, i32 0
  %600 = load i32, i32* %599, align 4
  %601 = icmp eq i32 %600, 239
  br i1 %601, label %609, label %602

602:                                              ; preds = %595
  %603 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %604 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %603, i32 0, i32 4
  %605 = load %struct.TYPE_11__*, %struct.TYPE_11__** %604, align 8
  %606 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %605, i32 0, i32 0
  %607 = load i32, i32* %606, align 4
  %608 = icmp eq i32 %607, 255
  br i1 %608, label %609, label %614

609:                                              ; preds = %602, %595, %588, %574, %567
  %610 = load %struct.cgs_firmware_info*, %struct.cgs_firmware_info** %7, align 8
  %611 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %610, i32 0, i32 2
  store i32 1, i32* %611, align 8
  %612 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %613 = call i32 @strcpy(i8* %612, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0))
  br label %637

614:                                              ; preds = %602, %581
  %615 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %616 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %615, i32 0, i32 4
  %617 = load %struct.TYPE_11__*, %struct.TYPE_11__** %616, align 8
  %618 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %617, i32 0, i32 1
  %619 = load i32, i32* %618, align 4
  %620 = icmp eq i32 %619, 26607
  br i1 %620, label %621, label %633

621:                                              ; preds = %614
  %622 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %623 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %622, i32 0, i32 4
  %624 = load %struct.TYPE_11__*, %struct.TYPE_11__** %623, align 8
  %625 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %624, i32 0, i32 0
  %626 = load i32, i32* %625, align 4
  %627 = icmp eq i32 %626, 226
  br i1 %627, label %628, label %633

628:                                              ; preds = %621
  %629 = load %struct.cgs_firmware_info*, %struct.cgs_firmware_info** %7, align 8
  %630 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %629, i32 0, i32 2
  store i32 1, i32* %630, align 8
  %631 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %632 = call i32 @strcpy(i8* %631, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0))
  br label %636

633:                                              ; preds = %621, %614
  %634 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %635 = call i32 @strcpy(i8* %634, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0))
  br label %636

636:                                              ; preds = %633, %628
  br label %637

637:                                              ; preds = %636, %609
  br label %646

638:                                              ; preds = %556
  %639 = load i32, i32* %6, align 4
  %640 = load i32, i32* @CGS_UCODE_ID_SMU_SK, align 4
  %641 = icmp eq i32 %639, %640
  br i1 %641, label %642, label %645

642:                                              ; preds = %638
  %643 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %644 = call i32 @strcpy(i8* %643, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0))
  br label %645

645:                                              ; preds = %642, %638
  br label %646

646:                                              ; preds = %645, %637
  br label %872

647:                                              ; preds = %146
  %648 = load i32, i32* %6, align 4
  %649 = load i32, i32* @CGS_UCODE_ID_SMU, align 4
  %650 = icmp eq i32 %648, %649
  br i1 %650, label %651, label %757

651:                                              ; preds = %647
  %652 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %653 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %652, i32 0, i32 4
  %654 = load %struct.TYPE_11__*, %struct.TYPE_11__** %653, align 8
  %655 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %654, i32 0, i32 1
  %656 = load i32, i32* %655, align 4
  %657 = icmp eq i32 %656, 26591
  br i1 %657, label %658, label %700

658:                                              ; preds = %651
  %659 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %660 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %659, i32 0, i32 4
  %661 = load %struct.TYPE_11__*, %struct.TYPE_11__** %660, align 8
  %662 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %661, i32 0, i32 0
  %663 = load i32, i32* %662, align 4
  %664 = icmp eq i32 %663, 224
  br i1 %664, label %721, label %665

665:                                              ; preds = %658
  %666 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %667 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %666, i32 0, i32 4
  %668 = load %struct.TYPE_11__*, %struct.TYPE_11__** %667, align 8
  %669 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %668, i32 0, i32 0
  %670 = load i32, i32* %669, align 4
  %671 = icmp eq i32 %670, 227
  br i1 %671, label %721, label %672

672:                                              ; preds = %665
  %673 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %674 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %673, i32 0, i32 4
  %675 = load %struct.TYPE_11__*, %struct.TYPE_11__** %674, align 8
  %676 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %675, i32 0, i32 0
  %677 = load i32, i32* %676, align 4
  %678 = icmp eq i32 %677, 228
  br i1 %678, label %721, label %679

679:                                              ; preds = %672
  %680 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %681 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %680, i32 0, i32 4
  %682 = load %struct.TYPE_11__*, %struct.TYPE_11__** %681, align 8
  %683 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %682, i32 0, i32 0
  %684 = load i32, i32* %683, align 4
  %685 = icmp eq i32 %684, 229
  br i1 %685, label %721, label %686

686:                                              ; preds = %679
  %687 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %688 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %687, i32 0, i32 4
  %689 = load %struct.TYPE_11__*, %struct.TYPE_11__** %688, align 8
  %690 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %689, i32 0, i32 0
  %691 = load i32, i32* %690, align 4
  %692 = icmp eq i32 %691, 231
  br i1 %692, label %721, label %693

693:                                              ; preds = %686
  %694 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %695 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %694, i32 0, i32 4
  %696 = load %struct.TYPE_11__*, %struct.TYPE_11__** %695, align 8
  %697 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %696, i32 0, i32 0
  %698 = load i32, i32* %697, align 4
  %699 = icmp eq i32 %698, 239
  br i1 %699, label %721, label %700

700:                                              ; preds = %693, %651
  %701 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %702 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %701, i32 0, i32 4
  %703 = load %struct.TYPE_11__*, %struct.TYPE_11__** %702, align 8
  %704 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %703, i32 0, i32 1
  %705 = load i32, i32* %704, align 4
  %706 = icmp eq i32 %705, 28639
  br i1 %706, label %707, label %726

707:                                              ; preds = %700
  %708 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %709 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %708, i32 0, i32 4
  %710 = load %struct.TYPE_11__*, %struct.TYPE_11__** %709, align 8
  %711 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %710, i32 0, i32 0
  %712 = load i32, i32* %711, align 4
  %713 = icmp eq i32 %712, 239
  br i1 %713, label %721, label %714

714:                                              ; preds = %707
  %715 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %716 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %715, i32 0, i32 4
  %717 = load %struct.TYPE_11__*, %struct.TYPE_11__** %716, align 8
  %718 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %717, i32 0, i32 0
  %719 = load i32, i32* %718, align 4
  %720 = icmp eq i32 %719, 255
  br i1 %720, label %721, label %726

721:                                              ; preds = %714, %707, %693, %686, %679, %672, %665, %658
  %722 = load %struct.cgs_firmware_info*, %struct.cgs_firmware_info** %7, align 8
  %723 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %722, i32 0, i32 2
  store i32 1, i32* %723, align 8
  %724 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %725 = call i32 @strcpy(i8* %724, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0))
  br label %756

726:                                              ; preds = %714, %700
  %727 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %728 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %727, i32 0, i32 4
  %729 = load %struct.TYPE_11__*, %struct.TYPE_11__** %728, align 8
  %730 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %729, i32 0, i32 1
  %731 = load i32, i32* %730, align 4
  %732 = icmp eq i32 %731, 26591
  br i1 %732, label %733, label %752

733:                                              ; preds = %726
  %734 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %735 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %734, i32 0, i32 4
  %736 = load %struct.TYPE_11__*, %struct.TYPE_11__** %735, align 8
  %737 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %736, i32 0, i32 0
  %738 = load i32, i32* %737, align 4
  %739 = icmp eq i32 %738, 225
  br i1 %739, label %747, label %740

740:                                              ; preds = %733
  %741 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %742 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %741, i32 0, i32 4
  %743 = load %struct.TYPE_11__*, %struct.TYPE_11__** %742, align 8
  %744 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %743, i32 0, i32 0
  %745 = load i32, i32* %744, align 4
  %746 = icmp eq i32 %745, 247
  br i1 %746, label %747, label %752

747:                                              ; preds = %740, %733
  %748 = load %struct.cgs_firmware_info*, %struct.cgs_firmware_info** %7, align 8
  %749 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %748, i32 0, i32 2
  store i32 1, i32* %749, align 8
  %750 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %751 = call i32 @strcpy(i8* %750, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0))
  br label %755

752:                                              ; preds = %740, %726
  %753 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %754 = call i32 @strcpy(i8* %753, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0))
  br label %755

755:                                              ; preds = %752, %747
  br label %756

756:                                              ; preds = %755, %721
  br label %765

757:                                              ; preds = %647
  %758 = load i32, i32* %6, align 4
  %759 = load i32, i32* @CGS_UCODE_ID_SMU_SK, align 4
  %760 = icmp eq i32 %758, %759
  br i1 %760, label %761, label %764

761:                                              ; preds = %757
  %762 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %763 = call i32 @strcpy(i8* %762, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0))
  br label %764

764:                                              ; preds = %761, %757
  br label %765

765:                                              ; preds = %764, %756
  br label %872

766:                                              ; preds = %146
  %767 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %768 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %767, i32 0, i32 4
  %769 = load %struct.TYPE_11__*, %struct.TYPE_11__** %768, align 8
  %770 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %769, i32 0, i32 1
  %771 = load i32, i32* %770, align 4
  %772 = icmp eq i32 %771, 27015
  br i1 %772, label %773, label %787

773:                                              ; preds = %766
  %774 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %775 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %774, i32 0, i32 4
  %776 = load %struct.TYPE_11__*, %struct.TYPE_11__** %775, align 8
  %777 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %776, i32 0, i32 0
  %778 = load i32, i32* %777, align 4
  %779 = icmp eq i32 %778, 192
  br i1 %779, label %815, label %780

780:                                              ; preds = %773
  %781 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %782 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %781, i32 0, i32 4
  %783 = load %struct.TYPE_11__*, %struct.TYPE_11__** %782, align 8
  %784 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %783, i32 0, i32 0
  %785 = load i32, i32* %784, align 4
  %786 = icmp eq i32 %785, 195
  br i1 %786, label %815, label %787

787:                                              ; preds = %780, %766
  %788 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %789 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %788, i32 0, i32 4
  %790 = load %struct.TYPE_11__*, %struct.TYPE_11__** %789, align 8
  %791 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %790, i32 0, i32 1
  %792 = load i32, i32* %791, align 4
  %793 = icmp eq i32 %792, 27009
  br i1 %793, label %794, label %820

794:                                              ; preds = %787
  %795 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %796 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %795, i32 0, i32 4
  %797 = load %struct.TYPE_11__*, %struct.TYPE_11__** %796, align 8
  %798 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %797, i32 0, i32 0
  %799 = load i32, i32* %798, align 4
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %815, label %801

801:                                              ; preds = %794
  %802 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %803 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %802, i32 0, i32 4
  %804 = load %struct.TYPE_11__*, %struct.TYPE_11__** %803, align 8
  %805 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %804, i32 0, i32 0
  %806 = load i32, i32* %805, align 4
  %807 = icmp eq i32 %806, 1
  br i1 %807, label %815, label %808

808:                                              ; preds = %801
  %809 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %810 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %809, i32 0, i32 4
  %811 = load %struct.TYPE_11__*, %struct.TYPE_11__** %810, align 8
  %812 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %811, i32 0, i32 0
  %813 = load i32, i32* %812, align 4
  %814 = icmp eq i32 %813, 16
  br i1 %814, label %815, label %820

815:                                              ; preds = %808, %801, %794, %780, %773
  %816 = load %struct.cgs_firmware_info*, %struct.cgs_firmware_info** %7, align 8
  %817 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %816, i32 0, i32 2
  store i32 1, i32* %817, align 8
  %818 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %819 = call i32 @strcpy(i8* %818, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0))
  br label %823

820:                                              ; preds = %808, %787
  %821 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %822 = call i32 @strcpy(i8* %821, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0))
  br label %823

823:                                              ; preds = %820, %815
  br label %872

824:                                              ; preds = %146
  %825 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %826 = call i32 @strcpy(i8* %825, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0))
  br label %872

827:                                              ; preds = %146
  %828 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %829 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %828, i32 0, i32 4
  %830 = load %struct.TYPE_11__*, %struct.TYPE_11__** %829, align 8
  %831 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %830, i32 0, i32 1
  %832 = load i32, i32* %831, align 4
  %833 = icmp eq i32 %832, 26751
  br i1 %833, label %834, label %858

834:                                              ; preds = %827
  %835 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %836 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %835, i32 0, i32 4
  %837 = load %struct.TYPE_11__*, %struct.TYPE_11__** %836, align 8
  %838 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %837, i32 0, i32 0
  %839 = load i32, i32* %838, align 4
  %840 = icmp eq i32 %839, 192
  br i1 %840, label %855, label %841

841:                                              ; preds = %834
  %842 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %843 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %842, i32 0, i32 4
  %844 = load %struct.TYPE_11__*, %struct.TYPE_11__** %843, align 8
  %845 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %844, i32 0, i32 0
  %846 = load i32, i32* %845, align 4
  %847 = icmp eq i32 %846, 193
  br i1 %847, label %855, label %848

848:                                              ; preds = %841
  %849 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %850 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %849, i32 0, i32 4
  %851 = load %struct.TYPE_11__*, %struct.TYPE_11__** %850, align 8
  %852 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %851, i32 0, i32 0
  %853 = load i32, i32* %852, align 4
  %854 = icmp eq i32 %853, 195
  br i1 %854, label %855, label %858

855:                                              ; preds = %848, %841, %834
  %856 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %857 = call i32 @strcpy(i8* %856, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0))
  br label %861

858:                                              ; preds = %848, %827
  %859 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %860 = call i32 @strcpy(i8* %859, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0))
  br label %861

861:                                              ; preds = %858, %855
  br label %872

862:                                              ; preds = %146
  %863 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %864 = call i32 @strcpy(i8* %863, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i64 0, i64 0))
  br label %872

865:                                              ; preds = %146
  %866 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %867 = call i32 @strcpy(i8* %866, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i64 0, i64 0))
  br label %872

868:                                              ; preds = %146
  %869 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.34, i64 0, i64 0))
  %870 = load i32, i32* @EINVAL, align 4
  %871 = sub nsw i32 0, %870
  store i32 %871, i32* %4, align 4
  br label %1015

872:                                              ; preds = %865, %862, %861, %824, %823, %765, %646, %553, %552, %515, %436, %420, %390, %312, %254, %182, %150
  %873 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %874 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %873, i32 0, i32 1
  %875 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %874, i32 0, i32 1
  %876 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %877 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %878 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %877, i32 0, i32 3
  %879 = load i32, i32* %878, align 8
  %880 = call i32 @request_firmware(%struct.TYPE_14__** %875, i8* %876, i32 %879)
  store i32 %880, i32* %14, align 4
  %881 = load i32, i32* %14, align 4
  %882 = icmp ne i32 %881, 0
  br i1 %882, label %883, label %886

883:                                              ; preds = %872
  %884 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i64 0, i64 0))
  %885 = load i32, i32* %14, align 4
  store i32 %885, i32* %4, align 4
  br label %1015

886:                                              ; preds = %872
  %887 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %888 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %887, i32 0, i32 1
  %889 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %888, i32 0, i32 1
  %890 = load %struct.TYPE_14__*, %struct.TYPE_14__** %889, align 8
  %891 = call i32 @amdgpu_ucode_validate(%struct.TYPE_14__* %890)
  store i32 %891, i32* %14, align 4
  %892 = load i32, i32* %14, align 4
  %893 = icmp ne i32 %892, 0
  br i1 %893, label %894, label %906

894:                                              ; preds = %886
  %895 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %896 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i64 0, i64 0), i8* %895)
  %897 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %898 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %897, i32 0, i32 1
  %899 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %898, i32 0, i32 1
  %900 = load %struct.TYPE_14__*, %struct.TYPE_14__** %899, align 8
  %901 = call i32 @release_firmware(%struct.TYPE_14__* %900)
  %902 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %903 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %902, i32 0, i32 1
  %904 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %903, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %904, align 8
  %905 = load i32, i32* %14, align 4
  store i32 %905, i32* %4, align 4
  br label %1015

906:                                              ; preds = %886
  %907 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %908 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %907, i32 0, i32 2
  %909 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %908, i32 0, i32 0
  %910 = load i64, i64* %909, align 8
  %911 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %912 = icmp eq i64 %910, %911
  br i1 %912, label %913, label %949

913:                                              ; preds = %906
  %914 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %915 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %914, i32 0, i32 2
  %916 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %915, i32 0, i32 2
  %917 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %916, align 8
  %918 = load i64, i64* @AMDGPU_UCODE_ID_SMC, align 8
  %919 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %917, i64 %918
  store %struct.amdgpu_firmware_info* %919, %struct.amdgpu_firmware_info** %20, align 8
  %920 = load i64, i64* @AMDGPU_UCODE_ID_SMC, align 8
  %921 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %20, align 8
  %922 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %921, i32 0, i32 0
  store i64 %920, i64* %922, align 8
  %923 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %924 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %923, i32 0, i32 1
  %925 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %924, i32 0, i32 1
  %926 = load %struct.TYPE_14__*, %struct.TYPE_14__** %925, align 8
  %927 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %20, align 8
  %928 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %927, i32 0, i32 1
  store %struct.TYPE_14__* %926, %struct.TYPE_14__** %928, align 8
  %929 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %20, align 8
  %930 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %929, i32 0, i32 1
  %931 = load %struct.TYPE_14__*, %struct.TYPE_14__** %930, align 8
  %932 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %931, i32 0, i32 0
  %933 = load i32, i32* %932, align 4
  %934 = sext i32 %933 to i64
  %935 = inttoptr i64 %934 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %935, %struct.common_firmware_header** %19, align 8
  %936 = load %struct.common_firmware_header*, %struct.common_firmware_header** %19, align 8
  %937 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %936, i32 0, i32 0
  %938 = load i32, i32* %937, align 4
  %939 = call i32 @le32_to_cpu(i32 %938)
  %940 = load i32, i32* @PAGE_SIZE, align 4
  %941 = call i64 @ALIGN(i32 %939, i32 %940)
  %942 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %943 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %942, i32 0, i32 2
  %944 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %943, i32 0, i32 1
  %945 = load i32, i32* %944, align 8
  %946 = sext i32 %945 to i64
  %947 = add nsw i64 %946, %941
  %948 = trunc i64 %947 to i32
  store i32 %948, i32* %944, align 8
  br label %949

949:                                              ; preds = %913, %906
  br label %950

950:                                              ; preds = %949, %139
  %951 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %952 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %951, i32 0, i32 1
  %953 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %952, i32 0, i32 1
  %954 = load %struct.TYPE_14__*, %struct.TYPE_14__** %953, align 8
  %955 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %954, i32 0, i32 0
  %956 = load i32, i32* %955, align 4
  %957 = sext i32 %956 to i64
  %958 = inttoptr i64 %957 to %struct.smc_firmware_header_v1_0*
  store %struct.smc_firmware_header_v1_0* %958, %struct.smc_firmware_header_v1_0** %18, align 8
  %959 = load %struct.smc_firmware_header_v1_0*, %struct.smc_firmware_header_v1_0** %18, align 8
  %960 = getelementptr inbounds %struct.smc_firmware_header_v1_0, %struct.smc_firmware_header_v1_0* %959, i32 0, i32 0
  %961 = call i32 @amdgpu_ucode_print_smc_hdr(%struct.TYPE_15__* %960)
  %962 = load %struct.smc_firmware_header_v1_0*, %struct.smc_firmware_header_v1_0** %18, align 8
  %963 = getelementptr inbounds %struct.smc_firmware_header_v1_0, %struct.smc_firmware_header_v1_0* %962, i32 0, i32 0
  %964 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %963, i32 0, i32 2
  %965 = load i32, i32* %964, align 4
  %966 = call i32 @le32_to_cpu(i32 %965)
  %967 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %968 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %967, i32 0, i32 1
  %969 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %968, i32 0, i32 0
  store i32 %966, i32* %969, align 8
  %970 = load %struct.smc_firmware_header_v1_0*, %struct.smc_firmware_header_v1_0** %18, align 8
  %971 = getelementptr inbounds %struct.smc_firmware_header_v1_0, %struct.smc_firmware_header_v1_0* %970, i32 0, i32 0
  %972 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %971, i32 0, i32 1
  %973 = load i32, i32* %972, align 4
  %974 = call i32 @le32_to_cpu(i32 %973)
  %975 = sext i32 %974 to i64
  %976 = inttoptr i64 %975 to i8*
  store i8* %976, i8** %15, align 8
  %977 = load %struct.smc_firmware_header_v1_0*, %struct.smc_firmware_header_v1_0** %18, align 8
  %978 = getelementptr inbounds %struct.smc_firmware_header_v1_0, %struct.smc_firmware_header_v1_0* %977, i32 0, i32 1
  %979 = load i32, i32* %978, align 4
  %980 = call i32 @le32_to_cpu(i32 %979)
  %981 = sext i32 %980 to i64
  %982 = inttoptr i64 %981 to i8*
  store i8* %982, i8** %16, align 8
  %983 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %984 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %983, i32 0, i32 1
  %985 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %984, i32 0, i32 1
  %986 = load %struct.TYPE_14__*, %struct.TYPE_14__** %985, align 8
  %987 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %986, i32 0, i32 0
  %988 = load i32, i32* %987, align 4
  %989 = load %struct.smc_firmware_header_v1_0*, %struct.smc_firmware_header_v1_0** %18, align 8
  %990 = getelementptr inbounds %struct.smc_firmware_header_v1_0, %struct.smc_firmware_header_v1_0* %989, i32 0, i32 0
  %991 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %990, i32 0, i32 0
  %992 = load i32, i32* %991, align 4
  %993 = call i32 @le32_to_cpu(i32 %992)
  %994 = add nsw i32 %988, %993
  %995 = sext i32 %994 to i64
  %996 = inttoptr i64 %995 to i32*
  store i32* %996, i32** %17, align 8
  %997 = load %struct.TYPE_16__*, %struct.TYPE_16__** @adev, align 8
  %998 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %997, i32 0, i32 1
  %999 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %998, i32 0, i32 0
  %1000 = load i32, i32* %999, align 8
  %1001 = load %struct.cgs_firmware_info*, %struct.cgs_firmware_info** %7, align 8
  %1002 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %1001, i32 0, i32 1
  store i32 %1000, i32* %1002, align 4
  %1003 = load i8*, i8** %15, align 8
  %1004 = ptrtoint i8* %1003 to i32
  %1005 = load %struct.cgs_firmware_info*, %struct.cgs_firmware_info** %7, align 8
  %1006 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %1005, i32 0, i32 0
  store i32 %1004, i32* %1006, align 8
  %1007 = load i8*, i8** %16, align 8
  %1008 = load %struct.cgs_firmware_info*, %struct.cgs_firmware_info** %7, align 8
  %1009 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %1008, i32 0, i32 4
  store i8* %1007, i8** %1009, align 8
  %1010 = load i32*, i32** %17, align 8
  %1011 = bitcast i32* %1010 to i8*
  %1012 = load %struct.cgs_firmware_info*, %struct.cgs_firmware_info** %7, align 8
  %1013 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %1012, i32 0, i32 3
  store i8* %1011, i8** %1013, align 8
  br label %1014

1014:                                             ; preds = %950, %125
  store i32 0, i32* %4, align 4
  br label %1015

1015:                                             ; preds = %1014, %894, %883, %868, %44
  %1016 = load i32, i32* %4, align 4
  ret i32 %1016
}

declare dso_local i32 @fw_type_convert(%struct.cgs_device*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @amdgpu_get_firmware_version(%struct.cgs_device*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @request_firmware(%struct.TYPE_14__**, i8*, i32) #1

declare dso_local i32 @amdgpu_ucode_validate(%struct.TYPE_14__*) #1

declare dso_local i32 @release_firmware(%struct.TYPE_14__*) #1

declare dso_local i32 @amdgpu_ucode_print_smc_hdr(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
