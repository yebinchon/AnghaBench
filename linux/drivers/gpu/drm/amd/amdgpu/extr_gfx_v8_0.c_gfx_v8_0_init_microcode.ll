; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_init_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_init_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_15__, i32, %struct.TYPE_14__, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_14__ = type { i32, %struct.amdgpu_firmware_info* }
%struct.amdgpu_firmware_info = type { i64, %struct.TYPE_16__* }
%struct.TYPE_10__ = type { i32 }
%struct.common_firmware_header = type { i32 }
%struct.gfx_firmware_header_v1_0 = type { i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.rlc_firmware_header_v2_0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"topaz\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"tonga\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"carrizo\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"fiji\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"stoney\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"polaris10\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"polaris11\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"polaris12\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"vegam\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"amdgpu/%s_pfp_2.bin\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"amdgpu/%s_pfp.bin\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"amdgpu/%s_me_2.bin\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"amdgpu/%s_me.bin\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"amdgpu/%s_ce_2.bin\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"amdgpu/%s_ce.bin\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Chained IB support enabled!\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"amdgpu/%s_rlc.bin\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [20 x i8] c"amdgpu/%s_mec_2.bin\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"amdgpu/%s_mec.bin\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"amdgpu/%s_mec2_2.bin\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"amdgpu/%s_mec2.bin\00", align 1
@AMDGPU_UCODE_ID_CP_PFP = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_UCODE_ID_CP_ME = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_CP_CE = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_RLC_G = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_CP_MEC1 = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_STORAGE = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_CP_MEC2 = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [36 x i8] c"gfx8: Failed to load firmware \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v8_0_init_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v8_0_init_microcode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [30 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_firmware_info*, align 8
  %7 = alloca %struct.common_firmware_header*, align 8
  %8 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %9 = alloca %struct.rlc_firmware_header_v2_0*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store %struct.amdgpu_firmware_info* null, %struct.amdgpu_firmware_info** %6, align 8
  store %struct.common_firmware_header* null, %struct.common_firmware_header** %7, align 8
  store i32* null, i32** %10, align 8
  %12 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %25 [
    i32 129, label %16
    i32 130, label %17
    i32 136, label %18
    i32 135, label %19
    i32 131, label %20
    i32 134, label %21
    i32 133, label %22
    i32 132, label %23
    i32 128, label %24
  ]

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %27

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %27

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %27

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %27

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %27

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %27

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %27

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %27

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %27

25:                                               ; preds = %1
  %26 = call i32 (...) @BUG()
  br label %27

27:                                               ; preds = %25, %24, %23, %22, %21, %20, %19, %18, %17, %16
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sge i32 %30, 134
  br i1 %31, label %32, label %66

32:                                               ; preds = %27
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sle i32 %35, 132
  br i1 %36, label %37, label %66

37:                                               ; preds = %32
  %38 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @snprintf(i8* %38, i32 30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %39)
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 17
  %44 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @request_firmware(%struct.TYPE_16__** %43, i8* %44, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %37
  %54 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 @snprintf(i8* %54, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* %55)
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 17
  %60 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @request_firmware(%struct.TYPE_16__** %59, i8* %60, i32 %63)
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %53, %37
  br label %78

66:                                               ; preds = %32, %27
  %67 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 @snprintf(i8* %67, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* %68)
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 17
  %73 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %75 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @request_firmware(%struct.TYPE_16__** %72, i8* %73, i32 %76)
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %66, %65
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %985

82:                                               ; preds = %78
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 17
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = call i32 @amdgpu_ucode_validate(%struct.TYPE_16__* %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %985

91:                                               ; preds = %82
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 17
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %98, %struct.gfx_firmware_header_v1_0** %8, align 8
  %99 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %8, align 8
  %100 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @le32_to_cpu(i32 %102)
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %105 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %8, align 8
  %108 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @le32_to_cpu(i32 %109)
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %112 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  %114 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %115 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp sge i32 %116, 134
  br i1 %117, label %118, label %152

118:                                              ; preds = %91
  %119 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %120 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp sle i32 %121, 132
  br i1 %122, label %123, label %152

123:                                              ; preds = %118
  %124 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %125 = load i8*, i8** %3, align 8
  %126 = call i32 @snprintf(i8* %124, i32 30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* %125)
  %127 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %128 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 16
  %130 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %132 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @request_firmware(%struct.TYPE_16__** %129, i8* %130, i32 %133)
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @ENOENT, align 4
  %137 = sub nsw i32 0, %136
  %138 = icmp eq i32 %135, %137
  br i1 %138, label %139, label %151

139:                                              ; preds = %123
  %140 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %141 = load i8*, i8** %3, align 8
  %142 = call i32 @snprintf(i8* %140, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* %141)
  %143 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %144 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 16
  %146 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %147 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %148 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @request_firmware(%struct.TYPE_16__** %145, i8* %146, i32 %149)
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %139, %123
  br label %164

152:                                              ; preds = %118, %91
  %153 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %154 = load i8*, i8** %3, align 8
  %155 = call i32 @snprintf(i8* %153, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* %154)
  %156 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %157 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 16
  %159 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %160 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %161 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @request_firmware(%struct.TYPE_16__** %158, i8* %159, i32 %162)
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %152, %151
  %165 = load i32, i32* %5, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  br label %985

168:                                              ; preds = %164
  %169 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %170 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 16
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %171, align 8
  %173 = call i32 @amdgpu_ucode_validate(%struct.TYPE_16__* %172)
  store i32 %173, i32* %5, align 4
  %174 = load i32, i32* %5, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  br label %985

177:                                              ; preds = %168
  %178 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %179 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 16
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = inttoptr i64 %183 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %184, %struct.gfx_firmware_header_v1_0** %8, align 8
  %185 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %8, align 8
  %186 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @le32_to_cpu(i32 %188)
  %190 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %191 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 2
  store i32 %189, i32* %192, align 8
  %193 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %8, align 8
  %194 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @le32_to_cpu(i32 %195)
  %197 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %198 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 3
  store i32 %196, i32* %199, align 4
  %200 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %201 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp sge i32 %202, 134
  br i1 %203, label %204, label %238

204:                                              ; preds = %177
  %205 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %206 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp sle i32 %207, 132
  br i1 %208, label %209, label %238

209:                                              ; preds = %204
  %210 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %211 = load i8*, i8** %3, align 8
  %212 = call i32 @snprintf(i8* %210, i32 30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8* %211)
  %213 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %214 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 15
  %216 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %217 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %218 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @request_firmware(%struct.TYPE_16__** %215, i8* %216, i32 %219)
  store i32 %220, i32* %5, align 4
  %221 = load i32, i32* %5, align 4
  %222 = load i32, i32* @ENOENT, align 4
  %223 = sub nsw i32 0, %222
  %224 = icmp eq i32 %221, %223
  br i1 %224, label %225, label %237

225:                                              ; preds = %209
  %226 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %227 = load i8*, i8** %3, align 8
  %228 = call i32 @snprintf(i8* %226, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* %227)
  %229 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %230 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 15
  %232 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %233 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %234 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @request_firmware(%struct.TYPE_16__** %231, i8* %232, i32 %235)
  store i32 %236, i32* %5, align 4
  br label %237

237:                                              ; preds = %225, %209
  br label %250

238:                                              ; preds = %204, %177
  %239 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %240 = load i8*, i8** %3, align 8
  %241 = call i32 @snprintf(i8* %239, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* %240)
  %242 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %243 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 15
  %245 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %246 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %247 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @request_firmware(%struct.TYPE_16__** %244, i8* %245, i32 %248)
  store i32 %249, i32* %5, align 4
  br label %250

250:                                              ; preds = %238, %237
  %251 = load i32, i32* %5, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %250
  br label %985

254:                                              ; preds = %250
  %255 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %256 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 15
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %257, align 8
  %259 = call i32 @amdgpu_ucode_validate(%struct.TYPE_16__* %258)
  store i32 %259, i32* %5, align 4
  %260 = load i32, i32* %5, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %254
  br label %985

263:                                              ; preds = %254
  %264 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %265 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 15
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = inttoptr i64 %269 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %270, %struct.gfx_firmware_header_v1_0** %8, align 8
  %271 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %8, align 8
  %272 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @le32_to_cpu(i32 %274)
  %276 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %277 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 4
  store i32 %275, i32* %278, align 8
  %279 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %8, align 8
  %280 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @le32_to_cpu(i32 %281)
  %283 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %284 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i32 0, i32 5
  store i32 %282, i32* %285, align 4
  %286 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %287 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 5
  %289 = load i32, i32* %288, align 4
  %290 = icmp sge i32 %289, 46
  br i1 %290, label %291, label %302

291:                                              ; preds = %263
  %292 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %293 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = icmp sge i32 %295, 46
  br i1 %296, label %297, label %302

297:                                              ; preds = %291
  %298 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %299 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %298, i32 0, i32 4
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 0
  store i32 1, i32* %300, align 8
  %301 = call i32 @DRM_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  br label %306

302:                                              ; preds = %291, %263
  %303 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %304 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %303, i32 0, i32 4
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 0
  store i32 0, i32* %305, align 8
  br label %306

306:                                              ; preds = %302, %297
  %307 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %308 = load i8*, i8** %3, align 8
  %309 = call i32 @snprintf(i8* %307, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8* %308)
  %310 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %311 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %311, i32 0, i32 14
  %313 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %314 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %315 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @request_firmware(%struct.TYPE_16__** %312, i8* %313, i32 %316)
  store i32 %317, i32* %5, align 4
  %318 = load i32, i32* %5, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %306
  br label %985

321:                                              ; preds = %306
  %322 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %323 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %323, i32 0, i32 14
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %324, align 8
  %326 = call i32 @amdgpu_ucode_validate(%struct.TYPE_16__* %325)
  store i32 %326, i32* %5, align 4
  %327 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %328 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %328, i32 0, i32 14
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = inttoptr i64 %332 to %struct.rlc_firmware_header_v2_0*
  store %struct.rlc_firmware_header_v2_0* %333, %struct.rlc_firmware_header_v2_0** %9, align 8
  %334 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %335 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %334, i32 0, i32 12
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @le32_to_cpu(i32 %337)
  %339 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %340 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %340, i32 0, i32 6
  store i32 %338, i32* %341, align 8
  %342 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %343 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @le32_to_cpu(i32 %344)
  %346 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %347 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %347, i32 0, i32 7
  store i32 %345, i32* %348, align 4
  %349 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %350 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @le32_to_cpu(i32 %351)
  %353 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %354 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %354, i32 0, i32 18
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i32 0, i32 0
  store i32 %352, i32* %356, align 8
  %357 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %358 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 4
  %360 = call i32 @le32_to_cpu(i32 %359)
  %361 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %362 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %362, i32 0, i32 18
  %364 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %363, i32 0, i32 1
  store i32 %360, i32* %364, align 4
  %365 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %366 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %365, i32 0, i32 3
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @le32_to_cpu(i32 %367)
  %369 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %370 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %370, i32 0, i32 18
  %372 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %371, i32 0, i32 2
  store i32 %368, i32* %372, align 8
  %373 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %374 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %373, i32 0, i32 4
  %375 = load i32, i32* %374, align 4
  %376 = call i32 @le32_to_cpu(i32 %375)
  %377 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %378 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %378, i32 0, i32 18
  %380 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %379, i32 0, i32 3
  store i32 %376, i32* %380, align 4
  %381 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %382 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %381, i32 0, i32 5
  %383 = load i32, i32* %382, align 4
  %384 = call i32 @le32_to_cpu(i32 %383)
  %385 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %386 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %386, i32 0, i32 18
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %387, i32 0, i32 4
  store i32 %384, i32* %388, align 8
  %389 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %390 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %389, i32 0, i32 6
  %391 = load i32, i32* %390, align 4
  %392 = call i32 @le32_to_cpu(i32 %391)
  %393 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %394 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %393, i32 0, i32 1
  %395 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %394, i32 0, i32 18
  %396 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %395, i32 0, i32 5
  store i32 %392, i32* %396, align 4
  %397 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %398 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %397, i32 0, i32 7
  %399 = load i32, i32* %398, align 4
  %400 = call i32 @le32_to_cpu(i32 %399)
  %401 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %402 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %402, i32 0, i32 18
  %404 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %403, i32 0, i32 6
  store i32 %400, i32* %404, align 8
  %405 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %406 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %405, i32 0, i32 8
  %407 = load i32, i32* %406, align 4
  %408 = call i32 @le32_to_cpu(i32 %407)
  %409 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %410 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %410, i32 0, i32 18
  %412 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %411, i32 0, i32 7
  store i32 %408, i32* %412, align 4
  %413 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %414 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %413, i32 0, i32 9
  %415 = load i32, i32* %414, align 4
  %416 = call i32 @le32_to_cpu(i32 %415)
  %417 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %418 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %417, i32 0, i32 1
  %419 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %418, i32 0, i32 18
  %420 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %419, i32 0, i32 8
  store i32 %416, i32* %420, align 8
  %421 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %422 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %421, i32 0, i32 1
  %423 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %422, i32 0, i32 18
  %424 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %423, i32 0, i32 7
  %425 = load i32, i32* %424, align 4
  %426 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %427 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %426, i32 0, i32 1
  %428 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %427, i32 0, i32 18
  %429 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %428, i32 0, i32 8
  %430 = load i32, i32* %429, align 8
  %431 = add nsw i32 %425, %430
  %432 = load i32, i32* @GFP_KERNEL, align 4
  %433 = call i32* @kmalloc(i32 %431, i32 %432)
  %434 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %435 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %434, i32 0, i32 1
  %436 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %435, i32 0, i32 18
  %437 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %436, i32 0, i32 9
  store i32* %433, i32** %437, align 8
  %438 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %439 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %438, i32 0, i32 1
  %440 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %439, i32 0, i32 18
  %441 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %440, i32 0, i32 9
  %442 = load i32*, i32** %441, align 8
  %443 = icmp ne i32* %442, null
  br i1 %443, label %447, label %444

444:                                              ; preds = %321
  %445 = load i32, i32* @ENOMEM, align 4
  %446 = sub nsw i32 0, %445
  store i32 %446, i32* %5, align 4
  br label %985

447:                                              ; preds = %321
  %448 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %449 = ptrtoint %struct.rlc_firmware_header_v2_0* %448 to i64
  %450 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %451 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %450, i32 0, i32 10
  %452 = load i32, i32* %451, align 4
  %453 = call i32 @le32_to_cpu(i32 %452)
  %454 = sext i32 %453 to i64
  %455 = add i64 %449, %454
  %456 = inttoptr i64 %455 to i32*
  store i32* %456, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %457

457:                                              ; preds = %481, %447
  %458 = load i32, i32* %11, align 4
  %459 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %460 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %460, i32 0, i32 18
  %462 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %461, i32 0, i32 7
  %463 = load i32, i32* %462, align 4
  %464 = ashr i32 %463, 2
  %465 = icmp ult i32 %458, %464
  br i1 %465, label %466, label %484

466:                                              ; preds = %457
  %467 = load i32*, i32** %10, align 8
  %468 = load i32, i32* %11, align 4
  %469 = zext i32 %468 to i64
  %470 = getelementptr inbounds i32, i32* %467, i64 %469
  %471 = load i32, i32* %470, align 4
  %472 = call i32 @le32_to_cpu(i32 %471)
  %473 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %474 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %473, i32 0, i32 1
  %475 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %474, i32 0, i32 18
  %476 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %475, i32 0, i32 9
  %477 = load i32*, i32** %476, align 8
  %478 = load i32, i32* %11, align 4
  %479 = zext i32 %478 to i64
  %480 = getelementptr inbounds i32, i32* %477, i64 %479
  store i32 %472, i32* %480, align 4
  br label %481

481:                                              ; preds = %466
  %482 = load i32, i32* %11, align 4
  %483 = add i32 %482, 1
  store i32 %483, i32* %11, align 4
  br label %457

484:                                              ; preds = %457
  %485 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %486 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %485, i32 0, i32 1
  %487 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %486, i32 0, i32 18
  %488 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %487, i32 0, i32 9
  %489 = load i32*, i32** %488, align 8
  %490 = load i32, i32* %11, align 4
  %491 = zext i32 %490 to i64
  %492 = getelementptr inbounds i32, i32* %489, i64 %491
  %493 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %494 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %493, i32 0, i32 1
  %495 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %494, i32 0, i32 18
  %496 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %495, i32 0, i32 10
  store i32* %492, i32** %496, align 8
  %497 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %498 = ptrtoint %struct.rlc_firmware_header_v2_0* %497 to i64
  %499 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %500 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %499, i32 0, i32 11
  %501 = load i32, i32* %500, align 4
  %502 = call i32 @le32_to_cpu(i32 %501)
  %503 = sext i32 %502 to i64
  %504 = add i64 %498, %503
  %505 = inttoptr i64 %504 to i32*
  store i32* %505, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %506

506:                                              ; preds = %530, %484
  %507 = load i32, i32* %11, align 4
  %508 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %509 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %508, i32 0, i32 1
  %510 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %509, i32 0, i32 18
  %511 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %510, i32 0, i32 8
  %512 = load i32, i32* %511, align 8
  %513 = ashr i32 %512, 2
  %514 = icmp ult i32 %507, %513
  br i1 %514, label %515, label %533

515:                                              ; preds = %506
  %516 = load i32*, i32** %10, align 8
  %517 = load i32, i32* %11, align 4
  %518 = zext i32 %517 to i64
  %519 = getelementptr inbounds i32, i32* %516, i64 %518
  %520 = load i32, i32* %519, align 4
  %521 = call i32 @le32_to_cpu(i32 %520)
  %522 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %523 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %522, i32 0, i32 1
  %524 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %523, i32 0, i32 18
  %525 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %524, i32 0, i32 10
  %526 = load i32*, i32** %525, align 8
  %527 = load i32, i32* %11, align 4
  %528 = zext i32 %527 to i64
  %529 = getelementptr inbounds i32, i32* %526, i64 %528
  store i32 %521, i32* %529, align 4
  br label %530

530:                                              ; preds = %515
  %531 = load i32, i32* %11, align 4
  %532 = add i32 %531, 1
  store i32 %532, i32* %11, align 4
  br label %506

533:                                              ; preds = %506
  %534 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %535 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 8
  %537 = icmp sge i32 %536, 134
  br i1 %537, label %538, label %572

538:                                              ; preds = %533
  %539 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %540 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %539, i32 0, i32 0
  %541 = load i32, i32* %540, align 8
  %542 = icmp sle i32 %541, 132
  br i1 %542, label %543, label %572

543:                                              ; preds = %538
  %544 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %545 = load i8*, i8** %3, align 8
  %546 = call i32 @snprintf(i8* %544, i32 30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i8* %545)
  %547 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %548 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %547, i32 0, i32 1
  %549 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %548, i32 0, i32 13
  %550 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %551 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %552 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %551, i32 0, i32 2
  %553 = load i32, i32* %552, align 8
  %554 = call i32 @request_firmware(%struct.TYPE_16__** %549, i8* %550, i32 %553)
  store i32 %554, i32* %5, align 4
  %555 = load i32, i32* %5, align 4
  %556 = load i32, i32* @ENOENT, align 4
  %557 = sub nsw i32 0, %556
  %558 = icmp eq i32 %555, %557
  br i1 %558, label %559, label %571

559:                                              ; preds = %543
  %560 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %561 = load i8*, i8** %3, align 8
  %562 = call i32 @snprintf(i8* %560, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i8* %561)
  %563 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %564 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %563, i32 0, i32 1
  %565 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %564, i32 0, i32 13
  %566 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %567 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %568 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %567, i32 0, i32 2
  %569 = load i32, i32* %568, align 8
  %570 = call i32 @request_firmware(%struct.TYPE_16__** %565, i8* %566, i32 %569)
  store i32 %570, i32* %5, align 4
  br label %571

571:                                              ; preds = %559, %543
  br label %584

572:                                              ; preds = %538, %533
  %573 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %574 = load i8*, i8** %3, align 8
  %575 = call i32 @snprintf(i8* %573, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i8* %574)
  %576 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %577 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %576, i32 0, i32 1
  %578 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %577, i32 0, i32 13
  %579 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %580 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %581 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %580, i32 0, i32 2
  %582 = load i32, i32* %581, align 8
  %583 = call i32 @request_firmware(%struct.TYPE_16__** %578, i8* %579, i32 %582)
  store i32 %583, i32* %5, align 4
  br label %584

584:                                              ; preds = %572, %571
  %585 = load i32, i32* %5, align 4
  %586 = icmp ne i32 %585, 0
  br i1 %586, label %587, label %588

587:                                              ; preds = %584
  br label %985

588:                                              ; preds = %584
  %589 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %590 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %589, i32 0, i32 1
  %591 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %590, i32 0, i32 13
  %592 = load %struct.TYPE_16__*, %struct.TYPE_16__** %591, align 8
  %593 = call i32 @amdgpu_ucode_validate(%struct.TYPE_16__* %592)
  store i32 %593, i32* %5, align 4
  %594 = load i32, i32* %5, align 4
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %596, label %597

596:                                              ; preds = %588
  br label %985

597:                                              ; preds = %588
  %598 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %599 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %598, i32 0, i32 1
  %600 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %599, i32 0, i32 13
  %601 = load %struct.TYPE_16__*, %struct.TYPE_16__** %600, align 8
  %602 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %601, i32 0, i32 0
  %603 = load i64, i64* %602, align 8
  %604 = inttoptr i64 %603 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %604, %struct.gfx_firmware_header_v1_0** %8, align 8
  %605 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %8, align 8
  %606 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %605, i32 0, i32 2
  %607 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %606, i32 0, i32 0
  %608 = load i32, i32* %607, align 4
  %609 = call i32 @le32_to_cpu(i32 %608)
  %610 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %611 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %610, i32 0, i32 1
  %612 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %611, i32 0, i32 8
  store i32 %609, i32* %612, align 8
  %613 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %8, align 8
  %614 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %613, i32 0, i32 0
  %615 = load i32, i32* %614, align 4
  %616 = call i32 @le32_to_cpu(i32 %615)
  %617 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %618 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %617, i32 0, i32 1
  %619 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %618, i32 0, i32 9
  store i32 %616, i32* %619, align 4
  %620 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %621 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %620, i32 0, i32 0
  %622 = load i32, i32* %621, align 8
  %623 = icmp ne i32 %622, 131
  br i1 %623, label %624, label %720

624:                                              ; preds = %597
  %625 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %626 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %625, i32 0, i32 0
  %627 = load i32, i32* %626, align 8
  %628 = icmp ne i32 %627, 129
  br i1 %628, label %629, label %720

629:                                              ; preds = %624
  %630 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %631 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %630, i32 0, i32 0
  %632 = load i32, i32* %631, align 8
  %633 = icmp sge i32 %632, 134
  br i1 %633, label %634, label %668

634:                                              ; preds = %629
  %635 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %636 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %635, i32 0, i32 0
  %637 = load i32, i32* %636, align 8
  %638 = icmp sle i32 %637, 132
  br i1 %638, label %639, label %668

639:                                              ; preds = %634
  %640 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %641 = load i8*, i8** %3, align 8
  %642 = call i32 @snprintf(i8* %640, i32 30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i8* %641)
  %643 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %644 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %643, i32 0, i32 1
  %645 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %644, i32 0, i32 12
  %646 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %647 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %648 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %647, i32 0, i32 2
  %649 = load i32, i32* %648, align 8
  %650 = call i32 @request_firmware(%struct.TYPE_16__** %645, i8* %646, i32 %649)
  store i32 %650, i32* %5, align 4
  %651 = load i32, i32* %5, align 4
  %652 = load i32, i32* @ENOENT, align 4
  %653 = sub nsw i32 0, %652
  %654 = icmp eq i32 %651, %653
  br i1 %654, label %655, label %667

655:                                              ; preds = %639
  %656 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %657 = load i8*, i8** %3, align 8
  %658 = call i32 @snprintf(i8* %656, i32 30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i8* %657)
  %659 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %660 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %659, i32 0, i32 1
  %661 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %660, i32 0, i32 12
  %662 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %663 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %664 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %663, i32 0, i32 2
  %665 = load i32, i32* %664, align 8
  %666 = call i32 @request_firmware(%struct.TYPE_16__** %661, i8* %662, i32 %665)
  store i32 %666, i32* %5, align 4
  br label %667

667:                                              ; preds = %655, %639
  br label %680

668:                                              ; preds = %634, %629
  %669 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %670 = load i8*, i8** %3, align 8
  %671 = call i32 @snprintf(i8* %669, i32 30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i8* %670)
  %672 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %673 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %672, i32 0, i32 1
  %674 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %673, i32 0, i32 12
  %675 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %676 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %677 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %676, i32 0, i32 2
  %678 = load i32, i32* %677, align 8
  %679 = call i32 @request_firmware(%struct.TYPE_16__** %674, i8* %675, i32 %678)
  store i32 %679, i32* %5, align 4
  br label %680

680:                                              ; preds = %668, %667
  %681 = load i32, i32* %5, align 4
  %682 = icmp ne i32 %681, 0
  br i1 %682, label %715, label %683

683:                                              ; preds = %680
  %684 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %685 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %684, i32 0, i32 1
  %686 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %685, i32 0, i32 12
  %687 = load %struct.TYPE_16__*, %struct.TYPE_16__** %686, align 8
  %688 = call i32 @amdgpu_ucode_validate(%struct.TYPE_16__* %687)
  store i32 %688, i32* %5, align 4
  %689 = load i32, i32* %5, align 4
  %690 = icmp ne i32 %689, 0
  br i1 %690, label %691, label %692

691:                                              ; preds = %683
  br label %985

692:                                              ; preds = %683
  %693 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %694 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %693, i32 0, i32 1
  %695 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %694, i32 0, i32 12
  %696 = load %struct.TYPE_16__*, %struct.TYPE_16__** %695, align 8
  %697 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %696, i32 0, i32 0
  %698 = load i64, i64* %697, align 8
  %699 = inttoptr i64 %698 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %699, %struct.gfx_firmware_header_v1_0** %8, align 8
  %700 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %8, align 8
  %701 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %700, i32 0, i32 2
  %702 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %701, i32 0, i32 0
  %703 = load i32, i32* %702, align 4
  %704 = call i32 @le32_to_cpu(i32 %703)
  %705 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %706 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %705, i32 0, i32 1
  %707 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %706, i32 0, i32 10
  store i32 %704, i32* %707, align 8
  %708 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %8, align 8
  %709 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %708, i32 0, i32 0
  %710 = load i32, i32* %709, align 4
  %711 = call i32 @le32_to_cpu(i32 %710)
  %712 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %713 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %712, i32 0, i32 1
  %714 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %713, i32 0, i32 11
  store i32 %711, i32* %714, align 4
  br label %719

715:                                              ; preds = %680
  store i32 0, i32* %5, align 4
  %716 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %717 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %716, i32 0, i32 1
  %718 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %717, i32 0, i32 12
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %718, align 8
  br label %719

719:                                              ; preds = %715, %692
  br label %720

720:                                              ; preds = %719, %624, %597
  %721 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %722 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %721, i32 0, i32 3
  %723 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %722, i32 0, i32 1
  %724 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %723, align 8
  %725 = load i64, i64* @AMDGPU_UCODE_ID_CP_PFP, align 8
  %726 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %724, i64 %725
  store %struct.amdgpu_firmware_info* %726, %struct.amdgpu_firmware_info** %6, align 8
  %727 = load i64, i64* @AMDGPU_UCODE_ID_CP_PFP, align 8
  %728 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %729 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %728, i32 0, i32 0
  store i64 %727, i64* %729, align 8
  %730 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %731 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %730, i32 0, i32 1
  %732 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %731, i32 0, i32 17
  %733 = load %struct.TYPE_16__*, %struct.TYPE_16__** %732, align 8
  %734 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %735 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %734, i32 0, i32 1
  store %struct.TYPE_16__* %733, %struct.TYPE_16__** %735, align 8
  %736 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %737 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %736, i32 0, i32 1
  %738 = load %struct.TYPE_16__*, %struct.TYPE_16__** %737, align 8
  %739 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %738, i32 0, i32 0
  %740 = load i64, i64* %739, align 8
  %741 = inttoptr i64 %740 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %741, %struct.common_firmware_header** %7, align 8
  %742 = load %struct.common_firmware_header*, %struct.common_firmware_header** %7, align 8
  %743 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %742, i32 0, i32 0
  %744 = load i32, i32* %743, align 4
  %745 = call i32 @le32_to_cpu(i32 %744)
  %746 = load i32, i32* @PAGE_SIZE, align 4
  %747 = call i64 @ALIGN(i32 %745, i32 %746)
  %748 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %749 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %748, i32 0, i32 3
  %750 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %749, i32 0, i32 0
  %751 = load i32, i32* %750, align 8
  %752 = sext i32 %751 to i64
  %753 = add nsw i64 %752, %747
  %754 = trunc i64 %753 to i32
  store i32 %754, i32* %750, align 8
  %755 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %756 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %755, i32 0, i32 3
  %757 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %756, i32 0, i32 1
  %758 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %757, align 8
  %759 = load i64, i64* @AMDGPU_UCODE_ID_CP_ME, align 8
  %760 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %758, i64 %759
  store %struct.amdgpu_firmware_info* %760, %struct.amdgpu_firmware_info** %6, align 8
  %761 = load i64, i64* @AMDGPU_UCODE_ID_CP_ME, align 8
  %762 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %763 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %762, i32 0, i32 0
  store i64 %761, i64* %763, align 8
  %764 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %765 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %764, i32 0, i32 1
  %766 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %765, i32 0, i32 16
  %767 = load %struct.TYPE_16__*, %struct.TYPE_16__** %766, align 8
  %768 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %769 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %768, i32 0, i32 1
  store %struct.TYPE_16__* %767, %struct.TYPE_16__** %769, align 8
  %770 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %771 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %770, i32 0, i32 1
  %772 = load %struct.TYPE_16__*, %struct.TYPE_16__** %771, align 8
  %773 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %772, i32 0, i32 0
  %774 = load i64, i64* %773, align 8
  %775 = inttoptr i64 %774 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %775, %struct.common_firmware_header** %7, align 8
  %776 = load %struct.common_firmware_header*, %struct.common_firmware_header** %7, align 8
  %777 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %776, i32 0, i32 0
  %778 = load i32, i32* %777, align 4
  %779 = call i32 @le32_to_cpu(i32 %778)
  %780 = load i32, i32* @PAGE_SIZE, align 4
  %781 = call i64 @ALIGN(i32 %779, i32 %780)
  %782 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %783 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %782, i32 0, i32 3
  %784 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %783, i32 0, i32 0
  %785 = load i32, i32* %784, align 8
  %786 = sext i32 %785 to i64
  %787 = add nsw i64 %786, %781
  %788 = trunc i64 %787 to i32
  store i32 %788, i32* %784, align 8
  %789 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %790 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %789, i32 0, i32 3
  %791 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %790, i32 0, i32 1
  %792 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %791, align 8
  %793 = load i64, i64* @AMDGPU_UCODE_ID_CP_CE, align 8
  %794 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %792, i64 %793
  store %struct.amdgpu_firmware_info* %794, %struct.amdgpu_firmware_info** %6, align 8
  %795 = load i64, i64* @AMDGPU_UCODE_ID_CP_CE, align 8
  %796 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %797 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %796, i32 0, i32 0
  store i64 %795, i64* %797, align 8
  %798 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %799 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %798, i32 0, i32 1
  %800 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %799, i32 0, i32 15
  %801 = load %struct.TYPE_16__*, %struct.TYPE_16__** %800, align 8
  %802 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %803 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %802, i32 0, i32 1
  store %struct.TYPE_16__* %801, %struct.TYPE_16__** %803, align 8
  %804 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %805 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %804, i32 0, i32 1
  %806 = load %struct.TYPE_16__*, %struct.TYPE_16__** %805, align 8
  %807 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %806, i32 0, i32 0
  %808 = load i64, i64* %807, align 8
  %809 = inttoptr i64 %808 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %809, %struct.common_firmware_header** %7, align 8
  %810 = load %struct.common_firmware_header*, %struct.common_firmware_header** %7, align 8
  %811 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %810, i32 0, i32 0
  %812 = load i32, i32* %811, align 4
  %813 = call i32 @le32_to_cpu(i32 %812)
  %814 = load i32, i32* @PAGE_SIZE, align 4
  %815 = call i64 @ALIGN(i32 %813, i32 %814)
  %816 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %817 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %816, i32 0, i32 3
  %818 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %817, i32 0, i32 0
  %819 = load i32, i32* %818, align 8
  %820 = sext i32 %819 to i64
  %821 = add nsw i64 %820, %815
  %822 = trunc i64 %821 to i32
  store i32 %822, i32* %818, align 8
  %823 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %824 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %823, i32 0, i32 3
  %825 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %824, i32 0, i32 1
  %826 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %825, align 8
  %827 = load i64, i64* @AMDGPU_UCODE_ID_RLC_G, align 8
  %828 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %826, i64 %827
  store %struct.amdgpu_firmware_info* %828, %struct.amdgpu_firmware_info** %6, align 8
  %829 = load i64, i64* @AMDGPU_UCODE_ID_RLC_G, align 8
  %830 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %831 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %830, i32 0, i32 0
  store i64 %829, i64* %831, align 8
  %832 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %833 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %832, i32 0, i32 1
  %834 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %833, i32 0, i32 14
  %835 = load %struct.TYPE_16__*, %struct.TYPE_16__** %834, align 8
  %836 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %837 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %836, i32 0, i32 1
  store %struct.TYPE_16__* %835, %struct.TYPE_16__** %837, align 8
  %838 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %839 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %838, i32 0, i32 1
  %840 = load %struct.TYPE_16__*, %struct.TYPE_16__** %839, align 8
  %841 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %840, i32 0, i32 0
  %842 = load i64, i64* %841, align 8
  %843 = inttoptr i64 %842 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %843, %struct.common_firmware_header** %7, align 8
  %844 = load %struct.common_firmware_header*, %struct.common_firmware_header** %7, align 8
  %845 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %844, i32 0, i32 0
  %846 = load i32, i32* %845, align 4
  %847 = call i32 @le32_to_cpu(i32 %846)
  %848 = load i32, i32* @PAGE_SIZE, align 4
  %849 = call i64 @ALIGN(i32 %847, i32 %848)
  %850 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %851 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %850, i32 0, i32 3
  %852 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %851, i32 0, i32 0
  %853 = load i32, i32* %852, align 8
  %854 = sext i32 %853 to i64
  %855 = add nsw i64 %854, %849
  %856 = trunc i64 %855 to i32
  store i32 %856, i32* %852, align 8
  %857 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %858 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %857, i32 0, i32 3
  %859 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %858, i32 0, i32 1
  %860 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %859, align 8
  %861 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC1, align 8
  %862 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %860, i64 %861
  store %struct.amdgpu_firmware_info* %862, %struct.amdgpu_firmware_info** %6, align 8
  %863 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC1, align 8
  %864 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %865 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %864, i32 0, i32 0
  store i64 %863, i64* %865, align 8
  %866 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %867 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %866, i32 0, i32 1
  %868 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %867, i32 0, i32 13
  %869 = load %struct.TYPE_16__*, %struct.TYPE_16__** %868, align 8
  %870 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %871 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %870, i32 0, i32 1
  store %struct.TYPE_16__* %869, %struct.TYPE_16__** %871, align 8
  %872 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %873 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %872, i32 0, i32 1
  %874 = load %struct.TYPE_16__*, %struct.TYPE_16__** %873, align 8
  %875 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %874, i32 0, i32 0
  %876 = load i64, i64* %875, align 8
  %877 = inttoptr i64 %876 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %877, %struct.common_firmware_header** %7, align 8
  %878 = load %struct.common_firmware_header*, %struct.common_firmware_header** %7, align 8
  %879 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %878, i32 0, i32 0
  %880 = load i32, i32* %879, align 4
  %881 = call i32 @le32_to_cpu(i32 %880)
  %882 = load i32, i32* @PAGE_SIZE, align 4
  %883 = call i64 @ALIGN(i32 %881, i32 %882)
  %884 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %885 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %884, i32 0, i32 3
  %886 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %885, i32 0, i32 0
  %887 = load i32, i32* %886, align 8
  %888 = sext i32 %887 to i64
  %889 = add nsw i64 %888, %883
  %890 = trunc i64 %889 to i32
  store i32 %890, i32* %886, align 8
  %891 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %892 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %891, i32 0, i32 1
  %893 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %892, i32 0, i32 13
  %894 = load %struct.TYPE_16__*, %struct.TYPE_16__** %893, align 8
  %895 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %894, i32 0, i32 0
  %896 = load i64, i64* %895, align 8
  %897 = inttoptr i64 %896 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %897, %struct.gfx_firmware_header_v1_0** %8, align 8
  %898 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %8, align 8
  %899 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %898, i32 0, i32 1
  %900 = load i32, i32* %899, align 4
  %901 = call i32 @le32_to_cpu(i32 %900)
  %902 = shl i32 %901, 2
  %903 = load i32, i32* @PAGE_SIZE, align 4
  %904 = call i64 @ALIGN(i32 %902, i32 %903)
  %905 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %906 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %905, i32 0, i32 3
  %907 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %906, i32 0, i32 0
  %908 = load i32, i32* %907, align 8
  %909 = sext i32 %908 to i64
  %910 = add nsw i64 %909, %904
  %911 = trunc i64 %910 to i32
  store i32 %911, i32* %907, align 8
  %912 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %913 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %912)
  %914 = icmp ne i64 %913, 0
  br i1 %914, label %915, label %943

915:                                              ; preds = %720
  %916 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %917 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %916, i32 0, i32 3
  %918 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %917, i32 0, i32 1
  %919 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %918, align 8
  %920 = load i64, i64* @AMDGPU_UCODE_ID_STORAGE, align 8
  %921 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %919, i64 %920
  store %struct.amdgpu_firmware_info* %921, %struct.amdgpu_firmware_info** %6, align 8
  %922 = load i64, i64* @AMDGPU_UCODE_ID_STORAGE, align 8
  %923 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %924 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %923, i32 0, i32 0
  store i64 %922, i64* %924, align 8
  %925 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %926 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %925, i32 0, i32 1
  %927 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %926, i32 0, i32 13
  %928 = load %struct.TYPE_16__*, %struct.TYPE_16__** %927, align 8
  %929 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %930 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %929, i32 0, i32 1
  store %struct.TYPE_16__* %928, %struct.TYPE_16__** %930, align 8
  %931 = load i32, i32* @PAGE_SIZE, align 4
  %932 = mul nsw i32 64, %931
  %933 = call i32 @le32_to_cpu(i32 %932)
  %934 = load i32, i32* @PAGE_SIZE, align 4
  %935 = call i64 @ALIGN(i32 %933, i32 %934)
  %936 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %937 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %936, i32 0, i32 3
  %938 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %937, i32 0, i32 0
  %939 = load i32, i32* %938, align 8
  %940 = sext i32 %939 to i64
  %941 = add nsw i64 %940, %935
  %942 = trunc i64 %941 to i32
  store i32 %942, i32* %938, align 8
  br label %943

943:                                              ; preds = %915, %720
  %944 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %945 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %944, i32 0, i32 1
  %946 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %945, i32 0, i32 12
  %947 = load %struct.TYPE_16__*, %struct.TYPE_16__** %946, align 8
  %948 = icmp ne %struct.TYPE_16__* %947, null
  br i1 %948, label %949, label %984

949:                                              ; preds = %943
  %950 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %951 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %950, i32 0, i32 3
  %952 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %951, i32 0, i32 1
  %953 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %952, align 8
  %954 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC2, align 8
  %955 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %953, i64 %954
  store %struct.amdgpu_firmware_info* %955, %struct.amdgpu_firmware_info** %6, align 8
  %956 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC2, align 8
  %957 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %958 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %957, i32 0, i32 0
  store i64 %956, i64* %958, align 8
  %959 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %960 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %959, i32 0, i32 1
  %961 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %960, i32 0, i32 12
  %962 = load %struct.TYPE_16__*, %struct.TYPE_16__** %961, align 8
  %963 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %964 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %963, i32 0, i32 1
  store %struct.TYPE_16__* %962, %struct.TYPE_16__** %964, align 8
  %965 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %966 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %965, i32 0, i32 1
  %967 = load %struct.TYPE_16__*, %struct.TYPE_16__** %966, align 8
  %968 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %967, i32 0, i32 0
  %969 = load i64, i64* %968, align 8
  %970 = inttoptr i64 %969 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %970, %struct.common_firmware_header** %7, align 8
  %971 = load %struct.common_firmware_header*, %struct.common_firmware_header** %7, align 8
  %972 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %971, i32 0, i32 0
  %973 = load i32, i32* %972, align 4
  %974 = call i32 @le32_to_cpu(i32 %973)
  %975 = load i32, i32* @PAGE_SIZE, align 4
  %976 = call i64 @ALIGN(i32 %974, i32 %975)
  %977 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %978 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %977, i32 0, i32 3
  %979 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %978, i32 0, i32 0
  %980 = load i32, i32* %979, align 8
  %981 = sext i32 %980 to i64
  %982 = add nsw i64 %981, %976
  %983 = trunc i64 %982 to i32
  store i32 %983, i32* %979, align 8
  br label %984

984:                                              ; preds = %949, %943
  br label %985

985:                                              ; preds = %984, %691, %596, %587, %444, %320, %262, %253, %176, %167, %90, %81
  %986 = load i32, i32* %5, align 4
  %987 = icmp ne i32 %986, 0
  br i1 %987, label %988, label %1042

988:                                              ; preds = %985
  %989 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %990 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %989, i32 0, i32 2
  %991 = load i32, i32* %990, align 8
  %992 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %993 = call i32 @dev_err(i32 %991, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0), i8* %992)
  %994 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %995 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %994, i32 0, i32 1
  %996 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %995, i32 0, i32 17
  %997 = load %struct.TYPE_16__*, %struct.TYPE_16__** %996, align 8
  %998 = call i32 @release_firmware(%struct.TYPE_16__* %997)
  %999 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %1000 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %999, i32 0, i32 1
  %1001 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1000, i32 0, i32 17
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %1001, align 8
  %1002 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %1003 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1002, i32 0, i32 1
  %1004 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1003, i32 0, i32 16
  %1005 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1004, align 8
  %1006 = call i32 @release_firmware(%struct.TYPE_16__* %1005)
  %1007 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %1008 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1007, i32 0, i32 1
  %1009 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1008, i32 0, i32 16
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %1009, align 8
  %1010 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %1011 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1010, i32 0, i32 1
  %1012 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1011, i32 0, i32 15
  %1013 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1012, align 8
  %1014 = call i32 @release_firmware(%struct.TYPE_16__* %1013)
  %1015 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %1016 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1015, i32 0, i32 1
  %1017 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1016, i32 0, i32 15
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %1017, align 8
  %1018 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %1019 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1018, i32 0, i32 1
  %1020 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1019, i32 0, i32 14
  %1021 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1020, align 8
  %1022 = call i32 @release_firmware(%struct.TYPE_16__* %1021)
  %1023 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %1024 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1023, i32 0, i32 1
  %1025 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1024, i32 0, i32 14
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %1025, align 8
  %1026 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %1027 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1026, i32 0, i32 1
  %1028 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1027, i32 0, i32 13
  %1029 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1028, align 8
  %1030 = call i32 @release_firmware(%struct.TYPE_16__* %1029)
  %1031 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %1032 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1031, i32 0, i32 1
  %1033 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1032, i32 0, i32 13
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %1033, align 8
  %1034 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %1035 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1034, i32 0, i32 1
  %1036 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1035, i32 0, i32 12
  %1037 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1036, align 8
  %1038 = call i32 @release_firmware(%struct.TYPE_16__* %1037)
  %1039 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %1040 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1039, i32 0, i32 1
  %1041 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1040, i32 0, i32 12
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %1041, align 8
  br label %1042

1042:                                             ; preds = %988, %985
  %1043 = load i32, i32* %5, align 4
  ret i32 %1043
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_16__**, i8*, i32) #1

declare dso_local i32 @amdgpu_ucode_validate(%struct.TYPE_16__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @release_firmware(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
