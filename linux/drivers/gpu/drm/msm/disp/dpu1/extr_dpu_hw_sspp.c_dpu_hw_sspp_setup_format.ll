; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_sspp.c_dpu_hw_sspp_setup_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_sspp.c_dpu_hw_sspp_setup_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_pipe = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.dpu_hw_blk_reg_map }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.dpu_hw_blk_reg_map = type { i32 }
%struct.dpu_format = type { i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i64 }

@DPU_SSPP_SRC = common dso_local global i32 0, align 4
@DPU_SSPP_RECT_SOLO = common dso_local global i32 0, align 4
@DPU_SSPP_RECT_0 = common dso_local global i32 0, align 4
@SSPP_SRC_OP_MODE = common dso_local global i32 0, align 4
@SSPP_SRC_UNPACK_PATTERN = common dso_local global i32 0, align 4
@SSPP_SRC_FORMAT = common dso_local global i32 0, align 4
@SSPP_SRC_OP_MODE_REC1 = common dso_local global i32 0, align 4
@SSPP_SRC_UNPACK_PATTERN_REC1 = common dso_local global i32 0, align 4
@SSPP_SRC_FORMAT_REC1 = common dso_local global i32 0, align 4
@MDSS_MDP_OP_FLIP_LR = common dso_local global i32 0, align 4
@MDSS_MDP_OP_FLIP_UD = common dso_local global i32 0, align 4
@MDSS_MDP_OP_BWC_EN = common dso_local global i32 0, align 4
@MDSS_MDP_OP_PE_OVERRIDE = common dso_local global i32 0, align 4
@DPU_SSPP_FLIP_LR = common dso_local global i32 0, align 4
@DPU_SSPP_FLIP_UD = common dso_local global i32 0, align 4
@DPU_SSPP_SOURCE_ROTATED_90 = common dso_local global i32 0, align 4
@DPU_CHROMA_H2V1 = common dso_local global i32 0, align 4
@DPU_CHROMA_H1V2 = common dso_local global i32 0, align 4
@C3_ALPHA = common dso_local global i64 0, align 8
@C2_R_Cr = common dso_local global i64 0, align 8
@C1_B_Cb = common dso_local global i64 0, align 8
@C0_G_Y = common dso_local global i64 0, align 8
@DPU_SSPP_ROT_90 = common dso_local global i32 0, align 4
@DPU_PLANE_INTERLEAVED = common dso_local global i32 0, align 4
@DPU_SSPP_SOLID_FILL = common dso_local global i32 0, align 4
@DPU_FETCH_LINEAR = common dso_local global i32 0, align 4
@SSPP_FETCH_CONFIG = common dso_local global i32 0, align 4
@DPU_FETCH_CONFIG_RESET_VALUE = common dso_local global i32 0, align 4
@SSPP_UBWC_STATIC_CTRL = common dso_local global i32 0, align 4
@DPU_SSPP_CSC = common dso_local global i32 0, align 4
@VIG_OP_CSC_EN = common dso_local global i32 0, align 4
@VIG_OP_CSC_SRC_DATAFMT = common dso_local global i32 0, align 4
@DPU_SSPP_CSC_10BIT = common dso_local global i32 0, align 4
@VIG_CSC_10_EN = common dso_local global i32 0, align 4
@VIG_CSC_10_SRC_DATAFMT = common dso_local global i32 0, align 4
@SSPP_UBWC_ERROR_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_pipe*, %struct.dpu_format*, i32, i32)* @dpu_hw_sspp_setup_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_hw_sspp_setup_format(%struct.dpu_hw_pipe* %0, %struct.dpu_format* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dpu_hw_pipe*, align 8
  %6 = alloca %struct.dpu_format*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dpu_hw_pipe* %0, %struct.dpu_hw_pipe** %5, align 8
  store %struct.dpu_format* %1, %struct.dpu_format** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %5, align 8
  %20 = load i32, i32* @DPU_SSPP_SRC, align 4
  %21 = call i64 @_sspp_subblk_offset(%struct.dpu_hw_pipe* %19, i32 %20, i32* %18)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %25 = icmp ne %struct.dpu_format* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %4
  br label %369

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @DPU_SSPP_RECT_SOLO, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @DPU_SSPP_RECT_0, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31, %27
  %36 = load i32, i32* @SSPP_SRC_OP_MODE, align 4
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* @SSPP_SRC_UNPACK_PATTERN, align 4
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* @SSPP_SRC_FORMAT, align 4
  store i32 %38, i32* %17, align 4
  br label %43

39:                                               ; preds = %31
  %40 = load i32, i32* @SSPP_SRC_OP_MODE_REC1, align 4
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* @SSPP_SRC_UNPACK_PATTERN_REC1, align 4
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* @SSPP_SRC_FORMAT_REC1, align 4
  store i32 %42, i32* %17, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %5, align 8
  %45 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %44, i32 0, i32 3
  store %struct.dpu_hw_blk_reg_map* %45, %struct.dpu_hw_blk_reg_map** %9, align 8
  %46 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %9, align 8
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %18, align 4
  %49 = add nsw i32 %47, %48
  %50 = call i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map* %46, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* @MDSS_MDP_OP_FLIP_LR, align 4
  %52 = load i32, i32* @MDSS_MDP_OP_FLIP_UD, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @MDSS_MDP_OP_BWC_EN, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @MDSS_MDP_OP_PE_OVERRIDE, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %13, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @DPU_SSPP_FLIP_LR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %43
  %66 = load i32, i32* @MDSS_MDP_OP_FLIP_LR, align 4
  %67 = load i32, i32* %13, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %65, %43
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @DPU_SSPP_FLIP_UD, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @MDSS_MDP_OP_FLIP_UD, align 4
  %76 = load i32, i32* %13, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %74, %69
  %79 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %80 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @DPU_SSPP_SOURCE_ROTATED_90, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %78
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @DPU_CHROMA_H2V1, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @DPU_CHROMA_H1V2, align 4
  store i32 %91, i32* %10, align 4
  br label %99

92:                                               ; preds = %86
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @DPU_CHROMA_H1V2, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @DPU_CHROMA_H2V1, align 4
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %96, %92
  br label %99

99:                                               ; preds = %98, %90
  br label %100

100:                                              ; preds = %99, %78
  %101 = load i32, i32* %10, align 4
  %102 = shl i32 %101, 23
  %103 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %104 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 19
  %107 = or i32 %102, %106
  %108 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %109 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* @C3_ALPHA, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 6
  %115 = or i32 %107, %114
  %116 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %117 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* @C2_R_Cr, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %121, 4
  %123 = or i32 %115, %122
  %124 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %125 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* @C1_B_Cb, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 %129, 2
  %131 = or i32 %123, %130
  %132 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %133 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* @C0_G_Y, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = shl i32 %137, 0
  %139 = or i32 %131, %138
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @DPU_SSPP_ROT_90, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %100
  %145 = call i32 @BIT(i32 11)
  %146 = load i32, i32* %12, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %12, align 4
  br label %148

148:                                              ; preds = %144, %100
  %149 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %150 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %149, i32 0, i32 9
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %148
  %154 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %155 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @DPU_PLANE_INTERLEAVED, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = call i32 @BIT(i32 8)
  %161 = load i32, i32* %12, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %12, align 4
  br label %163

163:                                              ; preds = %159, %153, %148
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @DPU_SSPP_SOLID_FILL, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = call i32 @BIT(i32 22)
  %170 = load i32, i32* %12, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %12, align 4
  br label %172

172:                                              ; preds = %168, %163
  %173 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %174 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %173, i32 0, i32 3
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 3
  %177 = load i32, i32* %176, align 4
  %178 = shl i32 %177, 24
  %179 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %180 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 2
  %183 = load i32, i32* %182, align 4
  %184 = shl i32 %183, 16
  %185 = or i32 %178, %184
  %186 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %187 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %186, i32 0, i32 3
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 1
  %190 = load i32, i32* %189, align 4
  %191 = shl i32 %190, 8
  %192 = or i32 %185, %191
  %193 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %194 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = shl i32 %197, 0
  %199 = or i32 %192, %198
  store i32 %199, i32* %11, align 4
  %200 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %201 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = sub nsw i32 %202, 1
  %204 = shl i32 %203, 12
  %205 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %206 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 4
  %208 = shl i32 %207, 17
  %209 = or i32 %204, %208
  %210 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %211 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 8
  %213 = shl i32 %212, 18
  %214 = or i32 %209, %213
  %215 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %216 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %215, i32 0, i32 7
  %217 = load i32, i32* %216, align 4
  %218 = sub nsw i32 %217, 1
  %219 = shl i32 %218, 9
  %220 = or i32 %214, %219
  %221 = load i32, i32* %12, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %12, align 4
  %223 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %224 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %223, i32 0, i32 8
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @DPU_FETCH_LINEAR, align 4
  %227 = icmp ne i32 %225, %226
  br i1 %227, label %228, label %292

228:                                              ; preds = %172
  %229 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %230 = call i64 @DPU_FORMAT_IS_UBWC(%struct.dpu_format* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %228
  %233 = load i32, i32* @MDSS_MDP_OP_BWC_EN, align 4
  %234 = load i32, i32* %13, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %13, align 4
  br label %236

236:                                              ; preds = %232, %228
  %237 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %238 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %237, i32 0, i32 8
  %239 = load i32, i32* %238, align 8
  %240 = and i32 %239, 3
  %241 = shl i32 %240, 30
  %242 = load i32, i32* %12, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %12, align 4
  %244 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %9, align 8
  %245 = load i32, i32* @SSPP_FETCH_CONFIG, align 4
  %246 = load i32, i32* @DPU_FETCH_CONFIG_RESET_VALUE, align 4
  %247 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %5, align 8
  %248 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %247, i32 0, i32 1
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = shl i32 %251, 18
  %253 = or i32 %246, %252
  %254 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %244, i32 %245, i32 %253)
  %255 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %5, align 8
  %256 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %255, i32 0, i32 2
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i64 @IS_UBWC_20_SUPPORTED(i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %291

264:                                              ; preds = %236
  %265 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %266 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %265, i32 0, i32 9
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %264
  %270 = call i32 @BIT(i32 31)
  br label %272

271:                                              ; preds = %264
  br label %272

272:                                              ; preds = %271, %269
  %273 = phi i32 [ %270, %269 ], [ 0, %271 ]
  store i32 %273, i32* %14, align 4
  %274 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %9, align 8
  %275 = load i32, i32* @SSPP_UBWC_STATIC_CTRL, align 4
  %276 = load i32, i32* %14, align 4
  %277 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %5, align 8
  %278 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %277, i32 0, i32 1
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = or i32 %276, %281
  %283 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %5, align 8
  %284 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %283, i32 0, i32 1
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = shl i32 %287, 4
  %289 = or i32 %282, %288
  %290 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %274, i32 %275, i32 %289)
  br label %291

291:                                              ; preds = %272, %236
  br label %292

292:                                              ; preds = %291, %172
  %293 = load i32, i32* @MDSS_MDP_OP_PE_OVERRIDE, align 4
  %294 = load i32, i32* %13, align 4
  %295 = or i32 %294, %293
  store i32 %295, i32* %13, align 4
  %296 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %297 = call i64 @DPU_FORMAT_IS_YUV(%struct.dpu_format* %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %292
  %300 = call i32 @BIT(i32 15)
  %301 = load i32, i32* %12, align 4
  %302 = or i32 %301, %300
  store i32 %302, i32* %12, align 4
  br label %303

303:                                              ; preds = %299, %292
  %304 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %305 = call i64 @DPU_FORMAT_IS_DX(%struct.dpu_format* %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %303
  %308 = call i32 @BIT(i32 14)
  %309 = load i32, i32* %12, align 4
  %310 = or i32 %309, %308
  store i32 %310, i32* %12, align 4
  br label %311

311:                                              ; preds = %307, %303
  %312 = load i32, i32* @DPU_SSPP_CSC, align 4
  %313 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %5, align 8
  %314 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %313, i32 0, i32 0
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 0
  %317 = call i64 @test_bit(i32 %312, i32* %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %311
  %320 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %5, align 8
  %321 = load i32, i32* @VIG_OP_CSC_EN, align 4
  %322 = load i32, i32* @VIG_OP_CSC_SRC_DATAFMT, align 4
  %323 = or i32 %321, %322
  %324 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %325 = call i64 @DPU_FORMAT_IS_YUV(%struct.dpu_format* %324)
  %326 = call i32 @_sspp_setup_opmode(%struct.dpu_hw_pipe* %320, i32 %323, i64 %325)
  br label %344

327:                                              ; preds = %311
  %328 = load i32, i32* @DPU_SSPP_CSC_10BIT, align 4
  %329 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %5, align 8
  %330 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %329, i32 0, i32 0
  %331 = load %struct.TYPE_8__*, %struct.TYPE_8__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i32 0, i32 0
  %333 = call i64 @test_bit(i32 %328, i32* %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %343

335:                                              ; preds = %327
  %336 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %5, align 8
  %337 = load i32, i32* @VIG_CSC_10_EN, align 4
  %338 = load i32, i32* @VIG_CSC_10_SRC_DATAFMT, align 4
  %339 = or i32 %337, %338
  %340 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %341 = call i64 @DPU_FORMAT_IS_YUV(%struct.dpu_format* %340)
  %342 = call i32 @_sspp_setup_csc10_opmode(%struct.dpu_hw_pipe* %336, i32 %339, i64 %341)
  br label %343

343:                                              ; preds = %335, %327
  br label %344

344:                                              ; preds = %343, %319
  %345 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %9, align 8
  %346 = load i32, i32* %17, align 4
  %347 = load i32, i32* %18, align 4
  %348 = add nsw i32 %346, %347
  %349 = load i32, i32* %12, align 4
  %350 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %345, i32 %348, i32 %349)
  %351 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %9, align 8
  %352 = load i32, i32* %16, align 4
  %353 = load i32, i32* %18, align 4
  %354 = add nsw i32 %352, %353
  %355 = load i32, i32* %11, align 4
  %356 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %351, i32 %354, i32 %355)
  %357 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %9, align 8
  %358 = load i32, i32* %15, align 4
  %359 = load i32, i32* %18, align 4
  %360 = add nsw i32 %358, %359
  %361 = load i32, i32* %13, align 4
  %362 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %357, i32 %360, i32 %361)
  %363 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %9, align 8
  %364 = load i32, i32* @SSPP_UBWC_ERROR_STATUS, align 4
  %365 = load i32, i32* %18, align 4
  %366 = add nsw i32 %364, %365
  %367 = call i32 @BIT(i32 31)
  %368 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %363, i32 %366, i32 %367)
  br label %369

369:                                              ; preds = %344, %26
  ret void
}

declare dso_local i64 @_sspp_subblk_offset(%struct.dpu_hw_pipe*, i32, i32*) #1

declare dso_local i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @DPU_FORMAT_IS_UBWC(%struct.dpu_format*) #1

declare dso_local i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map*, i32, i32) #1

declare dso_local i64 @IS_UBWC_20_SUPPORTED(i32) #1

declare dso_local i64 @DPU_FORMAT_IS_YUV(%struct.dpu_format*) #1

declare dso_local i64 @DPU_FORMAT_IS_DX(%struct.dpu_format*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @_sspp_setup_opmode(%struct.dpu_hw_pipe*, i32, i64) #1

declare dso_local i32 @_sspp_setup_csc10_opmode(%struct.dpu_hw_pipe*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
