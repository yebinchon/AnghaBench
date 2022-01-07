; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_init_cp_compute_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_init_cp_compute_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_9__, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i64, i32, %struct.amdgpu_firmware_info* }
%struct.amdgpu_firmware_info = type { i64, %struct.TYPE_10__* }
%struct.common_firmware_header = type { i32 }
%struct.gfx_firmware_header_v1_0 = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"amdgpu/%s_mec.bin\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"amdgpu/%s_mec2.bin\00", align 1
@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_CP_MEC1 = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_UCODE_ID_CP_MEC1_JT = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_CP_MEC2 = common dso_local global i64 0, align 8
@CHIP_ARCTURUS = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_CP_MEC2_JT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"gfx9: Failed to load firmware \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i8*)* @gfx_v9_0_init_cp_compute_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_init_cp_compute_microcode(%struct.amdgpu_device* %0, i8* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [30 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_firmware_info*, align 8
  %8 = alloca %struct.common_firmware_header*, align 8
  %9 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.amdgpu_firmware_info* null, %struct.amdgpu_firmware_info** %7, align 8
  store %struct.common_firmware_header* null, %struct.common_firmware_header** %8, align 8
  %10 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @snprintf(i8* %10, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 5
  %16 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @request_firmware(%struct.TYPE_10__** %15, i8* %16, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %278

24:                                               ; preds = %2
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = call i32 @amdgpu_ucode_validate(%struct.TYPE_10__* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %278

33:                                               ; preds = %24
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %40, %struct.gfx_firmware_header_v1_0** %9, align 8
  %41 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %42 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le32_to_cpu(i32 %44)
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %50 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le32_to_cpu(i32 %51)
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @snprintf(i8* %56, i32 30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %60 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 4
  %62 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @request_firmware(%struct.TYPE_10__** %61, i8* %62, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %101, label %69

69:                                               ; preds = %33
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = call i32 @amdgpu_ucode_validate(%struct.TYPE_10__* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %278

78:                                               ; preds = %69
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %80 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %85, %struct.gfx_firmware_header_v1_0** %9, align 8
  %86 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %87 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le32_to_cpu(i32 %89)
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %92 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 8
  %94 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %95 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @le32_to_cpu(i32 %96)
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %99 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  store i32 %97, i32* %100, align 4
  br label %105

101:                                              ; preds = %33
  store i32 0, i32* %6, align 4
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %103 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %104, align 8
  br label %105

105:                                              ; preds = %101, %78
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %107 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %277

112:                                              ; preds = %105
  %113 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %114 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  %116 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %115, align 8
  %117 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC1, align 8
  %118 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %116, i64 %117
  store %struct.amdgpu_firmware_info* %118, %struct.amdgpu_firmware_info** %7, align 8
  %119 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC1, align 8
  %120 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %121 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  %122 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %123 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 5
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %127 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %126, i32 0, i32 1
  store %struct.TYPE_10__* %125, %struct.TYPE_10__** %127, align 8
  %128 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %129 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %128, i32 0, i32 1
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %133, %struct.common_firmware_header** %8, align 8
  %134 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %135 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %134, i32 0, i32 1
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %139, %struct.gfx_firmware_header_v1_0** %9, align 8
  %140 = load %struct.common_firmware_header*, %struct.common_firmware_header** %8, align 8
  %141 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @le32_to_cpu(i32 %142)
  %144 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %145 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @le32_to_cpu(i32 %146)
  %148 = mul nsw i32 %147, 4
  %149 = sub nsw i32 %143, %148
  %150 = load i32, i32* @PAGE_SIZE, align 4
  %151 = call i64 @ALIGN(i32 %149, i32 %150)
  %152 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %153 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %151
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %154, align 8
  %159 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %160 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  %162 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %161, align 8
  %163 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC1_JT, align 8
  %164 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %162, i64 %163
  store %struct.amdgpu_firmware_info* %164, %struct.amdgpu_firmware_info** %7, align 8
  %165 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC1_JT, align 8
  %166 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %167 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %166, i32 0, i32 0
  store i64 %165, i64* %167, align 8
  %168 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %169 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 5
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %173 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %172, i32 0, i32 1
  store %struct.TYPE_10__* %171, %struct.TYPE_10__** %173, align 8
  %174 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %175 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @le32_to_cpu(i32 %176)
  %178 = mul nsw i32 %177, 4
  %179 = load i32, i32* @PAGE_SIZE, align 4
  %180 = call i64 @ALIGN(i32 %178, i32 %179)
  %181 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %182 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %185, %180
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %183, align 8
  %188 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %189 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 4
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = icmp ne %struct.TYPE_10__* %191, null
  br i1 %192, label %193, label %276

193:                                              ; preds = %112
  %194 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %195 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 2
  %197 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %196, align 8
  %198 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC2, align 8
  %199 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %197, i64 %198
  store %struct.amdgpu_firmware_info* %199, %struct.amdgpu_firmware_info** %7, align 8
  %200 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC2, align 8
  %201 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %202 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %201, i32 0, i32 0
  store i64 %200, i64* %202, align 8
  %203 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %204 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 4
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %205, align 8
  %207 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %208 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %207, i32 0, i32 1
  store %struct.TYPE_10__* %206, %struct.TYPE_10__** %208, align 8
  %209 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %210 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %209, i32 0, i32 1
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = inttoptr i64 %213 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %214, %struct.common_firmware_header** %8, align 8
  %215 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %216 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %215, i32 0, i32 1
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = inttoptr i64 %219 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %220, %struct.gfx_firmware_header_v1_0** %9, align 8
  %221 = load %struct.common_firmware_header*, %struct.common_firmware_header** %8, align 8
  %222 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @le32_to_cpu(i32 %223)
  %225 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %226 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @le32_to_cpu(i32 %227)
  %229 = mul nsw i32 %228, 4
  %230 = sub nsw i32 %224, %229
  %231 = load i32, i32* @PAGE_SIZE, align 4
  %232 = call i64 @ALIGN(i32 %230, i32 %231)
  %233 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %234 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = sext i32 %236 to i64
  %238 = add nsw i64 %237, %232
  %239 = trunc i64 %238 to i32
  store i32 %239, i32* %235, align 8
  %240 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %241 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @CHIP_ARCTURUS, align 8
  %244 = icmp ne i64 %242, %243
  br i1 %244, label %245, label %275

245:                                              ; preds = %193
  %246 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %247 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 2
  %249 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %248, align 8
  %250 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC2_JT, align 8
  %251 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %249, i64 %250
  store %struct.amdgpu_firmware_info* %251, %struct.amdgpu_firmware_info** %7, align 8
  %252 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC2_JT, align 8
  %253 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %254 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %253, i32 0, i32 0
  store i64 %252, i64* %254, align 8
  %255 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %256 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 4
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %257, align 8
  %259 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %260 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %259, i32 0, i32 1
  store %struct.TYPE_10__* %258, %struct.TYPE_10__** %260, align 8
  %261 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %262 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @le32_to_cpu(i32 %263)
  %265 = mul nsw i32 %264, 4
  %266 = load i32, i32* @PAGE_SIZE, align 4
  %267 = call i64 @ALIGN(i32 %265, i32 %266)
  %268 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %269 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = sext i32 %271 to i64
  %273 = add nsw i64 %272, %267
  %274 = trunc i64 %273 to i32
  store i32 %274, i32* %270, align 8
  br label %275

275:                                              ; preds = %245, %193
  br label %276

276:                                              ; preds = %275, %112
  br label %277

277:                                              ; preds = %276, %105
  br label %278

278:                                              ; preds = %277, %77, %32, %23
  %279 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %280 = call i32 @gfx_v9_0_check_if_need_gfxoff(%struct.amdgpu_device* %279)
  %281 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %282 = call i32 @gfx_v9_0_check_fw_write_wait(%struct.amdgpu_device* %281)
  %283 = load i32, i32* %6, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %307

285:                                              ; preds = %278
  %286 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %287 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %290 = call i32 @dev_err(i32 %288, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %289)
  %291 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %292 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 5
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %293, align 8
  %295 = call i32 @release_firmware(%struct.TYPE_10__* %294)
  %296 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %297 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 5
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %298, align 8
  %299 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %300 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 4
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %301, align 8
  %303 = call i32 @release_firmware(%struct.TYPE_10__* %302)
  %304 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %305 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %306, align 8
  br label %307

307:                                              ; preds = %285, %278
  %308 = load i32, i32* %6, align 4
  ret i32 %308
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_10__**, i8*, i32) #1

declare dso_local i32 @amdgpu_ucode_validate(%struct.TYPE_10__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @gfx_v9_0_check_if_need_gfxoff(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v9_0_check_fw_write_wait(%struct.amdgpu_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @release_firmware(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
