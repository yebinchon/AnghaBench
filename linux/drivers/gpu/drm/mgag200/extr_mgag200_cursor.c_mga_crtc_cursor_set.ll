; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_cursor.c_mga_crtc_cursor_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_cursor.c_mga_crtc_cursor_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_file = type { i32 }
%struct.mga_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object* }
%struct.drm_gem_vram_object = type { i32 }
%struct.drm_gem_object = type { i32 }

@MGA_CURPOSXL = common dso_local global i32 0, align 4
@MGA_CURPOSXH = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to lock user bo\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to kmap user buffer updates\0A\00", align 1
@DRM_GEM_VRAM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to pin cursor buffer: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to kmap cursor updates: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"failed to get cursor scanout address: %d\0A\00", align 1
@warn_transparent = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [63 x i8] c"Video card doesn't support cursors with partial transparency.\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Not enabling hardware cursor.\0A\00", align 1
@warn_palette = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [57 x i8] c"Video card only supports cursors with up to 16 colours.\0A\00", align 1
@MGA1064_CURSOR_BASE_ADR_LOW = common dso_local global i32 0, align 4
@MGA1064_CURSOR_BASE_ADR_HI = common dso_local global i32 0, align 4
@MGA1064_CURSOR_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mga_crtc_cursor_set(%struct.drm_crtc* %0, %struct.drm_file* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_device*, align 8
  %13 = alloca %struct.mga_device*, align 8
  %14 = alloca %struct.drm_gem_vram_object*, align 8
  %15 = alloca %struct.drm_gem_vram_object*, align 8
  %16 = alloca %struct.drm_gem_vram_object*, align 8
  %17 = alloca %struct.drm_gem_vram_object*, align 8
  %18 = alloca %struct.drm_gem_object*, align 8
  %19 = alloca %struct.drm_gem_vram_object*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca [16 x i32], align 16
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca [48 x i32], align 16
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_file* %1, %struct.drm_file** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %37 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %36, i32 0, i32 0
  %38 = load %struct.drm_device*, %struct.drm_device** %37, align 8
  store %struct.drm_device* %38, %struct.drm_device** %12, align 8
  %39 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.mga_device*
  store %struct.mga_device* %42, %struct.mga_device** %13, align 8
  %43 = load %struct.mga_device*, %struct.mga_device** %13, align 8
  %44 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %45, align 8
  store %struct.drm_gem_vram_object* %46, %struct.drm_gem_vram_object** %14, align 8
  %47 = load %struct.mga_device*, %struct.mga_device** %13, align 8
  %48 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %49, align 8
  store %struct.drm_gem_vram_object* %50, %struct.drm_gem_vram_object** %15, align 8
  %51 = load %struct.mga_device*, %struct.mga_device** %13, align 8
  %52 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %53, align 8
  store %struct.drm_gem_vram_object* %54, %struct.drm_gem_vram_object** %16, align 8
  store %struct.drm_gem_vram_object* null, %struct.drm_gem_vram_object** %19, align 8
  store i32 0, i32* %20, align 4
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 0, i64 0
  store i32* %55, i32** %27, align 8
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %56 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %14, align 8
  %57 = icmp ne %struct.drm_gem_vram_object* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %5
  %59 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %15, align 8
  %60 = icmp ne %struct.drm_gem_vram_object* %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %58, %5
  %62 = load i32, i32* @MGA_CURPOSXL, align 4
  %63 = call i32 @WREG8(i32 %62, i32 0)
  %64 = load i32, i32* @MGA_CURPOSXH, align 4
  %65 = call i32 @WREG8(i32 %64, i32 0)
  %66 = load i32, i32* @ENOTSUPP, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %476

68:                                               ; preds = %58
  %69 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %16, align 8
  %70 = icmp ne %struct.drm_gem_vram_object* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %14, align 8
  %73 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %16, align 8
  %74 = icmp ne %struct.drm_gem_vram_object* %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %15, align 8
  %77 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %16, align 8
  %78 = icmp ne %struct.drm_gem_vram_object* %76, %77
  br label %79

79:                                               ; preds = %75, %71, %68
  %80 = phi i1 [ false, %71 ], [ false, %68 ], [ %78, %75 ]
  %81 = zext i1 %80 to i32
  %82 = call i64 @WARN_ON(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* @ENOTSUPP, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %476

87:                                               ; preds = %79
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %92 = icmp ne %struct.drm_file* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %90, %87
  %94 = load %struct.mga_device*, %struct.mga_device** %13, align 8
  %95 = call i32 @mga_hide_cursor(%struct.mga_device* %94)
  store i32 0, i32* %6, align 4
  br label %476

96:                                               ; preds = %90
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 64
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 64
  br i1 %101, label %102, label %109

102:                                              ; preds = %99, %96
  %103 = load i32, i32* @MGA_CURPOSXL, align 4
  %104 = call i32 @WREG8(i32 %103, i32 0)
  %105 = load i32, i32* @MGA_CURPOSXH, align 4
  %106 = call i32 @WREG8(i32 %105, i32 0)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %6, align 4
  br label %476

109:                                              ; preds = %99
  %110 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %16, align 8
  %111 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %14, align 8
  %112 = icmp eq %struct.drm_gem_vram_object* %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %15, align 8
  store %struct.drm_gem_vram_object* %114, %struct.drm_gem_vram_object** %17, align 8
  br label %117

115:                                              ; preds = %109
  %116 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %14, align 8
  store %struct.drm_gem_vram_object* %116, %struct.drm_gem_vram_object** %17, align 8
  br label %117

117:                                              ; preds = %115, %113
  %118 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %118, i32 %119)
  store %struct.drm_gem_object* %120, %struct.drm_gem_object** %18, align 8
  %121 = load %struct.drm_gem_object*, %struct.drm_gem_object** %18, align 8
  %122 = icmp ne %struct.drm_gem_object* %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %117
  %124 = load i32, i32* @ENOENT, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %6, align 4
  br label %476

126:                                              ; preds = %117
  %127 = load %struct.drm_gem_object*, %struct.drm_gem_object** %18, align 8
  %128 = call %struct.drm_gem_vram_object* @drm_gem_vram_of_gem(%struct.drm_gem_object* %127)
  store %struct.drm_gem_vram_object* %128, %struct.drm_gem_vram_object** %19, align 8
  %129 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %19, align 8
  %130 = call i32 @drm_gem_vram_pin(%struct.drm_gem_vram_object* %129, i32 0)
  store i32 %130, i32* %20, align 4
  %131 = load i32, i32* %20, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %126
  %134 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %135 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %134, i32 0, i32 0
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = call i32 (i32*, i8*, ...) @dev_err(i32* %137, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %472

139:                                              ; preds = %126
  %140 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %19, align 8
  %141 = call i32* @drm_gem_vram_kmap(%struct.drm_gem_vram_object* %140, i32 1, i32* null)
  store i32* %141, i32** %21, align 8
  %142 = load i32*, i32** %21, align 8
  %143 = call i64 @IS_ERR(i32* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %139
  %146 = load i32*, i32** %21, align 8
  %147 = call i32 @PTR_ERR(i32* %146)
  store i32 %147, i32* %20, align 4
  %148 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %149 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %148, i32 0, i32 0
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = call i32 (i32*, i8*, ...) @dev_err(i32* %151, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %469

153:                                              ; preds = %139
  %154 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %17, align 8
  %155 = load i32, i32* @DRM_GEM_VRAM_PL_FLAG_VRAM, align 4
  %156 = call i32 @drm_gem_vram_pin(%struct.drm_gem_vram_object* %154, i32 %155)
  store i32 %156, i32* %20, align 4
  %157 = load i32, i32* %20, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %153
  %160 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %161 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %160, i32 0, i32 0
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32, i32* %20, align 4
  %165 = call i32 (i32*, i8*, ...) @dev_err(i32* %163, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %164)
  br label %466

166:                                              ; preds = %153
  %167 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %17, align 8
  %168 = call i32* @drm_gem_vram_kmap(%struct.drm_gem_vram_object* %167, i32 1, i32* null)
  store i32* %168, i32** %22, align 8
  %169 = load i32*, i32** %22, align 8
  %170 = call i64 @IS_ERR(i32* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %166
  %173 = load i32*, i32** %22, align 8
  %174 = call i32 @PTR_ERR(i32* %173)
  store i32 %174, i32* %20, align 4
  %175 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %176 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %175, i32 0, i32 0
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i32, i32* %20, align 4
  %180 = call i32 (i32*, i8*, ...) @dev_err(i32* %178, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %179)
  br label %463

181:                                              ; preds = %166
  %182 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %17, align 8
  %183 = call i64 @drm_gem_vram_offset(%struct.drm_gem_vram_object* %182)
  store i64 %183, i64* %32, align 8
  %184 = load i64, i64* %32, align 8
  %185 = icmp slt i64 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %181
  %187 = load i64, i64* %32, align 8
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %20, align 4
  %189 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %190 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %189, i32 0, i32 0
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i32, i32* %20, align 4
  %194 = call i32 (i32*, i8*, ...) @dev_err(i32* %192, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %193)
  br label %460

195:                                              ; preds = %181
  %196 = load i64, i64* %32, align 8
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %33, align 4
  %198 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 0, i64 0
  %199 = call i32 @memset(i32* %198, i32 0, i32 64)
  store i32 0, i32* %23, align 4
  br label %200

200:                                              ; preds = %285, %195
  %201 = load i32, i32* %23, align 4
  %202 = icmp ult i32 %201, 16384
  br i1 %202, label %203, label %288

203:                                              ; preds = %200
  %204 = load i32*, i32** %21, align 8
  %205 = load i32, i32* %23, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = call i32 @ioread32(i32* %207)
  store i32 %208, i32* %29, align 4
  %209 = load i32, i32* %29, align 4
  %210 = ashr i32 %209, 24
  %211 = icmp ne i32 %210, 255
  br i1 %211, label %212, label %233

212:                                              ; preds = %203
  %213 = load i32, i32* %29, align 4
  %214 = ashr i32 %213, 24
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %233

216:                                              ; preds = %212
  %217 = load i32, i32* @warn_transparent, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %230

219:                                              ; preds = %216
  %220 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %221 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %220, i32 0, i32 0
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = call i32 @dev_info(i32* %223, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0))
  %225 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %226 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %225, i32 0, i32 0
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = call i32 @dev_info(i32* %228, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* @warn_transparent, align 4
  br label %230

230:                                              ; preds = %219, %216
  %231 = load i32, i32* @EINVAL, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %20, align 4
  br label %460

233:                                              ; preds = %212, %203
  %234 = load i32, i32* %29, align 4
  %235 = ashr i32 %234, 24
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %233
  br label %285

238:                                              ; preds = %233
  store i32 0, i32* %30, align 4
  %239 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 0, i64 0
  store i32* %239, i32** %28, align 8
  br label %240

240:                                              ; preds = %251, %238
  %241 = load i32*, i32** %28, align 8
  %242 = load i32*, i32** %27, align 8
  %243 = icmp ne i32* %241, %242
  br i1 %243, label %244, label %254

244:                                              ; preds = %240
  %245 = load i32*, i32** %28, align 8
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %29, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %244
  store i32 1, i32* %30, align 4
  br label %254

250:                                              ; preds = %244
  br label %251

251:                                              ; preds = %250
  %252 = load i32*, i32** %28, align 8
  %253 = getelementptr inbounds i32, i32* %252, i32 1
  store i32* %253, i32** %28, align 8
  br label %240

254:                                              ; preds = %249, %240
  %255 = load i32, i32* %30, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %254
  br label %285

258:                                              ; preds = %254
  %259 = load i32, i32* %31, align 4
  %260 = icmp sge i32 %259, 16
  br i1 %260, label %261, label %278

261:                                              ; preds = %258
  %262 = load i32, i32* @warn_palette, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %275

264:                                              ; preds = %261
  %265 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %266 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %265, i32 0, i32 0
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 0
  %269 = call i32 @dev_info(i32* %268, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0))
  %270 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %271 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %270, i32 0, i32 0
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 0
  %274 = call i32 @dev_info(i32* %273, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* @warn_palette, align 4
  br label %275

275:                                              ; preds = %264, %261
  %276 = load i32, i32* @EINVAL, align 4
  %277 = sub nsw i32 0, %276
  store i32 %277, i32* %20, align 4
  br label %460

278:                                              ; preds = %258
  %279 = load i32, i32* %29, align 4
  %280 = load i32*, i32** %27, align 8
  store i32 %279, i32* %280, align 4
  %281 = load i32*, i32** %27, align 8
  %282 = getelementptr inbounds i32, i32* %281, i32 1
  store i32* %282, i32** %27, align 8
  %283 = load i32, i32* %31, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %31, align 4
  br label %285

285:                                              ; preds = %278, %257, %237
  %286 = load i32, i32* %23, align 4
  %287 = add i32 %286, 4
  store i32 %287, i32* %23, align 4
  br label %200

288:                                              ; preds = %200
  store i32 0, i32* %23, align 4
  br label %289

289:                                              ; preds = %339, %288
  %290 = load i32, i32* %23, align 4
  %291 = load i32, i32* %31, align 4
  %292 = icmp ult i32 %290, %291
  br i1 %292, label %293, label %342

293:                                              ; preds = %289
  %294 = load i32, i32* %23, align 4
  %295 = icmp ule i32 %294, 2
  br i1 %295, label %296, label %300

296:                                              ; preds = %293
  %297 = load i32, i32* %23, align 4
  %298 = mul i32 %297, 4
  %299 = add i32 8, %298
  store i32 %299, i32* %34, align 4
  br label %304

300:                                              ; preds = %293
  %301 = load i32, i32* %23, align 4
  %302 = mul i32 %301, 3
  %303 = add i32 96, %302
  store i32 %303, i32* %34, align 4
  br label %304

304:                                              ; preds = %300, %296
  %305 = load i32, i32* %34, align 4
  %306 = load i32, i32* %23, align 4
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 0, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = and i32 %309, 255
  %311 = call i32 @WREG_DAC(i32 %305, i32 %310)
  %312 = load i32, i32* %34, align 4
  %313 = add nsw i32 %312, 1
  %314 = load i32, i32* %23, align 4
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 0, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = ashr i32 %317, 8
  %319 = and i32 %318, 255
  %320 = call i32 @WREG_DAC(i32 %313, i32 %319)
  %321 = load i32, i32* %34, align 4
  %322 = add nsw i32 %321, 2
  %323 = load i32, i32* %23, align 4
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 0, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = ashr i32 %326, 16
  %328 = and i32 %327, 255
  %329 = call i32 @WREG_DAC(i32 %322, i32 %328)
  %330 = load i32, i32* %23, align 4
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 0, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = ashr i32 %333, 24
  %335 = and i32 %334, 255
  %336 = icmp ne i32 %335, 255
  %337 = zext i1 %336 to i32
  %338 = call i32 @BUG_ON(i32 %337)
  br label %339

339:                                              ; preds = %304
  %340 = load i32, i32* %23, align 4
  %341 = add i32 %340, 1
  store i32 %341, i32* %23, align 4
  br label %289

342:                                              ; preds = %289
  store i32 0, i32* %24, align 4
  br label %343

343:                                              ; preds = %426, %342
  %344 = load i32, i32* %24, align 4
  %345 = icmp ult i32 %344, 64
  br i1 %345, label %346, label %429

346:                                              ; preds = %343
  %347 = getelementptr inbounds [48 x i32], [48 x i32]* %35, i64 0, i64 0
  %348 = call i32 @memset(i32* %347, i32 0, i32 48)
  store i32 0, i32* %25, align 4
  br label %349

349:                                              ; preds = %415, %346
  %350 = load i32, i32* %25, align 4
  %351 = icmp ult i32 %350, 64
  br i1 %351, label %352, label %418

352:                                              ; preds = %349
  %353 = load i32*, i32** %21, align 8
  %354 = load i32, i32* %25, align 4
  %355 = load i32, i32* %24, align 4
  %356 = mul i32 64, %355
  %357 = add i32 %354, %356
  %358 = mul i32 4, %357
  %359 = zext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %353, i64 %359
  %361 = call i32 @ioread32(i32* %360)
  store i32 %361, i32* %29, align 4
  %362 = load i32, i32* %29, align 4
  %363 = ashr i32 %362, 24
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %376

365:                                              ; preds = %352
  %366 = load i32, i32* %25, align 4
  %367 = urem i32 %366, 8
  %368 = ashr i32 128, %367
  %369 = load i32, i32* %25, align 4
  %370 = udiv i32 %369, 8
  %371 = sub i32 47, %370
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds [48 x i32], [48 x i32]* %35, i64 0, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = or i32 %374, %368
  store i32 %375, i32* %373, align 4
  br label %415

376:                                              ; preds = %352
  store i32 0, i32* %23, align 4
  br label %377

377:                                              ; preds = %411, %376
  %378 = load i32, i32* %23, align 4
  %379 = load i32, i32* %31, align 4
  %380 = icmp ult i32 %378, %379
  br i1 %380, label %381, label %414

381:                                              ; preds = %377
  %382 = load i32, i32* %23, align 4
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 0, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = load i32, i32* %29, align 4
  %387 = icmp eq i32 %385, %386
  br i1 %387, label %388, label %410

388:                                              ; preds = %381
  %389 = load i32, i32* %25, align 4
  %390 = urem i32 %389, 2
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %401

392:                                              ; preds = %388
  %393 = load i32, i32* %23, align 4
  %394 = shl i32 %393, 4
  %395 = load i32, i32* %25, align 4
  %396 = udiv i32 %395, 2
  %397 = zext i32 %396 to i64
  %398 = getelementptr inbounds [48 x i32], [48 x i32]* %35, i64 0, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = or i32 %399, %394
  store i32 %400, i32* %398, align 4
  br label %409

401:                                              ; preds = %388
  %402 = load i32, i32* %23, align 4
  %403 = load i32, i32* %25, align 4
  %404 = udiv i32 %403, 2
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds [48 x i32], [48 x i32]* %35, i64 0, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = or i32 %407, %402
  store i32 %408, i32* %406, align 4
  br label %409

409:                                              ; preds = %401, %392
  br label %414

410:                                              ; preds = %381
  br label %411

411:                                              ; preds = %410
  %412 = load i32, i32* %23, align 4
  %413 = add i32 %412, 1
  store i32 %413, i32* %23, align 4
  br label %377

414:                                              ; preds = %409, %377
  br label %415

415:                                              ; preds = %414, %365
  %416 = load i32, i32* %25, align 4
  %417 = add i32 %416, 1
  store i32 %417, i32* %25, align 4
  br label %349

418:                                              ; preds = %349
  %419 = load i32*, i32** %22, align 8
  %420 = load i32, i32* %24, align 4
  %421 = mul i32 %420, 48
  %422 = zext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %419, i64 %422
  %424 = getelementptr inbounds [48 x i32], [48 x i32]* %35, i64 0, i64 0
  %425 = call i32 @memcpy_toio(i32* %423, i32* %424, i32 48)
  br label %426

426:                                              ; preds = %418
  %427 = load i32, i32* %24, align 4
  %428 = add i32 %427, 1
  store i32 %428, i32* %24, align 4
  br label %343

429:                                              ; preds = %343
  %430 = load i32, i32* @MGA1064_CURSOR_BASE_ADR_LOW, align 4
  %431 = load i32, i32* %33, align 4
  %432 = ashr i32 %431, 10
  %433 = and i32 %432, 255
  %434 = call i32 @WREG_DAC(i32 %430, i32 %433)
  %435 = load i32, i32* @MGA1064_CURSOR_BASE_ADR_HI, align 4
  %436 = load i32, i32* %33, align 4
  %437 = ashr i32 %436, 18
  %438 = and i32 %437, 63
  %439 = call i32 @WREG_DAC(i32 %435, i32 %438)
  %440 = load i32, i32* @MGA1064_CURSOR_CTL, align 4
  %441 = call i32 @WREG_DAC(i32 %440, i32 4)
  %442 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %16, align 8
  %443 = icmp ne %struct.drm_gem_vram_object* %442, null
  br i1 %443, label %444, label %447

444:                                              ; preds = %429
  %445 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %16, align 8
  %446 = call i32 @drm_gem_vram_unpin(%struct.drm_gem_vram_object* %445)
  br label %447

447:                                              ; preds = %444, %429
  %448 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %17, align 8
  %449 = load %struct.mga_device*, %struct.mga_device** %13, align 8
  %450 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %450, i32 0, i32 0
  store %struct.drm_gem_vram_object* %448, %struct.drm_gem_vram_object** %451, align 8
  %452 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %17, align 8
  %453 = call i32 @drm_gem_vram_kunmap(%struct.drm_gem_vram_object* %452)
  %454 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %19, align 8
  %455 = call i32 @drm_gem_vram_kunmap(%struct.drm_gem_vram_object* %454)
  %456 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %19, align 8
  %457 = call i32 @drm_gem_vram_unpin(%struct.drm_gem_vram_object* %456)
  %458 = load %struct.drm_gem_object*, %struct.drm_gem_object** %18, align 8
  %459 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %458)
  store i32 0, i32* %6, align 4
  br label %476

460:                                              ; preds = %275, %230, %186
  %461 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %17, align 8
  %462 = call i32 @drm_gem_vram_kunmap(%struct.drm_gem_vram_object* %461)
  br label %463

463:                                              ; preds = %460, %172
  %464 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %17, align 8
  %465 = call i32 @drm_gem_vram_unpin(%struct.drm_gem_vram_object* %464)
  br label %466

466:                                              ; preds = %463, %159
  %467 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %19, align 8
  %468 = call i32 @drm_gem_vram_kunmap(%struct.drm_gem_vram_object* %467)
  br label %469

469:                                              ; preds = %466, %145
  %470 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %19, align 8
  %471 = call i32 @drm_gem_vram_unpin(%struct.drm_gem_vram_object* %470)
  br label %472

472:                                              ; preds = %469, %133
  %473 = load %struct.drm_gem_object*, %struct.drm_gem_object** %18, align 8
  %474 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %473)
  %475 = load i32, i32* %20, align 4
  store i32 %475, i32* %6, align 4
  br label %476

476:                                              ; preds = %472, %447, %123, %102, %93, %84, %61
  %477 = load i32, i32* %6, align 4
  ret i32 %477
}

declare dso_local i32 @WREG8(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mga_hide_cursor(%struct.mga_device*) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.drm_gem_vram_object* @drm_gem_vram_of_gem(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_vram_pin(%struct.drm_gem_vram_object*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32* @drm_gem_vram_kmap(%struct.drm_gem_vram_object*, i32, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @drm_gem_vram_offset(%struct.drm_gem_vram_object*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @WREG_DAC(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy_toio(i32*, i32*, i32) #1

declare dso_local i32 @drm_gem_vram_unpin(%struct.drm_gem_vram_object*) #1

declare dso_local i32 @drm_gem_vram_kunmap(%struct.drm_gem_vram_object*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
