; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_init_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_init_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"TAHITI\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"tahiti\00", align 1
@SI_PFP_UCODE_SIZE = common dso_local global i32 0, align 4
@SI_PM4_UCODE_SIZE = common dso_local global i32 0, align 4
@SI_CE_UCODE_SIZE = common dso_local global i32 0, align 4
@SI_RLC_UCODE_SIZE = common dso_local global i32 0, align 4
@SI_MC_UCODE_SIZE = common dso_local global i32 0, align 4
@TAHITI_MC_UCODE_SIZE = common dso_local global i32 0, align 4
@TAHITI_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"PITCAIRN\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"pitcairn\00", align 1
@PITCAIRN_MC_UCODE_SIZE = common dso_local global i32 0, align 4
@PITCAIRN_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"VERDE\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"verde\00", align 1
@VERDE_MC_UCODE_SIZE = common dso_local global i32 0, align 4
@VERDE_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"OLAND\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"oland\00", align 1
@OLAND_MC_UCODE_SIZE = common dso_local global i32 0, align 4
@OLAND_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"HAINAN\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"hainan\00", align 1
@HAINAN_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@MC_SEQ_MISC0 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"Loading %s Microcode\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"radeon/%s_pfp.bin\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"si_cp: Bogus length %zu in firmware \22%s\22\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [44 x i8] c"si_cp: validation failed for firmware \22%s\22\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"radeon/%s_me.bin\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"radeon/%s_ce.bin\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"radeon/%s_rlc.bin\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"si_rlc: Bogus length %zu in firmware \22%s\22\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"radeon/si58_mc.bin\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"radeon/%s_mc.bin\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"radeon/%s_mc2.bin\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"si_mc: Bogus length %zu in firmware \22%s\22\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"%s: %zu bytes\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"radeon/banks_k_2_smc.bin\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"radeon/%s_k_smc.bin\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"radeon/%s_smc.bin\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"smc: error loading firmware \22%s\22\0A\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"si_smc: Bogus length %zu in firmware \22%s\22\0A\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"si_fw: mixing new and old firmware!\0A\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"si_cp: Failed to load firmware \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @si_init_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_init_microcode(%struct.radeon_device* %0) #0 {
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
  %12 = alloca [30 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %18 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %323 [
    i32 129, label %22
    i32 130, label %43
    i32 128, label %86
    i32 131, label %171
    i32 132, label %239
  ]

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %23 = load i32, i32* @SI_PFP_UCODE_SIZE, align 4
  %24 = mul nsw i32 %23, 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %5, align 8
  %26 = load i32, i32* @SI_PM4_UCODE_SIZE, align 4
  %27 = mul nsw i32 %26, 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %6, align 8
  %29 = load i32, i32* @SI_CE_UCODE_SIZE, align 4
  %30 = mul nsw i32 %29, 4
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %7, align 8
  %32 = load i32, i32* @SI_RLC_UCODE_SIZE, align 4
  %33 = mul nsw i32 %32, 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %8, align 8
  %35 = load i32, i32* @SI_MC_UCODE_SIZE, align 4
  %36 = mul nsw i32 %35, 4
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %9, align 8
  %38 = load i32, i32* @TAHITI_MC_UCODE_SIZE, align 4
  %39 = mul nsw i32 %38, 4
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %11, align 8
  %41 = load i32, i32* @TAHITI_SMC_UCODE_SIZE, align 4
  %42 = call i64 @ALIGN(i32 %41, i32 4)
  store i64 %42, i64* %10, align 8
  br label %325

43:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  %44 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 9
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 129
  br i1 %49, label %50, label %65

50:                                               ; preds = %43
  %51 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 9
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 26640
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %59 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %58, i32 0, i32 9
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 26641
  br i1 %63, label %64, label %65

64:                                               ; preds = %57, %50
  store i32 1, i32* %15, align 4
  br label %65

65:                                               ; preds = %64, %57, %43
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  %66 = load i32, i32* @SI_PFP_UCODE_SIZE, align 4
  %67 = mul nsw i32 %66, 4
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %5, align 8
  %69 = load i32, i32* @SI_PM4_UCODE_SIZE, align 4
  %70 = mul nsw i32 %69, 4
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %6, align 8
  %72 = load i32, i32* @SI_CE_UCODE_SIZE, align 4
  %73 = mul nsw i32 %72, 4
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %7, align 8
  %75 = load i32, i32* @SI_RLC_UCODE_SIZE, align 4
  %76 = mul nsw i32 %75, 4
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %8, align 8
  %78 = load i32, i32* @SI_MC_UCODE_SIZE, align 4
  %79 = mul nsw i32 %78, 4
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %9, align 8
  %81 = load i32, i32* @PITCAIRN_MC_UCODE_SIZE, align 4
  %82 = mul nsw i32 %81, 4
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %11, align 8
  %84 = load i32, i32* @PITCAIRN_SMC_UCODE_SIZE, align 4
  %85 = call i64 @ALIGN(i32 %84, i32 4)
  store i64 %85, i64* %10, align 8
  br label %325

86:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  %87 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %88 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %87, i32 0, i32 9
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 26656
  br i1 %92, label %93, label %107

93:                                               ; preds = %86
  %94 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %95 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %94, i32 0, i32 9
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 129
  br i1 %99, label %149, label %100

100:                                              ; preds = %93
  %101 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %102 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %101, i32 0, i32 9
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 131
  br i1 %106, label %149, label %107

107:                                              ; preds = %100, %86
  %108 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %109 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %108, i32 0, i32 9
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 26657
  br i1 %113, label %114, label %128

114:                                              ; preds = %107
  %115 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %116 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %115, i32 0, i32 9
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 131
  br i1 %120, label %149, label %121

121:                                              ; preds = %114
  %122 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %123 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %122, i32 0, i32 9
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 135
  br i1 %127, label %149, label %128

128:                                              ; preds = %121, %107
  %129 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %130 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %129, i32 0, i32 9
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 135
  br i1 %134, label %135, label %150

135:                                              ; preds = %128
  %136 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %137 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %136, i32 0, i32 9
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 26659
  br i1 %141, label %149, label %142

142:                                              ; preds = %135
  %143 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %144 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %143, i32 0, i32 9
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 26667
  br i1 %148, label %149, label %150

149:                                              ; preds = %142, %135, %121, %114, %100, %93
  store i32 1, i32* %15, align 4
  br label %150

150:                                              ; preds = %149, %142, %128
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  %151 = load i32, i32* @SI_PFP_UCODE_SIZE, align 4
  %152 = mul nsw i32 %151, 4
  %153 = sext i32 %152 to i64
  store i64 %153, i64* %5, align 8
  %154 = load i32, i32* @SI_PM4_UCODE_SIZE, align 4
  %155 = mul nsw i32 %154, 4
  %156 = sext i32 %155 to i64
  store i64 %156, i64* %6, align 8
  %157 = load i32, i32* @SI_CE_UCODE_SIZE, align 4
  %158 = mul nsw i32 %157, 4
  %159 = sext i32 %158 to i64
  store i64 %159, i64* %7, align 8
  %160 = load i32, i32* @SI_RLC_UCODE_SIZE, align 4
  %161 = mul nsw i32 %160, 4
  %162 = sext i32 %161 to i64
  store i64 %162, i64* %8, align 8
  %163 = load i32, i32* @SI_MC_UCODE_SIZE, align 4
  %164 = mul nsw i32 %163, 4
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %9, align 8
  %166 = load i32, i32* @VERDE_MC_UCODE_SIZE, align 4
  %167 = mul nsw i32 %166, 4
  %168 = sext i32 %167 to i64
  store i64 %168, i64* %11, align 8
  %169 = load i32, i32* @VERDE_SMC_UCODE_SIZE, align 4
  %170 = call i64 @ALIGN(i32 %169, i32 4)
  store i64 %170, i64* %10, align 8
  br label %325

171:                                              ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  %172 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %173 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %172, i32 0, i32 9
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %176, 129
  br i1 %177, label %178, label %206

178:                                              ; preds = %171
  %179 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %180 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %179, i32 0, i32 9
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, 26112
  br i1 %184, label %220, label %185

185:                                              ; preds = %178
  %186 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %187 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %186, i32 0, i32 9
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, 26116
  br i1 %191, label %220, label %192

192:                                              ; preds = %185
  %193 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %194 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %193, i32 0, i32 9
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 26117
  br i1 %198, label %220, label %199

199:                                              ; preds = %192
  %200 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %201 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %200, i32 0, i32 9
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, 26128
  br i1 %205, label %220, label %206

206:                                              ; preds = %199, %171
  %207 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %208 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %207, i32 0, i32 9
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %211, 131
  br i1 %212, label %213, label %221

213:                                              ; preds = %206
  %214 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %215 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %214, i32 0, i32 9
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %218, 26128
  br i1 %219, label %220, label %221

220:                                              ; preds = %213, %199, %192, %185, %178
  store i32 1, i32* %15, align 4
  br label %221

221:                                              ; preds = %220, %213, %206
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  %222 = load i32, i32* @SI_PFP_UCODE_SIZE, align 4
  %223 = mul nsw i32 %222, 4
  %224 = sext i32 %223 to i64
  store i64 %224, i64* %5, align 8
  %225 = load i32, i32* @SI_PM4_UCODE_SIZE, align 4
  %226 = mul nsw i32 %225, 4
  %227 = sext i32 %226 to i64
  store i64 %227, i64* %6, align 8
  %228 = load i32, i32* @SI_CE_UCODE_SIZE, align 4
  %229 = mul nsw i32 %228, 4
  %230 = sext i32 %229 to i64
  store i64 %230, i64* %7, align 8
  %231 = load i32, i32* @SI_RLC_UCODE_SIZE, align 4
  %232 = mul nsw i32 %231, 4
  %233 = sext i32 %232 to i64
  store i64 %233, i64* %8, align 8
  %234 = load i32, i32* @OLAND_MC_UCODE_SIZE, align 4
  %235 = mul nsw i32 %234, 4
  %236 = sext i32 %235 to i64
  store i64 %236, i64* %11, align 8
  store i64 %236, i64* %9, align 8
  %237 = load i32, i32* @OLAND_SMC_UCODE_SIZE, align 4
  %238 = call i64 @ALIGN(i32 %237, i32 4)
  store i64 %238, i64* %10, align 8
  br label %325

239:                                              ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  %240 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %241 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %240, i32 0, i32 9
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = icmp eq i32 %244, 129
  br i1 %245, label %246, label %253

246:                                              ; preds = %239
  %247 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %248 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %247, i32 0, i32 9
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = icmp eq i32 %251, 26208
  br i1 %252, label %288, label %253

253:                                              ; preds = %246, %239
  %254 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %255 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %254, i32 0, i32 9
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = icmp eq i32 %258, 131
  br i1 %259, label %260, label %289

260:                                              ; preds = %253
  %261 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %262 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %261, i32 0, i32 9
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = icmp eq i32 %265, 26208
  br i1 %266, label %288, label %267

267:                                              ; preds = %260
  %268 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %269 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %268, i32 0, i32 9
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = icmp eq i32 %272, 26211
  br i1 %273, label %288, label %274

274:                                              ; preds = %267
  %275 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %276 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %275, i32 0, i32 9
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = icmp eq i32 %279, 26213
  br i1 %280, label %288, label %281

281:                                              ; preds = %274
  %282 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %283 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %282, i32 0, i32 9
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = icmp eq i32 %286, 26215
  br i1 %287, label %288, label %289

288:                                              ; preds = %281, %274, %267, %260, %246
  store i32 1, i32* %15, align 4
  br label %305

289:                                              ; preds = %281, %253
  %290 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %291 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %290, i32 0, i32 9
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = icmp eq i32 %294, 195
  br i1 %295, label %296, label %304

296:                                              ; preds = %289
  %297 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %298 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %297, i32 0, i32 9
  %299 = load %struct.TYPE_5__*, %struct.TYPE_5__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = icmp eq i32 %301, 26213
  br i1 %302, label %303, label %304

303:                                              ; preds = %296
  store i32 1, i32* %17, align 4
  br label %304

304:                                              ; preds = %303, %296, %289
  br label %305

305:                                              ; preds = %304, %288
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** %4, align 8
  %306 = load i32, i32* @SI_PFP_UCODE_SIZE, align 4
  %307 = mul nsw i32 %306, 4
  %308 = sext i32 %307 to i64
  store i64 %308, i64* %5, align 8
  %309 = load i32, i32* @SI_PM4_UCODE_SIZE, align 4
  %310 = mul nsw i32 %309, 4
  %311 = sext i32 %310 to i64
  store i64 %311, i64* %6, align 8
  %312 = load i32, i32* @SI_CE_UCODE_SIZE, align 4
  %313 = mul nsw i32 %312, 4
  %314 = sext i32 %313 to i64
  store i64 %314, i64* %7, align 8
  %315 = load i32, i32* @SI_RLC_UCODE_SIZE, align 4
  %316 = mul nsw i32 %315, 4
  %317 = sext i32 %316 to i64
  store i64 %317, i64* %8, align 8
  %318 = load i32, i32* @OLAND_MC_UCODE_SIZE, align 4
  %319 = mul nsw i32 %318, 4
  %320 = sext i32 %319 to i64
  store i64 %320, i64* %11, align 8
  store i64 %320, i64* %9, align 8
  %321 = load i32, i32* @HAINAN_SMC_UCODE_SIZE, align 4
  %322 = call i64 @ALIGN(i32 %321, i32 4)
  store i64 %322, i64* %10, align 8
  br label %325

323:                                              ; preds = %1
  %324 = call i32 (...) @BUG()
  br label %325

325:                                              ; preds = %323, %305, %221, %150, %65, %22
  %326 = load i32, i32* @MC_SEQ_MISC0, align 4
  %327 = call i32 @RREG32(i32 %326)
  %328 = and i32 %327, -16777216
  %329 = lshr i32 %328, 24
  %330 = icmp eq i32 %329, 88
  br i1 %330, label %331, label %332

331:                                              ; preds = %325
  store i32 1, i32* %16, align 4
  br label %332

332:                                              ; preds = %331, %325
  %333 = load i8*, i8** %4, align 8
  %334 = call i32 (i8*, i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* %333)
  %335 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %336 = load i8*, i8** %4, align 8
  %337 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %335, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* %336)
  %338 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %339 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %338, i32 0, i32 7
  %340 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %341 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %342 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %341, i32 0, i32 8
  %343 = load i32, i32* %342, align 8
  %344 = call i32 @request_firmware(%struct.TYPE_6__** %339, i8* %340, i32 %343)
  store i32 %344, i32* %13, align 4
  %345 = load i32, i32* %13, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %380

347:                                              ; preds = %332
  %348 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %349 = load i8*, i8** %3, align 8
  %350 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %348, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* %349)
  %351 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %352 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %351, i32 0, i32 7
  %353 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %354 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %355 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %354, i32 0, i32 8
  %356 = load i32, i32* %355, align 8
  %357 = call i32 @request_firmware(%struct.TYPE_6__** %352, i8* %353, i32 %356)
  store i32 %357, i32* %13, align 4
  %358 = load i32, i32* %13, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %347
  br label %772

361:                                              ; preds = %347
  %362 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %363 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %362, i32 0, i32 7
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = load i64, i64* %5, align 8
  %368 = icmp ne i64 %366, %367
  br i1 %368, label %369, label %379

369:                                              ; preds = %361
  %370 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %371 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %370, i32 0, i32 7
  %372 = load %struct.TYPE_6__*, %struct.TYPE_6__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %376 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i64 %374, i8* %375)
  %377 = load i32, i32* @EINVAL, align 4
  %378 = sub nsw i32 0, %377
  store i32 %378, i32* %13, align 4
  br label %772

379:                                              ; preds = %361
  br label %394

380:                                              ; preds = %332
  %381 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %382 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %381, i32 0, i32 7
  %383 = load %struct.TYPE_6__*, %struct.TYPE_6__** %382, align 8
  %384 = call i32 @radeon_ucode_validate(%struct.TYPE_6__* %383)
  store i32 %384, i32* %13, align 4
  %385 = load i32, i32* %13, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %390

387:                                              ; preds = %380
  %388 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %389 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0), i8* %388)
  br label %772

390:                                              ; preds = %380
  %391 = load i32, i32* %14, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %14, align 4
  br label %393

393:                                              ; preds = %390
  br label %394

394:                                              ; preds = %393, %379
  %395 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %396 = load i8*, i8** %4, align 8
  %397 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %395, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* %396)
  %398 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %399 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %398, i32 0, i32 6
  %400 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %401 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %402 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %401, i32 0, i32 8
  %403 = load i32, i32* %402, align 8
  %404 = call i32 @request_firmware(%struct.TYPE_6__** %399, i8* %400, i32 %403)
  store i32 %404, i32* %13, align 4
  %405 = load i32, i32* %13, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %440

407:                                              ; preds = %394
  %408 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %409 = load i8*, i8** %3, align 8
  %410 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %408, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* %409)
  %411 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %412 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %411, i32 0, i32 6
  %413 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %414 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %415 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %414, i32 0, i32 8
  %416 = load i32, i32* %415, align 8
  %417 = call i32 @request_firmware(%struct.TYPE_6__** %412, i8* %413, i32 %416)
  store i32 %417, i32* %13, align 4
  %418 = load i32, i32* %13, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %421

420:                                              ; preds = %407
  br label %772

421:                                              ; preds = %407
  %422 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %423 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %422, i32 0, i32 6
  %424 = load %struct.TYPE_6__*, %struct.TYPE_6__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %424, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  %427 = load i64, i64* %6, align 8
  %428 = icmp ne i64 %426, %427
  br i1 %428, label %429, label %439

429:                                              ; preds = %421
  %430 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %431 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %430, i32 0, i32 6
  %432 = load %struct.TYPE_6__*, %struct.TYPE_6__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %432, i32 0, i32 0
  %434 = load i64, i64* %433, align 8
  %435 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %436 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i64 %434, i8* %435)
  %437 = load i32, i32* @EINVAL, align 4
  %438 = sub nsw i32 0, %437
  store i32 %438, i32* %13, align 4
  br label %439

439:                                              ; preds = %429, %421
  br label %454

440:                                              ; preds = %394
  %441 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %442 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %441, i32 0, i32 6
  %443 = load %struct.TYPE_6__*, %struct.TYPE_6__** %442, align 8
  %444 = call i32 @radeon_ucode_validate(%struct.TYPE_6__* %443)
  store i32 %444, i32* %13, align 4
  %445 = load i32, i32* %13, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %450

447:                                              ; preds = %440
  %448 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %449 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0), i8* %448)
  br label %772

450:                                              ; preds = %440
  %451 = load i32, i32* %14, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %14, align 4
  br label %453

453:                                              ; preds = %450
  br label %454

454:                                              ; preds = %453, %439
  %455 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %456 = load i8*, i8** %4, align 8
  %457 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %455, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* %456)
  %458 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %459 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %458, i32 0, i32 5
  %460 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %461 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %462 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %461, i32 0, i32 8
  %463 = load i32, i32* %462, align 8
  %464 = call i32 @request_firmware(%struct.TYPE_6__** %459, i8* %460, i32 %463)
  store i32 %464, i32* %13, align 4
  %465 = load i32, i32* %13, align 4
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %500

467:                                              ; preds = %454
  %468 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %469 = load i8*, i8** %3, align 8
  %470 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %468, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* %469)
  %471 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %472 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %471, i32 0, i32 5
  %473 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %474 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %475 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %474, i32 0, i32 8
  %476 = load i32, i32* %475, align 8
  %477 = call i32 @request_firmware(%struct.TYPE_6__** %472, i8* %473, i32 %476)
  store i32 %477, i32* %13, align 4
  %478 = load i32, i32* %13, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %481

480:                                              ; preds = %467
  br label %772

481:                                              ; preds = %467
  %482 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %483 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %482, i32 0, i32 5
  %484 = load %struct.TYPE_6__*, %struct.TYPE_6__** %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %484, i32 0, i32 0
  %486 = load i64, i64* %485, align 8
  %487 = load i64, i64* %7, align 8
  %488 = icmp ne i64 %486, %487
  br i1 %488, label %489, label %499

489:                                              ; preds = %481
  %490 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %491 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %490, i32 0, i32 5
  %492 = load %struct.TYPE_6__*, %struct.TYPE_6__** %491, align 8
  %493 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %492, i32 0, i32 0
  %494 = load i64, i64* %493, align 8
  %495 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %496 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i64 %494, i8* %495)
  %497 = load i32, i32* @EINVAL, align 4
  %498 = sub nsw i32 0, %497
  store i32 %498, i32* %13, align 4
  br label %499

499:                                              ; preds = %489, %481
  br label %514

500:                                              ; preds = %454
  %501 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %502 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %501, i32 0, i32 5
  %503 = load %struct.TYPE_6__*, %struct.TYPE_6__** %502, align 8
  %504 = call i32 @radeon_ucode_validate(%struct.TYPE_6__* %503)
  store i32 %504, i32* %13, align 4
  %505 = load i32, i32* %13, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %510

507:                                              ; preds = %500
  %508 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %509 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0), i8* %508)
  br label %772

510:                                              ; preds = %500
  %511 = load i32, i32* %14, align 4
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* %14, align 4
  br label %513

513:                                              ; preds = %510
  br label %514

514:                                              ; preds = %513, %499
  %515 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %516 = load i8*, i8** %4, align 8
  %517 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %515, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8* %516)
  %518 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %519 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %518, i32 0, i32 4
  %520 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %521 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %522 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %521, i32 0, i32 8
  %523 = load i32, i32* %522, align 8
  %524 = call i32 @request_firmware(%struct.TYPE_6__** %519, i8* %520, i32 %523)
  store i32 %524, i32* %13, align 4
  %525 = load i32, i32* %13, align 4
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %527, label %560

527:                                              ; preds = %514
  %528 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %529 = load i8*, i8** %3, align 8
  %530 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %528, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8* %529)
  %531 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %532 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %531, i32 0, i32 4
  %533 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %534 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %535 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %534, i32 0, i32 8
  %536 = load i32, i32* %535, align 8
  %537 = call i32 @request_firmware(%struct.TYPE_6__** %532, i8* %533, i32 %536)
  store i32 %537, i32* %13, align 4
  %538 = load i32, i32* %13, align 4
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %541

540:                                              ; preds = %527
  br label %772

541:                                              ; preds = %527
  %542 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %543 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %542, i32 0, i32 4
  %544 = load %struct.TYPE_6__*, %struct.TYPE_6__** %543, align 8
  %545 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %544, i32 0, i32 0
  %546 = load i64, i64* %545, align 8
  %547 = load i64, i64* %8, align 8
  %548 = icmp ne i64 %546, %547
  br i1 %548, label %549, label %559

549:                                              ; preds = %541
  %550 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %551 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %550, i32 0, i32 4
  %552 = load %struct.TYPE_6__*, %struct.TYPE_6__** %551, align 8
  %553 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %552, i32 0, i32 0
  %554 = load i64, i64* %553, align 8
  %555 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %556 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0), i64 %554, i8* %555)
  %557 = load i32, i32* @EINVAL, align 4
  %558 = sub nsw i32 0, %557
  store i32 %558, i32* %13, align 4
  br label %559

559:                                              ; preds = %549, %541
  br label %574

560:                                              ; preds = %514
  %561 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %562 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %561, i32 0, i32 4
  %563 = load %struct.TYPE_6__*, %struct.TYPE_6__** %562, align 8
  %564 = call i32 @radeon_ucode_validate(%struct.TYPE_6__* %563)
  store i32 %564, i32* %13, align 4
  %565 = load i32, i32* %13, align 4
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %570

567:                                              ; preds = %560
  %568 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %569 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0), i8* %568)
  br label %772

570:                                              ; preds = %560
  %571 = load i32, i32* %14, align 4
  %572 = add nsw i32 %571, 1
  store i32 %572, i32* %14, align 4
  br label %573

573:                                              ; preds = %570
  br label %574

574:                                              ; preds = %573, %559
  %575 = load i32, i32* %16, align 4
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %577, label %580

577:                                              ; preds = %574
  %578 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %579 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %578, i32 30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0))
  br label %584

580:                                              ; preds = %574
  %581 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %582 = load i8*, i8** %4, align 8
  %583 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %581, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i8* %582)
  br label %584

584:                                              ; preds = %580, %577
  %585 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %586 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %585, i32 0, i32 3
  %587 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %588 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %589 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %588, i32 0, i32 8
  %590 = load i32, i32* %589, align 8
  %591 = call i32 @request_firmware(%struct.TYPE_6__** %586, i8* %587, i32 %590)
  store i32 %591, i32* %13, align 4
  %592 = load i32, i32* %13, align 4
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %594, label %656

594:                                              ; preds = %584
  %595 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %596 = load i8*, i8** %3, align 8
  %597 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %595, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i8* %596)
  %598 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %599 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %598, i32 0, i32 3
  %600 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %601 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %602 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %601, i32 0, i32 8
  %603 = load i32, i32* %602, align 8
  %604 = call i32 @request_firmware(%struct.TYPE_6__** %599, i8* %600, i32 %603)
  store i32 %604, i32* %13, align 4
  %605 = load i32, i32* %13, align 4
  %606 = icmp ne i32 %605, 0
  br i1 %606, label %607, label %622

607:                                              ; preds = %594
  %608 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %609 = load i8*, i8** %3, align 8
  %610 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %608, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i8* %609)
  %611 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %612 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %611, i32 0, i32 3
  %613 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %614 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %615 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %614, i32 0, i32 8
  %616 = load i32, i32* %615, align 8
  %617 = call i32 @request_firmware(%struct.TYPE_6__** %612, i8* %613, i32 %616)
  store i32 %617, i32* %13, align 4
  %618 = load i32, i32* %13, align 4
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %620, label %621

620:                                              ; preds = %607
  br label %772

621:                                              ; preds = %607
  br label %622

622:                                              ; preds = %621, %594
  %623 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %624 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %623, i32 0, i32 3
  %625 = load %struct.TYPE_6__*, %struct.TYPE_6__** %624, align 8
  %626 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %625, i32 0, i32 0
  %627 = load i64, i64* %626, align 8
  %628 = load i64, i64* %9, align 8
  %629 = icmp ne i64 %627, %628
  br i1 %629, label %630, label %648

630:                                              ; preds = %622
  %631 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %632 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %631, i32 0, i32 3
  %633 = load %struct.TYPE_6__*, %struct.TYPE_6__** %632, align 8
  %634 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %633, i32 0, i32 0
  %635 = load i64, i64* %634, align 8
  %636 = load i64, i64* %11, align 8
  %637 = icmp ne i64 %635, %636
  br i1 %637, label %638, label %648

638:                                              ; preds = %630
  %639 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %640 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %639, i32 0, i32 3
  %641 = load %struct.TYPE_6__*, %struct.TYPE_6__** %640, align 8
  %642 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %641, i32 0, i32 0
  %643 = load i64, i64* %642, align 8
  %644 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %645 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0), i64 %643, i8* %644)
  %646 = load i32, i32* @EINVAL, align 4
  %647 = sub nsw i32 0, %646
  store i32 %647, i32* %13, align 4
  br label %648

648:                                              ; preds = %638, %630, %622
  %649 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %650 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %651 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %650, i32 0, i32 3
  %652 = load %struct.TYPE_6__*, %struct.TYPE_6__** %651, align 8
  %653 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %652, i32 0, i32 0
  %654 = load i64, i64* %653, align 8
  %655 = call i32 (i8*, i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i8* %649, i64 %654)
  br label %670

656:                                              ; preds = %584
  %657 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %658 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %657, i32 0, i32 3
  %659 = load %struct.TYPE_6__*, %struct.TYPE_6__** %658, align 8
  %660 = call i32 @radeon_ucode_validate(%struct.TYPE_6__* %659)
  store i32 %660, i32* %13, align 4
  %661 = load i32, i32* %13, align 4
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %663, label %666

663:                                              ; preds = %656
  %664 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %665 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0), i8* %664)
  br label %772

666:                                              ; preds = %656
  %667 = load i32, i32* %14, align 4
  %668 = add nsw i32 %667, 1
  store i32 %668, i32* %14, align 4
  br label %669

669:                                              ; preds = %666
  br label %670

670:                                              ; preds = %669, %648
  %671 = load i32, i32* %17, align 4
  %672 = icmp ne i32 %671, 0
  br i1 %672, label %673, label %676

673:                                              ; preds = %670
  %674 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %675 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %674, i32 30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0))
  br label %688

676:                                              ; preds = %670
  %677 = load i32, i32* %15, align 4
  %678 = icmp ne i32 %677, 0
  br i1 %678, label %679, label %683

679:                                              ; preds = %676
  %680 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %681 = load i8*, i8** %4, align 8
  %682 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %680, i32 30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i8* %681)
  br label %687

683:                                              ; preds = %676
  %684 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %685 = load i8*, i8** %4, align 8
  %686 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %684, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i8* %685)
  br label %687

687:                                              ; preds = %683, %679
  br label %688

688:                                              ; preds = %687, %673
  %689 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %690 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %689, i32 0, i32 2
  %691 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %692 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %693 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %692, i32 0, i32 8
  %694 = load i32, i32* %693, align 8
  %695 = call i32 @request_firmware(%struct.TYPE_6__** %690, i8* %691, i32 %694)
  store i32 %695, i32* %13, align 4
  %696 = load i32, i32* %13, align 4
  %697 = icmp ne i32 %696, 0
  br i1 %697, label %698, label %740

698:                                              ; preds = %688
  %699 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %700 = load i8*, i8** %3, align 8
  %701 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %699, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i8* %700)
  %702 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %703 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %702, i32 0, i32 2
  %704 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %705 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %706 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %705, i32 0, i32 8
  %707 = load i32, i32* %706, align 8
  %708 = call i32 @request_firmware(%struct.TYPE_6__** %703, i8* %704, i32 %707)
  store i32 %708, i32* %13, align 4
  %709 = load i32, i32* %13, align 4
  %710 = icmp ne i32 %709, 0
  br i1 %710, label %711, label %720

711:                                              ; preds = %698
  %712 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %713 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0), i8* %712)
  %714 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %715 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %714, i32 0, i32 2
  %716 = load %struct.TYPE_6__*, %struct.TYPE_6__** %715, align 8
  %717 = call i32 @release_firmware(%struct.TYPE_6__* %716)
  %718 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %719 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %718, i32 0, i32 2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %719, align 8
  store i32 0, i32* %13, align 4
  br label %739

720:                                              ; preds = %698
  %721 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %722 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %721, i32 0, i32 2
  %723 = load %struct.TYPE_6__*, %struct.TYPE_6__** %722, align 8
  %724 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %723, i32 0, i32 0
  %725 = load i64, i64* %724, align 8
  %726 = load i64, i64* %10, align 8
  %727 = icmp ne i64 %725, %726
  br i1 %727, label %728, label %738

728:                                              ; preds = %720
  %729 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %730 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %729, i32 0, i32 2
  %731 = load %struct.TYPE_6__*, %struct.TYPE_6__** %730, align 8
  %732 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %731, i32 0, i32 0
  %733 = load i64, i64* %732, align 8
  %734 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %735 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.28, i64 0, i64 0), i64 %733, i8* %734)
  %736 = load i32, i32* @EINVAL, align 4
  %737 = sub nsw i32 0, %736
  store i32 %737, i32* %13, align 4
  br label %738

738:                                              ; preds = %728, %720
  br label %739

739:                                              ; preds = %738, %711
  br label %754

740:                                              ; preds = %688
  %741 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %742 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %741, i32 0, i32 2
  %743 = load %struct.TYPE_6__*, %struct.TYPE_6__** %742, align 8
  %744 = call i32 @radeon_ucode_validate(%struct.TYPE_6__* %743)
  store i32 %744, i32* %13, align 4
  %745 = load i32, i32* %13, align 4
  %746 = icmp ne i32 %745, 0
  br i1 %746, label %747, label %750

747:                                              ; preds = %740
  %748 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %749 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0), i8* %748)
  br label %772

750:                                              ; preds = %740
  %751 = load i32, i32* %14, align 4
  %752 = add nsw i32 %751, 1
  store i32 %752, i32* %14, align 4
  br label %753

753:                                              ; preds = %750
  br label %754

754:                                              ; preds = %753, %739
  %755 = load i32, i32* %14, align 4
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %757, label %760

757:                                              ; preds = %754
  %758 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %759 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %758, i32 0, i32 1
  store i32 0, i32* %759, align 4
  br label %771

760:                                              ; preds = %754
  %761 = load i32, i32* %14, align 4
  %762 = icmp slt i32 %761, 6
  br i1 %762, label %763, label %767

763:                                              ; preds = %760
  %764 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i64 0, i64 0))
  %765 = load i32, i32* @EINVAL, align 4
  %766 = sub nsw i32 0, %765
  store i32 %766, i32* %13, align 4
  br label %770

767:                                              ; preds = %760
  %768 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %769 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %768, i32 0, i32 1
  store i32 1, i32* %769, align 4
  br label %770

770:                                              ; preds = %767, %763
  br label %771

771:                                              ; preds = %770, %757
  br label %772

772:                                              ; preds = %771, %747, %663, %620, %567, %540, %507, %480, %447, %420, %387, %369, %360
  %773 = load i32, i32* %13, align 4
  %774 = icmp ne i32 %773, 0
  br i1 %774, label %775, label %820

775:                                              ; preds = %772
  %776 = load i32, i32* %13, align 4
  %777 = load i32, i32* @EINVAL, align 4
  %778 = sub nsw i32 0, %777
  %779 = icmp ne i32 %776, %778
  br i1 %779, label %780, label %783

780:                                              ; preds = %775
  %781 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %782 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.30, i64 0, i64 0), i8* %781)
  br label %783

783:                                              ; preds = %780, %775
  %784 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %785 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %784, i32 0, i32 7
  %786 = load %struct.TYPE_6__*, %struct.TYPE_6__** %785, align 8
  %787 = call i32 @release_firmware(%struct.TYPE_6__* %786)
  %788 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %789 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %788, i32 0, i32 7
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %789, align 8
  %790 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %791 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %790, i32 0, i32 6
  %792 = load %struct.TYPE_6__*, %struct.TYPE_6__** %791, align 8
  %793 = call i32 @release_firmware(%struct.TYPE_6__* %792)
  %794 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %795 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %794, i32 0, i32 6
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %795, align 8
  %796 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %797 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %796, i32 0, i32 5
  %798 = load %struct.TYPE_6__*, %struct.TYPE_6__** %797, align 8
  %799 = call i32 @release_firmware(%struct.TYPE_6__* %798)
  %800 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %801 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %800, i32 0, i32 5
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %801, align 8
  %802 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %803 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %802, i32 0, i32 4
  %804 = load %struct.TYPE_6__*, %struct.TYPE_6__** %803, align 8
  %805 = call i32 @release_firmware(%struct.TYPE_6__* %804)
  %806 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %807 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %806, i32 0, i32 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %807, align 8
  %808 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %809 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %808, i32 0, i32 3
  %810 = load %struct.TYPE_6__*, %struct.TYPE_6__** %809, align 8
  %811 = call i32 @release_firmware(%struct.TYPE_6__* %810)
  %812 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %813 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %812, i32 0, i32 3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %813, align 8
  %814 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %815 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %814, i32 0, i32 2
  %816 = load %struct.TYPE_6__*, %struct.TYPE_6__** %815, align 8
  %817 = call i32 @release_firmware(%struct.TYPE_6__* %816)
  %818 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %819 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %818, i32 0, i32 2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %819, align 8
  br label %820

820:                                              ; preds = %783, %772
  %821 = load i32, i32* %13, align 4
  ret i32 %821
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

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
