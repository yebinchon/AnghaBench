; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_init_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_init_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"BONAIRE\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"bonaire\00", align 1
@CIK_PFP_UCODE_SIZE = common dso_local global i32 0, align 4
@CIK_ME_UCODE_SIZE = common dso_local global i32 0, align 4
@CIK_CE_UCODE_SIZE = common dso_local global i32 0, align 4
@CIK_MEC_UCODE_SIZE = common dso_local global i32 0, align 4
@BONAIRE_RLC_UCODE_SIZE = common dso_local global i32 0, align 4
@BONAIRE_MC_UCODE_SIZE = common dso_local global i32 0, align 4
@BONAIRE_MC2_UCODE_SIZE = common dso_local global i32 0, align 4
@CIK_SDMA_UCODE_SIZE = common dso_local global i32 0, align 4
@BONAIRE_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"HAWAII\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"hawaii\00", align 1
@HAWAII_MC_UCODE_SIZE = common dso_local global i32 0, align 4
@HAWAII_MC2_UCODE_SIZE = common dso_local global i32 0, align 4
@HAWAII_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"KAVERI\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"kaveri\00", align 1
@KV_RLC_UCODE_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"KABINI\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"kabini\00", align 1
@KB_RLC_UCODE_SIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"MULLINS\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"mullins\00", align 1
@ML_RLC_UCODE_SIZE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"Loading %s Microcode\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"radeon/%s_pfp.bin\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"cik_cp: Bogus length %zu in firmware \22%s\22\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [45 x i8] c"cik_fw: validation failed for firmware \22%s\22\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"radeon/%s_me.bin\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"radeon/%s_ce.bin\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"radeon/%s_mec.bin\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"radeon/%s_mec2.bin\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"radeon/%s_rlc.bin\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"cik_rlc: Bogus length %zu in firmware \22%s\22\0A\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"radeon/%s_sdma.bin\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"cik_sdma: Bogus length %zu in firmware \22%s\22\0A\00", align 1
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [17 x i8] c"radeon/%s_mc.bin\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"radeon/%s_mc2.bin\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"cik_mc: Bogus length %zu in firmware \22%s\22\0A\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"%s: %zu bytes\0A\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"radeon/%s_k_smc.bin\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"radeon/%s_smc.bin\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"smc: error loading firmware \22%s\22\0A\00", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"cik_smc: Bogus length %zu in firmware \22%s\22\0A\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"ci_fw: mixing new and old firmware!\0A\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"cik_cp: Failed to load firmware \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @cik_init_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cik_init_microcode(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [30 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  %19 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %164 [
    i32 132, label %23
    i32 131, label %72
    i32 129, label %107
    i32 130, label %126
    i32 128, label %145
  ]

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  %24 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 13
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 128
  br i1 %29, label %44, label %30

30:                                               ; preds = %23
  %31 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 13
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 129
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 13
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 26207
  br i1 %43, label %44, label %45

44:                                               ; preds = %37, %30, %23
  store i32 1, i32* %18, align 4
  br label %45

45:                                               ; preds = %44, %37
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %46 = load i32, i32* @CIK_PFP_UCODE_SIZE, align 4
  %47 = mul nsw i32 %46, 4
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %5, align 8
  %49 = load i32, i32* @CIK_ME_UCODE_SIZE, align 4
  %50 = mul nsw i32 %49, 4
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %6, align 8
  %52 = load i32, i32* @CIK_CE_UCODE_SIZE, align 4
  %53 = mul nsw i32 %52, 4
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %7, align 8
  %55 = load i32, i32* @CIK_MEC_UCODE_SIZE, align 4
  %56 = mul nsw i32 %55, 4
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %8, align 8
  %58 = load i32, i32* @BONAIRE_RLC_UCODE_SIZE, align 4
  %59 = mul nsw i32 %58, 4
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %9, align 8
  %61 = load i32, i32* @BONAIRE_MC_UCODE_SIZE, align 4
  %62 = mul nsw i32 %61, 4
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %10, align 8
  %64 = load i32, i32* @BONAIRE_MC2_UCODE_SIZE, align 4
  %65 = mul nsw i32 %64, 4
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %13, align 8
  %67 = load i32, i32* @CIK_SDMA_UCODE_SIZE, align 4
  %68 = mul nsw i32 %67, 4
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %11, align 8
  %70 = load i32, i32* @BONAIRE_SMC_UCODE_SIZE, align 4
  %71 = call i64 @ALIGN(i32 %70, i32 4)
  store i64 %71, i64* %12, align 8
  store i32 8, i32* %17, align 4
  br label %166

72:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  %73 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 13
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 128
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 1, i32* %18, align 4
  br label %80

80:                                               ; preds = %79, %72
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  %81 = load i32, i32* @CIK_PFP_UCODE_SIZE, align 4
  %82 = mul nsw i32 %81, 4
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %5, align 8
  %84 = load i32, i32* @CIK_ME_UCODE_SIZE, align 4
  %85 = mul nsw i32 %84, 4
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %6, align 8
  %87 = load i32, i32* @CIK_CE_UCODE_SIZE, align 4
  %88 = mul nsw i32 %87, 4
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %7, align 8
  %90 = load i32, i32* @CIK_MEC_UCODE_SIZE, align 4
  %91 = mul nsw i32 %90, 4
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %8, align 8
  %93 = load i32, i32* @BONAIRE_RLC_UCODE_SIZE, align 4
  %94 = mul nsw i32 %93, 4
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %9, align 8
  %96 = load i32, i32* @HAWAII_MC_UCODE_SIZE, align 4
  %97 = mul nsw i32 %96, 4
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %10, align 8
  %99 = load i32, i32* @HAWAII_MC2_UCODE_SIZE, align 4
  %100 = mul nsw i32 %99, 4
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %13, align 8
  %102 = load i32, i32* @CIK_SDMA_UCODE_SIZE, align 4
  %103 = mul nsw i32 %102, 4
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %11, align 8
  %105 = load i32, i32* @HAWAII_SMC_UCODE_SIZE, align 4
  %106 = call i64 @ALIGN(i32 %105, i32 4)
  store i64 %106, i64* %12, align 8
  store i32 8, i32* %17, align 4
  br label %166

107:                                              ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  %108 = load i32, i32* @CIK_PFP_UCODE_SIZE, align 4
  %109 = mul nsw i32 %108, 4
  %110 = sext i32 %109 to i64
  store i64 %110, i64* %5, align 8
  %111 = load i32, i32* @CIK_ME_UCODE_SIZE, align 4
  %112 = mul nsw i32 %111, 4
  %113 = sext i32 %112 to i64
  store i64 %113, i64* %6, align 8
  %114 = load i32, i32* @CIK_CE_UCODE_SIZE, align 4
  %115 = mul nsw i32 %114, 4
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %7, align 8
  %117 = load i32, i32* @CIK_MEC_UCODE_SIZE, align 4
  %118 = mul nsw i32 %117, 4
  %119 = sext i32 %118 to i64
  store i64 %119, i64* %8, align 8
  %120 = load i32, i32* @KV_RLC_UCODE_SIZE, align 4
  %121 = mul nsw i32 %120, 4
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %9, align 8
  %123 = load i32, i32* @CIK_SDMA_UCODE_SIZE, align 4
  %124 = mul nsw i32 %123, 4
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %11, align 8
  store i32 7, i32* %17, align 4
  br label %166

126:                                              ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  %127 = load i32, i32* @CIK_PFP_UCODE_SIZE, align 4
  %128 = mul nsw i32 %127, 4
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %5, align 8
  %130 = load i32, i32* @CIK_ME_UCODE_SIZE, align 4
  %131 = mul nsw i32 %130, 4
  %132 = sext i32 %131 to i64
  store i64 %132, i64* %6, align 8
  %133 = load i32, i32* @CIK_CE_UCODE_SIZE, align 4
  %134 = mul nsw i32 %133, 4
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %7, align 8
  %136 = load i32, i32* @CIK_MEC_UCODE_SIZE, align 4
  %137 = mul nsw i32 %136, 4
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %8, align 8
  %139 = load i32, i32* @KB_RLC_UCODE_SIZE, align 4
  %140 = mul nsw i32 %139, 4
  %141 = sext i32 %140 to i64
  store i64 %141, i64* %9, align 8
  %142 = load i32, i32* @CIK_SDMA_UCODE_SIZE, align 4
  %143 = mul nsw i32 %142, 4
  %144 = sext i32 %143 to i64
  store i64 %144, i64* %11, align 8
  store i32 6, i32* %17, align 4
  br label %166

145:                                              ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %4, align 8
  %146 = load i32, i32* @CIK_PFP_UCODE_SIZE, align 4
  %147 = mul nsw i32 %146, 4
  %148 = sext i32 %147 to i64
  store i64 %148, i64* %5, align 8
  %149 = load i32, i32* @CIK_ME_UCODE_SIZE, align 4
  %150 = mul nsw i32 %149, 4
  %151 = sext i32 %150 to i64
  store i64 %151, i64* %6, align 8
  %152 = load i32, i32* @CIK_CE_UCODE_SIZE, align 4
  %153 = mul nsw i32 %152, 4
  %154 = sext i32 %153 to i64
  store i64 %154, i64* %7, align 8
  %155 = load i32, i32* @CIK_MEC_UCODE_SIZE, align 4
  %156 = mul nsw i32 %155, 4
  %157 = sext i32 %156 to i64
  store i64 %157, i64* %8, align 8
  %158 = load i32, i32* @ML_RLC_UCODE_SIZE, align 4
  %159 = mul nsw i32 %158, 4
  %160 = sext i32 %159 to i64
  store i64 %160, i64* %9, align 8
  %161 = load i32, i32* @CIK_SDMA_UCODE_SIZE, align 4
  %162 = mul nsw i32 %161, 4
  %163 = sext i32 %162 to i64
  store i64 %163, i64* %11, align 8
  store i32 6, i32* %17, align 4
  br label %166

164:                                              ; preds = %1
  %165 = call i32 (...) @BUG()
  br label %166

166:                                              ; preds = %164, %145, %126, %107, %80, %45
  %167 = load i8*, i8** %4, align 8
  %168 = call i32 (i8*, i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* %167)
  %169 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %170 = load i8*, i8** %4, align 8
  %171 = call i32 @snprintf(i8* %169, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* %170)
  %172 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %173 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %172, i32 0, i32 11
  %174 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %175 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %176 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %175, i32 0, i32 12
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @request_firmware(%struct.TYPE_6__** %173, i8* %174, i32 %177)
  store i32 %178, i32* %16, align 4
  %179 = load i32, i32* %16, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %214

181:                                              ; preds = %166
  %182 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %183 = load i8*, i8** %3, align 8
  %184 = call i32 @snprintf(i8* %182, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* %183)
  %185 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %186 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %185, i32 0, i32 11
  %187 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %188 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %189 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %188, i32 0, i32 12
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @request_firmware(%struct.TYPE_6__** %186, i8* %187, i32 %190)
  store i32 %191, i32* %16, align 4
  %192 = load i32, i32* %16, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %181
  br label %753

195:                                              ; preds = %181
  %196 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %197 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %196, i32 0, i32 11
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* %5, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %213

203:                                              ; preds = %195
  %204 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %205 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %204, i32 0, i32 11
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %210 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i64 %208, i8* %209)
  %211 = load i32, i32* @EINVAL, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %16, align 4
  br label %753

213:                                              ; preds = %195
  br label %228

214:                                              ; preds = %166
  %215 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %216 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %215, i32 0, i32 11
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %216, align 8
  %218 = call i32 @radeon_ucode_validate(%struct.TYPE_6__* %217)
  store i32 %218, i32* %16, align 4
  %219 = load i32, i32* %16, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %214
  %222 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %223 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i8* %222)
  br label %753

224:                                              ; preds = %214
  %225 = load i32, i32* %15, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %15, align 4
  br label %227

227:                                              ; preds = %224
  br label %228

228:                                              ; preds = %227, %213
  %229 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %230 = load i8*, i8** %4, align 8
  %231 = call i32 @snprintf(i8* %229, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* %230)
  %232 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %233 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %232, i32 0, i32 10
  %234 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %235 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %236 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %235, i32 0, i32 12
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @request_firmware(%struct.TYPE_6__** %233, i8* %234, i32 %237)
  store i32 %238, i32* %16, align 4
  %239 = load i32, i32* %16, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %274

241:                                              ; preds = %228
  %242 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %243 = load i8*, i8** %3, align 8
  %244 = call i32 @snprintf(i8* %242, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* %243)
  %245 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %246 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %245, i32 0, i32 10
  %247 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %248 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %249 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %248, i32 0, i32 12
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @request_firmware(%struct.TYPE_6__** %246, i8* %247, i32 %250)
  store i32 %251, i32* %16, align 4
  %252 = load i32, i32* %16, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %241
  br label %753

255:                                              ; preds = %241
  %256 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %257 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %256, i32 0, i32 10
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* %6, align 8
  %262 = icmp ne i64 %260, %261
  br i1 %262, label %263, label %273

263:                                              ; preds = %255
  %264 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %265 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %264, i32 0, i32 10
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %270 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i64 %268, i8* %269)
  %271 = load i32, i32* @EINVAL, align 4
  %272 = sub nsw i32 0, %271
  store i32 %272, i32* %16, align 4
  br label %273

273:                                              ; preds = %263, %255
  br label %288

274:                                              ; preds = %228
  %275 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %276 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %275, i32 0, i32 10
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %276, align 8
  %278 = call i32 @radeon_ucode_validate(%struct.TYPE_6__* %277)
  store i32 %278, i32* %16, align 4
  %279 = load i32, i32* %16, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %274
  %282 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %283 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i8* %282)
  br label %753

284:                                              ; preds = %274
  %285 = load i32, i32* %15, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %15, align 4
  br label %287

287:                                              ; preds = %284
  br label %288

288:                                              ; preds = %287, %273
  %289 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %290 = load i8*, i8** %4, align 8
  %291 = call i32 @snprintf(i8* %289, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* %290)
  %292 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %293 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %292, i32 0, i32 9
  %294 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %295 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %296 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %295, i32 0, i32 12
  %297 = load i32, i32* %296, align 8
  %298 = call i32 @request_firmware(%struct.TYPE_6__** %293, i8* %294, i32 %297)
  store i32 %298, i32* %16, align 4
  %299 = load i32, i32* %16, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %334

301:                                              ; preds = %288
  %302 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %303 = load i8*, i8** %3, align 8
  %304 = call i32 @snprintf(i8* %302, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* %303)
  %305 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %306 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %305, i32 0, i32 9
  %307 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %308 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %309 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %308, i32 0, i32 12
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @request_firmware(%struct.TYPE_6__** %306, i8* %307, i32 %310)
  store i32 %311, i32* %16, align 4
  %312 = load i32, i32* %16, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %301
  br label %753

315:                                              ; preds = %301
  %316 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %317 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %316, i32 0, i32 9
  %318 = load %struct.TYPE_6__*, %struct.TYPE_6__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* %7, align 8
  %322 = icmp ne i64 %320, %321
  br i1 %322, label %323, label %333

323:                                              ; preds = %315
  %324 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %325 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %324, i32 0, i32 9
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %330 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i64 %328, i8* %329)
  %331 = load i32, i32* @EINVAL, align 4
  %332 = sub nsw i32 0, %331
  store i32 %332, i32* %16, align 4
  br label %333

333:                                              ; preds = %323, %315
  br label %348

334:                                              ; preds = %288
  %335 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %336 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %335, i32 0, i32 9
  %337 = load %struct.TYPE_6__*, %struct.TYPE_6__** %336, align 8
  %338 = call i32 @radeon_ucode_validate(%struct.TYPE_6__* %337)
  store i32 %338, i32* %16, align 4
  %339 = load i32, i32* %16, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %334
  %342 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %343 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i8* %342)
  br label %753

344:                                              ; preds = %334
  %345 = load i32, i32* %15, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %15, align 4
  br label %347

347:                                              ; preds = %344
  br label %348

348:                                              ; preds = %347, %333
  %349 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %350 = load i8*, i8** %4, align 8
  %351 = call i32 @snprintf(i8* %349, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8* %350)
  %352 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %353 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %352, i32 0, i32 8
  %354 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %355 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %356 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %355, i32 0, i32 12
  %357 = load i32, i32* %356, align 8
  %358 = call i32 @request_firmware(%struct.TYPE_6__** %353, i8* %354, i32 %357)
  store i32 %358, i32* %16, align 4
  %359 = load i32, i32* %16, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %394

361:                                              ; preds = %348
  %362 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %363 = load i8*, i8** %3, align 8
  %364 = call i32 @snprintf(i8* %362, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8* %363)
  %365 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %366 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %365, i32 0, i32 8
  %367 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %368 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %369 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %368, i32 0, i32 12
  %370 = load i32, i32* %369, align 8
  %371 = call i32 @request_firmware(%struct.TYPE_6__** %366, i8* %367, i32 %370)
  store i32 %371, i32* %16, align 4
  %372 = load i32, i32* %16, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %375

374:                                              ; preds = %361
  br label %753

375:                                              ; preds = %361
  %376 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %377 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %376, i32 0, i32 8
  %378 = load %struct.TYPE_6__*, %struct.TYPE_6__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* %8, align 8
  %382 = icmp ne i64 %380, %381
  br i1 %382, label %383, label %393

383:                                              ; preds = %375
  %384 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %385 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %384, i32 0, i32 8
  %386 = load %struct.TYPE_6__*, %struct.TYPE_6__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %390 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i64 %388, i8* %389)
  %391 = load i32, i32* @EINVAL, align 4
  %392 = sub nsw i32 0, %391
  store i32 %392, i32* %16, align 4
  br label %393

393:                                              ; preds = %383, %375
  br label %408

394:                                              ; preds = %348
  %395 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %396 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %395, i32 0, i32 8
  %397 = load %struct.TYPE_6__*, %struct.TYPE_6__** %396, align 8
  %398 = call i32 @radeon_ucode_validate(%struct.TYPE_6__* %397)
  store i32 %398, i32* %16, align 4
  %399 = load i32, i32* %16, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %404

401:                                              ; preds = %394
  %402 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %403 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i8* %402)
  br label %753

404:                                              ; preds = %394
  %405 = load i32, i32* %15, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %15, align 4
  br label %407

407:                                              ; preds = %404
  br label %408

408:                                              ; preds = %407, %393
  %409 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %410 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = icmp eq i32 %411, 129
  br i1 %412, label %413, label %440

413:                                              ; preds = %408
  %414 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %415 = load i8*, i8** %4, align 8
  %416 = call i32 @snprintf(i8* %414, i32 30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i8* %415)
  %417 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %418 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %417, i32 0, i32 7
  %419 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %420 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %421 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %420, i32 0, i32 12
  %422 = load i32, i32* %421, align 8
  %423 = call i32 @request_firmware(%struct.TYPE_6__** %418, i8* %419, i32 %422)
  store i32 %423, i32* %16, align 4
  %424 = load i32, i32* %16, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %427

426:                                              ; preds = %413
  br label %753

427:                                              ; preds = %413
  %428 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %429 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %428, i32 0, i32 7
  %430 = load %struct.TYPE_6__*, %struct.TYPE_6__** %429, align 8
  %431 = call i32 @radeon_ucode_validate(%struct.TYPE_6__* %430)
  store i32 %431, i32* %16, align 4
  %432 = load i32, i32* %16, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %435

434:                                              ; preds = %427
  br label %753

435:                                              ; preds = %427
  %436 = load i32, i32* %15, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %15, align 4
  br label %438

438:                                              ; preds = %435
  br label %439

439:                                              ; preds = %438
  br label %440

440:                                              ; preds = %439, %408
  %441 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %442 = load i8*, i8** %4, align 8
  %443 = call i32 @snprintf(i8* %441, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i8* %442)
  %444 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %445 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %444, i32 0, i32 6
  %446 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %447 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %448 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %447, i32 0, i32 12
  %449 = load i32, i32* %448, align 8
  %450 = call i32 @request_firmware(%struct.TYPE_6__** %445, i8* %446, i32 %449)
  store i32 %450, i32* %16, align 4
  %451 = load i32, i32* %16, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %486

453:                                              ; preds = %440
  %454 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %455 = load i8*, i8** %3, align 8
  %456 = call i32 @snprintf(i8* %454, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i8* %455)
  %457 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %458 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %457, i32 0, i32 6
  %459 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %460 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %461 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %460, i32 0, i32 12
  %462 = load i32, i32* %461, align 8
  %463 = call i32 @request_firmware(%struct.TYPE_6__** %458, i8* %459, i32 %462)
  store i32 %463, i32* %16, align 4
  %464 = load i32, i32* %16, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %467

466:                                              ; preds = %453
  br label %753

467:                                              ; preds = %453
  %468 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %469 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %468, i32 0, i32 6
  %470 = load %struct.TYPE_6__*, %struct.TYPE_6__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %470, i32 0, i32 0
  %472 = load i64, i64* %471, align 8
  %473 = load i64, i64* %9, align 8
  %474 = icmp ne i64 %472, %473
  br i1 %474, label %475, label %485

475:                                              ; preds = %467
  %476 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %477 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %476, i32 0, i32 6
  %478 = load %struct.TYPE_6__*, %struct.TYPE_6__** %477, align 8
  %479 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %478, i32 0, i32 0
  %480 = load i64, i64* %479, align 8
  %481 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %482 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i64 0, i64 0), i64 %480, i8* %481)
  %483 = load i32, i32* @EINVAL, align 4
  %484 = sub nsw i32 0, %483
  store i32 %484, i32* %16, align 4
  br label %485

485:                                              ; preds = %475, %467
  br label %500

486:                                              ; preds = %440
  %487 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %488 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %487, i32 0, i32 6
  %489 = load %struct.TYPE_6__*, %struct.TYPE_6__** %488, align 8
  %490 = call i32 @radeon_ucode_validate(%struct.TYPE_6__* %489)
  store i32 %490, i32* %16, align 4
  %491 = load i32, i32* %16, align 4
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %496

493:                                              ; preds = %486
  %494 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %495 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i8* %494)
  br label %753

496:                                              ; preds = %486
  %497 = load i32, i32* %15, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %15, align 4
  br label %499

499:                                              ; preds = %496
  br label %500

500:                                              ; preds = %499, %485
  %501 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %502 = load i8*, i8** %4, align 8
  %503 = call i32 @snprintf(i8* %501, i32 30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i8* %502)
  %504 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %505 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %504, i32 0, i32 5
  %506 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %507 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %508 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %507, i32 0, i32 12
  %509 = load i32, i32* %508, align 8
  %510 = call i32 @request_firmware(%struct.TYPE_6__** %505, i8* %506, i32 %509)
  store i32 %510, i32* %16, align 4
  %511 = load i32, i32* %16, align 4
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %546

513:                                              ; preds = %500
  %514 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %515 = load i8*, i8** %3, align 8
  %516 = call i32 @snprintf(i8* %514, i32 30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i8* %515)
  %517 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %518 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %517, i32 0, i32 5
  %519 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %520 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %521 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %520, i32 0, i32 12
  %522 = load i32, i32* %521, align 8
  %523 = call i32 @request_firmware(%struct.TYPE_6__** %518, i8* %519, i32 %522)
  store i32 %523, i32* %16, align 4
  %524 = load i32, i32* %16, align 4
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %527

526:                                              ; preds = %513
  br label %753

527:                                              ; preds = %513
  %528 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %529 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %528, i32 0, i32 5
  %530 = load %struct.TYPE_6__*, %struct.TYPE_6__** %529, align 8
  %531 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %530, i32 0, i32 0
  %532 = load i64, i64* %531, align 8
  %533 = load i64, i64* %11, align 8
  %534 = icmp ne i64 %532, %533
  br i1 %534, label %535, label %545

535:                                              ; preds = %527
  %536 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %537 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %536, i32 0, i32 5
  %538 = load %struct.TYPE_6__*, %struct.TYPE_6__** %537, align 8
  %539 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %538, i32 0, i32 0
  %540 = load i64, i64* %539, align 8
  %541 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %542 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0), i64 %540, i8* %541)
  %543 = load i32, i32* @EINVAL, align 4
  %544 = sub nsw i32 0, %543
  store i32 %544, i32* %16, align 4
  br label %545

545:                                              ; preds = %535, %527
  br label %560

546:                                              ; preds = %500
  %547 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %548 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %547, i32 0, i32 5
  %549 = load %struct.TYPE_6__*, %struct.TYPE_6__** %548, align 8
  %550 = call i32 @radeon_ucode_validate(%struct.TYPE_6__* %549)
  store i32 %550, i32* %16, align 4
  %551 = load i32, i32* %16, align 4
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %556

553:                                              ; preds = %546
  %554 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %555 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i8* %554)
  br label %753

556:                                              ; preds = %546
  %557 = load i32, i32* %15, align 4
  %558 = add nsw i32 %557, 1
  store i32 %558, i32* %15, align 4
  br label %559

559:                                              ; preds = %556
  br label %560

560:                                              ; preds = %559, %545
  %561 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %562 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %561, i32 0, i32 1
  %563 = load i32, i32* %562, align 4
  %564 = load i32, i32* @RADEON_IS_IGP, align 4
  %565 = and i32 %563, %564
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %734, label %567

567:                                              ; preds = %560
  %568 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %569 = load i8*, i8** %4, align 8
  %570 = call i32 @snprintf(i8* %568, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* %569)
  %571 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %572 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %571, i32 0, i32 4
  %573 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %574 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %575 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %574, i32 0, i32 12
  %576 = load i32, i32* %575, align 8
  %577 = call i32 @request_firmware(%struct.TYPE_6__** %572, i8* %573, i32 %576)
  store i32 %577, i32* %16, align 4
  %578 = load i32, i32* %16, align 4
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %580, label %642

580:                                              ; preds = %567
  %581 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %582 = load i8*, i8** %3, align 8
  %583 = call i32 @snprintf(i8* %581, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i8* %582)
  %584 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %585 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %584, i32 0, i32 4
  %586 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %587 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %588 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %587, i32 0, i32 12
  %589 = load i32, i32* %588, align 8
  %590 = call i32 @request_firmware(%struct.TYPE_6__** %585, i8* %586, i32 %589)
  store i32 %590, i32* %16, align 4
  %591 = load i32, i32* %16, align 4
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %593, label %608

593:                                              ; preds = %580
  %594 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %595 = load i8*, i8** %3, align 8
  %596 = call i32 @snprintf(i8* %594, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* %595)
  %597 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %598 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %597, i32 0, i32 4
  %599 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %600 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %601 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %600, i32 0, i32 12
  %602 = load i32, i32* %601, align 8
  %603 = call i32 @request_firmware(%struct.TYPE_6__** %598, i8* %599, i32 %602)
  store i32 %603, i32* %16, align 4
  %604 = load i32, i32* %16, align 4
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %606, label %607

606:                                              ; preds = %593
  br label %753

607:                                              ; preds = %593
  br label %608

608:                                              ; preds = %607, %580
  %609 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %610 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %609, i32 0, i32 4
  %611 = load %struct.TYPE_6__*, %struct.TYPE_6__** %610, align 8
  %612 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %611, i32 0, i32 0
  %613 = load i64, i64* %612, align 8
  %614 = load i64, i64* %10, align 8
  %615 = icmp ne i64 %613, %614
  br i1 %615, label %616, label %634

616:                                              ; preds = %608
  %617 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %618 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %617, i32 0, i32 4
  %619 = load %struct.TYPE_6__*, %struct.TYPE_6__** %618, align 8
  %620 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %619, i32 0, i32 0
  %621 = load i64, i64* %620, align 8
  %622 = load i64, i64* %13, align 8
  %623 = icmp ne i64 %621, %622
  br i1 %623, label %624, label %634

624:                                              ; preds = %616
  %625 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %626 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %625, i32 0, i32 4
  %627 = load %struct.TYPE_6__*, %struct.TYPE_6__** %626, align 8
  %628 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %627, i32 0, i32 0
  %629 = load i64, i64* %628, align 8
  %630 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %631 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.25, i64 0, i64 0), i64 %629, i8* %630)
  %632 = load i32, i32* @EINVAL, align 4
  %633 = sub nsw i32 0, %632
  store i32 %633, i32* %16, align 4
  br label %634

634:                                              ; preds = %624, %616, %608
  %635 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %636 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %637 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %636, i32 0, i32 4
  %638 = load %struct.TYPE_6__*, %struct.TYPE_6__** %637, align 8
  %639 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %638, i32 0, i32 0
  %640 = load i64, i64* %639, align 8
  %641 = call i32 (i8*, i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0), i8* %635, i64 %640)
  br label %656

642:                                              ; preds = %567
  %643 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %644 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %643, i32 0, i32 4
  %645 = load %struct.TYPE_6__*, %struct.TYPE_6__** %644, align 8
  %646 = call i32 @radeon_ucode_validate(%struct.TYPE_6__* %645)
  store i32 %646, i32* %16, align 4
  %647 = load i32, i32* %16, align 4
  %648 = icmp ne i32 %647, 0
  br i1 %648, label %649, label %652

649:                                              ; preds = %642
  %650 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %651 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i8* %650)
  br label %753

652:                                              ; preds = %642
  %653 = load i32, i32* %15, align 4
  %654 = add nsw i32 %653, 1
  store i32 %654, i32* %15, align 4
  br label %655

655:                                              ; preds = %652
  br label %656

656:                                              ; preds = %655, %634
  %657 = load i32, i32* %18, align 4
  %658 = icmp ne i32 %657, 0
  br i1 %658, label %659, label %663

659:                                              ; preds = %656
  %660 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %661 = load i8*, i8** %4, align 8
  %662 = call i32 @snprintf(i8* %660, i32 30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0), i8* %661)
  br label %667

663:                                              ; preds = %656
  %664 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %665 = load i8*, i8** %4, align 8
  %666 = call i32 @snprintf(i8* %664, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0), i8* %665)
  br label %667

667:                                              ; preds = %663, %659
  %668 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %669 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %668, i32 0, i32 3
  %670 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %671 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %672 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %671, i32 0, i32 12
  %673 = load i32, i32* %672, align 8
  %674 = call i32 @request_firmware(%struct.TYPE_6__** %669, i8* %670, i32 %673)
  store i32 %674, i32* %16, align 4
  %675 = load i32, i32* %16, align 4
  %676 = icmp ne i32 %675, 0
  br i1 %676, label %677, label %719

677:                                              ; preds = %667
  %678 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %679 = load i8*, i8** %3, align 8
  %680 = call i32 @snprintf(i8* %678, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0), i8* %679)
  %681 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %682 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %681, i32 0, i32 3
  %683 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %684 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %685 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %684, i32 0, i32 12
  %686 = load i32, i32* %685, align 8
  %687 = call i32 @request_firmware(%struct.TYPE_6__** %682, i8* %683, i32 %686)
  store i32 %687, i32* %16, align 4
  %688 = load i32, i32* %16, align 4
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %690, label %699

690:                                              ; preds = %677
  %691 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %692 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i64 0, i64 0), i8* %691)
  %693 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %694 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %693, i32 0, i32 3
  %695 = load %struct.TYPE_6__*, %struct.TYPE_6__** %694, align 8
  %696 = call i32 @release_firmware(%struct.TYPE_6__* %695)
  %697 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %698 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %697, i32 0, i32 3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %698, align 8
  store i32 0, i32* %16, align 4
  br label %718

699:                                              ; preds = %677
  %700 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %701 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %700, i32 0, i32 3
  %702 = load %struct.TYPE_6__*, %struct.TYPE_6__** %701, align 8
  %703 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %702, i32 0, i32 0
  %704 = load i64, i64* %703, align 8
  %705 = load i64, i64* %12, align 8
  %706 = icmp ne i64 %704, %705
  br i1 %706, label %707, label %717

707:                                              ; preds = %699
  %708 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %709 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %708, i32 0, i32 3
  %710 = load %struct.TYPE_6__*, %struct.TYPE_6__** %709, align 8
  %711 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %710, i32 0, i32 0
  %712 = load i64, i64* %711, align 8
  %713 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %714 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.30, i64 0, i64 0), i64 %712, i8* %713)
  %715 = load i32, i32* @EINVAL, align 4
  %716 = sub nsw i32 0, %715
  store i32 %716, i32* %16, align 4
  br label %717

717:                                              ; preds = %707, %699
  br label %718

718:                                              ; preds = %717, %690
  br label %733

719:                                              ; preds = %667
  %720 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %721 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %720, i32 0, i32 3
  %722 = load %struct.TYPE_6__*, %struct.TYPE_6__** %721, align 8
  %723 = call i32 @radeon_ucode_validate(%struct.TYPE_6__* %722)
  store i32 %723, i32* %16, align 4
  %724 = load i32, i32* %16, align 4
  %725 = icmp ne i32 %724, 0
  br i1 %725, label %726, label %729

726:                                              ; preds = %719
  %727 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %728 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i8* %727)
  br label %753

729:                                              ; preds = %719
  %730 = load i32, i32* %15, align 4
  %731 = add nsw i32 %730, 1
  store i32 %731, i32* %15, align 4
  br label %732

732:                                              ; preds = %729
  br label %733

733:                                              ; preds = %732, %718
  br label %734

734:                                              ; preds = %733, %560
  %735 = load i32, i32* %15, align 4
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %737, label %740

737:                                              ; preds = %734
  %738 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %739 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %738, i32 0, i32 2
  store i32 0, i32* %739, align 8
  br label %752

740:                                              ; preds = %734
  %741 = load i32, i32* %15, align 4
  %742 = load i32, i32* %17, align 4
  %743 = icmp slt i32 %741, %742
  br i1 %743, label %744, label %748

744:                                              ; preds = %740
  %745 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i64 0, i64 0))
  %746 = load i32, i32* @EINVAL, align 4
  %747 = sub nsw i32 0, %746
  store i32 %747, i32* %16, align 4
  br label %751

748:                                              ; preds = %740
  %749 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %750 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %749, i32 0, i32 2
  store i32 1, i32* %750, align 8
  br label %751

751:                                              ; preds = %748, %744
  br label %752

752:                                              ; preds = %751, %737
  br label %753

753:                                              ; preds = %752, %726, %649, %606, %553, %526, %493, %466, %434, %426, %401, %374, %341, %314, %281, %254, %221, %203, %194
  %754 = load i32, i32* %16, align 4
  %755 = icmp ne i32 %754, 0
  br i1 %755, label %756, label %819

756:                                              ; preds = %753
  %757 = load i32, i32* %16, align 4
  %758 = load i32, i32* @EINVAL, align 4
  %759 = sub nsw i32 0, %758
  %760 = icmp ne i32 %757, %759
  br i1 %760, label %761, label %764

761:                                              ; preds = %756
  %762 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %763 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.32, i64 0, i64 0), i8* %762)
  br label %764

764:                                              ; preds = %761, %756
  %765 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %766 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %765, i32 0, i32 11
  %767 = load %struct.TYPE_6__*, %struct.TYPE_6__** %766, align 8
  %768 = call i32 @release_firmware(%struct.TYPE_6__* %767)
  %769 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %770 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %769, i32 0, i32 11
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %770, align 8
  %771 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %772 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %771, i32 0, i32 10
  %773 = load %struct.TYPE_6__*, %struct.TYPE_6__** %772, align 8
  %774 = call i32 @release_firmware(%struct.TYPE_6__* %773)
  %775 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %776 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %775, i32 0, i32 10
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %776, align 8
  %777 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %778 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %777, i32 0, i32 9
  %779 = load %struct.TYPE_6__*, %struct.TYPE_6__** %778, align 8
  %780 = call i32 @release_firmware(%struct.TYPE_6__* %779)
  %781 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %782 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %781, i32 0, i32 9
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %782, align 8
  %783 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %784 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %783, i32 0, i32 8
  %785 = load %struct.TYPE_6__*, %struct.TYPE_6__** %784, align 8
  %786 = call i32 @release_firmware(%struct.TYPE_6__* %785)
  %787 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %788 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %787, i32 0, i32 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %788, align 8
  %789 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %790 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %789, i32 0, i32 7
  %791 = load %struct.TYPE_6__*, %struct.TYPE_6__** %790, align 8
  %792 = call i32 @release_firmware(%struct.TYPE_6__* %791)
  %793 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %794 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %793, i32 0, i32 7
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %794, align 8
  %795 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %796 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %795, i32 0, i32 6
  %797 = load %struct.TYPE_6__*, %struct.TYPE_6__** %796, align 8
  %798 = call i32 @release_firmware(%struct.TYPE_6__* %797)
  %799 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %800 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %799, i32 0, i32 6
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %800, align 8
  %801 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %802 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %801, i32 0, i32 5
  %803 = load %struct.TYPE_6__*, %struct.TYPE_6__** %802, align 8
  %804 = call i32 @release_firmware(%struct.TYPE_6__* %803)
  %805 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %806 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %805, i32 0, i32 5
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %806, align 8
  %807 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %808 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %807, i32 0, i32 4
  %809 = load %struct.TYPE_6__*, %struct.TYPE_6__** %808, align 8
  %810 = call i32 @release_firmware(%struct.TYPE_6__* %809)
  %811 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %812 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %811, i32 0, i32 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %812, align 8
  %813 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %814 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %813, i32 0, i32 3
  %815 = load %struct.TYPE_6__*, %struct.TYPE_6__** %814, align 8
  %816 = call i32 @release_firmware(%struct.TYPE_6__* %815)
  %817 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %818 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %817, i32 0, i32 3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %818, align 8
  br label %819

819:                                              ; preds = %764, %753
  %820 = load i32, i32* %16, align 4
  ret i32 %820
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @DRM_INFO(i8*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_6__**, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @radeon_ucode_validate(%struct.TYPE_6__*) #1

declare dso_local i32 @release_firmware(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
