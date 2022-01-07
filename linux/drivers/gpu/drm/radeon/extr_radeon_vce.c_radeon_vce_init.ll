; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vce.c_radeon_vce_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vce.c_radeon_vce_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_3__, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32**, i32*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i8* }

@radeon_vce_init.fw_version = internal global i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [16 x i8] c"[ATI LIB=VCEFW,\00", align 1
@radeon_vce_init.fb_version = internal global i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"[ATI LIB=VCEFWSTATS,\00", align 1
@radeon_vce_idle_work_handler = common dso_local global i32 0, align 4
@FIRMWARE_TAHITI = common dso_local global i8* null, align 8
@FIRMWARE_BONAIRE = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"radeon_vce: Can't load firmware \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%2hhd.%2hhd.%2hhd]\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%2u]\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"Found VCE firmware/feedback version %hhd.%hhd.%hhd / %d!\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"(%d) failed to allocate VCE bo\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"(%d) failed to reserve VCE bo\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"(%d) VCE bo pin failed\0A\00", align 1
@RADEON_MAX_VCE_HANDLES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_vce_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 6
  %15 = load i32, i32* @radeon_vce_idle_work_handler, align 4
  %16 = call i32 @INIT_DELAYED_WORK(i32* %14, i32 %15)
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %24 [
    i32 129, label %20
    i32 130, label %20
    i32 128, label %20
    i32 131, label %20
    i32 137, label %20
    i32 136, label %22
    i32 133, label %22
    i32 134, label %22
    i32 135, label %22
    i32 132, label %22
  ]

20:                                               ; preds = %1, %1, %1, %1, %1
  %21 = load i8*, i8** @FIRMWARE_TAHITI, align 8
  store i8* %21, i8** %5, align 8
  br label %27

22:                                               ; preds = %1, %1, %1, %1, %1
  %23 = load i8*, i8** @FIRMWARE_BONAIRE, align 8
  store i8* %23, i8** %5, align 8
  br label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %290

27:                                               ; preds = %22, %20
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 3
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @request_firmware(%struct.TYPE_4__** %29, i8* %30, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %27
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 (i32, i8*, ...) @dev_err(i32 %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %2, align 4
  br label %290

44:                                               ; preds = %27
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** @radeon_vce_init.fw_version, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = sub nsw i32 %49, %51
  %53 = sub nsw i32 %52, 9
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %4, align 8
  %55 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 3
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %6, align 8
  br label %60

60:                                               ; preds = %72, %44
  %61 = load i64, i64* %4, align 8
  %62 = icmp ugt i64 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** @radeon_vce_init.fw_version, align 8
  %66 = load i8*, i8** @radeon_vce_init.fw_version, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = call i64 @strncmp(i8* %64, i8* %65, i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %77

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %4, align 8
  %74 = add i64 %73, -1
  store i64 %74, i64* %4, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %6, align 8
  br label %60

77:                                               ; preds = %70, %60
  %78 = load i64, i64* %4, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %290

83:                                               ; preds = %77
  %84 = load i8*, i8** @radeon_vce_init.fw_version, align 8
  %85 = call i32 @strlen(i8* %84)
  %86 = load i8*, i8** %6, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %6, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32* %7, i32* %8, i32* %9)
  %91 = icmp ne i32 %90, 3
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %290

95:                                               ; preds = %83
  %96 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %97 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %96, i32 0, i32 3
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i8*, i8** @radeon_vce_init.fb_version, align 8
  %102 = call i32 @strlen(i8* %101)
  %103 = sub nsw i32 %100, %102
  %104 = sub nsw i32 %103, 3
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %4, align 8
  %106 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %107 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %106, i32 0, i32 3
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %6, align 8
  br label %111

111:                                              ; preds = %123, %95
  %112 = load i64, i64* %4, align 8
  %113 = icmp ugt i64 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %111
  %115 = load i8*, i8** %6, align 8
  %116 = load i8*, i8** @radeon_vce_init.fb_version, align 8
  %117 = load i8*, i8** @radeon_vce_init.fb_version, align 8
  %118 = call i32 @strlen(i8* %117)
  %119 = call i64 @strncmp(i8* %115, i8* %116, i32 %118)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %128

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %4, align 8
  %125 = add i64 %124, -1
  store i64 %125, i64* %4, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %6, align 8
  br label %111

128:                                              ; preds = %121, %111
  %129 = load i64, i64* %4, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %290

134:                                              ; preds = %128
  %135 = load i8*, i8** @radeon_vce_init.fb_version, align 8
  %136 = call i32 @strlen(i8* %135)
  %137 = load i8*, i8** %6, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  store i8* %139, i8** %6, align 8
  %140 = load i8*, i8** %6, align 8
  %141 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %142 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 5
  %144 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %143)
  %145 = icmp ne i32 %144, 1
  br i1 %145, label %146, label %149

146:                                              ; preds = %134
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %290

149:                                              ; preds = %134
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %154 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @DRM_INFO(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %150, i32 %151, i32 %152, i32 %156)
  %158 = load i32, i32* %7, align 4
  %159 = shl i32 %158, 24
  %160 = load i32, i32* %8, align 4
  %161 = shl i32 %160, 16
  %162 = or i32 %159, %161
  %163 = load i32, i32* %9, align 4
  %164 = shl i32 %163, 8
  %165 = or i32 %162, %164
  %166 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %167 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  store i32 %165, i32* %168, align 8
  %169 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %170 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 671220224
  br i1 %173, label %174, label %189

174:                                              ; preds = %149
  %175 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %176 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 838861056
  br i1 %179, label %180, label %189

180:                                              ; preds = %174
  %181 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %182 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 838926848
  br i1 %185, label %186, label %189

186:                                              ; preds = %180
  %187 = load i32, i32* @EINVAL, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %2, align 4
  br label %290

189:                                              ; preds = %180, %174, %149
  %190 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %191 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp slt i32 %192, 136
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %196 = call i64 @vce_v1_0_bo_size(%struct.radeon_device* %195)
  store i64 %196, i64* %4, align 8
  br label %200

197:                                              ; preds = %189
  %198 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %199 = call i64 @vce_v2_0_bo_size(%struct.radeon_device* %198)
  store i64 %199, i64* %4, align 8
  br label %200

200:                                              ; preds = %197, %194
  %201 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %202 = load i64, i64* %4, align 8
  %203 = load i32, i32* @PAGE_SIZE, align 4
  %204 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %205 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %206 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 3
  %208 = call i32 @radeon_bo_create(%struct.radeon_device* %201, i64 %202, i32 %203, i32 1, i32 %204, i32 0, i32* null, i32* null, i32* %207)
  store i32 %208, i32* %11, align 4
  %209 = load i32, i32* %11, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %200
  %212 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %213 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %11, align 4
  %216 = call i32 (i32, i8*, ...) @dev_err(i32 %214, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %215)
  %217 = load i32, i32* %11, align 4
  store i32 %217, i32* %2, align 4
  br label %290

218:                                              ; preds = %200
  %219 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %220 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @radeon_bo_reserve(i32 %222, i32 0)
  store i32 %223, i32* %11, align 4
  %224 = load i32, i32* %11, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %237

226:                                              ; preds = %218
  %227 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %228 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 3
  %230 = call i32 @radeon_bo_unref(i32* %229)
  %231 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %232 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %11, align 4
  %235 = call i32 (i32, i8*, ...) @dev_err(i32 %233, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %234)
  %236 = load i32, i32* %11, align 4
  store i32 %236, i32* %2, align 4
  br label %290

237:                                              ; preds = %218
  %238 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %239 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %243 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %244 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 4
  %246 = call i32 @radeon_bo_pin(i32 %241, i32 %242, i32* %245)
  store i32 %246, i32* %11, align 4
  %247 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %248 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @radeon_bo_unreserve(i32 %250)
  %252 = load i32, i32* %11, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %265

254:                                              ; preds = %237
  %255 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %256 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 3
  %258 = call i32 @radeon_bo_unref(i32* %257)
  %259 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %260 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* %11, align 4
  %263 = call i32 (i32, i8*, ...) @dev_err(i32 %261, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %262)
  %264 = load i32, i32* %11, align 4
  store i32 %264, i32* %2, align 4
  br label %290

265:                                              ; preds = %237
  store i32 0, i32* %10, align 4
  br label %266

266:                                              ; preds = %286, %265
  %267 = load i32, i32* %10, align 4
  %268 = load i32, i32* @RADEON_MAX_VCE_HANDLES, align 4
  %269 = icmp slt i32 %267, %268
  br i1 %269, label %270, label %289

270:                                              ; preds = %266
  %271 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %272 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 2
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %10, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = call i32 @atomic_set(i32* %277, i32 0)
  %279 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %280 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 1
  %282 = load i32**, i32*** %281, align 8
  %283 = load i32, i32* %10, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32*, i32** %282, i64 %284
  store i32* null, i32** %285, align 8
  br label %286

286:                                              ; preds = %270
  %287 = load i32, i32* %10, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %10, align 4
  br label %266

289:                                              ; preds = %266
  store i32 0, i32* %2, align 4
  br label %290

290:                                              ; preds = %289, %254, %226, %211, %186, %146, %131, %92, %80, %37, %24
  %291 = load i32, i32* %2, align 4
  ret i32 %291
}

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @request_firmware(%struct.TYPE_4__**, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i32, i32, i32) #1

declare dso_local i64 @vce_v1_0_bo_size(%struct.radeon_device*) #1

declare dso_local i64 @vce_v2_0_bo_size(%struct.radeon_device*) #1

declare dso_local i32 @radeon_bo_create(%struct.radeon_device*, i64, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @radeon_bo_reserve(i32, i32) #1

declare dso_local i32 @radeon_bo_unref(i32*) #1

declare dso_local i32 @radeon_bo_pin(i32, i32, i32*) #1

declare dso_local i32 @radeon_bo_unreserve(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
