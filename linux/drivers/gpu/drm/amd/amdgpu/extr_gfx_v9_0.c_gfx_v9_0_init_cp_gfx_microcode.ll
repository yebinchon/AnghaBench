; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_init_cp_gfx_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_init_cp_gfx_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_9__, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i64, i32, %struct.amdgpu_firmware_info* }
%struct.amdgpu_firmware_info = type { i64, %struct.TYPE_10__* }
%struct.common_firmware_header = type { i32 }
%struct.gfx_firmware_header_v1_0 = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"amdgpu/%s_pfp.bin\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"amdgpu/%s_me.bin\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"amdgpu/%s_ce.bin\00", align 1
@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_CP_PFP = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_UCODE_ID_CP_ME = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_CP_CE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"gfx9: Failed to load firmware \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i8*)* @gfx_v9_0_init_cp_gfx_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_init_cp_gfx_microcode(%struct.amdgpu_device* %0, i8* %1) #0 {
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
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %16 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @request_firmware(%struct.TYPE_10__** %15, i8* %16, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %258

24:                                               ; preds = %2
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = call i32 @amdgpu_ucode_validate(%struct.TYPE_10__* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %258

33:                                               ; preds = %24
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %40, %struct.gfx_firmware_header_v1_0** %9, align 8
  %41 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %42 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @le32_to_cpu(i32 %44)
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 8
  store i8* %45, i8** %48, align 8
  %49 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %50 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @le32_to_cpu(i32 %51)
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 7
  store i8* %52, i8** %55, align 8
  %56 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @snprintf(i8* %56, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %60 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @request_firmware(%struct.TYPE_10__** %61, i8* %62, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %33
  br label %258

70:                                               ; preds = %33
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = call i32 @amdgpu_ucode_validate(%struct.TYPE_10__* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %258

79:                                               ; preds = %70
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %81 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %86, %struct.gfx_firmware_header_v1_0** %9, align 8
  %87 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %88 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @le32_to_cpu(i32 %90)
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 6
  store i8* %91, i8** %94, align 8
  %95 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %96 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @le32_to_cpu(i32 %97)
  %99 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %100 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 5
  store i8* %98, i8** %101, align 8
  %102 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %103 = load i8*, i8** %4, align 8
  %104 = call i32 @snprintf(i8* %102, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %103)
  %105 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %106 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %110 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @request_firmware(%struct.TYPE_10__** %107, i8* %108, i32 %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %79
  br label %258

116:                                              ; preds = %79
  %117 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %118 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = call i32 @amdgpu_ucode_validate(%struct.TYPE_10__* %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  br label %258

125:                                              ; preds = %116
  %126 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %127 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %132, %struct.gfx_firmware_header_v1_0** %9, align 8
  %133 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %134 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @le32_to_cpu(i32 %136)
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %139 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 4
  store i8* %137, i8** %140, align 8
  %141 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %142 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @le32_to_cpu(i32 %143)
  %145 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %146 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 3
  store i8* %144, i8** %147, align 8
  %148 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %149 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %257

154:                                              ; preds = %125
  %155 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %156 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 2
  %158 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %157, align 8
  %159 = load i64, i64* @AMDGPU_UCODE_ID_CP_PFP, align 8
  %160 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %158, i64 %159
  store %struct.amdgpu_firmware_info* %160, %struct.amdgpu_firmware_info** %7, align 8
  %161 = load i64, i64* @AMDGPU_UCODE_ID_CP_PFP, align 8
  %162 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %163 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  %164 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %165 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  %168 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %169 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %168, i32 0, i32 1
  store %struct.TYPE_10__* %167, %struct.TYPE_10__** %169, align 8
  %170 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %171 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %170, i32 0, i32 1
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = inttoptr i64 %174 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %175, %struct.common_firmware_header** %8, align 8
  %176 = load %struct.common_firmware_header*, %struct.common_firmware_header** %8, align 8
  %177 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i8* @le32_to_cpu(i32 %178)
  %180 = load i32, i32* @PAGE_SIZE, align 4
  %181 = call i64 @ALIGN(i8* %179, i32 %180)
  %182 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %183 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %186, %181
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %184, align 8
  %189 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %190 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 2
  %192 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %191, align 8
  %193 = load i64, i64* @AMDGPU_UCODE_ID_CP_ME, align 8
  %194 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %192, i64 %193
  store %struct.amdgpu_firmware_info* %194, %struct.amdgpu_firmware_info** %7, align 8
  %195 = load i64, i64* @AMDGPU_UCODE_ID_CP_ME, align 8
  %196 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %197 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %196, i32 0, i32 0
  store i64 %195, i64* %197, align 8
  %198 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %199 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %200, align 8
  %202 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %203 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %202, i32 0, i32 1
  store %struct.TYPE_10__* %201, %struct.TYPE_10__** %203, align 8
  %204 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %205 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %204, i32 0, i32 1
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = inttoptr i64 %208 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %209, %struct.common_firmware_header** %8, align 8
  %210 = load %struct.common_firmware_header*, %struct.common_firmware_header** %8, align 8
  %211 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i8* @le32_to_cpu(i32 %212)
  %214 = load i32, i32* @PAGE_SIZE, align 4
  %215 = call i64 @ALIGN(i8* %213, i32 %214)
  %216 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %217 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = sext i32 %219 to i64
  %221 = add nsw i64 %220, %215
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %218, align 8
  %223 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %224 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 2
  %226 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %225, align 8
  %227 = load i64, i64* @AMDGPU_UCODE_ID_CP_CE, align 8
  %228 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %226, i64 %227
  store %struct.amdgpu_firmware_info* %228, %struct.amdgpu_firmware_info** %7, align 8
  %229 = load i64, i64* @AMDGPU_UCODE_ID_CP_CE, align 8
  %230 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %231 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %230, i32 0, i32 0
  store i64 %229, i64* %231, align 8
  %232 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %233 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %234, align 8
  %236 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %237 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %236, i32 0, i32 1
  store %struct.TYPE_10__* %235, %struct.TYPE_10__** %237, align 8
  %238 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %239 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %238, i32 0, i32 1
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = inttoptr i64 %242 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %243, %struct.common_firmware_header** %8, align 8
  %244 = load %struct.common_firmware_header*, %struct.common_firmware_header** %8, align 8
  %245 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i8* @le32_to_cpu(i32 %246)
  %248 = load i32, i32* @PAGE_SIZE, align 4
  %249 = call i64 @ALIGN(i8* %247, i32 %248)
  %250 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %251 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = sext i32 %253 to i64
  %255 = add nsw i64 %254, %249
  %256 = trunc i64 %255 to i32
  store i32 %256, i32* %252, align 8
  br label %257

257:                                              ; preds = %154, %125
  br label %258

258:                                              ; preds = %257, %124, %115, %78, %69, %32, %23
  %259 = load i32, i32* %6, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %291

261:                                              ; preds = %258
  %262 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %263 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %266 = call i32 @dev_err(i32 %264, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %265)
  %267 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %268 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 2
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %269, align 8
  %271 = call i32 @release_firmware(%struct.TYPE_10__* %270)
  %272 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %273 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %274, align 8
  %275 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %276 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 1
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %277, align 8
  %279 = call i32 @release_firmware(%struct.TYPE_10__* %278)
  %280 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %281 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %282, align 8
  %283 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %284 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %285, align 8
  %287 = call i32 @release_firmware(%struct.TYPE_10__* %286)
  %288 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %289 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %290, align 8
  br label %291

291:                                              ; preds = %261, %258
  %292 = load i32, i32* %6, align 4
  ret i32 %292
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_10__**, i8*, i32) #1

declare dso_local i32 @amdgpu_ucode_validate(%struct.TYPE_10__*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @ALIGN(i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @release_firmware(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
