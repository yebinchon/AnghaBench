; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_config_video.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_config_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { i32, %struct.TYPE_2__, %struct.drm_display_mode, %struct.video_info }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.video_info = type { i32, i32, i32, i32 }

@TU_SIZE = common dso_local global i32 0, align 4
@YCBCR_4_2_2 = common dso_local global i32 0, align 4
@BND_HSYNC2VSYNC = common dso_local global i32 0, align 4
@VIF_BYPASS_INTERLACE = common dso_local global i32 0, align 4
@HSYNC2VSYNC_POL_CTRL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"tu error, clk:%d, lanes:%d, rate:%d\0A\00", align 1
@TU_CNT_RST_EN = common dso_local global i32 0, align 4
@DP_FRAMER_TU = common dso_local global i32 0, align 4
@BCS_6 = common dso_local global i32 0, align 4
@BCS_8 = common dso_local global i32 0, align 4
@BCS_10 = common dso_local global i32 0, align 4
@BCS_12 = common dso_local global i32 0, align 4
@BCS_16 = common dso_local global i32 0, align 4
@DP_FRAMER_PXL_REPR = common dso_local global i32 0, align 4
@DP_FRAMER_SP_HSP = common dso_local global i32 0, align 4
@DP_FRAMER_SP_VSP = common dso_local global i32 0, align 4
@DP_FRAMER_SP = common dso_local global i32 0, align 4
@DP_FRONT_BACK_PORCH = common dso_local global i32 0, align 4
@DP_BYTE_COUNT = common dso_local global i32 0, align 4
@MSA_HORIZONTAL_0 = common dso_local global i32 0, align 4
@MSA_HORIZONTAL_1 = common dso_local global i32 0, align 4
@MSA_VERTICAL_0 = common dso_local global i32 0, align 4
@MSA_VERTICAL_1 = common dso_local global i32 0, align 4
@MSA_MISC = common dso_local global i32 0, align 4
@STREAM_CONFIG = common dso_local global i32 0, align 4
@DP_HORIZONTAL = common dso_local global i32 0, align 4
@DP_VERTICAL_0 = common dso_local global i32 0, align 4
@DP_VERTICAL_1 = common dso_local global i32 0, align 4
@DP_VB_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"config video failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdn_dp_config_video(%struct.cdn_dp_device* %0) #0 {
  %2 = alloca %struct.cdn_dp_device*, align 8
  %3 = alloca %struct.video_info*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %2, align 8
  %12 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %13 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %12, i32 0, i32 3
  store %struct.video_info* %13, %struct.video_info** %3, align 8
  %14 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %15 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %14, i32 0, i32 2
  store %struct.drm_display_mode* %15, %struct.drm_display_mode** %4, align 8
  %16 = load i32, i32* @TU_SIZE, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.video_info*, %struct.video_info** %3, align 8
  %18 = getelementptr inbounds %struct.video_info, %struct.video_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @YCBCR_4_2_2, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.video_info*, %struct.video_info** %3, align 8
  %24 = getelementptr inbounds %struct.video_info, %struct.video_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %25, 2
  br label %32

27:                                               ; preds = %1
  %28 = load %struct.video_info*, %struct.video_info** %3, align 8
  %29 = getelementptr inbounds %struct.video_info, %struct.video_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %30, 3
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i32 [ %26, %22 ], [ %31, %27 ]
  store i32 %33, i32* %9, align 4
  %34 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %35 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %37, 1000
  store i32 %38, i32* %7, align 4
  %39 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %40 = load i32, i32* @BND_HSYNC2VSYNC, align 4
  %41 = load i32, i32* @VIF_BYPASS_INTERLACE, align 4
  %42 = call i32 @cdn_dp_reg_write(%struct.cdn_dp_device* %39, i32 %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %417

46:                                               ; preds = %32
  %47 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %48 = load i32, i32* @HSYNC2VSYNC_POL_CTRL, align 4
  %49 = call i32 @cdn_dp_reg_write(%struct.cdn_dp_device* %47, i32 %48, i32 0)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %417

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %107, %53
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 2
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %59 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = load i32, i32* %9, align 4
  %63 = mul nsw i32 %61, %62
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %66 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = mul nsw i32 %68, %69
  %71 = mul nsw i32 %70, 8
  %72 = call i32 @do_div(i32 %64, i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @do_div(i32 %73, i32 1000)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp sgt i32 %75, 64
  br i1 %76, label %77, label %92

77:                                               ; preds = %54
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %11, align 4
  %80 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %81 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %84 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %87 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 (i32, i8*, i32, ...) @DRM_DEV_ERROR(i32 %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %89, i32 %90)
  br label %417

92:                                               ; preds = %54
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %5, align 4
  %95 = icmp sle i32 %94, 1
  br i1 %95, label %107, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %5, align 4
  %99 = sub nsw i32 %97, %98
  %100 = icmp slt i32 %99, 4
  br i1 %100, label %107, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %8, align 4
  %103 = icmp sgt i32 %102, 850
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %105, 100
  br label %107

107:                                              ; preds = %104, %101, %96, %93
  %108 = phi i1 [ true, %101 ], [ true, %96 ], [ true, %93 ], [ %106, %104 ]
  br i1 %108, label %54, label %109

109:                                              ; preds = %107
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %10, align 4
  %112 = shl i32 %111, 8
  %113 = add nsw i32 %110, %112
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* @TU_CNT_RST_EN, align 4
  %115 = load i32, i32* %6, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %6, align 4
  %117 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %118 = load i32, i32* @DP_FRAMER_TU, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @cdn_dp_reg_write(%struct.cdn_dp_device* %117, i32 %118, i32 %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %109
  br label %417

124:                                              ; preds = %109
  %125 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %126 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  %130 = mul nsw i32 %127, %129
  %131 = call i32 @div_u64(i32 %130, i32 1000)
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %131, %132
  store i32 %133, i32* %6, align 4
  %134 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %135 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %7, align 4
  %139 = mul nsw i32 %137, %138
  %140 = load i32, i32* %6, align 4
  %141 = sdiv i32 %140, %139
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, 1
  %144 = mul nsw i32 8, %143
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @div_u64(i32 %144, i32 %145)
  %147 = load i32, i32* %6, align 4
  %148 = sub nsw i32 %146, %147
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 %149, 2
  store i32 %150, i32* %6, align 4
  %151 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %152 = call i32 @DP_VC_TABLE(i32 15)
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @cdn_dp_reg_write(%struct.cdn_dp_device* %151, i32 %152, i32 %153)
  store i32 %154, i32* %11, align 4
  %155 = load %struct.video_info*, %struct.video_info** %3, align 8
  %156 = getelementptr inbounds %struct.video_info, %struct.video_info* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  switch i32 %157, label %168 [
    i32 6, label %158
    i32 8, label %160
    i32 10, label %162
    i32 12, label %164
    i32 16, label %166
  ]

158:                                              ; preds = %124
  %159 = load i32, i32* @BCS_6, align 4
  store i32 %159, i32* %6, align 4
  br label %168

160:                                              ; preds = %124
  %161 = load i32, i32* @BCS_8, align 4
  store i32 %161, i32* %6, align 4
  br label %168

162:                                              ; preds = %124
  %163 = load i32, i32* @BCS_10, align 4
  store i32 %163, i32* %6, align 4
  br label %168

164:                                              ; preds = %124
  %165 = load i32, i32* @BCS_12, align 4
  store i32 %165, i32* %6, align 4
  br label %168

166:                                              ; preds = %124
  %167 = load i32, i32* @BCS_16, align 4
  store i32 %167, i32* %6, align 4
  br label %168

168:                                              ; preds = %124, %166, %164, %162, %160, %158
  %169 = load %struct.video_info*, %struct.video_info** %3, align 8
  %170 = getelementptr inbounds %struct.video_info, %struct.video_info* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = shl i32 %171, 8
  %173 = load i32, i32* %6, align 4
  %174 = add nsw i32 %173, %172
  store i32 %174, i32* %6, align 4
  %175 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %176 = load i32, i32* @DP_FRAMER_PXL_REPR, align 4
  %177 = load i32, i32* %6, align 4
  %178 = call i32 @cdn_dp_reg_write(%struct.cdn_dp_device* %175, i32 %176, i32 %177)
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %168
  br label %417

182:                                              ; preds = %168
  %183 = load %struct.video_info*, %struct.video_info** %3, align 8
  %184 = getelementptr inbounds %struct.video_info, %struct.video_info* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %182
  %188 = load i32, i32* @DP_FRAMER_SP_HSP, align 4
  br label %190

189:                                              ; preds = %182
  br label %190

190:                                              ; preds = %189, %187
  %191 = phi i32 [ %188, %187 ], [ 0, %189 ]
  store i32 %191, i32* %6, align 4
  %192 = load %struct.video_info*, %struct.video_info** %3, align 8
  %193 = getelementptr inbounds %struct.video_info, %struct.video_info* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %190
  %197 = load i32, i32* @DP_FRAMER_SP_VSP, align 4
  br label %199

198:                                              ; preds = %190
  br label %199

199:                                              ; preds = %198, %196
  %200 = phi i32 [ %197, %196 ], [ 0, %198 ]
  %201 = load i32, i32* %6, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %6, align 4
  %203 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %204 = load i32, i32* @DP_FRAMER_SP, align 4
  %205 = load i32, i32* %6, align 4
  %206 = call i32 @cdn_dp_reg_write(%struct.cdn_dp_device* %203, i32 %204, i32 %205)
  store i32 %206, i32* %11, align 4
  %207 = load i32, i32* %11, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %199
  br label %417

210:                                              ; preds = %199
  %211 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %212 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %215 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = sub nsw i32 %213, %216
  %218 = shl i32 %217, 16
  store i32 %218, i32* %6, align 4
  %219 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %220 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %223 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = sub nsw i32 %221, %224
  %226 = load i32, i32* %6, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %6, align 4
  %228 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %229 = load i32, i32* @DP_FRONT_BACK_PORCH, align 4
  %230 = load i32, i32* %6, align 4
  %231 = call i32 @cdn_dp_reg_write(%struct.cdn_dp_device* %228, i32 %229, i32 %230)
  store i32 %231, i32* %11, align 4
  %232 = load i32, i32* %11, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %210
  br label %417

235:                                              ; preds = %210
  %236 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %237 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %9, align 4
  %240 = mul nsw i32 %238, %239
  %241 = sdiv i32 %240, 8
  store i32 %241, i32* %6, align 4
  %242 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %243 = load i32, i32* @DP_BYTE_COUNT, align 4
  %244 = load i32, i32* %6, align 4
  %245 = call i32 @cdn_dp_reg_write(%struct.cdn_dp_device* %242, i32 %243, i32 %244)
  store i32 %245, i32* %11, align 4
  %246 = load i32, i32* %11, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %235
  br label %417

249:                                              ; preds = %235
  %250 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %251 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %254 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %257 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = sub nsw i32 %255, %258
  %260 = shl i32 %259, 16
  %261 = or i32 %252, %260
  store i32 %261, i32* %6, align 4
  %262 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %263 = load i32, i32* @MSA_HORIZONTAL_0, align 4
  %264 = load i32, i32* %6, align 4
  %265 = call i32 @cdn_dp_reg_write(%struct.cdn_dp_device* %262, i32 %263, i32 %264)
  store i32 %265, i32* %11, align 4
  %266 = load i32, i32* %11, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %249
  br label %417

269:                                              ; preds = %249
  %270 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %271 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %274 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = sub nsw i32 %272, %275
  store i32 %276, i32* %6, align 4
  %277 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %278 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = shl i32 %279, 16
  %281 = load %struct.video_info*, %struct.video_info** %3, align 8
  %282 = getelementptr inbounds %struct.video_info, %struct.video_info* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = shl i32 %283, 15
  %285 = or i32 %280, %284
  %286 = load i32, i32* %6, align 4
  %287 = or i32 %286, %285
  store i32 %287, i32* %6, align 4
  %288 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %289 = load i32, i32* @MSA_HORIZONTAL_1, align 4
  %290 = load i32, i32* %6, align 4
  %291 = call i32 @cdn_dp_reg_write(%struct.cdn_dp_device* %288, i32 %289, i32 %290)
  store i32 %291, i32* %11, align 4
  %292 = load i32, i32* %11, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %269
  br label %417

295:                                              ; preds = %269
  %296 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %297 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %296, i32 0, i32 5
  %298 = load i32, i32* %297, align 4
  store i32 %298, i32* %6, align 4
  %299 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %300 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %299, i32 0, i32 5
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %303 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %302, i32 0, i32 6
  %304 = load i32, i32* %303, align 4
  %305 = sub nsw i32 %301, %304
  %306 = shl i32 %305, 16
  %307 = load i32, i32* %6, align 4
  %308 = or i32 %307, %306
  store i32 %308, i32* %6, align 4
  %309 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %310 = load i32, i32* @MSA_VERTICAL_0, align 4
  %311 = load i32, i32* %6, align 4
  %312 = call i32 @cdn_dp_reg_write(%struct.cdn_dp_device* %309, i32 %310, i32 %311)
  store i32 %312, i32* %11, align 4
  %313 = load i32, i32* %11, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %295
  br label %417

316:                                              ; preds = %295
  %317 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %318 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %317, i32 0, i32 7
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %321 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %320, i32 0, i32 6
  %322 = load i32, i32* %321, align 4
  %323 = sub nsw i32 %319, %322
  store i32 %323, i32* %6, align 4
  %324 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %325 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %324, i32 0, i32 8
  %326 = load i32, i32* %325, align 4
  %327 = shl i32 %326, 16
  %328 = load %struct.video_info*, %struct.video_info** %3, align 8
  %329 = getelementptr inbounds %struct.video_info, %struct.video_info* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 4
  %331 = shl i32 %330, 15
  %332 = or i32 %327, %331
  %333 = load i32, i32* %6, align 4
  %334 = or i32 %333, %332
  store i32 %334, i32* %6, align 4
  %335 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %336 = load i32, i32* @MSA_VERTICAL_1, align 4
  %337 = load i32, i32* %6, align 4
  %338 = call i32 @cdn_dp_reg_write(%struct.cdn_dp_device* %335, i32 %336, i32 %337)
  store i32 %338, i32* %11, align 4
  %339 = load i32, i32* %11, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %316
  br label %417

342:                                              ; preds = %316
  %343 = load %struct.video_info*, %struct.video_info** %3, align 8
  %344 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %345 = call i32 @cdn_dp_get_msa_misc(%struct.video_info* %343, %struct.drm_display_mode* %344)
  store i32 %345, i32* %6, align 4
  %346 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %347 = load i32, i32* @MSA_MISC, align 4
  %348 = load i32, i32* %6, align 4
  %349 = call i32 @cdn_dp_reg_write(%struct.cdn_dp_device* %346, i32 %347, i32 %348)
  store i32 %349, i32* %11, align 4
  %350 = load i32, i32* %11, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %342
  br label %417

353:                                              ; preds = %342
  %354 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %355 = load i32, i32* @STREAM_CONFIG, align 4
  %356 = call i32 @cdn_dp_reg_write(%struct.cdn_dp_device* %354, i32 %355, i32 1)
  store i32 %356, i32* %11, align 4
  %357 = load i32, i32* %11, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %353
  br label %417

360:                                              ; preds = %353
  %361 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %362 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %361, i32 0, i32 4
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %365 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = sub nsw i32 %363, %366
  store i32 %367, i32* %6, align 4
  %368 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %369 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 4
  %371 = shl i32 %370, 16
  %372 = load i32, i32* %6, align 4
  %373 = or i32 %372, %371
  store i32 %373, i32* %6, align 4
  %374 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %375 = load i32, i32* @DP_HORIZONTAL, align 4
  %376 = load i32, i32* %6, align 4
  %377 = call i32 @cdn_dp_reg_write(%struct.cdn_dp_device* %374, i32 %375, i32 %376)
  store i32 %377, i32* %11, align 4
  %378 = load i32, i32* %11, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %360
  br label %417

381:                                              ; preds = %360
  %382 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %383 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %382, i32 0, i32 8
  %384 = load i32, i32* %383, align 4
  store i32 %384, i32* %6, align 4
  %385 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %386 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %385, i32 0, i32 5
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %389 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %388, i32 0, i32 6
  %390 = load i32, i32* %389, align 4
  %391 = sub nsw i32 %387, %390
  %392 = shl i32 %391, 16
  %393 = load i32, i32* %6, align 4
  %394 = or i32 %393, %392
  store i32 %394, i32* %6, align 4
  %395 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %396 = load i32, i32* @DP_VERTICAL_0, align 4
  %397 = load i32, i32* %6, align 4
  %398 = call i32 @cdn_dp_reg_write(%struct.cdn_dp_device* %395, i32 %396, i32 %397)
  store i32 %398, i32* %11, align 4
  %399 = load i32, i32* %11, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %381
  br label %417

402:                                              ; preds = %381
  %403 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %404 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %403, i32 0, i32 5
  %405 = load i32, i32* %404, align 4
  store i32 %405, i32* %6, align 4
  %406 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %407 = load i32, i32* @DP_VERTICAL_1, align 4
  %408 = load i32, i32* %6, align 4
  %409 = call i32 @cdn_dp_reg_write(%struct.cdn_dp_device* %406, i32 %407, i32 %408)
  store i32 %409, i32* %11, align 4
  %410 = load i32, i32* %11, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %413

412:                                              ; preds = %402
  br label %417

413:                                              ; preds = %402
  %414 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %415 = load i32, i32* @DP_VB_ID, align 4
  %416 = call i32 @cdn_dp_reg_write_bit(%struct.cdn_dp_device* %414, i32 %415, i32 2, i32 1, i32 0)
  store i32 %416, i32* %11, align 4
  br label %417

417:                                              ; preds = %413, %412, %401, %380, %359, %352, %341, %315, %294, %268, %248, %234, %209, %181, %123, %77, %52, %45
  %418 = load i32, i32* %11, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %426

420:                                              ; preds = %417
  %421 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %422 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* %11, align 4
  %425 = call i32 (i32, i8*, i32, ...) @DRM_DEV_ERROR(i32 %423, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %424)
  br label %426

426:                                              ; preds = %420, %417
  %427 = load i32, i32* %11, align 4
  ret i32 %427
}

declare dso_local i32 @cdn_dp_reg_write(%struct.cdn_dp_device*, i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32, ...) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @DP_VC_TABLE(i32) #1

declare dso_local i32 @cdn_dp_get_msa_misc(%struct.video_info*, %struct.drm_display_mode*) #1

declare dso_local i32 @cdn_dp_reg_write_bit(%struct.cdn_dp_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
