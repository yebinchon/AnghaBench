; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_cp_init_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_cp_init_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CHIP_R100 = common dso_local global i64 0, align 8
@CHIP_RV100 = common dso_local global i64 0, align 8
@CHIP_RV200 = common dso_local global i64 0, align 8
@CHIP_RS100 = common dso_local global i64 0, align 8
@CHIP_RS200 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Loading R100 Microcode\0A\00", align 1
@FIRMWARE_R100 = common dso_local global i8* null, align 8
@CHIP_R200 = common dso_local global i64 0, align 8
@CHIP_RV250 = common dso_local global i64 0, align 8
@CHIP_RV280 = common dso_local global i64 0, align 8
@CHIP_RS300 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Loading R200 Microcode\0A\00", align 1
@FIRMWARE_R200 = common dso_local global i8* null, align 8
@CHIP_R300 = common dso_local global i64 0, align 8
@CHIP_R350 = common dso_local global i64 0, align 8
@CHIP_RV350 = common dso_local global i64 0, align 8
@CHIP_RV380 = common dso_local global i64 0, align 8
@CHIP_RS400 = common dso_local global i64 0, align 8
@CHIP_RS480 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"Loading R300 Microcode\0A\00", align 1
@FIRMWARE_R300 = common dso_local global i8* null, align 8
@CHIP_R420 = common dso_local global i64 0, align 8
@CHIP_R423 = common dso_local global i64 0, align 8
@CHIP_RV410 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"Loading R400 Microcode\0A\00", align 1
@FIRMWARE_R420 = common dso_local global i8* null, align 8
@CHIP_RS690 = common dso_local global i64 0, align 8
@CHIP_RS740 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"Loading RS690/RS740 Microcode\0A\00", align 1
@FIRMWARE_RS690 = common dso_local global i8* null, align 8
@CHIP_RS600 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"Loading RS600 Microcode\0A\00", align 1
@FIRMWARE_RS600 = common dso_local global i8* null, align 8
@CHIP_RV515 = common dso_local global i64 0, align 8
@CHIP_R520 = common dso_local global i64 0, align 8
@CHIP_RV530 = common dso_local global i64 0, align 8
@CHIP_R580 = common dso_local global i64 0, align 8
@CHIP_RV560 = common dso_local global i64 0, align 8
@CHIP_RV570 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"Loading R500 Microcode\0A\00", align 1
@FIRMWARE_R520 = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [41 x i8] c"radeon_cp: Failed to load firmware \22%s\22\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"radeon_cp: Bogus length %zu in firmware \22%s\22\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @r100_cp_init_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r100_cp_init_microcode(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i8* null, i8** %3, align 8
  %5 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CHIP_R100, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %35, label %11

11:                                               ; preds = %1
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CHIP_RV100, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %35, label %17

17:                                               ; preds = %11
  %18 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CHIP_RV200, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CHIP_RS100, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CHIP_RS200, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %23, %17, %11, %1
  %36 = call i32 @DRM_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i8*, i8** @FIRMWARE_R100, align 8
  store i8* %37, i8** %3, align 8
  br label %194

38:                                               ; preds = %29
  %39 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CHIP_R200, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %62, label %44

44:                                               ; preds = %38
  %45 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CHIP_RV250, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %62, label %50

50:                                               ; preds = %44
  %51 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CHIP_RV280, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %58 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CHIP_RS300, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56, %50, %44, %38
  %63 = call i32 @DRM_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i8*, i8** @FIRMWARE_R200, align 8
  store i8* %64, i8** %3, align 8
  br label %193

65:                                               ; preds = %56
  %66 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CHIP_R300, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %101, label %71

71:                                               ; preds = %65
  %72 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %73 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @CHIP_R350, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %101, label %77

77:                                               ; preds = %71
  %78 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %79 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @CHIP_RV350, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %101, label %83

83:                                               ; preds = %77
  %84 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %85 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @CHIP_RV380, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %101, label %89

89:                                               ; preds = %83
  %90 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %91 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @CHIP_RS400, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %97 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @CHIP_RS480, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95, %89, %83, %77, %71, %65
  %102 = call i32 @DRM_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %103 = load i8*, i8** @FIRMWARE_R300, align 8
  store i8* %103, i8** %3, align 8
  br label %192

104:                                              ; preds = %95
  %105 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %106 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @CHIP_R420, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %122, label %110

110:                                              ; preds = %104
  %111 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %112 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @CHIP_R423, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %118 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @CHIP_RV410, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %116, %110, %104
  %123 = call i32 @DRM_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %124 = load i8*, i8** @FIRMWARE_R420, align 8
  store i8* %124, i8** %3, align 8
  br label %191

125:                                              ; preds = %116
  %126 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %127 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @CHIP_RS690, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %137, label %131

131:                                              ; preds = %125
  %132 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %133 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @CHIP_RS740, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %131, %125
  %138 = call i32 @DRM_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %139 = load i8*, i8** @FIRMWARE_RS690, align 8
  store i8* %139, i8** %3, align 8
  br label %190

140:                                              ; preds = %131
  %141 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %142 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @CHIP_RS600, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = call i32 @DRM_INFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %148 = load i8*, i8** @FIRMWARE_RS600, align 8
  store i8* %148, i8** %3, align 8
  br label %189

149:                                              ; preds = %140
  %150 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %151 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @CHIP_RV515, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %185, label %155

155:                                              ; preds = %149
  %156 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %157 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @CHIP_R520, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %185, label %161

161:                                              ; preds = %155
  %162 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %163 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @CHIP_RV530, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %185, label %167

167:                                              ; preds = %161
  %168 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %169 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @CHIP_R580, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %185, label %173

173:                                              ; preds = %167
  %174 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %175 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @CHIP_RV560, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %185, label %179

179:                                              ; preds = %173
  %180 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %181 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @CHIP_RV570, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %179, %173, %167, %161, %155, %149
  %186 = call i32 @DRM_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %187 = load i8*, i8** @FIRMWARE_R520, align 8
  store i8* %187, i8** %3, align 8
  br label %188

188:                                              ; preds = %185, %179
  br label %189

189:                                              ; preds = %188, %146
  br label %190

190:                                              ; preds = %189, %137
  br label %191

191:                                              ; preds = %190, %122
  br label %192

192:                                              ; preds = %191, %101
  br label %193

193:                                              ; preds = %192, %62
  br label %194

194:                                              ; preds = %193, %35
  %195 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %196 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %195, i32 0, i32 1
  %197 = load i8*, i8** %3, align 8
  %198 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %199 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @request_firmware(%struct.TYPE_3__** %196, i8* %197, i32 %200)
  store i32 %201, i32* %4, align 4
  %202 = load i32, i32* %4, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %194
  %205 = load i8*, i8** %3, align 8
  %206 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* %205)
  br label %232

207:                                              ; preds = %194
  %208 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %209 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %208, i32 0, i32 1
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = srem i32 %212, 8
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %231

215:                                              ; preds = %207
  %216 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %217 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %216, i32 0, i32 1
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i8*, i8** %3, align 8
  %222 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i32 %220, i8* %221)
  %223 = load i32, i32* @EINVAL, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %4, align 4
  %225 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %226 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %225, i32 0, i32 1
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %226, align 8
  %228 = call i32 @release_firmware(%struct.TYPE_3__* %227)
  %229 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %230 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %229, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %230, align 8
  br label %231

231:                                              ; preds = %215, %207
  br label %232

232:                                              ; preds = %231, %204
  %233 = load i32, i32* %4, align 4
  ret i32 %233
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_3__**, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @release_firmware(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
