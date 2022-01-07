; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_uvd.c_amdgpu_uvd_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_uvd.c_amdgpu_uvd_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_9__, i32, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, i32, i32**, i32*, %struct.TYPE_8__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.common_firmware_header = type { i32, i32 }

@amdgpu_uvd_idle_work_handler = common dso_local global i32 0, align 4
@FIRMWARE_TONGA = common dso_local global i8* null, align 8
@FIRMWARE_FIJI = common dso_local global i8* null, align 8
@FIRMWARE_CARRIZO = common dso_local global i8* null, align 8
@FIRMWARE_STONEY = common dso_local global i8* null, align 8
@FIRMWARE_POLARIS10 = common dso_local global i8* null, align 8
@FIRMWARE_POLARIS11 = common dso_local global i8* null, align 8
@FIRMWARE_POLARIS12 = common dso_local global i8* null, align 8
@FIRMWARE_VEGA10 = common dso_local global i8* null, align 8
@FIRMWARE_VEGA12 = common dso_local global i8* null, align 8
@FIRMWARE_VEGAM = common dso_local global i8* null, align 8
@FIRMWARE_VEGA20 = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"amdgpu_uvd: Can't load firmware \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"amdgpu_uvd: Can't validate firmware \22%s\22\0A\00", align 1
@AMDGPU_DEFAULT_UVD_HANDLES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"Found UVD firmware Version: %hu.%hu Family ID: %hu\0A\00", align 1
@AMDGPU_MAX_UVD_HANDLES = common dso_local global i8* null, align 8
@FW_1_66_16 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"POLARIS10/11 UVD firmware version %hu.%hu is too old.\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"Found UVD firmware ENC: %hu.%hu DEC: .%hu Family ID: %hu\0A\00", align 1
@AMDGPU_UVD_STACK_SIZE = common dso_local global i64 0, align 8
@AMDGPU_UVD_HEAP_SIZE = common dso_local global i64 0, align 8
@AMDGPU_UVD_SESSION_SIZE = common dso_local global i64 0, align 8
@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"(%d) failed to allocate UVD bo\0A\00", align 1
@AMD_IP_BLOCK_TYPE_UVD = common dso_local global i32 0, align 4
@FW_1_65_10 = common dso_local global i32 0, align 4
@FW_1_87_11 = common dso_local global i32 0, align 4
@FW_1_87_12 = common dso_local global i32 0, align 4
@FW_1_37_15 = common dso_local global i32 0, align 4
@FIRMWARE_BONAIRE = common dso_local global i8* null, align 8
@FIRMWARE_HAWAII = common dso_local global i8* null, align 8
@FIRMWARE_KABINI = common dso_local global i8* null, align 8
@FIRMWARE_KAVERI = common dso_local global i8* null, align 8
@FIRMWARE_MULLINS = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_uvd_sw_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.common_firmware_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 10
  %19 = load i32, i32* @amdgpu_uvd_idle_work_handler, align 4
  %20 = call i32 @INIT_DELAYED_WORK(i32* %18, i32 %19)
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %46 [
    i32 132, label %24
    i32 141, label %26
    i32 142, label %28
    i32 133, label %30
    i32 136, label %32
    i32 135, label %34
    i32 134, label %36
    i32 131, label %38
    i32 130, label %40
    i32 128, label %42
    i32 129, label %44
  ]

24:                                               ; preds = %1
  %25 = load i8*, i8** @FIRMWARE_TONGA, align 8
  store i8* %25, i8** %5, align 8
  br label %49

26:                                               ; preds = %1
  %27 = load i8*, i8** @FIRMWARE_FIJI, align 8
  store i8* %27, i8** %5, align 8
  br label %49

28:                                               ; preds = %1
  %29 = load i8*, i8** @FIRMWARE_CARRIZO, align 8
  store i8* %29, i8** %5, align 8
  br label %49

30:                                               ; preds = %1
  %31 = load i8*, i8** @FIRMWARE_STONEY, align 8
  store i8* %31, i8** %5, align 8
  br label %49

32:                                               ; preds = %1
  %33 = load i8*, i8** @FIRMWARE_POLARIS10, align 8
  store i8* %33, i8** %5, align 8
  br label %49

34:                                               ; preds = %1
  %35 = load i8*, i8** @FIRMWARE_POLARIS11, align 8
  store i8* %35, i8** %5, align 8
  br label %49

36:                                               ; preds = %1
  %37 = load i8*, i8** @FIRMWARE_POLARIS12, align 8
  store i8* %37, i8** %5, align 8
  br label %49

38:                                               ; preds = %1
  %39 = load i8*, i8** @FIRMWARE_VEGA10, align 8
  store i8* %39, i8** %5, align 8
  br label %49

40:                                               ; preds = %1
  %41 = load i8*, i8** @FIRMWARE_VEGA12, align 8
  store i8* %41, i8** %5, align 8
  br label %49

42:                                               ; preds = %1
  %43 = load i8*, i8** @FIRMWARE_VEGAM, align 8
  store i8* %43, i8** %5, align 8
  br label %49

44:                                               ; preds = %1
  %45 = load i8*, i8** @FIRMWARE_VEGA20, align 8
  store i8* %45, i8** %5, align 8
  br label %49

46:                                               ; preds = %1
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %393

49:                                               ; preds = %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 9
  %53 = load i8*, i8** %5, align 8
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %55 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @request_firmware(%struct.TYPE_10__** %52, i8* %53, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %49
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 (i32, i8*, ...) @dev_err(i32 %63, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %2, align 4
  br label %393

67:                                               ; preds = %49
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %69 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 9
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = call i32 @amdgpu_ucode_validate(%struct.TYPE_10__* %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %67
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 (i32, i8*, ...) @dev_err(i32 %78, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %79)
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %82 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 9
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = call i32 @release_firmware(%struct.TYPE_10__* %84)
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 9
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %88, align 8
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %2, align 4
  br label %393

90:                                               ; preds = %67
  %91 = load i64, i64* @AMDGPU_DEFAULT_UVD_HANDLES, align 8
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  store i64 %91, i64* %94, align 8
  %95 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %96 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 9
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %101, %struct.common_firmware_header** %6, align 8
  %102 = load %struct.common_firmware_header*, %struct.common_firmware_header** %6, align 8
  %103 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @le32_to_cpu(i32 %104)
  %106 = and i32 %105, 255
  store i32 %106, i32* %7, align 4
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %108 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %109, 129
  br i1 %110, label %111, label %175

111:                                              ; preds = %90
  %112 = load %struct.common_firmware_header*, %struct.common_firmware_header** %6, align 8
  %113 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @le32_to_cpu(i32 %114)
  %116 = ashr i32 %115, 24
  %117 = and i32 %116, 255
  store i32 %117, i32* %11, align 4
  %118 = load %struct.common_firmware_header*, %struct.common_firmware_header** %6, align 8
  %119 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @le32_to_cpu(i32 %120)
  %122 = ashr i32 %121, 8
  %123 = and i32 %122, 255
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %7, align 4
  %127 = call i32 (i8*, i32, i32, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* %11, align 4
  %129 = icmp ugt i32 %128, 1
  br i1 %129, label %136, label %130

130:                                              ; preds = %111
  %131 = load i32, i32* %11, align 4
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %142

133:                                              ; preds = %130
  %134 = load i32, i32* %12, align 4
  %135 = icmp uge i32 %134, 80
  br i1 %135, label %136, label %142

136:                                              ; preds = %133, %111
  %137 = load i8*, i8** @AMDGPU_MAX_UVD_HANDLES, align 8
  %138 = ptrtoint i8* %137 to i64
  %139 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %140 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  store i64 %138, i64* %141, align 8
  br label %142

142:                                              ; preds = %136, %133, %130
  %143 = load i32, i32* %11, align 4
  %144 = shl i32 %143, 24
  %145 = load i32, i32* %12, align 4
  %146 = shl i32 %145, 16
  %147 = or i32 %144, %146
  %148 = load i32, i32* %7, align 4
  %149 = shl i32 %148, 8
  %150 = or i32 %147, %149
  %151 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %152 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  store i32 %150, i32* %153, align 8
  %154 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %155 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 136
  br i1 %157, label %163, label %158

158:                                              ; preds = %142
  %159 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %160 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, 135
  br i1 %162, label %163, label %174

163:                                              ; preds = %158, %142
  %164 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %165 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @FW_1_66_16, align 4
  %169 = icmp ult i32 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %163
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %12, align 4
  %173 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %170, %163, %158
  br label %211

175:                                              ; preds = %90
  %176 = load %struct.common_firmware_header*, %struct.common_firmware_header** %6, align 8
  %177 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @le32_to_cpu(i32 %178)
  %180 = ashr i32 %179, 8
  %181 = and i32 %180, 255
  store i32 %181, i32* %15, align 4
  %182 = load %struct.common_firmware_header*, %struct.common_firmware_header** %6, align 8
  %183 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @le32_to_cpu(i32 %184)
  %186 = ashr i32 %185, 24
  %187 = and i32 %186, 63
  store i32 %187, i32* %14, align 4
  %188 = load %struct.common_firmware_header*, %struct.common_firmware_header** %6, align 8
  %189 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @le32_to_cpu(i32 %190)
  %192 = ashr i32 %191, 30
  %193 = and i32 %192, 3
  store i32 %193, i32* %13, align 4
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* %7, align 4
  %198 = call i32 (i8*, i32, i32, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %194, i32 %195, i32 %196, i32 %197)
  %199 = load i8*, i8** @AMDGPU_MAX_UVD_HANDLES, align 8
  %200 = ptrtoint i8* %199 to i64
  %201 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %202 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  store i64 %200, i64* %203, align 8
  %204 = load %struct.common_firmware_header*, %struct.common_firmware_header** %6, align 8
  %205 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @le32_to_cpu(i32 %206)
  %208 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %209 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 1
  store i32 %207, i32* %210, align 8
  br label %211

211:                                              ; preds = %175, %174
  %212 = load i64, i64* @AMDGPU_UVD_STACK_SIZE, align 8
  %213 = load i64, i64* @AMDGPU_UVD_HEAP_SIZE, align 8
  %214 = add i64 %212, %213
  %215 = load i64, i64* @AMDGPU_UVD_SESSION_SIZE, align 8
  %216 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %217 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = mul i64 %215, %219
  %221 = add i64 %214, %220
  store i64 %221, i64* %4, align 8
  %222 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %223 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %228, label %237

228:                                              ; preds = %211
  %229 = load %struct.common_firmware_header*, %struct.common_firmware_header** %6, align 8
  %230 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @le32_to_cpu(i32 %231)
  %233 = add nsw i32 %232, 8
  %234 = call i64 @AMDGPU_GPU_PAGE_ALIGN(i32 %233)
  %235 = load i64, i64* %4, align 8
  %236 = add i64 %235, %234
  store i64 %236, i64* %4, align 8
  br label %237

237:                                              ; preds = %228, %211
  store i32 0, i32* %9, align 4
  br label %238

238:                                              ; preds = %295, %237
  %239 = load i32, i32* %9, align 4
  %240 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %241 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = icmp slt i32 %239, %243
  br i1 %244, label %245, label %298

245:                                              ; preds = %238
  %246 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %247 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* %9, align 4
  %251 = shl i32 1, %250
  %252 = and i32 %249, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %245
  br label %295

255:                                              ; preds = %245
  %256 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %257 = load i64, i64* %4, align 8
  %258 = load i32, i32* @PAGE_SIZE, align 4
  %259 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %260 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %261 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 8
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %262, align 8
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 2
  %268 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %269 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 8
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %270, align 8
  %272 = load i32, i32* %9, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 1
  %276 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %277 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 8
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %278, align 8
  %280 = load i32, i32* %9, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 0
  %284 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %256, i64 %257, i32 %258, i32 %259, i32* %267, i32* %275, i32* %283)
  store i32 %284, i32* %10, align 4
  %285 = load i32, i32* %10, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %294

287:                                              ; preds = %255
  %288 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %289 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* %10, align 4
  %292 = call i32 (i32, i8*, ...) @dev_err(i32 %290, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %291)
  %293 = load i32, i32* %10, align 4
  store i32 %293, i32* %2, align 4
  br label %393

294:                                              ; preds = %255
  br label %295

295:                                              ; preds = %294, %254
  %296 = load i32, i32* %9, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %9, align 4
  br label %238

298:                                              ; preds = %238
  store i32 0, i32* %8, align 4
  br label %299

299:                                              ; preds = %323, %298
  %300 = load i32, i32* %8, align 4
  %301 = sext i32 %300 to i64
  %302 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %303 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = icmp ult i64 %301, %305
  br i1 %306, label %307, label %326

307:                                              ; preds = %299
  %308 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %309 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 7
  %311 = load i32*, i32** %310, align 8
  %312 = load i32, i32* %8, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %311, i64 %313
  %315 = call i32 @atomic_set(i32* %314, i32 0)
  %316 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %317 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 6
  %319 = load i32**, i32*** %318, align 8
  %320 = load i32, i32* %8, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32*, i32** %319, i64 %321
  store i32* null, i32** %322, align 8
  br label %323

323:                                              ; preds = %307
  %324 = load i32, i32* %8, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %8, align 4
  br label %299

326:                                              ; preds = %299
  %327 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %328 = load i32, i32* @AMD_IP_BLOCK_TYPE_UVD, align 4
  %329 = call i32 @amdgpu_device_ip_block_version_cmp(%struct.amdgpu_device* %327, i32 %328, i32 5, i32 0)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %335, label %331

331:                                              ; preds = %326
  %332 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %333 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 4
  store i32 1, i32* %334, align 4
  br label %335

335:                                              ; preds = %331, %326
  %336 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %337 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  switch i32 %338, label %383 [
    i32 132, label %339
    i32 142, label %350
    i32 141, label %361
    i32 133, label %372
  ]

339:                                              ; preds = %335
  %340 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %341 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @FW_1_65_10, align 4
  %345 = icmp uge i32 %343, %344
  %346 = zext i1 %345 to i32
  %347 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %348 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i32 0, i32 5
  store i32 %346, i32* %349, align 8
  br label %392

350:                                              ; preds = %335
  %351 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %352 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* @FW_1_87_11, align 4
  %356 = icmp uge i32 %354, %355
  %357 = zext i1 %356 to i32
  %358 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %359 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %359, i32 0, i32 5
  store i32 %357, i32* %360, align 8
  br label %392

361:                                              ; preds = %335
  %362 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %363 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @FW_1_87_12, align 4
  %367 = icmp uge i32 %365, %366
  %368 = zext i1 %367 to i32
  %369 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %370 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 5
  store i32 %368, i32* %371, align 8
  br label %392

372:                                              ; preds = %335
  %373 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %374 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 8
  %377 = load i32, i32* @FW_1_37_15, align 4
  %378 = icmp uge i32 %376, %377
  %379 = zext i1 %378 to i32
  %380 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %381 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %381, i32 0, i32 5
  store i32 %379, i32* %382, align 8
  br label %392

383:                                              ; preds = %335
  %384 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %385 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = icmp sge i32 %386, 136
  %388 = zext i1 %387 to i32
  %389 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %390 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 5
  store i32 %388, i32* %391, align 8
  br label %392

392:                                              ; preds = %383, %372, %361, %350, %339
  store i32 0, i32* %2, align 4
  br label %393

393:                                              ; preds = %392, %287, %75, %60, %46
  %394 = load i32, i32* %2, align 4
  ret i32 %394
}

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @request_firmware(%struct.TYPE_10__**, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @amdgpu_ucode_validate(%struct.TYPE_10__*) #1

declare dso_local i32 @release_firmware(%struct.TYPE_10__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i64 @AMDGPU_GPU_PAGE_ALIGN(i32) #1

declare dso_local i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device*, i64, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @amdgpu_device_ip_block_version_cmp(%struct.amdgpu_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
