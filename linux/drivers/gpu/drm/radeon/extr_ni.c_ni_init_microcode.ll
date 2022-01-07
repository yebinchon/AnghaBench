; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni.c_ni_init_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni.c_ni_init_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"BARTS\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"BTC\00", align 1
@EVERGREEN_PFP_UCODE_SIZE = common dso_local global i32 0, align 4
@EVERGREEN_PM4_UCODE_SIZE = common dso_local global i32 0, align 4
@EVERGREEN_RLC_UCODE_SIZE = common dso_local global i32 0, align 4
@BTC_MC_UCODE_SIZE = common dso_local global i32 0, align 4
@BARTS_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"TURKS\00", align 1
@TURKS_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"CAICOS\00", align 1
@CAICOS_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"CAYMAN\00", align 1
@CAYMAN_PFP_UCODE_SIZE = common dso_local global i32 0, align 4
@CAYMAN_PM4_UCODE_SIZE = common dso_local global i32 0, align 4
@CAYMAN_RLC_UCODE_SIZE = common dso_local global i32 0, align 4
@CAYMAN_MC_UCODE_SIZE = common dso_local global i32 0, align 4
@CAYMAN_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"ARUBA\00", align 1
@ARUBA_RLC_UCODE_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"Loading %s Microcode\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"radeon/%s_pfp.bin\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"ni_cp: Bogus length %zu in firmware \22%s\22\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"radeon/%s_me.bin\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"radeon/%s_rlc.bin\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"ni_rlc: Bogus length %zu in firmware \22%s\22\0A\00", align 1
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"radeon/%s_mc.bin\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"ni_mc: Bogus length %zu in firmware \22%s\22\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"radeon/%s_smc.bin\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"smc: error loading firmware \22%s\22\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"ni_cp: Failed to load firmware \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_init_microcode(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [30 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i64 0, i64* %9, align 8
  %12 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %86 [
    i32 131, label %16
    i32 128, label %31
    i32 130, label %46
    i32 129, label %61
    i32 132, label %76
  ]

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %17 = load i32, i32* @EVERGREEN_PFP_UCODE_SIZE, align 4
  %18 = mul nsw i32 %17, 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %5, align 8
  %20 = load i32, i32* @EVERGREEN_PM4_UCODE_SIZE, align 4
  %21 = mul nsw i32 %20, 4
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %6, align 8
  %23 = load i32, i32* @EVERGREEN_RLC_UCODE_SIZE, align 4
  %24 = mul nsw i32 %23, 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %7, align 8
  %26 = load i32, i32* @BTC_MC_UCODE_SIZE, align 4
  %27 = mul nsw i32 %26, 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %8, align 8
  %29 = load i32, i32* @BARTS_SMC_UCODE_SIZE, align 4
  %30 = call i64 @ALIGN(i32 %29, i32 4)
  store i64 %30, i64* %9, align 8
  br label %88

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %32 = load i32, i32* @EVERGREEN_PFP_UCODE_SIZE, align 4
  %33 = mul nsw i32 %32, 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %5, align 8
  %35 = load i32, i32* @EVERGREEN_PM4_UCODE_SIZE, align 4
  %36 = mul nsw i32 %35, 4
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %6, align 8
  %38 = load i32, i32* @EVERGREEN_RLC_UCODE_SIZE, align 4
  %39 = mul nsw i32 %38, 4
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %7, align 8
  %41 = load i32, i32* @BTC_MC_UCODE_SIZE, align 4
  %42 = mul nsw i32 %41, 4
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %8, align 8
  %44 = load i32, i32* @TURKS_SMC_UCODE_SIZE, align 4
  %45 = call i64 @ALIGN(i32 %44, i32 4)
  store i64 %45, i64* %9, align 8
  br label %88

46:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %47 = load i32, i32* @EVERGREEN_PFP_UCODE_SIZE, align 4
  %48 = mul nsw i32 %47, 4
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %5, align 8
  %50 = load i32, i32* @EVERGREEN_PM4_UCODE_SIZE, align 4
  %51 = mul nsw i32 %50, 4
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %6, align 8
  %53 = load i32, i32* @EVERGREEN_RLC_UCODE_SIZE, align 4
  %54 = mul nsw i32 %53, 4
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %7, align 8
  %56 = load i32, i32* @BTC_MC_UCODE_SIZE, align 4
  %57 = mul nsw i32 %56, 4
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %8, align 8
  %59 = load i32, i32* @CAICOS_SMC_UCODE_SIZE, align 4
  %60 = call i64 @ALIGN(i32 %59, i32 4)
  store i64 %60, i64* %9, align 8
  br label %88

61:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  %62 = load i32, i32* @CAYMAN_PFP_UCODE_SIZE, align 4
  %63 = mul nsw i32 %62, 4
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %5, align 8
  %65 = load i32, i32* @CAYMAN_PM4_UCODE_SIZE, align 4
  %66 = mul nsw i32 %65, 4
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %6, align 8
  %68 = load i32, i32* @CAYMAN_RLC_UCODE_SIZE, align 4
  %69 = mul nsw i32 %68, 4
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %7, align 8
  %71 = load i32, i32* @CAYMAN_MC_UCODE_SIZE, align 4
  %72 = mul nsw i32 %71, 4
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %8, align 8
  %74 = load i32, i32* @CAYMAN_SMC_UCODE_SIZE, align 4
  %75 = call i64 @ALIGN(i32 %74, i32 4)
  store i64 %75, i64* %9, align 8
  br label %88

76:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  %77 = load i32, i32* @CAYMAN_PFP_UCODE_SIZE, align 4
  %78 = mul nsw i32 %77, 4
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %5, align 8
  %80 = load i32, i32* @CAYMAN_PM4_UCODE_SIZE, align 4
  %81 = mul nsw i32 %80, 4
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %6, align 8
  %83 = load i32, i32* @ARUBA_RLC_UCODE_SIZE, align 4
  %84 = mul nsw i32 %83, 4
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %88

86:                                               ; preds = %1
  %87 = call i32 (...) @BUG()
  br label %88

88:                                               ; preds = %86, %76, %61, %46, %31, %16
  %89 = load i8*, i8** %3, align 8
  %90 = call i32 @DRM_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %89)
  %91 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %92 = load i8*, i8** %3, align 8
  %93 = call i32 @snprintf(i8* %91, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %92)
  %94 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %95 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %94, i32 0, i32 5
  %96 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %97 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @request_firmware(%struct.TYPE_3__** %95, i8* %96, i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %88
  br label %279

104:                                              ; preds = %88
  %105 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %106 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %105, i32 0, i32 5
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %5, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %104
  %113 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %114 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %113, i32 0, i32 5
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %119 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i64 %117, i8* %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %11, align 4
  br label %279

122:                                              ; preds = %104
  %123 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %124 = load i8*, i8** %3, align 8
  %125 = call i32 @snprintf(i8* %123, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* %124)
  %126 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %127 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %126, i32 0, i32 4
  %128 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %129 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %130 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @request_firmware(%struct.TYPE_3__** %127, i8* %128, i32 %131)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %122
  br label %279

136:                                              ; preds = %122
  %137 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 4
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %6, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %136
  %145 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %146 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %145, i32 0, i32 4
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %151 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i64 %149, i8* %150)
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %11, align 4
  br label %154

154:                                              ; preds = %144, %136
  %155 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %156 = load i8*, i8** %4, align 8
  %157 = call i32 @snprintf(i8* %155, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* %156)
  %158 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %159 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %158, i32 0, i32 3
  %160 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %161 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %162 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %161, i32 0, i32 7
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @request_firmware(%struct.TYPE_3__** %159, i8* %160, i32 %163)
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %154
  br label %279

168:                                              ; preds = %154
  %169 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %170 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %169, i32 0, i32 3
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* %7, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %186

176:                                              ; preds = %168
  %177 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %178 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %177, i32 0, i32 3
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %183 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i64 %181, i8* %182)
  %184 = load i32, i32* @EINVAL, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %11, align 4
  br label %186

186:                                              ; preds = %176, %168
  %187 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %188 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @RADEON_IS_IGP, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %226, label %193

193:                                              ; preds = %186
  %194 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %195 = load i8*, i8** %3, align 8
  %196 = call i32 @snprintf(i8* %194, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* %195)
  %197 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %198 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %197, i32 0, i32 2
  %199 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %200 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %201 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %200, i32 0, i32 7
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @request_firmware(%struct.TYPE_3__** %198, i8* %199, i32 %202)
  store i32 %203, i32* %11, align 4
  %204 = load i32, i32* %11, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %193
  br label %279

207:                                              ; preds = %193
  %208 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %209 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %208, i32 0, i32 2
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* %8, align 8
  %214 = icmp ne i64 %212, %213
  br i1 %214, label %215, label %225

215:                                              ; preds = %207
  %216 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %217 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %216, i32 0, i32 2
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %222 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i64 %220, i8* %221)
  %223 = load i32, i32* @EINVAL, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %11, align 4
  br label %225

225:                                              ; preds = %215, %207
  br label %226

226:                                              ; preds = %225, %186
  %227 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %228 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp sge i32 %229, 131
  br i1 %230, label %231, label %278

231:                                              ; preds = %226
  %232 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %233 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp sle i32 %234, 129
  br i1 %235, label %236, label %278

236:                                              ; preds = %231
  %237 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %238 = load i8*, i8** %3, align 8
  %239 = call i32 @snprintf(i8* %237, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* %238)
  %240 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %241 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %240, i32 0, i32 6
  %242 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %243 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %244 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %243, i32 0, i32 7
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @request_firmware(%struct.TYPE_3__** %241, i8* %242, i32 %245)
  store i32 %246, i32* %11, align 4
  %247 = load i32, i32* %11, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %258

249:                                              ; preds = %236
  %250 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %251 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i8* %250)
  %252 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %253 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %252, i32 0, i32 6
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %253, align 8
  %255 = call i32 @release_firmware(%struct.TYPE_3__* %254)
  %256 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %257 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %256, i32 0, i32 6
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %257, align 8
  store i32 0, i32* %11, align 4
  br label %277

258:                                              ; preds = %236
  %259 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %260 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %259, i32 0, i32 6
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* %9, align 8
  %265 = icmp ne i64 %263, %264
  br i1 %265, label %266, label %276

266:                                              ; preds = %258
  %267 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %268 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %267, i32 0, i32 2
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %273 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i64 %271, i8* %272)
  %274 = load i32, i32* @EINVAL, align 4
  %275 = sub nsw i32 0, %274
  store i32 %275, i32* %11, align 4
  br label %276

276:                                              ; preds = %266, %258
  br label %277

277:                                              ; preds = %276, %249
  br label %278

278:                                              ; preds = %277, %231, %226
  br label %279

279:                                              ; preds = %278, %206, %167, %135, %112, %103
  %280 = load i32, i32* %11, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %315

282:                                              ; preds = %279
  %283 = load i32, i32* %11, align 4
  %284 = load i32, i32* @EINVAL, align 4
  %285 = sub nsw i32 0, %284
  %286 = icmp ne i32 %283, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %282
  %288 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %289 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i8* %288)
  br label %290

290:                                              ; preds = %287, %282
  %291 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %292 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %291, i32 0, i32 5
  %293 = load %struct.TYPE_3__*, %struct.TYPE_3__** %292, align 8
  %294 = call i32 @release_firmware(%struct.TYPE_3__* %293)
  %295 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %296 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %295, i32 0, i32 5
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %296, align 8
  %297 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %298 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %297, i32 0, i32 4
  %299 = load %struct.TYPE_3__*, %struct.TYPE_3__** %298, align 8
  %300 = call i32 @release_firmware(%struct.TYPE_3__* %299)
  %301 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %302 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %301, i32 0, i32 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %302, align 8
  %303 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %304 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %303, i32 0, i32 3
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** %304, align 8
  %306 = call i32 @release_firmware(%struct.TYPE_3__* %305)
  %307 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %308 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %307, i32 0, i32 3
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %308, align 8
  %309 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %310 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %309, i32 0, i32 2
  %311 = load %struct.TYPE_3__*, %struct.TYPE_3__** %310, align 8
  %312 = call i32 @release_firmware(%struct.TYPE_3__* %311)
  %313 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %314 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %313, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %314, align 8
  br label %315

315:                                              ; preds = %290, %279
  %316 = load i32, i32* %11, align 4
  ret i32 %316
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @DRM_INFO(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_3__**, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @release_firmware(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
