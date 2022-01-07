; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_vp_video_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_vp_video_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_context = type { i32, i32 }
%struct.exynos_drm_plane = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.exynos_drm_plane_state = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32, %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i64, i32*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@DRM_FORMAT_NV21 = common dso_local global i64 0, align 8
@DRM_FORMAT_MOD_SAMSUNG_64_32_TILE = common dso_local global i64 0, align 8
@MXR_BIT_INTERLACE = common dso_local global i32 0, align 4
@VP_MODE = common dso_local global i32 0, align 4
@VP_MODE_LINE_SKIP = common dso_local global i32 0, align 4
@VP_MODE_NV21 = common dso_local global i32 0, align 4
@VP_MODE_NV12 = common dso_local global i32 0, align 4
@VP_MODE_MEM_TILED = common dso_local global i32 0, align 4
@VP_MODE_MEM_LINEAR = common dso_local global i32 0, align 4
@VP_MODE_FMT_MASK = common dso_local global i32 0, align 4
@VP_IMG_SIZE_Y = common dso_local global i32 0, align 4
@VP_IMG_SIZE_C = common dso_local global i32 0, align 4
@VP_SRC_WIDTH = common dso_local global i32 0, align 4
@VP_SRC_H_POSITION = common dso_local global i32 0, align 4
@VP_DST_WIDTH = common dso_local global i32 0, align 4
@VP_DST_H_POSITION = common dso_local global i32 0, align 4
@VP_SRC_HEIGHT = common dso_local global i32 0, align 4
@VP_SRC_V_POSITION = common dso_local global i32 0, align 4
@VP_DST_HEIGHT = common dso_local global i32 0, align 4
@VP_DST_V_POSITION = common dso_local global i32 0, align 4
@VP_H_RATIO = common dso_local global i32 0, align 4
@VP_V_RATIO = common dso_local global i32 0, align 4
@VP_ENDIAN_MODE = common dso_local global i32 0, align 4
@VP_ENDIAN_MODE_LITTLE = common dso_local global i32 0, align 4
@VP_TOP_Y_PTR = common dso_local global i32 0, align 4
@VP_BOT_Y_PTR = common dso_local global i32 0, align 4
@VP_TOP_C_PTR = common dso_local global i32 0, align 4
@VP_BOT_C_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mixer_context*, %struct.exynos_drm_plane*)* @vp_video_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vp_video_buffer(%struct.mixer_context* %0, %struct.exynos_drm_plane* %1) #0 {
  %3 = alloca %struct.mixer_context*, align 8
  %4 = alloca %struct.exynos_drm_plane*, align 8
  %5 = alloca %struct.exynos_drm_plane_state*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mixer_context* %0, %struct.mixer_context** %3, align 8
  store %struct.exynos_drm_plane* %1, %struct.exynos_drm_plane** %4, align 8
  %14 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %4, align 8
  %15 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.exynos_drm_plane_state* @to_exynos_plane_state(i32 %17)
  store %struct.exynos_drm_plane_state* %18, %struct.exynos_drm_plane_state** %5, align 8
  %19 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %20 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %21, align 8
  store %struct.drm_framebuffer* %22, %struct.drm_framebuffer** %6, align 8
  %23 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %24 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  %28 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %29 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %28, i32 0, i32 3
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DRM_FORMAT_NV21, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %12, align 4
  %36 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %37 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DRM_FORMAT_MOD_SAMSUNG_64_32_TILE, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %11, align 4
  %42 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %43 = call i32 @exynos_drm_fb_dma_addr(%struct.drm_framebuffer* %42, i32 0)
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %43, i32* %44, align 4
  %45 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %46 = call i32 @exynos_drm_fb_dma_addr(%struct.drm_framebuffer* %45, i32 1)
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @MXR_BIT_INTERLACE, align 4
  %49 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %50 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %49, i32 0, i32 1
  %51 = call i64 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %85

53:                                               ; preds = %2
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 64
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 64
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %63, i32* %64, align 4
  br label %84

65:                                               ; preds = %53
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %69 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %67, %72
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %78 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %76, %81
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %65, %56
  br label %88

85:                                               ; preds = %2
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 0, i32* %86, align 4
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %84
  %89 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %90 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %89, i32 0, i32 0
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @spin_lock_irqsave(i32* %90, i64 %91)
  %93 = load i32, i32* @MXR_BIT_INTERLACE, align 4
  %94 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %95 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %94, i32 0, i32 1
  %96 = call i64 @test_bit(i32 %93, i32* %95)
  %97 = icmp ne i64 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 -1, i32 0
  store i32 %99, i32* %13, align 4
  %100 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %101 = load i32, i32* @VP_MODE, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* @VP_MODE_LINE_SKIP, align 4
  %104 = call i32 @vp_reg_writemask(%struct.mixer_context* %100, i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %88
  %108 = load i32, i32* @VP_MODE_NV21, align 4
  br label %111

109:                                              ; preds = %88
  %110 = load i32, i32* @VP_MODE_NV12, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* @VP_MODE_MEM_TILED, align 4
  br label %119

117:                                              ; preds = %111
  %118 = load i32, i32* @VP_MODE_MEM_LINEAR, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  %121 = load i32, i32* %13, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %13, align 4
  %123 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %124 = load i32, i32* @VP_MODE, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* @VP_MODE_FMT_MASK, align 4
  %127 = call i32 @vp_reg_writemask(%struct.mixer_context* %123, i32 %124, i32 %125, i32 %126)
  %128 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %129 = load i32, i32* @VP_IMG_SIZE_Y, align 4
  %130 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %131 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @VP_IMG_HSIZE(i32 %134)
  %136 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %137 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @VP_IMG_VSIZE(i32 %138)
  %140 = or i32 %135, %139
  %141 = call i32 @vp_reg_write(%struct.mixer_context* %128, i32 %129, i32 %140)
  %142 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %143 = load i32, i32* @VP_IMG_SIZE_C, align 4
  %144 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %145 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @VP_IMG_HSIZE(i32 %148)
  %150 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %151 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = sdiv i32 %152, 2
  %154 = call i32 @VP_IMG_VSIZE(i32 %153)
  %155 = or i32 %149, %154
  %156 = call i32 @vp_reg_write(%struct.mixer_context* %142, i32 %143, i32 %155)
  %157 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %158 = load i32, i32* @VP_SRC_WIDTH, align 4
  %159 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %160 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @vp_reg_write(%struct.mixer_context* %157, i32 %158, i32 %162)
  %164 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %165 = load i32, i32* @VP_SRC_H_POSITION, align 4
  %166 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %167 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @VP_SRC_H_POSITION_VAL(i32 %169)
  %171 = call i32 @vp_reg_write(%struct.mixer_context* %164, i32 %165, i32 %170)
  %172 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %173 = load i32, i32* @VP_DST_WIDTH, align 4
  %174 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %175 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @vp_reg_write(%struct.mixer_context* %172, i32 %173, i32 %177)
  %179 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %180 = load i32, i32* @VP_DST_H_POSITION, align 4
  %181 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %182 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @vp_reg_write(%struct.mixer_context* %179, i32 %180, i32 %184)
  %186 = load i32, i32* @MXR_BIT_INTERLACE, align 4
  %187 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %188 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %187, i32 0, i32 1
  %189 = call i64 @test_bit(i32 %186, i32* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %224

191:                                              ; preds = %119
  %192 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %193 = load i32, i32* @VP_SRC_HEIGHT, align 4
  %194 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %195 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = sdiv i32 %197, 2
  %199 = call i32 @vp_reg_write(%struct.mixer_context* %192, i32 %193, i32 %198)
  %200 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %201 = load i32, i32* @VP_SRC_V_POSITION, align 4
  %202 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %203 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = sdiv i32 %205, 2
  %207 = call i32 @vp_reg_write(%struct.mixer_context* %200, i32 %201, i32 %206)
  %208 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %209 = load i32, i32* @VP_DST_HEIGHT, align 4
  %210 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %211 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = sdiv i32 %213, 2
  %215 = call i32 @vp_reg_write(%struct.mixer_context* %208, i32 %209, i32 %214)
  %216 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %217 = load i32, i32* @VP_DST_V_POSITION, align 4
  %218 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %219 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = sdiv i32 %221, 2
  %223 = call i32 @vp_reg_write(%struct.mixer_context* %216, i32 %217, i32 %222)
  br label %253

224:                                              ; preds = %119
  %225 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %226 = load i32, i32* @VP_SRC_HEIGHT, align 4
  %227 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %228 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %227, i32 0, i32 4
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @vp_reg_write(%struct.mixer_context* %225, i32 %226, i32 %230)
  %232 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %233 = load i32, i32* @VP_SRC_V_POSITION, align 4
  %234 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %235 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %234, i32 0, i32 4
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @vp_reg_write(%struct.mixer_context* %232, i32 %233, i32 %237)
  %239 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %240 = load i32, i32* @VP_DST_HEIGHT, align 4
  %241 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %242 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @vp_reg_write(%struct.mixer_context* %239, i32 %240, i32 %244)
  %246 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %247 = load i32, i32* @VP_DST_V_POSITION, align 4
  %248 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %249 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @vp_reg_write(%struct.mixer_context* %246, i32 %247, i32 %251)
  br label %253

253:                                              ; preds = %224, %191
  %254 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %255 = load i32, i32* @VP_H_RATIO, align 4
  %256 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %257 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @vp_reg_write(%struct.mixer_context* %254, i32 %255, i32 %258)
  %260 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %261 = load i32, i32* @VP_V_RATIO, align 4
  %262 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %263 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @vp_reg_write(%struct.mixer_context* %260, i32 %261, i32 %264)
  %266 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %267 = load i32, i32* @VP_ENDIAN_MODE, align 4
  %268 = load i32, i32* @VP_ENDIAN_MODE_LITTLE, align 4
  %269 = call i32 @vp_reg_write(%struct.mixer_context* %266, i32 %267, i32 %268)
  %270 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %271 = load i32, i32* @VP_TOP_Y_PTR, align 4
  %272 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @vp_reg_write(%struct.mixer_context* %270, i32 %271, i32 %273)
  %275 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %276 = load i32, i32* @VP_BOT_Y_PTR, align 4
  %277 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @vp_reg_write(%struct.mixer_context* %275, i32 %276, i32 %278)
  %280 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %281 = load i32, i32* @VP_TOP_C_PTR, align 4
  %282 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @vp_reg_write(%struct.mixer_context* %280, i32 %281, i32 %283)
  %285 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %286 = load i32, i32* @VP_BOT_C_PTR, align 4
  %287 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @vp_reg_write(%struct.mixer_context* %285, i32 %286, i32 %288)
  %290 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %291 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %4, align 8
  %292 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* %7, align 4
  %295 = call i32 @mixer_cfg_layer(%struct.mixer_context* %290, i32 %293, i32 %294, i32 1)
  %296 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %297 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %298 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %297, i32 0, i32 2
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @mixer_cfg_vp_blend(%struct.mixer_context* %296, i32 %300)
  %302 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %303 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %302, i32 0, i32 0
  %304 = load i64, i64* %8, align 8
  %305 = call i32 @spin_unlock_irqrestore(i32* %303, i64 %304)
  %306 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %307 = call i32 @mixer_regs_dump(%struct.mixer_context* %306)
  %308 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %309 = call i32 @vp_regs_dump(%struct.mixer_context* %308)
  ret void
}

declare dso_local %struct.exynos_drm_plane_state* @to_exynos_plane_state(i32) #1

declare dso_local i32 @exynos_drm_fb_dma_addr(%struct.drm_framebuffer*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vp_reg_writemask(%struct.mixer_context*, i32, i32, i32) #1

declare dso_local i32 @vp_reg_write(%struct.mixer_context*, i32, i32) #1

declare dso_local i32 @VP_IMG_HSIZE(i32) #1

declare dso_local i32 @VP_IMG_VSIZE(i32) #1

declare dso_local i32 @VP_SRC_H_POSITION_VAL(i32) #1

declare dso_local i32 @mixer_cfg_layer(%struct.mixer_context*, i32, i32, i32) #1

declare dso_local i32 @mixer_cfg_vp_blend(%struct.mixer_context*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mixer_regs_dump(%struct.mixer_context*) #1

declare dso_local i32 @vp_regs_dump(%struct.mixer_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
