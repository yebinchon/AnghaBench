; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_mdp5_hwpipe_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_mdp5_hwpipe_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_kms = type { i32 }
%struct.mdp5_hw_pipe = type { i32, i32 }
%struct.drm_framebuffer = type { i32 }
%struct.phase_step = type { i32*, i32* }
%struct.pixel_ext = type { i32, i32, i32, i32 }
%struct.mdp_format = type { i32, i32, i32*, i32, i32, i64, i64, i32, i32, i32, i32 }

@MDP_PIPE_CAP_SW_PIX_EXT = common dso_local global i32 0, align 4
@MDP5_PIPE_SRC_FORMAT_ALPHA_ENABLE = common dso_local global i32 0, align 4
@MDP5_PIPE_SRC_FORMAT_UNPACK_TIGHT = common dso_local global i32 0, align 4
@MDP5_PIPE_SRC_OP_MODE_FLIP_LR = common dso_local global i32 0, align 4
@MDP5_PIPE_SRC_OP_MODE_FLIP_UD = common dso_local global i32 0, align 4
@MDP5_PIPE_SRC_OP_MODE_SW_PIX_EXT_OVERRIDE = common dso_local global i32 0, align 4
@BWC_LOSSLESS = common dso_local global i32 0, align 4
@MDP_PIPE_CAP_SCALE = common dso_local global i32 0, align 4
@COMP_0 = common dso_local global i64 0, align 8
@COMP_1_2 = common dso_local global i64 0, align 8
@MDP_PIPE_CAP_CSC = common dso_local global i32 0, align 4
@CSC_YUV2RGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdp5_kms*, %struct.mdp5_hw_pipe*, %struct.drm_framebuffer*, %struct.phase_step*, %struct.pixel_ext*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @mdp5_hwpipe_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp5_hwpipe_mode_set(%struct.mdp5_kms* %0, %struct.mdp5_hw_pipe* %1, %struct.drm_framebuffer* %2, %struct.phase_step* %3, %struct.pixel_ext* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19) #0 {
  %21 = alloca %struct.mdp5_kms*, align 8
  %22 = alloca %struct.mdp5_hw_pipe*, align 8
  %23 = alloca %struct.drm_framebuffer*, align 8
  %24 = alloca %struct.phase_step*, align 8
  %25 = alloca %struct.pixel_ext*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca %struct.mdp_format*, align 8
  store %struct.mdp5_kms* %0, %struct.mdp5_kms** %21, align 8
  store %struct.mdp5_hw_pipe* %1, %struct.mdp5_hw_pipe** %22, align 8
  store %struct.drm_framebuffer* %2, %struct.drm_framebuffer** %23, align 8
  store %struct.phase_step* %3, %struct.phase_step** %24, align 8
  store %struct.pixel_ext* %4, %struct.pixel_ext** %25, align 8
  store i32 %5, i32* %26, align 4
  store i32 %6, i32* %27, align 4
  store i32 %7, i32* %28, align 4
  store i32 %8, i32* %29, align 4
  store i32 %9, i32* %30, align 4
  store i32 %10, i32* %31, align 4
  store i32 %11, i32* %32, align 4
  store i32 %12, i32* %33, align 4
  store i32 %13, i32* %34, align 4
  store i32 %14, i32* %35, align 4
  store i32 %15, i32* %36, align 4
  store i32 %16, i32* %37, align 4
  store i32 %17, i32* %38, align 4
  store i32 %18, i32* %39, align 4
  store i32 %19, i32* %40, align 4
  %44 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %22, align 8
  %45 = getelementptr inbounds %struct.mdp5_hw_pipe, %struct.mdp5_hw_pipe* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %41, align 4
  %47 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %22, align 8
  %48 = getelementptr inbounds %struct.mdp5_hw_pipe, %struct.mdp5_hw_pipe* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MDP_PIPE_CAP_SW_PIX_EXT, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %42, align 4
  %52 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %23, align 8
  %53 = call i32 @msm_framebuffer_format(%struct.drm_framebuffer* %52)
  %54 = call %struct.mdp_format* @to_mdp_format(i32 %53)
  store %struct.mdp_format* %54, %struct.mdp_format** %43, align 8
  %55 = load %struct.mdp5_kms*, %struct.mdp5_kms** %21, align 8
  %56 = load i32, i32* %41, align 4
  %57 = call i32 @REG_MDP5_PIPE_SRC_IMG_SIZE(i32 %56)
  %58 = load i32, i32* %35, align 4
  %59 = call i32 @MDP5_PIPE_SRC_IMG_SIZE_WIDTH(i32 %58)
  %60 = load i32, i32* %36, align 4
  %61 = call i32 @MDP5_PIPE_SRC_IMG_SIZE_HEIGHT(i32 %60)
  %62 = or i32 %59, %61
  %63 = call i32 @mdp5_write(%struct.mdp5_kms* %55, i32 %57, i32 %62)
  %64 = load %struct.mdp5_kms*, %struct.mdp5_kms** %21, align 8
  %65 = load i32, i32* %41, align 4
  %66 = call i32 @REG_MDP5_PIPE_SRC_SIZE(i32 %65)
  %67 = load i32, i32* %39, align 4
  %68 = call i32 @MDP5_PIPE_SRC_SIZE_WIDTH(i32 %67)
  %69 = load i32, i32* %40, align 4
  %70 = call i32 @MDP5_PIPE_SRC_SIZE_HEIGHT(i32 %69)
  %71 = or i32 %68, %70
  %72 = call i32 @mdp5_write(%struct.mdp5_kms* %64, i32 %66, i32 %71)
  %73 = load %struct.mdp5_kms*, %struct.mdp5_kms** %21, align 8
  %74 = load i32, i32* %41, align 4
  %75 = call i32 @REG_MDP5_PIPE_SRC_XY(i32 %74)
  %76 = load i32, i32* %37, align 4
  %77 = call i32 @MDP5_PIPE_SRC_XY_X(i32 %76)
  %78 = load i32, i32* %38, align 4
  %79 = call i32 @MDP5_PIPE_SRC_XY_Y(i32 %78)
  %80 = or i32 %77, %79
  %81 = call i32 @mdp5_write(%struct.mdp5_kms* %73, i32 %75, i32 %80)
  %82 = load %struct.mdp5_kms*, %struct.mdp5_kms** %21, align 8
  %83 = load i32, i32* %41, align 4
  %84 = call i32 @REG_MDP5_PIPE_OUT_SIZE(i32 %83)
  %85 = load i32, i32* %33, align 4
  %86 = call i32 @MDP5_PIPE_OUT_SIZE_WIDTH(i32 %85)
  %87 = load i32, i32* %34, align 4
  %88 = call i32 @MDP5_PIPE_OUT_SIZE_HEIGHT(i32 %87)
  %89 = or i32 %86, %88
  %90 = call i32 @mdp5_write(%struct.mdp5_kms* %82, i32 %84, i32 %89)
  %91 = load %struct.mdp5_kms*, %struct.mdp5_kms** %21, align 8
  %92 = load i32, i32* %41, align 4
  %93 = call i32 @REG_MDP5_PIPE_OUT_XY(i32 %92)
  %94 = load i32, i32* %31, align 4
  %95 = call i32 @MDP5_PIPE_OUT_XY_X(i32 %94)
  %96 = load i32, i32* %32, align 4
  %97 = call i32 @MDP5_PIPE_OUT_XY_Y(i32 %96)
  %98 = or i32 %95, %97
  %99 = call i32 @mdp5_write(%struct.mdp5_kms* %91, i32 %93, i32 %98)
  %100 = load %struct.mdp5_kms*, %struct.mdp5_kms** %21, align 8
  %101 = load i32, i32* %41, align 4
  %102 = call i32 @REG_MDP5_PIPE_SRC_FORMAT(i32 %101)
  %103 = load %struct.mdp_format*, %struct.mdp_format** %43, align 8
  %104 = getelementptr inbounds %struct.mdp_format, %struct.mdp_format* %103, i32 0, i32 10
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @MDP5_PIPE_SRC_FORMAT_A_BPC(i32 %105)
  %107 = load %struct.mdp_format*, %struct.mdp_format** %43, align 8
  %108 = getelementptr inbounds %struct.mdp_format, %struct.mdp_format* %107, i32 0, i32 9
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @MDP5_PIPE_SRC_FORMAT_R_BPC(i32 %109)
  %111 = or i32 %106, %110
  %112 = load %struct.mdp_format*, %struct.mdp_format** %43, align 8
  %113 = getelementptr inbounds %struct.mdp_format, %struct.mdp_format* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @MDP5_PIPE_SRC_FORMAT_G_BPC(i32 %114)
  %116 = or i32 %111, %115
  %117 = load %struct.mdp_format*, %struct.mdp_format** %43, align 8
  %118 = getelementptr inbounds %struct.mdp_format, %struct.mdp_format* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @MDP5_PIPE_SRC_FORMAT_B_BPC(i32 %119)
  %121 = or i32 %116, %120
  %122 = load %struct.mdp_format*, %struct.mdp_format** %43, align 8
  %123 = getelementptr inbounds %struct.mdp_format, %struct.mdp_format* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @MDP5_PIPE_SRC_FORMAT_ALPHA_ENABLE, align 4
  %126 = call i32 @COND(i32 %124, i32 %125)
  %127 = or i32 %121, %126
  %128 = load %struct.mdp_format*, %struct.mdp_format** %43, align 8
  %129 = getelementptr inbounds %struct.mdp_format, %struct.mdp_format* %128, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %130, 1
  %132 = call i32 @MDP5_PIPE_SRC_FORMAT_CPP(i64 %131)
  %133 = or i32 %127, %132
  %134 = load %struct.mdp_format*, %struct.mdp_format** %43, align 8
  %135 = getelementptr inbounds %struct.mdp_format, %struct.mdp_format* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = sub nsw i64 %136, 1
  %138 = call i32 @MDP5_PIPE_SRC_FORMAT_UNPACK_COUNT(i64 %137)
  %139 = or i32 %133, %138
  %140 = load %struct.mdp_format*, %struct.mdp_format** %43, align 8
  %141 = getelementptr inbounds %struct.mdp_format, %struct.mdp_format* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @MDP5_PIPE_SRC_FORMAT_UNPACK_TIGHT, align 4
  %144 = call i32 @COND(i32 %142, i32 %143)
  %145 = or i32 %139, %144
  %146 = load %struct.mdp_format*, %struct.mdp_format** %43, align 8
  %147 = getelementptr inbounds %struct.mdp_format, %struct.mdp_format* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @MDP5_PIPE_SRC_FORMAT_FETCH_TYPE(i32 %148)
  %150 = or i32 %145, %149
  %151 = load %struct.mdp_format*, %struct.mdp_format** %43, align 8
  %152 = getelementptr inbounds %struct.mdp_format, %struct.mdp_format* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @MDP5_PIPE_SRC_FORMAT_CHROMA_SAMP(i32 %153)
  %155 = or i32 %150, %154
  %156 = call i32 @mdp5_write(%struct.mdp5_kms* %100, i32 %102, i32 %155)
  %157 = load %struct.mdp5_kms*, %struct.mdp5_kms** %21, align 8
  %158 = load i32, i32* %41, align 4
  %159 = call i32 @REG_MDP5_PIPE_SRC_UNPACK(i32 %158)
  %160 = load %struct.mdp_format*, %struct.mdp_format** %43, align 8
  %161 = getelementptr inbounds %struct.mdp_format, %struct.mdp_format* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @MDP5_PIPE_SRC_UNPACK_ELEM0(i32 %164)
  %166 = load %struct.mdp_format*, %struct.mdp_format** %43, align 8
  %167 = getelementptr inbounds %struct.mdp_format, %struct.mdp_format* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @MDP5_PIPE_SRC_UNPACK_ELEM1(i32 %170)
  %172 = or i32 %165, %171
  %173 = load %struct.mdp_format*, %struct.mdp_format** %43, align 8
  %174 = getelementptr inbounds %struct.mdp_format, %struct.mdp_format* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 2
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @MDP5_PIPE_SRC_UNPACK_ELEM2(i32 %177)
  %179 = or i32 %172, %178
  %180 = load %struct.mdp_format*, %struct.mdp_format** %43, align 8
  %181 = getelementptr inbounds %struct.mdp_format, %struct.mdp_format* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 3
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @MDP5_PIPE_SRC_UNPACK_ELEM3(i32 %184)
  %186 = or i32 %179, %185
  %187 = call i32 @mdp5_write(%struct.mdp5_kms* %157, i32 %159, i32 %186)
  %188 = load %struct.mdp5_kms*, %struct.mdp5_kms** %21, align 8
  %189 = load i32, i32* %41, align 4
  %190 = call i32 @REG_MDP5_PIPE_SRC_OP_MODE(i32 %189)
  %191 = load i32, i32* %29, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %20
  %194 = load i32, i32* @MDP5_PIPE_SRC_OP_MODE_FLIP_LR, align 4
  br label %196

195:                                              ; preds = %20
  br label %196

196:                                              ; preds = %195, %193
  %197 = phi i32 [ %194, %193 ], [ 0, %195 ]
  %198 = load i32, i32* %30, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %196
  %201 = load i32, i32* @MDP5_PIPE_SRC_OP_MODE_FLIP_UD, align 4
  br label %203

202:                                              ; preds = %196
  br label %203

203:                                              ; preds = %202, %200
  %204 = phi i32 [ %201, %200 ], [ 0, %202 ]
  %205 = or i32 %197, %204
  %206 = load i32, i32* %42, align 4
  %207 = load i32, i32* @MDP5_PIPE_SRC_OP_MODE_SW_PIX_EXT_OVERRIDE, align 4
  %208 = call i32 @COND(i32 %206, i32 %207)
  %209 = or i32 %205, %208
  %210 = load i32, i32* @BWC_LOSSLESS, align 4
  %211 = call i32 @MDP5_PIPE_SRC_OP_MODE_BWC(i32 %210)
  %212 = or i32 %209, %211
  %213 = call i32 @mdp5_write(%struct.mdp5_kms* %188, i32 %190, i32 %212)
  %214 = load %struct.mdp5_kms*, %struct.mdp5_kms** %21, align 8
  %215 = load i32, i32* %41, align 4
  %216 = call i32 @REG_MDP5_PIPE_SRC_ADDR_SW_STATUS(i32 %215)
  %217 = call i32 @mdp5_write(%struct.mdp5_kms* %214, i32 %216, i32 0)
  %218 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %22, align 8
  %219 = getelementptr inbounds %struct.mdp5_hw_pipe, %struct.mdp5_hw_pipe* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @MDP_PIPE_CAP_SW_PIX_EXT, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %243

224:                                              ; preds = %203
  %225 = load %struct.mdp5_kms*, %struct.mdp5_kms** %21, align 8
  %226 = load i32, i32* %41, align 4
  %227 = load %struct.mdp_format*, %struct.mdp_format** %43, align 8
  %228 = load i32, i32* %39, align 4
  %229 = load %struct.pixel_ext*, %struct.pixel_ext** %25, align 8
  %230 = getelementptr inbounds %struct.pixel_ext, %struct.pixel_ext* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.pixel_ext*, %struct.pixel_ext** %25, align 8
  %233 = getelementptr inbounds %struct.pixel_ext, %struct.pixel_ext* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %40, align 4
  %236 = load %struct.pixel_ext*, %struct.pixel_ext** %25, align 8
  %237 = getelementptr inbounds %struct.pixel_ext, %struct.pixel_ext* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.pixel_ext*, %struct.pixel_ext** %25, align 8
  %240 = getelementptr inbounds %struct.pixel_ext, %struct.pixel_ext* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @mdp5_write_pixel_ext(%struct.mdp5_kms* %225, i32 %226, %struct.mdp_format* %227, i32 %228, i32 %231, i32 %234, i32 %235, i32 %238, i32 %241)
  br label %243

243:                                              ; preds = %224, %203
  %244 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %22, align 8
  %245 = getelementptr inbounds %struct.mdp5_hw_pipe, %struct.mdp5_hw_pipe* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @MDP_PIPE_CAP_SCALE, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %305

250:                                              ; preds = %243
  %251 = load %struct.mdp5_kms*, %struct.mdp5_kms** %21, align 8
  %252 = load i32, i32* %41, align 4
  %253 = call i32 @REG_MDP5_PIPE_SCALE_PHASE_STEP_X(i32 %252)
  %254 = load %struct.phase_step*, %struct.phase_step** %24, align 8
  %255 = getelementptr inbounds %struct.phase_step, %struct.phase_step* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = load i64, i64* @COMP_0, align 8
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @mdp5_write(%struct.mdp5_kms* %251, i32 %253, i32 %259)
  %261 = load %struct.mdp5_kms*, %struct.mdp5_kms** %21, align 8
  %262 = load i32, i32* %41, align 4
  %263 = call i32 @REG_MDP5_PIPE_SCALE_PHASE_STEP_Y(i32 %262)
  %264 = load %struct.phase_step*, %struct.phase_step** %24, align 8
  %265 = getelementptr inbounds %struct.phase_step, %struct.phase_step* %264, i32 0, i32 1
  %266 = load i32*, i32** %265, align 8
  %267 = load i64, i64* @COMP_0, align 8
  %268 = getelementptr inbounds i32, i32* %266, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @mdp5_write(%struct.mdp5_kms* %261, i32 %263, i32 %269)
  %271 = load %struct.mdp5_kms*, %struct.mdp5_kms** %21, align 8
  %272 = load i32, i32* %41, align 4
  %273 = call i32 @REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_X(i32 %272)
  %274 = load %struct.phase_step*, %struct.phase_step** %24, align 8
  %275 = getelementptr inbounds %struct.phase_step, %struct.phase_step* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = load i64, i64* @COMP_1_2, align 8
  %278 = getelementptr inbounds i32, i32* %276, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @mdp5_write(%struct.mdp5_kms* %271, i32 %273, i32 %279)
  %281 = load %struct.mdp5_kms*, %struct.mdp5_kms** %21, align 8
  %282 = load i32, i32* %41, align 4
  %283 = call i32 @REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_Y(i32 %282)
  %284 = load %struct.phase_step*, %struct.phase_step** %24, align 8
  %285 = getelementptr inbounds %struct.phase_step, %struct.phase_step* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = load i64, i64* @COMP_1_2, align 8
  %288 = getelementptr inbounds i32, i32* %286, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @mdp5_write(%struct.mdp5_kms* %281, i32 %283, i32 %289)
  %291 = load %struct.mdp5_kms*, %struct.mdp5_kms** %21, align 8
  %292 = load i32, i32* %41, align 4
  %293 = call i32 @REG_MDP5_PIPE_DECIMATION(i32 %292)
  %294 = load i32, i32* %28, align 4
  %295 = call i32 @MDP5_PIPE_DECIMATION_VERT(i32 %294)
  %296 = load i32, i32* %27, align 4
  %297 = call i32 @MDP5_PIPE_DECIMATION_HORZ(i32 %296)
  %298 = or i32 %295, %297
  %299 = call i32 @mdp5_write(%struct.mdp5_kms* %291, i32 %293, i32 %298)
  %300 = load %struct.mdp5_kms*, %struct.mdp5_kms** %21, align 8
  %301 = load i32, i32* %41, align 4
  %302 = call i32 @REG_MDP5_PIPE_SCALE_CONFIG(i32 %301)
  %303 = load i32, i32* %26, align 4
  %304 = call i32 @mdp5_write(%struct.mdp5_kms* %300, i32 %302, i32 %303)
  br label %305

305:                                              ; preds = %250, %243
  %306 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %22, align 8
  %307 = getelementptr inbounds %struct.mdp5_hw_pipe, %struct.mdp5_hw_pipe* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @MDP_PIPE_CAP_CSC, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %327

312:                                              ; preds = %305
  %313 = load %struct.mdp_format*, %struct.mdp_format** %43, align 8
  %314 = call i64 @MDP_FORMAT_IS_YUV(%struct.mdp_format* %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %322

316:                                              ; preds = %312
  %317 = load %struct.mdp5_kms*, %struct.mdp5_kms** %21, align 8
  %318 = load i32, i32* %41, align 4
  %319 = load i32, i32* @CSC_YUV2RGB, align 4
  %320 = call i32 @mdp_get_default_csc_cfg(i32 %319)
  %321 = call i32 @csc_enable(%struct.mdp5_kms* %317, i32 %318, i32 %320)
  br label %326

322:                                              ; preds = %312
  %323 = load %struct.mdp5_kms*, %struct.mdp5_kms** %21, align 8
  %324 = load i32, i32* %41, align 4
  %325 = call i32 @csc_disable(%struct.mdp5_kms* %323, i32 %324)
  br label %326

326:                                              ; preds = %322, %316
  br label %327

327:                                              ; preds = %326, %305
  %328 = load %struct.mdp5_kms*, %struct.mdp5_kms** %21, align 8
  %329 = load i32, i32* %41, align 4
  %330 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %23, align 8
  %331 = call i32 @set_scanout_locked(%struct.mdp5_kms* %328, i32 %329, %struct.drm_framebuffer* %330)
  ret void
}

declare dso_local %struct.mdp_format* @to_mdp_format(i32) #1

declare dso_local i32 @msm_framebuffer_format(%struct.drm_framebuffer*) #1

declare dso_local i32 @mdp5_write(%struct.mdp5_kms*, i32, i32) #1

declare dso_local i32 @REG_MDP5_PIPE_SRC_IMG_SIZE(i32) #1

declare dso_local i32 @MDP5_PIPE_SRC_IMG_SIZE_WIDTH(i32) #1

declare dso_local i32 @MDP5_PIPE_SRC_IMG_SIZE_HEIGHT(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_SRC_SIZE(i32) #1

declare dso_local i32 @MDP5_PIPE_SRC_SIZE_WIDTH(i32) #1

declare dso_local i32 @MDP5_PIPE_SRC_SIZE_HEIGHT(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_SRC_XY(i32) #1

declare dso_local i32 @MDP5_PIPE_SRC_XY_X(i32) #1

declare dso_local i32 @MDP5_PIPE_SRC_XY_Y(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_OUT_SIZE(i32) #1

declare dso_local i32 @MDP5_PIPE_OUT_SIZE_WIDTH(i32) #1

declare dso_local i32 @MDP5_PIPE_OUT_SIZE_HEIGHT(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_OUT_XY(i32) #1

declare dso_local i32 @MDP5_PIPE_OUT_XY_X(i32) #1

declare dso_local i32 @MDP5_PIPE_OUT_XY_Y(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_SRC_FORMAT(i32) #1

declare dso_local i32 @MDP5_PIPE_SRC_FORMAT_A_BPC(i32) #1

declare dso_local i32 @MDP5_PIPE_SRC_FORMAT_R_BPC(i32) #1

declare dso_local i32 @MDP5_PIPE_SRC_FORMAT_G_BPC(i32) #1

declare dso_local i32 @MDP5_PIPE_SRC_FORMAT_B_BPC(i32) #1

declare dso_local i32 @COND(i32, i32) #1

declare dso_local i32 @MDP5_PIPE_SRC_FORMAT_CPP(i64) #1

declare dso_local i32 @MDP5_PIPE_SRC_FORMAT_UNPACK_COUNT(i64) #1

declare dso_local i32 @MDP5_PIPE_SRC_FORMAT_FETCH_TYPE(i32) #1

declare dso_local i32 @MDP5_PIPE_SRC_FORMAT_CHROMA_SAMP(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_SRC_UNPACK(i32) #1

declare dso_local i32 @MDP5_PIPE_SRC_UNPACK_ELEM0(i32) #1

declare dso_local i32 @MDP5_PIPE_SRC_UNPACK_ELEM1(i32) #1

declare dso_local i32 @MDP5_PIPE_SRC_UNPACK_ELEM2(i32) #1

declare dso_local i32 @MDP5_PIPE_SRC_UNPACK_ELEM3(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_SRC_OP_MODE(i32) #1

declare dso_local i32 @MDP5_PIPE_SRC_OP_MODE_BWC(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_SRC_ADDR_SW_STATUS(i32) #1

declare dso_local i32 @mdp5_write_pixel_ext(%struct.mdp5_kms*, i32, %struct.mdp_format*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_MDP5_PIPE_SCALE_PHASE_STEP_X(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_SCALE_PHASE_STEP_Y(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_X(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_Y(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_DECIMATION(i32) #1

declare dso_local i32 @MDP5_PIPE_DECIMATION_VERT(i32) #1

declare dso_local i32 @MDP5_PIPE_DECIMATION_HORZ(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_SCALE_CONFIG(i32) #1

declare dso_local i64 @MDP_FORMAT_IS_YUV(%struct.mdp_format*) #1

declare dso_local i32 @csc_enable(%struct.mdp5_kms*, i32, i32) #1

declare dso_local i32 @mdp_get_default_csc_cfg(i32) #1

declare dso_local i32 @csc_disable(%struct.mdp5_kms*, i32) #1

declare dso_local i32 @set_scanout_locked(%struct.mdp5_kms*, i32, %struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
