; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_plane.c_drm_mode_cursor_universal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_plane.c_drm_mode_cursor_universal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, i32, %struct.drm_plane*, %struct.drm_device* }
%struct.drm_plane = type { %struct.drm_framebuffer*, %struct.TYPE_2__*, %struct.drm_crtc* }
%struct.drm_framebuffer = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.drm_framebuffer* }
%struct.drm_device = type { i32 }
%struct.drm_mode_cursor2 = type { i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.drm_file = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32 }

@DRM_FORMAT_ARGB8888 = common dso_local global i32 0, align 4
@DRM_MODE_CURSOR_BO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"failed to wrap cursor buffer in drm framebuffer\0A\00", align 1
@DRM_MODE_CURSOR_MOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_mode_cursor2*, %struct.drm_file*, %struct.drm_modeset_acquire_ctx*)* @drm_mode_cursor_universal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_mode_cursor_universal(%struct.drm_crtc* %0, %struct.drm_mode_cursor2* %1, %struct.drm_file* %2, %struct.drm_modeset_acquire_ctx* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_mode_cursor2*, align 8
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.drm_plane*, align 8
  %12 = alloca %struct.drm_framebuffer*, align 8
  %13 = alloca %struct.drm_mode_fb_cmd2, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %6, align 8
  store %struct.drm_mode_cursor2* %1, %struct.drm_mode_cursor2** %7, align 8
  store %struct.drm_file* %2, %struct.drm_file** %8, align 8
  store %struct.drm_modeset_acquire_ctx* %3, %struct.drm_modeset_acquire_ctx** %9, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %22 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %21, i32 0, i32 3
  %23 = load %struct.drm_device*, %struct.drm_device** %22, align 8
  store %struct.drm_device* %23, %struct.drm_device** %10, align 8
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %25 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %24, i32 0, i32 2
  %26 = load %struct.drm_plane*, %struct.drm_plane** %25, align 8
  store %struct.drm_plane* %26, %struct.drm_plane** %11, align 8
  store %struct.drm_framebuffer* null, %struct.drm_framebuffer** %12, align 8
  %27 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %13, i32 0, i32 0
  %28 = load %struct.drm_mode_cursor2*, %struct.drm_mode_cursor2** %7, align 8
  %29 = getelementptr inbounds %struct.drm_mode_cursor2, %struct.drm_mode_cursor2* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 4
  %32 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %13, i32 0, i32 1
  %33 = load %struct.drm_mode_cursor2*, %struct.drm_mode_cursor2** %7, align 8
  %34 = getelementptr inbounds %struct.drm_mode_cursor2, %struct.drm_mode_cursor2* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 4
  store i32 %36, i32* %32, align 4
  %37 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %13, i32 0, i32 2
  %38 = load i32, i32* @DRM_FORMAT_ARGB8888, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %13, i32 0, i32 3
  %40 = load %struct.drm_mode_cursor2*, %struct.drm_mode_cursor2** %7, align 8
  %41 = getelementptr inbounds %struct.drm_mode_cursor2, %struct.drm_mode_cursor2* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %39, align 4
  %43 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %13, i32 0, i32 4
  %44 = load %struct.drm_mode_cursor2*, %struct.drm_mode_cursor2** %7, align 8
  %45 = getelementptr inbounds %struct.drm_mode_cursor2, %struct.drm_mode_cursor2* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %43, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %47 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %48 = icmp ne %struct.drm_plane* %47, null
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %53 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %52, i32 0, i32 2
  %54 = load %struct.drm_crtc*, %struct.drm_crtc** %53, align 8
  %55 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %56 = icmp ne %struct.drm_crtc* %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %4
  %58 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %59 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %58, i32 0, i32 2
  %60 = load %struct.drm_crtc*, %struct.drm_crtc** %59, align 8
  %61 = icmp ne %struct.drm_crtc* %60, null
  br label %62

62:                                               ; preds = %57, %4
  %63 = phi i1 [ false, %4 ], [ %61, %57 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @WARN_ON(i32 %64)
  %66 = load %struct.drm_mode_cursor2*, %struct.drm_mode_cursor2** %7, align 8
  %67 = getelementptr inbounds %struct.drm_mode_cursor2, %struct.drm_mode_cursor2* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @DRM_MODE_CURSOR_BO, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %101

72:                                               ; preds = %62
  %73 = load %struct.drm_mode_cursor2*, %struct.drm_mode_cursor2** %7, align 8
  %74 = getelementptr inbounds %struct.drm_mode_cursor2, %struct.drm_mode_cursor2* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %99

77:                                               ; preds = %72
  %78 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %79 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %80 = call %struct.drm_framebuffer* @drm_internal_framebuffer_create(%struct.drm_device* %78, %struct.drm_mode_fb_cmd2* %13, %struct.drm_file* %79)
  store %struct.drm_framebuffer* %80, %struct.drm_framebuffer** %12, align 8
  %81 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %82 = call i64 @IS_ERR(%struct.drm_framebuffer* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %86 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %87 = call i32 @PTR_ERR(%struct.drm_framebuffer* %86)
  store i32 %87, i32* %5, align 4
  br label %219

88:                                               ; preds = %77
  %89 = load %struct.drm_mode_cursor2*, %struct.drm_mode_cursor2** %7, align 8
  %90 = getelementptr inbounds %struct.drm_mode_cursor2, %struct.drm_mode_cursor2* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %93 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.drm_mode_cursor2*, %struct.drm_mode_cursor2** %7, align 8
  %95 = getelementptr inbounds %struct.drm_mode_cursor2, %struct.drm_mode_cursor2* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %98 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  br label %100

99:                                               ; preds = %72
  store %struct.drm_framebuffer* null, %struct.drm_framebuffer** %12, align 8
  br label %100

100:                                              ; preds = %99, %88
  br label %123

101:                                              ; preds = %62
  %102 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %103 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %102, i32 0, i32 1
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = icmp ne %struct.TYPE_2__* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %108 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %110, align 8
  store %struct.drm_framebuffer* %111, %struct.drm_framebuffer** %12, align 8
  br label %116

112:                                              ; preds = %101
  %113 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %114 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %113, i32 0, i32 0
  %115 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %114, align 8
  store %struct.drm_framebuffer* %115, %struct.drm_framebuffer** %12, align 8
  br label %116

116:                                              ; preds = %112, %106
  %117 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %118 = icmp ne %struct.drm_framebuffer* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %121 = call i32 @drm_framebuffer_get(%struct.drm_framebuffer* %120)
  br label %122

122:                                              ; preds = %119, %116
  br label %123

123:                                              ; preds = %122, %100
  %124 = load %struct.drm_mode_cursor2*, %struct.drm_mode_cursor2** %7, align 8
  %125 = getelementptr inbounds %struct.drm_mode_cursor2, %struct.drm_mode_cursor2* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @DRM_MODE_CURSOR_MOVE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %123
  %131 = load %struct.drm_mode_cursor2*, %struct.drm_mode_cursor2** %7, align 8
  %132 = getelementptr inbounds %struct.drm_mode_cursor2, %struct.drm_mode_cursor2* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %14, align 4
  %134 = load %struct.drm_mode_cursor2*, %struct.drm_mode_cursor2** %7, align 8
  %135 = getelementptr inbounds %struct.drm_mode_cursor2, %struct.drm_mode_cursor2* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %15, align 4
  br label %144

137:                                              ; preds = %123
  %138 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %139 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %14, align 4
  %141 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %142 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* %15, align 4
  br label %144

144:                                              ; preds = %137, %130
  %145 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %146 = icmp ne %struct.drm_framebuffer* %145, null
  br i1 %146, label %147, label %162

147:                                              ; preds = %144
  %148 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %149 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %16, align 4
  %151 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %152 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %17, align 4
  %154 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %155 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = shl i32 %156, 16
  store i32 %157, i32* %18, align 4
  %158 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %159 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = shl i32 %160, 16
  store i32 %161, i32* %19, align 4
  br label %162

162:                                              ; preds = %147, %144
  %163 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %164 = call i64 @drm_drv_uses_atomic_modeset(%struct.drm_device* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %162
  %167 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %168 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %169 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* %15, align 4
  %172 = load i32, i32* %16, align 4
  %173 = load i32, i32* %17, align 4
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* %19, align 4
  %176 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %9, align 8
  %177 = call i32 @__setplane_atomic(%struct.drm_plane* %167, %struct.drm_crtc* %168, %struct.drm_framebuffer* %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 0, i32 0, i32 %174, i32 %175, %struct.drm_modeset_acquire_ctx* %176)
  store i32 %177, i32* %20, align 4
  br label %190

178:                                              ; preds = %162
  %179 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %180 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %181 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* %16, align 4
  %185 = load i32, i32* %17, align 4
  %186 = load i32, i32* %18, align 4
  %187 = load i32, i32* %19, align 4
  %188 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %9, align 8
  %189 = call i32 @__setplane_internal(%struct.drm_plane* %179, %struct.drm_crtc* %180, %struct.drm_framebuffer* %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 0, i32 0, i32 %186, i32 %187, %struct.drm_modeset_acquire_ctx* %188)
  store i32 %189, i32* %20, align 4
  br label %190

190:                                              ; preds = %178, %166
  %191 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %192 = icmp ne %struct.drm_framebuffer* %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %195 = call i32 @drm_framebuffer_put(%struct.drm_framebuffer* %194)
  br label %196

196:                                              ; preds = %193, %190
  %197 = load i32, i32* %20, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %217

199:                                              ; preds = %196
  %200 = load %struct.drm_mode_cursor2*, %struct.drm_mode_cursor2** %7, align 8
  %201 = getelementptr inbounds %struct.drm_mode_cursor2, %struct.drm_mode_cursor2* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @DRM_MODE_CURSOR_MOVE, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %217

206:                                              ; preds = %199
  %207 = load %struct.drm_mode_cursor2*, %struct.drm_mode_cursor2** %7, align 8
  %208 = getelementptr inbounds %struct.drm_mode_cursor2, %struct.drm_mode_cursor2* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %211 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 4
  %212 = load %struct.drm_mode_cursor2*, %struct.drm_mode_cursor2** %7, align 8
  %213 = getelementptr inbounds %struct.drm_mode_cursor2, %struct.drm_mode_cursor2* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %216 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %215, i32 0, i32 0
  store i32 %214, i32* %216, align 8
  br label %217

217:                                              ; preds = %206, %199, %196
  %218 = load i32, i32* %20, align 4
  store i32 %218, i32* %5, align 4
  br label %219

219:                                              ; preds = %217, %84
  %220 = load i32, i32* %5, align 4
  ret i32 %220
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.drm_framebuffer* @drm_internal_framebuffer_create(%struct.drm_device*, %struct.drm_mode_fb_cmd2*, %struct.drm_file*) #1

declare dso_local i64 @IS_ERR(%struct.drm_framebuffer*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_framebuffer*) #1

declare dso_local i32 @drm_framebuffer_get(%struct.drm_framebuffer*) #1

declare dso_local i64 @drm_drv_uses_atomic_modeset(%struct.drm_device*) #1

declare dso_local i32 @__setplane_atomic(%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @__setplane_internal(%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_framebuffer_put(%struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
