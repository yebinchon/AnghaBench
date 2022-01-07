; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_crtc_update_monitors_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_crtc_update_monitors_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i64, i64, %struct.TYPE_5__*, %struct.drm_display_mode, %struct.drm_device* }
%struct.TYPE_5__ = type { i64 }
%struct.drm_display_mode = type { i64, i64 }
%struct.drm_device = type { %struct.qxl_device* }
%struct.qxl_device = type { i64, i64, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, %struct.qxl_head* }
%struct.qxl_head = type { i32, i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.qxl_crtc = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"no primary surface, skip (%s)\0A\00", align 1
@qxl_num_crtc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"inactive head 0, skip (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"head %d, %dx%d, at +%d+%d, %s (%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"active heads %d -> %d (%d total)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i8*)* @qxl_crtc_update_monitors_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qxl_crtc_update_monitors_config(%struct.drm_crtc* %0, i8* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.qxl_device*, align 8
  %7 = alloca %struct.qxl_crtc*, align 8
  %8 = alloca %struct.qxl_head, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 4
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.qxl_device*, %struct.qxl_device** %16, align 8
  store %struct.qxl_device* %17, %struct.qxl_device** %6, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %19 = call %struct.qxl_crtc* @to_qxl_crtc(%struct.drm_crtc* %18)
  store %struct.qxl_crtc* %19, %struct.qxl_crtc** %7, align 8
  %20 = load %struct.qxl_crtc*, %struct.qxl_crtc** %7, align 8
  %21 = getelementptr inbounds %struct.qxl_crtc, %struct.qxl_crtc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %24 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %256

30:                                               ; preds = %2
  %31 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %32 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %31, i32 0, i32 2
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @qxl_num_crtc, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %30
  br label %256

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %8, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %8, i32 0, i32 5
  store i64 0, i64* %43, align 8
  %44 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %45 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %44, i32 0, i32 2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %9, align 4
  %49 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %50 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %110

55:                                               ; preds = %40
  %56 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %57 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %56, i32 0, i32 3
  store %struct.drm_display_mode* %57, %struct.drm_display_mode** %11, align 8
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %59 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %8, i32 0, i32 1
  store i64 %60, i64* %61, align 8
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %63 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %8, i32 0, i32 2
  store i64 %64, i64* %65, align 8
  %66 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %67 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %8, i32 0, i32 3
  store i64 %68, i64* %69, align 8
  %70 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %71 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %8, i32 0, i32 4
  store i64 %72, i64* %73, align 8
  %74 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %75 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %74, i32 0, i32 2
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %55
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  %85 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %86 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %85, i32 0, i32 2
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store i32 %84, i32* %88, align 8
  br label %89

89:                                               ; preds = %82, %55
  %90 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %91 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %94 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %92, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %89
  %98 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %99 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %98, i32 0, i32 3
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %8, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, %105
  store i64 %108, i64* %106, align 8
  br label %109

109:                                              ; preds = %97, %89
  br label %137

110:                                              ; preds = %40
  %111 = load i32, i32* %10, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %133

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %8, i32 0, i32 1
  store i64 0, i64* %114, align 8
  %115 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %8, i32 0, i32 2
  store i64 0, i64* %115, align 8
  %116 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %8, i32 0, i32 3
  store i64 0, i64* %116, align 8
  %117 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %8, i32 0, i32 4
  store i64 0, i64* %117, align 8
  %118 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %119 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %118, i32 0, i32 2
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %113
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %129 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %128, i32 0, i32 2
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  store i32 %127, i32* %131, align 8
  br label %132

132:                                              ; preds = %126, %113
  br label %136

133:                                              ; preds = %110
  %134 = load i8*, i8** %4, align 8
  %135 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %134)
  br label %256

136:                                              ; preds = %132
  br label %137

137:                                              ; preds = %136, %109
  %138 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %8, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %141 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %140, i32 0, i32 2
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  %144 = load %struct.qxl_head*, %struct.qxl_head** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %144, i64 %146
  %148 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %139, %149
  br i1 %150, label %151, label %202

151:                                              ; preds = %137
  %152 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %8, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %155 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %154, i32 0, i32 2
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  %158 = load %struct.qxl_head*, %struct.qxl_head** %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %158, i64 %160
  %162 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %153, %163
  br i1 %164, label %165, label %202

165:                                              ; preds = %151
  %166 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %8, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %169 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %168, i32 0, i32 2
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 2
  %172 = load %struct.qxl_head*, %struct.qxl_head** %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %172, i64 %174
  %176 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %167, %177
  br i1 %178, label %179, label %202

179:                                              ; preds = %165
  %180 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %8, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %183 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %182, i32 0, i32 2
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 2
  %186 = load %struct.qxl_head*, %struct.qxl_head** %185, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %186, i64 %188
  %190 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = icmp eq i64 %181, %191
  br i1 %192, label %193, label %202

193:                                              ; preds = %179
  %194 = load i32, i32* %9, align 4
  %195 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %196 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %195, i32 0, i32 2
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp eq i32 %194, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %193
  br label %256

202:                                              ; preds = %193, %179, %165, %151, %137
  %203 = load i32, i32* %10, align 4
  %204 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %8, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %8, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %8, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %8, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %213 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %212, i32 0, i32 2
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  %218 = zext i1 %217 to i64
  %219 = select i1 %217, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %220 = load i8*, i8** %4, align 8
  %221 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %203, i64 %205, i64 %207, i64 %209, i64 %211, i8* %219, i8* %220)
  %222 = load i32, i32* %9, align 4
  %223 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %224 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %223, i32 0, i32 2
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp ne i32 %222, %227
  br i1 %228, label %229, label %238

229:                                              ; preds = %202
  %230 = load i32, i32* %9, align 4
  %231 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %232 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %231, i32 0, i32 2
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @qxl_num_crtc, align 4
  %237 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %230, i32 %235, i32 %236)
  br label %238

238:                                              ; preds = %229, %202
  %239 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %240 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %239, i32 0, i32 2
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 2
  %243 = load %struct.qxl_head*, %struct.qxl_head** %242, align 8
  %244 = load i32, i32* %10, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %243, i64 %245
  %247 = bitcast %struct.qxl_head* %246 to i8*
  %248 = bitcast %struct.qxl_head* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %247, i8* align 8 %248, i64 48, i1 false)
  %249 = load i32, i32* @qxl_num_crtc, align 4
  %250 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %251 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %250, i32 0, i32 2
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 1
  store i32 %249, i32* %253, align 4
  %254 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %255 = call i32 @qxl_send_monitors_config(%struct.qxl_device* %254)
  br label %256

256:                                              ; preds = %238, %201, %133, %39, %27
  ret void
}

declare dso_local %struct.qxl_crtc* @to_qxl_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @qxl_send_monitors_config(%struct.qxl_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
