; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_init_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_init_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_11__, %struct.TYPE_9__, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_12__*, i8* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_9__ = type { i64, i32, %struct.amdgpu_firmware_info* }
%struct.amdgpu_firmware_info = type { i32, %struct.TYPE_12__* }
%struct.common_firmware_header = type { i32 }
%struct.sdma_firmware_header_v1_0 = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"navi10\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"navi14\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"navi12\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"amdgpu/%s_sdma.bin\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"amdgpu/%s_sdma1.bin\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"psp_load == '%s'\0A\00", align 1
@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@AMDGPU_UCODE_ID_SDMA0 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"sdma_v5_0: Failed to load firmware \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @sdma_v5_0_init_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v5_0_init_microcode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [30 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_firmware_info*, align 8
  %8 = alloca %struct.common_firmware_header*, align 8
  %9 = alloca %struct.sdma_firmware_header_v1_0*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %5, align 4
  store %struct.amdgpu_firmware_info* null, %struct.amdgpu_firmware_info** %7, align 8
  store %struct.common_firmware_header* null, %struct.common_firmware_header** %8, align 8
  %10 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %17 [
    i32 130, label %14
    i32 128, label %15
    i32 129, label %16
  ]

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %19

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %19

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %19

17:                                               ; preds = %1
  %18 = call i32 (...) @BUG()
  br label %19

19:                                               ; preds = %17, %16, %15, %14
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %189, %19
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %192

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @snprintf(i8* %31, i32 30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %32)
  br label %38

34:                                               ; preds = %27
  %35 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @snprintf(i8* %35, i32 30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %34, %30
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @request_firmware(%struct.TYPE_12__** %46, i8* %47, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %38
  br label %193

55:                                               ; preds = %38
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = call i32 @amdgpu_ucode_validate(%struct.TYPE_12__* %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  br label %193

69:                                               ; preds = %55
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.sdma_firmware_header_v1_0*
  store %struct.sdma_firmware_header_v1_0* %81, %struct.sdma_firmware_header_v1_0** %9, align 8
  %82 = load %struct.sdma_firmware_header_v1_0*, %struct.sdma_firmware_header_v1_0** %9, align 8
  %83 = getelementptr inbounds %struct.sdma_firmware_header_v1_0, %struct.sdma_firmware_header_v1_0* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @le32_to_cpu(i32 %85)
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 3
  store i8* %86, i8** %94, align 8
  %95 = load %struct.sdma_firmware_header_v1_0*, %struct.sdma_firmware_header_v1_0** %9, align 8
  %96 = getelementptr inbounds %struct.sdma_firmware_header_v1_0, %struct.sdma_firmware_header_v1_0* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @le32_to_cpu(i32 %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %101 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store i32 %99, i32* %107, align 8
  %108 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %109 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp sge i32 %116, 20
  br i1 %117, label %118, label %127

118:                                              ; preds = %69
  %119 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %120 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  store i32 1, i32* %126, align 4
  br label %127

127:                                              ; preds = %118, %69
  %128 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %129 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %133 = icmp eq i64 %131, %132
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)
  %136 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %135)
  %137 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %138 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %188

143:                                              ; preds = %127
  %144 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %145 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 2
  %147 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %146, align 8
  %148 = load i32, i32* @AMDGPU_UCODE_ID_SDMA0, align 4
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %147, i64 %151
  store %struct.amdgpu_firmware_info* %152, %struct.amdgpu_firmware_info** %7, align 8
  %153 = load i32, i32* @AMDGPU_UCODE_ID_SDMA0, align 4
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %153, %154
  %156 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %157 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %159 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %168 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %167, i32 0, i32 1
  store %struct.TYPE_12__* %166, %struct.TYPE_12__** %168, align 8
  %169 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %170 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %169, i32 0, i32 1
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = inttoptr i64 %173 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %174, %struct.common_firmware_header** %8, align 8
  %175 = load %struct.common_firmware_header*, %struct.common_firmware_header** %8, align 8
  %176 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i8* @le32_to_cpu(i32 %177)
  %179 = load i32, i32* @PAGE_SIZE, align 4
  %180 = call i64 @ALIGN(i8* %178, i32 %179)
  %181 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %182 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %185, %180
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %183, align 8
  br label %188

188:                                              ; preds = %143, %127
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %6, align 4
  br label %20

192:                                              ; preds = %20
  br label %193

193:                                              ; preds = %192, %68, %54
  %194 = load i32, i32* %5, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %229

196:                                              ; preds = %193
  %197 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %198 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i8* %197)
  store i32 0, i32* %6, align 4
  br label %199

199:                                              ; preds = %225, %196
  %200 = load i32, i32* %6, align 4
  %201 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %202 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp slt i32 %200, %204
  br i1 %205, label %206, label %228

206:                                              ; preds = %199
  %207 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %208 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %209, align 8
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %214, align 8
  %216 = call i32 @release_firmware(%struct.TYPE_12__* %215)
  %217 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %218 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %219, align 8
  %221 = load i32, i32* %6, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %224, align 8
  br label %225

225:                                              ; preds = %206
  %226 = load i32, i32* %6, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %6, align 4
  br label %199

228:                                              ; preds = %199
  br label %229

229:                                              ; preds = %228, %193
  %230 = load i32, i32* %5, align 4
  ret i32 %230
}

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_12__**, i8*, i32) #1

declare dso_local i32 @amdgpu_ucode_validate(%struct.TYPE_12__*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @ALIGN(i8*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i8*) #1

declare dso_local i32 @release_firmware(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
