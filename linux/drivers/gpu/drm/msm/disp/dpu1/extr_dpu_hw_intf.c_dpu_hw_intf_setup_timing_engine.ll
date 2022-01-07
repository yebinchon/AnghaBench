; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_intf.c_dpu_hw_intf_setup_timing_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_intf.c_dpu_hw_intf_setup_timing_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_intf = type { %struct.TYPE_2__*, %struct.dpu_hw_blk_reg_map }
%struct.TYPE_2__ = type { i64 }
%struct.dpu_hw_blk_reg_map = type { i32 }
%struct.intf_timing_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.dpu_format = type { i32* }

@INTF_CONFIG = common dso_local global i32 0, align 4
@INTF_EDP = common dso_local global i64 0, align 8
@INTF_DP = common dso_local global i64 0, align 8
@INTF_HDMI = common dso_local global i64 0, align 8
@C0_G_Y = common dso_local global i64 0, align 8
@C1_B_Cb = common dso_local global i64 0, align 8
@C2_R_Cr = common dso_local global i64 0, align 8
@COLOR_8BIT = common dso_local global i32 0, align 4
@INTF_HSYNC_CTL = common dso_local global i32 0, align 4
@INTF_VSYNC_PERIOD_F0 = common dso_local global i32 0, align 4
@INTF_VSYNC_PULSE_WIDTH_F0 = common dso_local global i32 0, align 4
@INTF_DISPLAY_HCTL = common dso_local global i32 0, align 4
@INTF_DISPLAY_V_START_F0 = common dso_local global i32 0, align 4
@INTF_DISPLAY_V_END_F0 = common dso_local global i32 0, align 4
@INTF_ACTIVE_HCTL = common dso_local global i32 0, align 4
@INTF_ACTIVE_V_START_F0 = common dso_local global i32 0, align 4
@INTF_ACTIVE_V_END_F0 = common dso_local global i32 0, align 4
@INTF_BORDER_COLOR = common dso_local global i32 0, align 4
@INTF_UNDERFLOW_COLOR = common dso_local global i32 0, align 4
@INTF_HSYNC_SKEW = common dso_local global i32 0, align 4
@INTF_POLARITY_CTL = common dso_local global i32 0, align 4
@INTF_FRAME_LINE_COUNT_EN = common dso_local global i32 0, align 4
@INTF_PANEL_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_intf*, %struct.intf_timing_params*, %struct.dpu_format*)* @dpu_hw_intf_setup_timing_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_hw_intf_setup_timing_engine(%struct.dpu_hw_intf* %0, %struct.intf_timing_params* %1, %struct.dpu_format* %2) #0 {
  %4 = alloca %struct.dpu_hw_intf*, align 8
  %5 = alloca %struct.intf_timing_params*, align 8
  %6 = alloca %struct.dpu_format*, align 8
  %7 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.dpu_hw_intf* %0, %struct.dpu_hw_intf** %4, align 8
  store %struct.intf_timing_params* %1, %struct.intf_timing_params** %5, align 8
  store %struct.dpu_format* %2, %struct.dpu_format** %6, align 8
  %27 = load %struct.dpu_hw_intf*, %struct.dpu_hw_intf** %4, align 8
  %28 = getelementptr inbounds %struct.dpu_hw_intf, %struct.dpu_hw_intf* %27, i32 0, i32 1
  store %struct.dpu_hw_blk_reg_map* %28, %struct.dpu_hw_blk_reg_map** %7, align 8
  %29 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %30 = load i32, i32* @INTF_CONFIG, align 4
  %31 = call i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map* %29, i32 %30)
  store i32 %31, i32* %26, align 4
  %32 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %33 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %36 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  %39 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %40 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %38, %41
  %43 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %44 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  store i32 %46, i32* %8, align 4
  %47 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %48 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %51 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %49, %52
  %54 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %55 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %53, %56
  %58 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %59 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  store i32 %61, i32* %9, align 4
  %62 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %63 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %66 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %64, %67
  %69 = load i32, i32* %8, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %72 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %70, %73
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %77 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %75, %78
  %80 = load i32, i32* %8, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %83 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %81, %84
  %86 = sub nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  %87 = load %struct.dpu_hw_intf*, %struct.dpu_hw_intf** %4, align 8
  %88 = getelementptr inbounds %struct.dpu_hw_intf, %struct.dpu_hw_intf* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @INTF_EDP, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %102, label %94

94:                                               ; preds = %3
  %95 = load %struct.dpu_hw_intf*, %struct.dpu_hw_intf** %4, align 8
  %96 = getelementptr inbounds %struct.dpu_hw_intf, %struct.dpu_hw_intf* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @INTF_DP, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %94, %3
  %103 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %104 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %107 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %105, %108
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %10, align 4
  %112 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %113 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %11, align 4
  %116 = sub nsw i32 %115, %114
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %102, %94
  %118 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %119 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %122 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %120, %123
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %127 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %125, %128
  %130 = sub nsw i32 %129, 1
  store i32 %130, i32* %13, align 4
  %131 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %132 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %136 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %135, i32 0, i32 9
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %134, %137
  br i1 %138, label %139, label %149

139:                                              ; preds = %117
  %140 = load i32, i32* %12, align 4
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %144 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %143, i32 0, i32 9
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %142, %145
  %147 = sub nsw i64 %146, 1
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %15, align 4
  br label %150

149:                                              ; preds = %117
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %150

150:                                              ; preds = %149, %139
  %151 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %152 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %155 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %154, i32 0, i32 10
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %153, %156
  br i1 %157, label %158, label %168

158:                                              ; preds = %150
  %159 = load i32, i32* %10, align 4
  store i32 %159, i32* %16, align 4
  %160 = load i32, i32* %16, align 4
  %161 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %162 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %161, i32 0, i32 10
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = mul nsw i32 %163, %164
  %166 = add nsw i32 %160, %165
  %167 = sub nsw i32 %166, 1
  store i32 %167, i32* %17, align 4
  br label %169

168:                                              ; preds = %150
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %169

169:                                              ; preds = %168, %158
  %170 = load i32, i32* %15, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %169
  %173 = load i32, i32* %15, align 4
  %174 = shl i32 %173, 16
  %175 = load i32, i32* %14, align 4
  %176 = or i32 %174, %175
  store i32 %176, i32* %18, align 4
  %177 = call i32 @BIT(i32 29)
  %178 = load i32, i32* %26, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %26, align 4
  br label %181

180:                                              ; preds = %169
  store i32 0, i32* %18, align 4
  br label %181

181:                                              ; preds = %180, %172
  %182 = load i32, i32* %17, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = call i32 @BIT(i32 30)
  %186 = load i32, i32* %26, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %26, align 4
  br label %188

188:                                              ; preds = %184, %181
  %189 = load i32, i32* %8, align 4
  %190 = shl i32 %189, 16
  %191 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %192 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %190, %193
  store i32 %194, i32* %20, align 4
  %195 = load i32, i32* %13, align 4
  %196 = shl i32 %195, 16
  %197 = load i32, i32* %12, align 4
  %198 = or i32 %196, %197
  store i32 %198, i32* %19, align 4
  store i32 0, i32* %22, align 4
  %199 = load %struct.dpu_hw_intf*, %struct.dpu_hw_intf** %4, align 8
  %200 = getelementptr inbounds %struct.dpu_hw_intf, %struct.dpu_hw_intf* %199, i32 0, i32 0
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @INTF_HDMI, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %219

206:                                              ; preds = %188
  %207 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %208 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %207, i32 0, i32 10
  %209 = load i32, i32* %208, align 8
  %210 = icmp sge i32 %209, 720
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, i32 0, i32 1
  store i32 %212, i32* %23, align 4
  %213 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %214 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %213, i32 0, i32 10
  %215 = load i32, i32* %214, align 8
  %216 = icmp sge i32 %215, 720
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i32 0, i32 1
  store i32 %218, i32* %24, align 4
  br label %220

219:                                              ; preds = %188
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %220

220:                                              ; preds = %219, %206
  %221 = load i32, i32* %22, align 4
  %222 = shl i32 %221, 2
  %223 = load i32, i32* %24, align 4
  %224 = shl i32 %223, 1
  %225 = or i32 %222, %224
  %226 = load i32, i32* %23, align 4
  %227 = shl i32 %226, 0
  %228 = or i32 %225, %227
  store i32 %228, i32* %21, align 4
  %229 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %230 = call i32 @DPU_FORMAT_IS_YUV(%struct.dpu_format* %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %256, label %232

232:                                              ; preds = %220
  %233 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %234 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = load i64, i64* @C0_G_Y, align 8
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %240 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = load i64, i64* @C1_B_Cb, align 8
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = shl i32 %244, 2
  %246 = or i32 %238, %245
  %247 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %248 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = load i64, i64* @C2_R_Cr, align 8
  %251 = getelementptr inbounds i32, i32* %249, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = shl i32 %252, 4
  %254 = or i32 %246, %253
  %255 = or i32 %254, 8448
  store i32 %255, i32* %25, align 4
  br label %265

256:                                              ; preds = %220
  %257 = load i32, i32* @COLOR_8BIT, align 4
  %258 = load i32, i32* @COLOR_8BIT, align 4
  %259 = shl i32 %258, 2
  %260 = or i32 %257, %259
  %261 = load i32, i32* @COLOR_8BIT, align 4
  %262 = shl i32 %261, 4
  %263 = or i32 %260, %262
  %264 = or i32 %263, 8448
  store i32 %264, i32* %25, align 4
  br label %265

265:                                              ; preds = %256, %232
  %266 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %267 = load i32, i32* @INTF_HSYNC_CTL, align 4
  %268 = load i32, i32* %20, align 4
  %269 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %266, i32 %267, i32 %268)
  %270 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %271 = load i32, i32* @INTF_VSYNC_PERIOD_F0, align 4
  %272 = load i32, i32* %9, align 4
  %273 = load i32, i32* %8, align 4
  %274 = mul nsw i32 %272, %273
  %275 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %270, i32 %271, i32 %274)
  %276 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %277 = load i32, i32* @INTF_VSYNC_PULSE_WIDTH_F0, align 4
  %278 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %279 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* %8, align 4
  %282 = mul nsw i32 %280, %281
  %283 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %276, i32 %277, i32 %282)
  %284 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %285 = load i32, i32* @INTF_DISPLAY_HCTL, align 4
  %286 = load i32, i32* %19, align 4
  %287 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %284, i32 %285, i32 %286)
  %288 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %289 = load i32, i32* @INTF_DISPLAY_V_START_F0, align 4
  %290 = load i32, i32* %10, align 4
  %291 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %288, i32 %289, i32 %290)
  %292 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %293 = load i32, i32* @INTF_DISPLAY_V_END_F0, align 4
  %294 = load i32, i32* %11, align 4
  %295 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %292, i32 %293, i32 %294)
  %296 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %297 = load i32, i32* @INTF_ACTIVE_HCTL, align 4
  %298 = load i32, i32* %18, align 4
  %299 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %296, i32 %297, i32 %298)
  %300 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %301 = load i32, i32* @INTF_ACTIVE_V_START_F0, align 4
  %302 = load i32, i32* %16, align 4
  %303 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %300, i32 %301, i32 %302)
  %304 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %305 = load i32, i32* @INTF_ACTIVE_V_END_F0, align 4
  %306 = load i32, i32* %17, align 4
  %307 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %304, i32 %305, i32 %306)
  %308 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %309 = load i32, i32* @INTF_BORDER_COLOR, align 4
  %310 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %311 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %310, i32 0, i32 11
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %308, i32 %309, i32 %312)
  %314 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %315 = load i32, i32* @INTF_UNDERFLOW_COLOR, align 4
  %316 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %317 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %316, i32 0, i32 12
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %314, i32 %315, i32 %318)
  %320 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %321 = load i32, i32* @INTF_HSYNC_SKEW, align 4
  %322 = load %struct.intf_timing_params*, %struct.intf_timing_params** %5, align 8
  %323 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %322, i32 0, i32 8
  %324 = load i32, i32* %323, align 8
  %325 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %320, i32 %321, i32 %324)
  %326 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %327 = load i32, i32* @INTF_POLARITY_CTL, align 4
  %328 = load i32, i32* %21, align 4
  %329 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %326, i32 %327, i32 %328)
  %330 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %331 = load i32, i32* @INTF_FRAME_LINE_COUNT_EN, align 4
  %332 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %330, i32 %331, i32 3)
  %333 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %334 = load i32, i32* @INTF_CONFIG, align 4
  %335 = load i32, i32* %26, align 4
  %336 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %333, i32 %334, i32 %335)
  %337 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %338 = load i32, i32* @INTF_PANEL_FORMAT, align 4
  %339 = load i32, i32* %25, align 4
  %340 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %337, i32 %338, i32 %339)
  ret void
}

declare dso_local i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DPU_FORMAT_IS_YUV(%struct.dpu_format*) #1

declare dso_local i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
