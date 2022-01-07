; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_init_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_init_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_15__, i32, %struct.TYPE_14__, %struct.TYPE_10__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i32, %struct.amdgpu_firmware_info* }
%struct.amdgpu_firmware_info = type { i64, %struct.TYPE_16__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.common_firmware_header = type { i32 }
%struct.gfx_firmware_header_v1_0 = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.rlc_firmware_header_v2_0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"navi10\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"navi14\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"_wks\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"navi12\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"amdgpu/%s_pfp%s.bin\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"amdgpu/%s_me%s.bin\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"amdgpu/%s_ce%s.bin\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"amdgpu/%s_rlc.bin\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"amdgpu/%s_mec%s.bin\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"amdgpu/%s_mec2%s.bin\00", align 1
@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_CP_PFP = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_UCODE_ID_CP_ME = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_CP_CE = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_RLC_G = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_RLC_RESTORE_LIST_CNTL = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_RLC_RESTORE_LIST_GPM_MEM = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_RLC_RESTORE_LIST_SRM_MEM = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_CP_MEC1 = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_CP_MEC1_JT = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_CP_MEC2 = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_CP_MEC2_JT = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [37 x i8] c"gfx10: Failed to load firmware \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v10_0_init_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_init_microcode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [40 x i8], align 16
  %5 = alloca [10 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_firmware_info*, align 8
  %8 = alloca %struct.common_firmware_header*, align 8
  %9 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %10 = alloca %struct.rlc_firmware_header_v2_0*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store %struct.amdgpu_firmware_info* null, %struct.amdgpu_firmware_info** %7, align 8
  store %struct.common_firmware_header* null, %struct.common_firmware_header** %8, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %17 = call i32 @memset(i8* %16, i32 0, i32 10)
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %41 [
    i32 130, label %21
    i32 128, label %22
    i32 129, label %40
  ]

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %43

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 29504
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %29, %22
  %37 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %38 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %37, i32 10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %29
  br label %43

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %43

41:                                               ; preds = %1
  %42 = call i32 (...) @BUG()
  br label %43

43:                                               ; preds = %41, %40, %39, %21
  %44 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %47 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %44, i32 40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %45, i8* %46)
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 17
  %51 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @request_firmware(%struct.TYPE_16__** %50, i8* %51, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  br label %956

59:                                               ; preds = %43
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 17
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %62, align 8
  %64 = call i32 @amdgpu_ucode_validate(%struct.TYPE_16__* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %956

68:                                               ; preds = %59
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 17
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %75, %struct.gfx_firmware_header_v1_0** %9, align 8
  %76 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %77 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le32_to_cpu(i32 %79)
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %82 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %85 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le32_to_cpu(i32 %86)
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 4
  %91 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %92 = load i8*, i8** %3, align 8
  %93 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %94 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %91, i32 40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %92, i8* %93)
  %95 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %96 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 16
  %98 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %99 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %100 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @request_firmware(%struct.TYPE_16__** %97, i8* %98, i32 %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %68
  br label %956

106:                                              ; preds = %68
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %108 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 16
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = call i32 @amdgpu_ucode_validate(%struct.TYPE_16__* %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %956

115:                                              ; preds = %106
  %116 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %117 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 16
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %122, %struct.gfx_firmware_header_v1_0** %9, align 8
  %123 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %124 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @le32_to_cpu(i32 %126)
  %128 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %129 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 2
  store i32 %127, i32* %130, align 8
  %131 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %132 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @le32_to_cpu(i32 %133)
  %135 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %136 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 3
  store i32 %134, i32* %137, align 4
  %138 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %139 = load i8*, i8** %3, align 8
  %140 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %141 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %138, i32 40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %139, i8* %140)
  %142 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %143 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 15
  %145 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %146 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %147 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @request_firmware(%struct.TYPE_16__** %144, i8* %145, i32 %148)
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %115
  br label %956

153:                                              ; preds = %115
  %154 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %155 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 15
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %156, align 8
  %158 = call i32 @amdgpu_ucode_validate(%struct.TYPE_16__* %157)
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  br label %956

162:                                              ; preds = %153
  %163 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %164 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 15
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %169, %struct.gfx_firmware_header_v1_0** %9, align 8
  %170 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %171 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @le32_to_cpu(i32 %173)
  %175 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %176 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 4
  store i32 %174, i32* %177, align 8
  %178 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %179 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @le32_to_cpu(i32 %180)
  %182 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %183 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 5
  store i32 %181, i32* %184, align 4
  %185 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %186 = load i8*, i8** %3, align 8
  %187 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %185, i32 40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %186)
  %188 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %189 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 14
  %191 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %192 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %193 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @request_firmware(%struct.TYPE_16__** %190, i8* %191, i32 %194)
  store i32 %195, i32* %6, align 4
  %196 = load i32, i32* %6, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %162
  br label %956

199:                                              ; preds = %162
  %200 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %201 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 14
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %202, align 8
  %204 = call i32 @amdgpu_ucode_validate(%struct.TYPE_16__* %203)
  store i32 %204, i32* %6, align 4
  %205 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %206 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 14
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = inttoptr i64 %210 to %struct.rlc_firmware_header_v2_0*
  store %struct.rlc_firmware_header_v2_0* %211, %struct.rlc_firmware_header_v2_0** %10, align 8
  %212 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %10, align 8
  %213 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %212, i32 0, i32 12
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @le16_to_cpu(i32 %215)
  store i32 %216, i32* %13, align 4
  %217 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %10, align 8
  %218 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %217, i32 0, i32 12
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @le16_to_cpu(i32 %220)
  store i32 %221, i32* %14, align 4
  %222 = load i32, i32* %13, align 4
  %223 = icmp eq i32 %222, 2
  br i1 %223, label %224, label %232

224:                                              ; preds = %199
  %225 = load i32, i32* %14, align 4
  %226 = icmp eq i32 %225, 1
  br i1 %226, label %227, label %232

227:                                              ; preds = %224
  %228 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %229 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 18
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  store i32 1, i32* %231, align 8
  br label %232

232:                                              ; preds = %227, %224, %199
  %233 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %10, align 8
  %234 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %233, i32 0, i32 12
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @le32_to_cpu(i32 %236)
  %238 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %239 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 6
  store i32 %237, i32* %240, align 8
  %241 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %10, align 8
  %242 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @le32_to_cpu(i32 %243)
  %245 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %246 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 7
  store i32 %244, i32* %247, align 4
  %248 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %10, align 8
  %249 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @le32_to_cpu(i32 %250)
  %252 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %253 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 18
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 1
  store i32 %251, i32* %255, align 4
  %256 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %10, align 8
  %257 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @le32_to_cpu(i32 %258)
  %260 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %261 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 18
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 2
  store i32 %259, i32* %263, align 8
  %264 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %10, align 8
  %265 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @le32_to_cpu(i32 %266)
  %268 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %269 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 18
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 3
  store i32 %267, i32* %271, align 4
  %272 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %10, align 8
  %273 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @le32_to_cpu(i32 %274)
  %276 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %277 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 18
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 4
  store i32 %275, i32* %279, align 8
  %280 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %10, align 8
  %281 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %280, i32 0, i32 5
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @le32_to_cpu(i32 %282)
  %284 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %285 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 18
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 5
  store i32 %283, i32* %287, align 4
  %288 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %10, align 8
  %289 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %288, i32 0, i32 6
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @le32_to_cpu(i32 %290)
  %292 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %293 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 18
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 6
  store i32 %291, i32* %295, align 8
  %296 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %10, align 8
  %297 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %296, i32 0, i32 7
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @le32_to_cpu(i32 %298)
  %300 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %301 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 18
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 7
  store i32 %299, i32* %303, align 4
  %304 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %10, align 8
  %305 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %304, i32 0, i32 8
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @le32_to_cpu(i32 %306)
  %308 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %309 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %309, i32 0, i32 18
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 8
  store i32 %307, i32* %311, align 8
  %312 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %10, align 8
  %313 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %312, i32 0, i32 9
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @le32_to_cpu(i32 %314)
  %316 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %317 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 18
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 9
  store i32 %315, i32* %319, align 4
  %320 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %321 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %321, i32 0, i32 18
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 8
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %326 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %326, i32 0, i32 18
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i32 0, i32 9
  %329 = load i32, i32* %328, align 4
  %330 = add nsw i32 %324, %329
  %331 = load i32, i32* @GFP_KERNEL, align 4
  %332 = call i32* @kmalloc(i32 %330, i32 %331)
  %333 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %334 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %334, i32 0, i32 18
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 10
  store i32* %332, i32** %336, align 8
  %337 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %338 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %338, i32 0, i32 18
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 10
  %341 = load i32*, i32** %340, align 8
  %342 = icmp ne i32* %341, null
  br i1 %342, label %346, label %343

343:                                              ; preds = %232
  %344 = load i32, i32* @ENOMEM, align 4
  %345 = sub nsw i32 0, %344
  store i32 %345, i32* %6, align 4
  br label %956

346:                                              ; preds = %232
  %347 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %10, align 8
  %348 = ptrtoint %struct.rlc_firmware_header_v2_0* %347 to i64
  %349 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %10, align 8
  %350 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %349, i32 0, i32 10
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @le32_to_cpu(i32 %351)
  %353 = sext i32 %352 to i64
  %354 = add i64 %348, %353
  %355 = inttoptr i64 %354 to i32*
  store i32* %355, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %356

356:                                              ; preds = %378, %346
  %357 = load i32, i32* %12, align 4
  %358 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %10, align 8
  %359 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %358, i32 0, i32 8
  %360 = load i32, i32* %359, align 4
  %361 = lshr i32 %360, 2
  %362 = icmp ult i32 %357, %361
  br i1 %362, label %363, label %381

363:                                              ; preds = %356
  %364 = load i32*, i32** %11, align 8
  %365 = load i32, i32* %12, align 4
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %364, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = call i32 @le32_to_cpu(i32 %368)
  %370 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %371 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %371, i32 0, i32 18
  %373 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %372, i32 0, i32 10
  %374 = load i32*, i32** %373, align 8
  %375 = load i32, i32* %12, align 4
  %376 = zext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  store i32 %369, i32* %377, align 4
  br label %378

378:                                              ; preds = %363
  %379 = load i32, i32* %12, align 4
  %380 = add i32 %379, 1
  store i32 %380, i32* %12, align 4
  br label %356

381:                                              ; preds = %356
  %382 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %383 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %383, i32 0, i32 18
  %385 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %384, i32 0, i32 10
  %386 = load i32*, i32** %385, align 8
  %387 = load i32, i32* %12, align 4
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %386, i64 %388
  %390 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %391 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %391, i32 0, i32 18
  %393 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %392, i32 0, i32 11
  store i32* %389, i32** %393, align 8
  %394 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %10, align 8
  %395 = ptrtoint %struct.rlc_firmware_header_v2_0* %394 to i64
  %396 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %10, align 8
  %397 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %396, i32 0, i32 11
  %398 = load i32, i32* %397, align 4
  %399 = call i32 @le32_to_cpu(i32 %398)
  %400 = sext i32 %399 to i64
  %401 = add i64 %395, %400
  %402 = inttoptr i64 %401 to i32*
  store i32* %402, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %403

403:                                              ; preds = %425, %381
  %404 = load i32, i32* %12, align 4
  %405 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %10, align 8
  %406 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %405, i32 0, i32 9
  %407 = load i32, i32* %406, align 4
  %408 = lshr i32 %407, 2
  %409 = icmp ult i32 %404, %408
  br i1 %409, label %410, label %428

410:                                              ; preds = %403
  %411 = load i32*, i32** %11, align 8
  %412 = load i32, i32* %12, align 4
  %413 = zext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %411, i64 %413
  %415 = load i32, i32* %414, align 4
  %416 = call i32 @le32_to_cpu(i32 %415)
  %417 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %418 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %417, i32 0, i32 1
  %419 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %418, i32 0, i32 18
  %420 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %419, i32 0, i32 11
  %421 = load i32*, i32** %420, align 8
  %422 = load i32, i32* %12, align 4
  %423 = zext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %421, i64 %423
  store i32 %416, i32* %424, align 4
  br label %425

425:                                              ; preds = %410
  %426 = load i32, i32* %12, align 4
  %427 = add i32 %426, 1
  store i32 %427, i32* %12, align 4
  br label %403

428:                                              ; preds = %403
  %429 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %430 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %429, i32 0, i32 1
  %431 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %430, i32 0, i32 18
  %432 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %438

435:                                              ; preds = %428
  %436 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %437 = call i32 @gfx_v10_0_init_rlc_ext_microcode(%struct.amdgpu_device* %436)
  br label %438

438:                                              ; preds = %435, %428
  %439 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %440 = load i8*, i8** %3, align 8
  %441 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %442 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %439, i32 40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %440, i8* %441)
  %443 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %444 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %444, i32 0, i32 13
  %446 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %447 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %448 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %447, i32 0, i32 2
  %449 = load i32, i32* %448, align 8
  %450 = call i32 @request_firmware(%struct.TYPE_16__** %445, i8* %446, i32 %449)
  store i32 %450, i32* %6, align 4
  %451 = load i32, i32* %6, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %454

453:                                              ; preds = %438
  br label %956

454:                                              ; preds = %438
  %455 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %456 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %455, i32 0, i32 1
  %457 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %456, i32 0, i32 13
  %458 = load %struct.TYPE_16__*, %struct.TYPE_16__** %457, align 8
  %459 = call i32 @amdgpu_ucode_validate(%struct.TYPE_16__* %458)
  store i32 %459, i32* %6, align 4
  %460 = load i32, i32* %6, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %463

462:                                              ; preds = %454
  br label %956

463:                                              ; preds = %454
  %464 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %465 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %464, i32 0, i32 1
  %466 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %465, i32 0, i32 13
  %467 = load %struct.TYPE_16__*, %struct.TYPE_16__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %467, i32 0, i32 0
  %469 = load i64, i64* %468, align 8
  %470 = inttoptr i64 %469 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %470, %struct.gfx_firmware_header_v1_0** %9, align 8
  %471 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %472 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %471, i32 0, i32 2
  %473 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 4
  %475 = call i32 @le32_to_cpu(i32 %474)
  %476 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %477 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %476, i32 0, i32 1
  %478 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %477, i32 0, i32 8
  store i32 %475, i32* %478, align 8
  %479 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %480 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 4
  %482 = call i32 @le32_to_cpu(i32 %481)
  %483 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %484 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %483, i32 0, i32 1
  %485 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %484, i32 0, i32 9
  store i32 %482, i32* %485, align 4
  %486 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %487 = load i8*, i8** %3, align 8
  %488 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %489 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %486, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %487, i8* %488)
  %490 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %491 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %490, i32 0, i32 1
  %492 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %491, i32 0, i32 12
  %493 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %494 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %495 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %494, i32 0, i32 2
  %496 = load i32, i32* %495, align 8
  %497 = call i32 @request_firmware(%struct.TYPE_16__** %492, i8* %493, i32 %496)
  store i32 %497, i32* %6, align 4
  %498 = load i32, i32* %6, align 4
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %532, label %500

500:                                              ; preds = %463
  %501 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %502 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %501, i32 0, i32 1
  %503 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %502, i32 0, i32 12
  %504 = load %struct.TYPE_16__*, %struct.TYPE_16__** %503, align 8
  %505 = call i32 @amdgpu_ucode_validate(%struct.TYPE_16__* %504)
  store i32 %505, i32* %6, align 4
  %506 = load i32, i32* %6, align 4
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %509

508:                                              ; preds = %500
  br label %956

509:                                              ; preds = %500
  %510 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %511 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %510, i32 0, i32 1
  %512 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %511, i32 0, i32 12
  %513 = load %struct.TYPE_16__*, %struct.TYPE_16__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %513, i32 0, i32 0
  %515 = load i64, i64* %514, align 8
  %516 = inttoptr i64 %515 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %516, %struct.gfx_firmware_header_v1_0** %9, align 8
  %517 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %518 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %517, i32 0, i32 2
  %519 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 4
  %521 = call i32 @le32_to_cpu(i32 %520)
  %522 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %523 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %522, i32 0, i32 1
  %524 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %523, i32 0, i32 10
  store i32 %521, i32* %524, align 8
  %525 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %526 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 4
  %528 = call i32 @le32_to_cpu(i32 %527)
  %529 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %530 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %529, i32 0, i32 1
  %531 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %530, i32 0, i32 11
  store i32 %528, i32* %531, align 4
  br label %536

532:                                              ; preds = %463
  store i32 0, i32* %6, align 4
  %533 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %534 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %533, i32 0, i32 1
  %535 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %534, i32 0, i32 12
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %535, align 8
  br label %536

536:                                              ; preds = %532, %509
  %537 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %538 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %537, i32 0, i32 3
  %539 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %538, i32 0, i32 0
  %540 = load i64, i64* %539, align 8
  %541 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %542 = icmp eq i64 %540, %541
  br i1 %542, label %543, label %953

543:                                              ; preds = %536
  %544 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %545 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %544, i32 0, i32 3
  %546 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %545, i32 0, i32 2
  %547 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %546, align 8
  %548 = load i64, i64* @AMDGPU_UCODE_ID_CP_PFP, align 8
  %549 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %547, i64 %548
  store %struct.amdgpu_firmware_info* %549, %struct.amdgpu_firmware_info** %7, align 8
  %550 = load i64, i64* @AMDGPU_UCODE_ID_CP_PFP, align 8
  %551 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %552 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %551, i32 0, i32 0
  store i64 %550, i64* %552, align 8
  %553 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %554 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %553, i32 0, i32 1
  %555 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %554, i32 0, i32 17
  %556 = load %struct.TYPE_16__*, %struct.TYPE_16__** %555, align 8
  %557 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %558 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %557, i32 0, i32 1
  store %struct.TYPE_16__* %556, %struct.TYPE_16__** %558, align 8
  %559 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %560 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %559, i32 0, i32 1
  %561 = load %struct.TYPE_16__*, %struct.TYPE_16__** %560, align 8
  %562 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %561, i32 0, i32 0
  %563 = load i64, i64* %562, align 8
  %564 = inttoptr i64 %563 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %564, %struct.common_firmware_header** %8, align 8
  %565 = load %struct.common_firmware_header*, %struct.common_firmware_header** %8, align 8
  %566 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %565, i32 0, i32 0
  %567 = load i32, i32* %566, align 4
  %568 = call i32 @le32_to_cpu(i32 %567)
  %569 = load i32, i32* @PAGE_SIZE, align 4
  %570 = call i64 @ALIGN(i32 %568, i32 %569)
  %571 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %572 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %571, i32 0, i32 3
  %573 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %572, i32 0, i32 1
  %574 = load i32, i32* %573, align 8
  %575 = sext i32 %574 to i64
  %576 = add nsw i64 %575, %570
  %577 = trunc i64 %576 to i32
  store i32 %577, i32* %573, align 8
  %578 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %579 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %578, i32 0, i32 3
  %580 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %579, i32 0, i32 2
  %581 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %580, align 8
  %582 = load i64, i64* @AMDGPU_UCODE_ID_CP_ME, align 8
  %583 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %581, i64 %582
  store %struct.amdgpu_firmware_info* %583, %struct.amdgpu_firmware_info** %7, align 8
  %584 = load i64, i64* @AMDGPU_UCODE_ID_CP_ME, align 8
  %585 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %586 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %585, i32 0, i32 0
  store i64 %584, i64* %586, align 8
  %587 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %588 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %587, i32 0, i32 1
  %589 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %588, i32 0, i32 16
  %590 = load %struct.TYPE_16__*, %struct.TYPE_16__** %589, align 8
  %591 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %592 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %591, i32 0, i32 1
  store %struct.TYPE_16__* %590, %struct.TYPE_16__** %592, align 8
  %593 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %594 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %593, i32 0, i32 1
  %595 = load %struct.TYPE_16__*, %struct.TYPE_16__** %594, align 8
  %596 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %595, i32 0, i32 0
  %597 = load i64, i64* %596, align 8
  %598 = inttoptr i64 %597 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %598, %struct.common_firmware_header** %8, align 8
  %599 = load %struct.common_firmware_header*, %struct.common_firmware_header** %8, align 8
  %600 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %599, i32 0, i32 0
  %601 = load i32, i32* %600, align 4
  %602 = call i32 @le32_to_cpu(i32 %601)
  %603 = load i32, i32* @PAGE_SIZE, align 4
  %604 = call i64 @ALIGN(i32 %602, i32 %603)
  %605 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %606 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %605, i32 0, i32 3
  %607 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %606, i32 0, i32 1
  %608 = load i32, i32* %607, align 8
  %609 = sext i32 %608 to i64
  %610 = add nsw i64 %609, %604
  %611 = trunc i64 %610 to i32
  store i32 %611, i32* %607, align 8
  %612 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %613 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %612, i32 0, i32 3
  %614 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %613, i32 0, i32 2
  %615 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %614, align 8
  %616 = load i64, i64* @AMDGPU_UCODE_ID_CP_CE, align 8
  %617 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %615, i64 %616
  store %struct.amdgpu_firmware_info* %617, %struct.amdgpu_firmware_info** %7, align 8
  %618 = load i64, i64* @AMDGPU_UCODE_ID_CP_CE, align 8
  %619 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %620 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %619, i32 0, i32 0
  store i64 %618, i64* %620, align 8
  %621 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %622 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %621, i32 0, i32 1
  %623 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %622, i32 0, i32 15
  %624 = load %struct.TYPE_16__*, %struct.TYPE_16__** %623, align 8
  %625 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %626 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %625, i32 0, i32 1
  store %struct.TYPE_16__* %624, %struct.TYPE_16__** %626, align 8
  %627 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %628 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %627, i32 0, i32 1
  %629 = load %struct.TYPE_16__*, %struct.TYPE_16__** %628, align 8
  %630 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %629, i32 0, i32 0
  %631 = load i64, i64* %630, align 8
  %632 = inttoptr i64 %631 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %632, %struct.common_firmware_header** %8, align 8
  %633 = load %struct.common_firmware_header*, %struct.common_firmware_header** %8, align 8
  %634 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %633, i32 0, i32 0
  %635 = load i32, i32* %634, align 4
  %636 = call i32 @le32_to_cpu(i32 %635)
  %637 = load i32, i32* @PAGE_SIZE, align 4
  %638 = call i64 @ALIGN(i32 %636, i32 %637)
  %639 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %640 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %639, i32 0, i32 3
  %641 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %640, i32 0, i32 1
  %642 = load i32, i32* %641, align 8
  %643 = sext i32 %642 to i64
  %644 = add nsw i64 %643, %638
  %645 = trunc i64 %644 to i32
  store i32 %645, i32* %641, align 8
  %646 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %647 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %646, i32 0, i32 3
  %648 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %647, i32 0, i32 2
  %649 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %648, align 8
  %650 = load i64, i64* @AMDGPU_UCODE_ID_RLC_G, align 8
  %651 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %649, i64 %650
  store %struct.amdgpu_firmware_info* %651, %struct.amdgpu_firmware_info** %7, align 8
  %652 = load i64, i64* @AMDGPU_UCODE_ID_RLC_G, align 8
  %653 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %654 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %653, i32 0, i32 0
  store i64 %652, i64* %654, align 8
  %655 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %656 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %655, i32 0, i32 1
  %657 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %656, i32 0, i32 14
  %658 = load %struct.TYPE_16__*, %struct.TYPE_16__** %657, align 8
  %659 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %660 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %659, i32 0, i32 1
  store %struct.TYPE_16__* %658, %struct.TYPE_16__** %660, align 8
  %661 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %662 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %661, i32 0, i32 1
  %663 = load %struct.TYPE_16__*, %struct.TYPE_16__** %662, align 8
  %664 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %663, i32 0, i32 0
  %665 = load i64, i64* %664, align 8
  %666 = inttoptr i64 %665 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %666, %struct.common_firmware_header** %8, align 8
  %667 = load %struct.common_firmware_header*, %struct.common_firmware_header** %8, align 8
  %668 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %667, i32 0, i32 0
  %669 = load i32, i32* %668, align 4
  %670 = call i32 @le32_to_cpu(i32 %669)
  %671 = load i32, i32* @PAGE_SIZE, align 4
  %672 = call i64 @ALIGN(i32 %670, i32 %671)
  %673 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %674 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %673, i32 0, i32 3
  %675 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %674, i32 0, i32 1
  %676 = load i32, i32* %675, align 8
  %677 = sext i32 %676 to i64
  %678 = add nsw i64 %677, %672
  %679 = trunc i64 %678 to i32
  store i32 %679, i32* %675, align 8
  %680 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %681 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %680, i32 0, i32 1
  %682 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %681, i32 0, i32 18
  %683 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %682, i32 0, i32 0
  %684 = load i32, i32* %683, align 8
  %685 = icmp ne i32 %684, 0
  br i1 %685, label %686, label %795

686:                                              ; preds = %543
  %687 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %688 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %687, i32 0, i32 1
  %689 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %688, i32 0, i32 18
  %690 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %689, i32 0, i32 12
  %691 = load i32, i32* %690, align 8
  %692 = icmp ne i32 %691, 0
  br i1 %692, label %693, label %795

693:                                              ; preds = %686
  %694 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %695 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %694, i32 0, i32 1
  %696 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %695, i32 0, i32 18
  %697 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %696, i32 0, i32 13
  %698 = load i32, i32* %697, align 4
  %699 = icmp ne i32 %698, 0
  br i1 %699, label %700, label %795

700:                                              ; preds = %693
  %701 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %702 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %701, i32 0, i32 1
  %703 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %702, i32 0, i32 18
  %704 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %703, i32 0, i32 14
  %705 = load i32, i32* %704, align 8
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %707, label %795

707:                                              ; preds = %700
  %708 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %709 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %708, i32 0, i32 3
  %710 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %709, i32 0, i32 2
  %711 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %710, align 8
  %712 = load i64, i64* @AMDGPU_UCODE_ID_RLC_RESTORE_LIST_CNTL, align 8
  %713 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %711, i64 %712
  store %struct.amdgpu_firmware_info* %713, %struct.amdgpu_firmware_info** %7, align 8
  %714 = load i64, i64* @AMDGPU_UCODE_ID_RLC_RESTORE_LIST_CNTL, align 8
  %715 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %716 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %715, i32 0, i32 0
  store i64 %714, i64* %716, align 8
  %717 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %718 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %717, i32 0, i32 1
  %719 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %718, i32 0, i32 14
  %720 = load %struct.TYPE_16__*, %struct.TYPE_16__** %719, align 8
  %721 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %722 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %721, i32 0, i32 1
  store %struct.TYPE_16__* %720, %struct.TYPE_16__** %722, align 8
  %723 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %724 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %723, i32 0, i32 1
  %725 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %724, i32 0, i32 18
  %726 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %725, i32 0, i32 12
  %727 = load i32, i32* %726, align 8
  %728 = load i32, i32* @PAGE_SIZE, align 4
  %729 = call i64 @ALIGN(i32 %727, i32 %728)
  %730 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %731 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %730, i32 0, i32 3
  %732 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %731, i32 0, i32 1
  %733 = load i32, i32* %732, align 8
  %734 = sext i32 %733 to i64
  %735 = add nsw i64 %734, %729
  %736 = trunc i64 %735 to i32
  store i32 %736, i32* %732, align 8
  %737 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %738 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %737, i32 0, i32 3
  %739 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %738, i32 0, i32 2
  %740 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %739, align 8
  %741 = load i64, i64* @AMDGPU_UCODE_ID_RLC_RESTORE_LIST_GPM_MEM, align 8
  %742 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %740, i64 %741
  store %struct.amdgpu_firmware_info* %742, %struct.amdgpu_firmware_info** %7, align 8
  %743 = load i64, i64* @AMDGPU_UCODE_ID_RLC_RESTORE_LIST_GPM_MEM, align 8
  %744 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %745 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %744, i32 0, i32 0
  store i64 %743, i64* %745, align 8
  %746 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %747 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %746, i32 0, i32 1
  %748 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %747, i32 0, i32 14
  %749 = load %struct.TYPE_16__*, %struct.TYPE_16__** %748, align 8
  %750 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %751 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %750, i32 0, i32 1
  store %struct.TYPE_16__* %749, %struct.TYPE_16__** %751, align 8
  %752 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %753 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %752, i32 0, i32 1
  %754 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %753, i32 0, i32 18
  %755 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %754, i32 0, i32 13
  %756 = load i32, i32* %755, align 4
  %757 = load i32, i32* @PAGE_SIZE, align 4
  %758 = call i64 @ALIGN(i32 %756, i32 %757)
  %759 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %760 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %759, i32 0, i32 3
  %761 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %760, i32 0, i32 1
  %762 = load i32, i32* %761, align 8
  %763 = sext i32 %762 to i64
  %764 = add nsw i64 %763, %758
  %765 = trunc i64 %764 to i32
  store i32 %765, i32* %761, align 8
  %766 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %767 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %766, i32 0, i32 3
  %768 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %767, i32 0, i32 2
  %769 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %768, align 8
  %770 = load i64, i64* @AMDGPU_UCODE_ID_RLC_RESTORE_LIST_SRM_MEM, align 8
  %771 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %769, i64 %770
  store %struct.amdgpu_firmware_info* %771, %struct.amdgpu_firmware_info** %7, align 8
  %772 = load i64, i64* @AMDGPU_UCODE_ID_RLC_RESTORE_LIST_SRM_MEM, align 8
  %773 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %774 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %773, i32 0, i32 0
  store i64 %772, i64* %774, align 8
  %775 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %776 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %775, i32 0, i32 1
  %777 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %776, i32 0, i32 14
  %778 = load %struct.TYPE_16__*, %struct.TYPE_16__** %777, align 8
  %779 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %780 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %779, i32 0, i32 1
  store %struct.TYPE_16__* %778, %struct.TYPE_16__** %780, align 8
  %781 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %782 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %781, i32 0, i32 1
  %783 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %782, i32 0, i32 18
  %784 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %783, i32 0, i32 14
  %785 = load i32, i32* %784, align 8
  %786 = load i32, i32* @PAGE_SIZE, align 4
  %787 = call i64 @ALIGN(i32 %785, i32 %786)
  %788 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %789 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %788, i32 0, i32 3
  %790 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %789, i32 0, i32 1
  %791 = load i32, i32* %790, align 8
  %792 = sext i32 %791 to i64
  %793 = add nsw i64 %792, %787
  %794 = trunc i64 %793 to i32
  store i32 %794, i32* %790, align 8
  br label %795

795:                                              ; preds = %707, %700, %693, %686, %543
  %796 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %797 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %796, i32 0, i32 3
  %798 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %797, i32 0, i32 2
  %799 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %798, align 8
  %800 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC1, align 8
  %801 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %799, i64 %800
  store %struct.amdgpu_firmware_info* %801, %struct.amdgpu_firmware_info** %7, align 8
  %802 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC1, align 8
  %803 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %804 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %803, i32 0, i32 0
  store i64 %802, i64* %804, align 8
  %805 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %806 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %805, i32 0, i32 1
  %807 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %806, i32 0, i32 13
  %808 = load %struct.TYPE_16__*, %struct.TYPE_16__** %807, align 8
  %809 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %810 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %809, i32 0, i32 1
  store %struct.TYPE_16__* %808, %struct.TYPE_16__** %810, align 8
  %811 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %812 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %811, i32 0, i32 1
  %813 = load %struct.TYPE_16__*, %struct.TYPE_16__** %812, align 8
  %814 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %813, i32 0, i32 0
  %815 = load i64, i64* %814, align 8
  %816 = inttoptr i64 %815 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %816, %struct.common_firmware_header** %8, align 8
  %817 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %818 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %817, i32 0, i32 1
  %819 = load %struct.TYPE_16__*, %struct.TYPE_16__** %818, align 8
  %820 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %819, i32 0, i32 0
  %821 = load i64, i64* %820, align 8
  %822 = inttoptr i64 %821 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %822, %struct.gfx_firmware_header_v1_0** %9, align 8
  %823 = load %struct.common_firmware_header*, %struct.common_firmware_header** %8, align 8
  %824 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %823, i32 0, i32 0
  %825 = load i32, i32* %824, align 4
  %826 = call i32 @le32_to_cpu(i32 %825)
  %827 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %828 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %827, i32 0, i32 1
  %829 = load i32, i32* %828, align 4
  %830 = call i32 @le32_to_cpu(i32 %829)
  %831 = mul nsw i32 %830, 4
  %832 = sub nsw i32 %826, %831
  %833 = load i32, i32* @PAGE_SIZE, align 4
  %834 = call i64 @ALIGN(i32 %832, i32 %833)
  %835 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %836 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %835, i32 0, i32 3
  %837 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %836, i32 0, i32 1
  %838 = load i32, i32* %837, align 8
  %839 = sext i32 %838 to i64
  %840 = add nsw i64 %839, %834
  %841 = trunc i64 %840 to i32
  store i32 %841, i32* %837, align 8
  %842 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %843 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %842, i32 0, i32 3
  %844 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %843, i32 0, i32 2
  %845 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %844, align 8
  %846 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC1_JT, align 8
  %847 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %845, i64 %846
  store %struct.amdgpu_firmware_info* %847, %struct.amdgpu_firmware_info** %7, align 8
  %848 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC1_JT, align 8
  %849 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %850 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %849, i32 0, i32 0
  store i64 %848, i64* %850, align 8
  %851 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %852 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %851, i32 0, i32 1
  %853 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %852, i32 0, i32 13
  %854 = load %struct.TYPE_16__*, %struct.TYPE_16__** %853, align 8
  %855 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %856 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %855, i32 0, i32 1
  store %struct.TYPE_16__* %854, %struct.TYPE_16__** %856, align 8
  %857 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %858 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %857, i32 0, i32 1
  %859 = load i32, i32* %858, align 4
  %860 = call i32 @le32_to_cpu(i32 %859)
  %861 = mul nsw i32 %860, 4
  %862 = load i32, i32* @PAGE_SIZE, align 4
  %863 = call i64 @ALIGN(i32 %861, i32 %862)
  %864 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %865 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %864, i32 0, i32 3
  %866 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %865, i32 0, i32 1
  %867 = load i32, i32* %866, align 8
  %868 = sext i32 %867 to i64
  %869 = add nsw i64 %868, %863
  %870 = trunc i64 %869 to i32
  store i32 %870, i32* %866, align 8
  %871 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %872 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %871, i32 0, i32 1
  %873 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %872, i32 0, i32 12
  %874 = load %struct.TYPE_16__*, %struct.TYPE_16__** %873, align 8
  %875 = icmp ne %struct.TYPE_16__* %874, null
  br i1 %875, label %876, label %952

876:                                              ; preds = %795
  %877 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %878 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %877, i32 0, i32 3
  %879 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %878, i32 0, i32 2
  %880 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %879, align 8
  %881 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC2, align 8
  %882 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %880, i64 %881
  store %struct.amdgpu_firmware_info* %882, %struct.amdgpu_firmware_info** %7, align 8
  %883 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC2, align 8
  %884 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %885 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %884, i32 0, i32 0
  store i64 %883, i64* %885, align 8
  %886 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %887 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %886, i32 0, i32 1
  %888 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %887, i32 0, i32 12
  %889 = load %struct.TYPE_16__*, %struct.TYPE_16__** %888, align 8
  %890 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %891 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %890, i32 0, i32 1
  store %struct.TYPE_16__* %889, %struct.TYPE_16__** %891, align 8
  %892 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %893 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %892, i32 0, i32 1
  %894 = load %struct.TYPE_16__*, %struct.TYPE_16__** %893, align 8
  %895 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %894, i32 0, i32 0
  %896 = load i64, i64* %895, align 8
  %897 = inttoptr i64 %896 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %897, %struct.common_firmware_header** %8, align 8
  %898 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %899 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %898, i32 0, i32 1
  %900 = load %struct.TYPE_16__*, %struct.TYPE_16__** %899, align 8
  %901 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %900, i32 0, i32 0
  %902 = load i64, i64* %901, align 8
  %903 = inttoptr i64 %902 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %903, %struct.gfx_firmware_header_v1_0** %9, align 8
  %904 = load %struct.common_firmware_header*, %struct.common_firmware_header** %8, align 8
  %905 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %904, i32 0, i32 0
  %906 = load i32, i32* %905, align 4
  %907 = call i32 @le32_to_cpu(i32 %906)
  %908 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %909 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %908, i32 0, i32 1
  %910 = load i32, i32* %909, align 4
  %911 = call i32 @le32_to_cpu(i32 %910)
  %912 = mul nsw i32 %911, 4
  %913 = sub nsw i32 %907, %912
  %914 = load i32, i32* @PAGE_SIZE, align 4
  %915 = call i64 @ALIGN(i32 %913, i32 %914)
  %916 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %917 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %916, i32 0, i32 3
  %918 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %917, i32 0, i32 1
  %919 = load i32, i32* %918, align 8
  %920 = sext i32 %919 to i64
  %921 = add nsw i64 %920, %915
  %922 = trunc i64 %921 to i32
  store i32 %922, i32* %918, align 8
  %923 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %924 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %923, i32 0, i32 3
  %925 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %924, i32 0, i32 2
  %926 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %925, align 8
  %927 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC2_JT, align 8
  %928 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %926, i64 %927
  store %struct.amdgpu_firmware_info* %928, %struct.amdgpu_firmware_info** %7, align 8
  %929 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC2_JT, align 8
  %930 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %931 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %930, i32 0, i32 0
  store i64 %929, i64* %931, align 8
  %932 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %933 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %932, i32 0, i32 1
  %934 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %933, i32 0, i32 12
  %935 = load %struct.TYPE_16__*, %struct.TYPE_16__** %934, align 8
  %936 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %937 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %936, i32 0, i32 1
  store %struct.TYPE_16__* %935, %struct.TYPE_16__** %937, align 8
  %938 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %939 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %938, i32 0, i32 1
  %940 = load i32, i32* %939, align 4
  %941 = call i32 @le32_to_cpu(i32 %940)
  %942 = mul nsw i32 %941, 4
  %943 = load i32, i32* @PAGE_SIZE, align 4
  %944 = call i64 @ALIGN(i32 %942, i32 %943)
  %945 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %946 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %945, i32 0, i32 3
  %947 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %946, i32 0, i32 1
  %948 = load i32, i32* %947, align 8
  %949 = sext i32 %948 to i64
  %950 = add nsw i64 %949, %944
  %951 = trunc i64 %950 to i32
  store i32 %951, i32* %947, align 8
  br label %952

952:                                              ; preds = %876, %795
  br label %953

953:                                              ; preds = %952, %536
  %954 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %955 = call i32 @gfx_v10_0_check_fw_write_wait(%struct.amdgpu_device* %954)
  br label %956

956:                                              ; preds = %953, %508, %462, %453, %343, %198, %161, %152, %114, %105, %67, %58
  %957 = load i32, i32* %6, align 4
  %958 = icmp ne i32 %957, 0
  br i1 %958, label %959, label %1013

959:                                              ; preds = %956
  %960 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %961 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %960, i32 0, i32 2
  %962 = load i32, i32* %961, align 8
  %963 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %964 = call i32 @dev_err(i32 %962, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i8* %963)
  %965 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %966 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %965, i32 0, i32 1
  %967 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %966, i32 0, i32 17
  %968 = load %struct.TYPE_16__*, %struct.TYPE_16__** %967, align 8
  %969 = call i32 @release_firmware(%struct.TYPE_16__* %968)
  %970 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %971 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %970, i32 0, i32 1
  %972 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %971, i32 0, i32 17
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %972, align 8
  %973 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %974 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %973, i32 0, i32 1
  %975 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %974, i32 0, i32 16
  %976 = load %struct.TYPE_16__*, %struct.TYPE_16__** %975, align 8
  %977 = call i32 @release_firmware(%struct.TYPE_16__* %976)
  %978 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %979 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %978, i32 0, i32 1
  %980 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %979, i32 0, i32 16
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %980, align 8
  %981 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %982 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %981, i32 0, i32 1
  %983 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %982, i32 0, i32 15
  %984 = load %struct.TYPE_16__*, %struct.TYPE_16__** %983, align 8
  %985 = call i32 @release_firmware(%struct.TYPE_16__* %984)
  %986 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %987 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %986, i32 0, i32 1
  %988 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %987, i32 0, i32 15
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %988, align 8
  %989 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %990 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %989, i32 0, i32 1
  %991 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %990, i32 0, i32 14
  %992 = load %struct.TYPE_16__*, %struct.TYPE_16__** %991, align 8
  %993 = call i32 @release_firmware(%struct.TYPE_16__* %992)
  %994 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %995 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %994, i32 0, i32 1
  %996 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %995, i32 0, i32 14
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %996, align 8
  %997 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %998 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %997, i32 0, i32 1
  %999 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %998, i32 0, i32 13
  %1000 = load %struct.TYPE_16__*, %struct.TYPE_16__** %999, align 8
  %1001 = call i32 @release_firmware(%struct.TYPE_16__* %1000)
  %1002 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %1003 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1002, i32 0, i32 1
  %1004 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1003, i32 0, i32 13
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %1004, align 8
  %1005 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %1006 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1005, i32 0, i32 1
  %1007 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1006, i32 0, i32 12
  %1008 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1007, align 8
  %1009 = call i32 @release_firmware(%struct.TYPE_16__* %1008)
  %1010 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %1011 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1010, i32 0, i32 1
  %1012 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1011, i32 0, i32 12
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %1012, align 8
  br label %1013

1013:                                             ; preds = %959, %956
  %1014 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %1015 = call i32 @gfx_v10_0_check_gfxoff_flag(%struct.amdgpu_device* %1014)
  %1016 = load i32, i32* %6, align 4
  ret i32 %1016
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @request_firmware(%struct.TYPE_16__**, i8*, i32) #1

declare dso_local i32 @amdgpu_ucode_validate(%struct.TYPE_16__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @gfx_v10_0_init_rlc_ext_microcode(%struct.amdgpu_device*) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @gfx_v10_0_check_fw_write_wait(%struct.amdgpu_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @release_firmware(%struct.TYPE_16__*) #1

declare dso_local i32 @gfx_v10_0_check_gfxoff_flag(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
