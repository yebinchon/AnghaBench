; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_uvd.c_radeon_uvd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_uvd.c_radeon_uvd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32, i64, i64*, i32**, i32*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.common_firmware_header = type { i32 }

@radeon_uvd_idle_work_handler = common dso_local global i32 0, align 4
@FIRMWARE_R600 = common dso_local global i8* null, align 8
@FIRMWARE_RS780 = common dso_local global i8* null, align 8
@FIRMWARE_RV770 = common dso_local global i8* null, align 8
@FIRMWARE_RV710 = common dso_local global i8* null, align 8
@FIRMWARE_CYPRESS = common dso_local global i8* null, align 8
@FIRMWARE_SUMO = common dso_local global i8* null, align 8
@FIRMWARE_TAHITI = common dso_local global i8* null, align 8
@FIRMWARE_BONAIRE_LEGACY = common dso_local global i8* null, align 8
@FIRMWARE_BONAIRE = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@RADEON_DEFAULT_UVD_HANDLES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"radeon_uvd: Can't load firmware \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Found UVD firmware Version: %hu.%hu Family ID: %hu\0A\00", align 1
@RADEON_MAX_UVD_HANDLES = common dso_local global i64 0, align 8
@RADEON_UVD_STACK_SIZE = common dso_local global i64 0, align 8
@RADEON_UVD_HEAP_SIZE = common dso_local global i64 0, align 8
@RADEON_UVD_SESSION_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"(%d) failed to allocate UVD bo\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"(%d) failed to reserve UVD bo\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"(%d) UVD bo pin failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"(%d) UVD map failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_uvd_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.common_firmware_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 8
  %16 = load i32, i32* @radeon_uvd_idle_work_handler, align 4
  %17 = call i32 @INIT_DELAYED_WORK(i32* %15, i32 %16)
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %38 [
    i32 141, label %21
    i32 139, label %21
    i32 137, label %21
    i32 140, label %21
    i32 138, label %21
    i32 143, label %23
    i32 142, label %23
    i32 133, label %25
    i32 136, label %27
    i32 135, label %27
    i32 134, label %27
    i32 154, label %29
    i32 152, label %29
    i32 151, label %29
    i32 144, label %29
    i32 155, label %29
    i32 132, label %31
    i32 131, label %31
    i32 146, label %31
    i32 156, label %31
    i32 159, label %31
    i32 129, label %31
    i32 157, label %31
    i32 130, label %33
    i32 128, label %33
    i32 145, label %33
    i32 160, label %33
    i32 147, label %33
    i32 158, label %35
    i32 150, label %35
    i32 149, label %35
    i32 153, label %35
    i32 148, label %35
  ]

21:                                               ; preds = %1, %1, %1, %1, %1
  %22 = load i8*, i8** @FIRMWARE_R600, align 8
  store i8* %22, i8** %6, align 8
  br label %41

23:                                               ; preds = %1, %1
  %24 = load i8*, i8** @FIRMWARE_RS780, align 8
  store i8* %24, i8** %6, align 8
  br label %41

25:                                               ; preds = %1
  %26 = load i8*, i8** @FIRMWARE_RV770, align 8
  store i8* %26, i8** %6, align 8
  br label %41

27:                                               ; preds = %1, %1, %1
  %28 = load i8*, i8** @FIRMWARE_RV710, align 8
  store i8* %28, i8** %6, align 8
  br label %41

29:                                               ; preds = %1, %1, %1, %1, %1
  %30 = load i8*, i8** @FIRMWARE_CYPRESS, align 8
  store i8* %30, i8** %6, align 8
  br label %41

31:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %32 = load i8*, i8** @FIRMWARE_SUMO, align 8
  store i8* %32, i8** %6, align 8
  br label %41

33:                                               ; preds = %1, %1, %1, %1, %1
  %34 = load i8*, i8** @FIRMWARE_TAHITI, align 8
  store i8* %34, i8** %6, align 8
  br label %41

35:                                               ; preds = %1, %1, %1, %1, %1
  %36 = load i8*, i8** @FIRMWARE_BONAIRE_LEGACY, align 8
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** @FIRMWARE_BONAIRE, align 8
  store i8* %37, i8** %5, align 8
  br label %41

38:                                               ; preds = %1
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %286

41:                                               ; preds = %35, %33, %31, %29, %27, %25, %23, %21
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load i64, i64* @RADEON_DEFAULT_UVD_HANDLES, align 8
  %46 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i64 %45, i64* %48, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %120

51:                                               ; preds = %41
  %52 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 3
  %54 = load i8*, i8** %5, align 8
  %55 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @request_firmware(%struct.TYPE_5__** %53, i8* %54, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %51
  %62 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 (i32, i8*, ...) @dev_err(i32 %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %65)
  br label %119

67:                                               ; preds = %51
  %68 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 3
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = bitcast i8* %73 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %74, %struct.common_firmware_header** %9, align 8
  %75 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %76 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %75, i32 0, i32 3
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = call i32 @radeon_ucode_validate(%struct.TYPE_5__* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %67
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %2, align 4
  br label %286

83:                                               ; preds = %67
  %84 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %85 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load %struct.common_firmware_header*, %struct.common_firmware_header** %9, align 8
  %88 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le32_to_cpu(i32 %89)
  %91 = and i32 %90, 255
  store i32 %91, i32* %12, align 4
  %92 = load %struct.common_firmware_header*, %struct.common_firmware_header** %9, align 8
  %93 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le32_to_cpu(i32 %94)
  %96 = ashr i32 %95, 24
  %97 = and i32 %96, 255
  store i32 %97, i32* %10, align 4
  %98 = load %struct.common_firmware_header*, %struct.common_firmware_header** %9, align 8
  %99 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le32_to_cpu(i32 %100)
  %102 = ashr i32 %101, 8
  %103 = and i32 %102, 255
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @DRM_INFO(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %105, i32 %106)
  %108 = load i32, i32* %10, align 4
  %109 = icmp uge i32 %108, 1
  br i1 %109, label %110, label %118

110:                                              ; preds = %83
  %111 = load i32, i32* %11, align 4
  %112 = icmp uge i32 %111, 55
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i64, i64* @RADEON_MAX_UVD_HANDLES, align 8
  %115 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %116 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  store i64 %114, i64* %117, align 8
  br label %118

118:                                              ; preds = %113, %110, %83
  br label %119

119:                                              ; preds = %118, %61
  br label %120

120:                                              ; preds = %119, %41
  %121 = load i8*, i8** %5, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %144

126:                                              ; preds = %123, %120
  %127 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %128 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %127, i32 0, i32 3
  %129 = load i8*, i8** %6, align 8
  %130 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %131 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @request_firmware(%struct.TYPE_5__** %128, i8* %129, i32 %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %126
  %137 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i8*, i8** %6, align 8
  %141 = call i32 (i32, i8*, ...) @dev_err(i32 %139, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %140)
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %2, align 4
  br label %286

143:                                              ; preds = %126
  br label %144

144:                                              ; preds = %143, %123
  %145 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %146 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %145, i32 0, i32 3
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, 8
  %151 = call i64 @RADEON_GPU_PAGE_ALIGN(i64 %150)
  %152 = load i64, i64* @RADEON_UVD_STACK_SIZE, align 8
  %153 = add i64 %151, %152
  %154 = load i64, i64* @RADEON_UVD_HEAP_SIZE, align 8
  %155 = add i64 %153, %154
  %156 = load i64, i64* @RADEON_UVD_SESSION_SIZE, align 8
  %157 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %158 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = mul i64 %156, %160
  %162 = add i64 %155, %161
  store i64 %162, i64* %4, align 8
  %163 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %164 = load i64, i64* %4, align 8
  %165 = load i32, i32* @PAGE_SIZE, align 4
  %166 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %167 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %168 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 5
  %170 = call i32 @radeon_bo_create(%struct.radeon_device* %163, i64 %164, i32 %165, i32 1, i32 %166, i32 0, i32* null, i32* null, i32* %169)
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %144
  %174 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %175 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %8, align 4
  %178 = call i32 (i32, i8*, ...) @dev_err(i32 %176, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* %8, align 4
  store i32 %179, i32* %2, align 4
  br label %286

180:                                              ; preds = %144
  %181 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %182 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @radeon_bo_reserve(i32 %184, i32 0)
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %180
  %189 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %190 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 5
  %192 = call i32 @radeon_bo_unref(i32* %191)
  %193 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %194 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %8, align 4
  %197 = call i32 (i32, i8*, ...) @dev_err(i32 %195, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* %8, align 4
  store i32 %198, i32* %2, align 4
  br label %286

199:                                              ; preds = %180
  %200 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %201 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %205 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %206 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 7
  %208 = call i32 @radeon_bo_pin(i32 %203, i32 %204, i32* %207)
  store i32 %208, i32* %8, align 4
  %209 = load i32, i32* %8, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %227

211:                                              ; preds = %199
  %212 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %213 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @radeon_bo_unreserve(i32 %215)
  %217 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %218 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 5
  %220 = call i32 @radeon_bo_unref(i32* %219)
  %221 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %222 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %8, align 4
  %225 = call i32 (i32, i8*, ...) @dev_err(i32 %223, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %224)
  %226 = load i32, i32* %8, align 4
  store i32 %226, i32* %2, align 4
  br label %286

227:                                              ; preds = %199
  %228 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %229 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %233 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 6
  %235 = call i32 @radeon_bo_kmap(i32 %231, i32* %234)
  store i32 %235, i32* %8, align 4
  %236 = load i32, i32* %8, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %227
  %239 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %240 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* %8, align 4
  %243 = call i32 (i32, i8*, ...) @dev_err(i32 %241, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %242)
  %244 = load i32, i32* %8, align 4
  store i32 %244, i32* %2, align 4
  br label %286

245:                                              ; preds = %227
  %246 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %247 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 5
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @radeon_bo_unreserve(i32 %249)
  store i32 0, i32* %7, align 4
  br label %251

251:                                              ; preds = %282, %245
  %252 = load i32, i32* %7, align 4
  %253 = sext i32 %252 to i64
  %254 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %255 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = icmp ult i64 %253, %257
  br i1 %258, label %259, label %285

259:                                              ; preds = %251
  %260 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %261 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 4
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %7, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = call i32 @atomic_set(i32* %266, i32 0)
  %268 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %269 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 3
  %271 = load i32**, i32*** %270, align 8
  %272 = load i32, i32* %7, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32*, i32** %271, i64 %273
  store i32* null, i32** %274, align 8
  %275 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %276 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 2
  %278 = load i64*, i64** %277, align 8
  %279 = load i32, i32* %7, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i64, i64* %278, i64 %280
  store i64 0, i64* %281, align 8
  br label %282

282:                                              ; preds = %259
  %283 = load i32, i32* %7, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %7, align 4
  br label %251

285:                                              ; preds = %251
  store i32 0, i32* %2, align 4
  br label %286

286:                                              ; preds = %285, %238, %211, %188, %173, %136, %81, %38
  %287 = load i32, i32* %2, align 4
  ret i32 %287
}

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @request_firmware(%struct.TYPE_5__**, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @radeon_ucode_validate(%struct.TYPE_5__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i32, i32) #1

declare dso_local i64 @RADEON_GPU_PAGE_ALIGN(i64) #1

declare dso_local i32 @radeon_bo_create(%struct.radeon_device*, i64, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @radeon_bo_reserve(i32, i32) #1

declare dso_local i32 @radeon_bo_unref(i32*) #1

declare dso_local i32 @radeon_bo_pin(i32, i32, i32*) #1

declare dso_local i32 @radeon_bo_unreserve(i32) #1

declare dso_local i32 @radeon_bo_kmap(i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
