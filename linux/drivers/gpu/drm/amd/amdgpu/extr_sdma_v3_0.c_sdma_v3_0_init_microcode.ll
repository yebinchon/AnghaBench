; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_init_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_init_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_11__, %struct.TYPE_9__, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_12__*, i8* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_9__ = type { i32, %struct.amdgpu_firmware_info* }
%struct.amdgpu_firmware_info = type { i32, %struct.TYPE_12__* }
%struct.common_firmware_header = type { i32 }
%struct.sdma_firmware_header_v1_0 = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"tonga\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fiji\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"polaris10\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"polaris11\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"polaris12\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"vegam\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"carrizo\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"stoney\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"amdgpu/%s_sdma.bin\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"amdgpu/%s_sdma1.bin\00", align 1
@AMDGPU_UCODE_ID_SDMA0 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [41 x i8] c"sdma_v3_0: Failed to load firmware \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @sdma_v3_0_init_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v3_0_init_microcode(%struct.amdgpu_device* %0) #0 {
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
  %10 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %22 [
    i32 129, label %14
    i32 134, label %15
    i32 133, label %16
    i32 132, label %17
    i32 131, label %18
    i32 128, label %19
    i32 135, label %20
    i32 130, label %21
  ]

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %24

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %24

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %24

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %24

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %24

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %24

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %24

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %24

22:                                               ; preds = %1
  %23 = call i32 (...) @BUG()
  br label %24

24:                                               ; preds = %22, %21, %20, %19, %18, %17, %16, %15, %14
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %177, %24
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %180

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @snprintf(i8* %36, i32 30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %37)
  br label %43

39:                                               ; preds = %32
  %40 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @snprintf(i8* %40, i32 30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @request_firmware(%struct.TYPE_12__** %51, i8* %52, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %43
  br label %181

60:                                               ; preds = %43
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = call i32 @amdgpu_ucode_validate(%struct.TYPE_12__* %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  br label %181

74:                                               ; preds = %60
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to %struct.sdma_firmware_header_v1_0*
  store %struct.sdma_firmware_header_v1_0* %86, %struct.sdma_firmware_header_v1_0** %9, align 8
  %87 = load %struct.sdma_firmware_header_v1_0*, %struct.sdma_firmware_header_v1_0** %9, align 8
  %88 = getelementptr inbounds %struct.sdma_firmware_header_v1_0, %struct.sdma_firmware_header_v1_0* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @le32_to_cpu(i32 %90)
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 3
  store i8* %91, i8** %99, align 8
  %100 = load %struct.sdma_firmware_header_v1_0*, %struct.sdma_firmware_header_v1_0** %9, align 8
  %101 = getelementptr inbounds %struct.sdma_firmware_header_v1_0, %struct.sdma_firmware_header_v1_0* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @le32_to_cpu(i32 %102)
  %104 = ptrtoint i8* %103 to i32
  %105 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %106 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  store i32 %104, i32* %112, align 8
  %113 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %114 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp sge i32 %121, 20
  br i1 %122, label %123, label %132

123:                                              ; preds = %74
  %124 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %125 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  store i32 1, i32* %131, align 4
  br label %132

132:                                              ; preds = %123, %74
  %133 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %134 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %135, align 8
  %137 = load i32, i32* @AMDGPU_UCODE_ID_SDMA0, align 4
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %136, i64 %140
  store %struct.amdgpu_firmware_info* %141, %struct.amdgpu_firmware_info** %7, align 8
  %142 = load i32, i32* @AMDGPU_UCODE_ID_SDMA0, align 4
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %142, %143
  %145 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %146 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %148 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %154, align 8
  %156 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %157 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %156, i32 0, i32 1
  store %struct.TYPE_12__* %155, %struct.TYPE_12__** %157, align 8
  %158 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %159 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %158, i32 0, i32 1
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = inttoptr i64 %162 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %163, %struct.common_firmware_header** %8, align 8
  %164 = load %struct.common_firmware_header*, %struct.common_firmware_header** %8, align 8
  %165 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @le32_to_cpu(i32 %166)
  %168 = load i32, i32* @PAGE_SIZE, align 4
  %169 = call i64 @ALIGN(i8* %167, i32 %168)
  %170 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %171 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %174, %169
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %172, align 8
  br label %177

177:                                              ; preds = %132
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %6, align 4
  br label %25

180:                                              ; preds = %25
  br label %181

181:                                              ; preds = %180, %73, %59
  %182 = load i32, i32* %5, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %217

184:                                              ; preds = %181
  %185 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %186 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i8* %185)
  store i32 0, i32* %6, align 4
  br label %187

187:                                              ; preds = %213, %184
  %188 = load i32, i32* %6, align 4
  %189 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %190 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp slt i32 %188, %192
  br i1 %193, label %194, label %216

194:                                              ; preds = %187
  %195 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %196 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %197, align 8
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %202, align 8
  %204 = call i32 @release_firmware(%struct.TYPE_12__* %203)
  %205 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %206 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %207, align 8
  %209 = load i32, i32* %6, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %212, align 8
  br label %213

213:                                              ; preds = %194
  %214 = load i32, i32* %6, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %6, align 4
  br label %187

216:                                              ; preds = %187
  br label %217

217:                                              ; preds = %216, %181
  %218 = load i32, i32* %5, align 4
  ret i32 %218
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_12__**, i8*, i32) #1

declare dso_local i32 @amdgpu_ucode_validate(%struct.TYPE_12__*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @ALIGN(i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @release_firmware(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
