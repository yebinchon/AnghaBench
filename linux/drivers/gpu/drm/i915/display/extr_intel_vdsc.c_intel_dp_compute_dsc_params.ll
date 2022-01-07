; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_vdsc.c_intel_dp_compute_dsc_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_vdsc.c_intel_dp_compute_dsc_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.intel_dp = type { i32* }
%struct.intel_crtc_state = type { i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.drm_dsc_config }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.drm_dsc_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, %struct.TYPE_10__*, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@DP_DSC_REV = common dso_local global i64 0, align 8
@DP_DSC_SUPPORT = common dso_local global i64 0, align 8
@DP_DSC_MAJOR_MASK = common dso_local global i32 0, align 4
@DP_DSC_MAJOR_SHIFT = common dso_local global i32 0, align 4
@DSC_SUPPORTED_VERSION_MIN = common dso_local global i32 0, align 4
@DP_DSC_MINOR_MASK = common dso_local global i32 0, align 4
@DP_DSC_MINOR_SHIFT = common dso_local global i32 0, align 4
@DP_DSC_DEC_COLOR_FORMAT_CAP = common dso_local global i64 0, align 8
@DP_DSC_RGB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"DSC Sink Line Buffer Depth invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DSC_1_2_MAX_LINEBUF_DEPTH_BITS = common dso_local global i64 0, align 8
@DSC_1_2_MAX_LINEBUF_DEPTH_VAL = common dso_local global i64 0, align 8
@DSC_1_1_MAX_LINEBUF_DEPTH_BITS = common dso_local global i64 0, align 8
@DP_DSC_BLK_PREDICTION_SUPPORT = common dso_local global i64 0, align 8
@DP_DSC_BLK_PREDICTION_IS_SUPPORTED = common dso_local global i32 0, align 4
@DSC_NUM_BUF_RANGES = common dso_local global i32 0, align 4
@rc_buf_thresh = common dso_local global i32* null, align 8
@rc_params = common dso_local global %struct.TYPE_12__** null, align 8
@DSC_RANGE_BPG_OFFSET_MASK = common dso_local global i32 0, align 4
@DSC_MUX_WORD_SIZE_8_10_BPC = common dso_local global i32 0, align 4
@DSC_MUX_WORD_SIZE_12_BPC = common dso_local global i32 0, align 4
@DSC_RC_MODEL_SIZE_CONST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_dp_compute_dsc_params(%struct.intel_dp* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_dp*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_dsc_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  %12 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %13 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %12, i32 0, i32 3
  store %struct.drm_dsc_config* %13, %struct.drm_dsc_config** %6, align 8
  %14 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %15 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %18 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %19 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %24 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %23, i32 0, i32 23
  store i32 %22, i32* %24, align 8
  %25 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %26 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %31 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %33 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %32, i32 0, i32 23
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %36 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @DIV_ROUND_UP(i32 %34, i32 %38)
  %40 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %41 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %40, i32 0, i32 24
  store i32 %39, i32* %41, align 4
  %42 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %43 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = srem i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %2
  %48 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %49 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %48, i32 0, i32 1
  store i32 8, i32* %49, align 4
  br label %63

50:                                               ; preds = %2
  %51 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %52 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = srem i32 %53, 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %58 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %57, i32 0, i32 1
  store i32 4, i32* %58, align 4
  br label %62

59:                                               ; preds = %50
  %60 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %61 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %60, i32 0, i32 1
  store i32 2, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %47
  %64 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %65 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @DP_DSC_REV, align 8
  %68 = load i64, i64* @DP_DSC_SUPPORT, align 8
  %69 = sub i64 %67, %68
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @DP_DSC_MAJOR_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @DP_DSC_MAJOR_SHIFT, align 4
  %75 = ashr i32 %73, %74
  %76 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %77 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @DSC_SUPPORTED_VERSION_MIN, align 4
  %79 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %80 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @DP_DSC_REV, align 8
  %83 = load i64, i64* @DP_DSC_SUPPORT, align 8
  %84 = sub i64 %82, %83
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @DP_DSC_MINOR_MASK, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @DP_DSC_MINOR_SHIFT, align 4
  %90 = ashr i32 %88, %89
  %91 = call i32 @min(i32 %78, i32 %90)
  %92 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %93 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %95 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* @DP_DSC_DEC_COLOR_FORMAT_CAP, align 8
  %98 = load i64, i64* @DP_DSC_SUPPORT, align 8
  %99 = sub i64 %97, %98
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @DP_DSC_RGB, align 4
  %103 = and i32 %101, %102
  %104 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %105 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 8
  %106 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %107 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = call i64 @drm_dp_dsc_sink_line_buf_depth(i32* %108)
  store i64 %109, i64* %11, align 8
  %110 = load i64, i64* %11, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %63
  %113 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %419

116:                                              ; preds = %63
  %117 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %118 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %121, label %133

121:                                              ; preds = %116
  %122 = load i64, i64* %11, align 8
  %123 = load i64, i64* @DSC_1_2_MAX_LINEBUF_DEPTH_BITS, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i64, i64* @DSC_1_2_MAX_LINEBUF_DEPTH_VAL, align 8
  br label %129

127:                                              ; preds = %121
  %128 = load i64, i64* %11, align 8
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i64 [ %126, %125 ], [ %128, %127 ]
  %131 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %132 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %131, i32 0, i32 22
  store i64 %130, i64* %132, align 8
  br label %145

133:                                              ; preds = %116
  %134 = load i64, i64* %11, align 8
  %135 = load i64, i64* @DSC_1_1_MAX_LINEBUF_DEPTH_BITS, align 8
  %136 = icmp sgt i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i64, i64* @DSC_1_1_MAX_LINEBUF_DEPTH_BITS, align 8
  br label %141

139:                                              ; preds = %133
  %140 = load i64, i64* %11, align 8
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi i64 [ %138, %137 ], [ %140, %139 ]
  %143 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %144 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %143, i32 0, i32 22
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %141, %129
  %146 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %147 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %146, i32 0, i32 5
  store i32 0, i32* %147, align 4
  %148 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %149 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %148, i32 0, i32 6
  store i32 0, i32* %149, align 8
  %150 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %151 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* @DP_DSC_BLK_PREDICTION_SUPPORT, align 8
  %154 = load i64, i64* @DP_DSC_SUPPORT, align 8
  %155 = sub i64 %153, %154
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @DP_DSC_BLK_PREDICTION_IS_SUPPORTED, align 4
  %159 = and i32 %157, %158
  %160 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %161 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %160, i32 0, i32 7
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %7, align 4
  %163 = shl i32 %162, 4
  %164 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %165 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %164, i32 0, i32 8
  store i32 %163, i32* %165, align 8
  %166 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %167 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sdiv i32 %168, 3
  %170 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %171 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %170, i32 0, i32 9
  store i32 %169, i32* %171, align 4
  store i64 0, i64* %8, align 8
  br label %172

172:                                              ; preds = %189, %145
  %173 = load i64, i64* %8, align 8
  %174 = load i32, i32* @DSC_NUM_BUF_RANGES, align 4
  %175 = sub nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = icmp slt i64 %173, %176
  br i1 %177, label %178, label %192

178:                                              ; preds = %172
  %179 = load i32*, i32** @rc_buf_thresh, align 8
  %180 = load i64, i64* %8, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = ashr i32 %182, 6
  %184 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %185 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %184, i32 0, i32 10
  %186 = load i32*, i32** %185, align 8
  %187 = load i64, i64* %8, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  store i32 %183, i32* %188, align 4
  br label %189

189:                                              ; preds = %178
  %190 = load i64, i64* %8, align 8
  %191 = add nsw i64 %190, 1
  store i64 %191, i64* %8, align 8
  br label %172

192:                                              ; preds = %172
  %193 = load i32, i32* %7, align 4
  %194 = icmp eq i32 %193, 6
  br i1 %194, label %195, label %204

195:                                              ; preds = %192
  %196 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %197 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %196, i32 0, i32 10
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 12
  store i32 124, i32* %199, align 4
  %200 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %201 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %200, i32 0, i32 10
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 13
  store i32 125, i32* %203, align 4
  br label %204

204:                                              ; preds = %195, %192
  %205 = load i32, i32* %7, align 4
  %206 = call i32 @get_row_index_for_rc_params(i32 %205)
  store i32 %206, i32* %9, align 4
  %207 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %208 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %207, i32 0, i32 9
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @get_column_index_for_rc_params(i32 %209)
  store i32 %210, i32* %10, align 4
  %211 = load i32, i32* %9, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %204
  %214 = load i32, i32* %10, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %213, %204
  %217 = load i32, i32* @EINVAL, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %3, align 4
  br label %419

219:                                              ; preds = %213
  %220 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @rc_params, align 8
  %221 = load i32, i32* %9, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %220, i64 %222
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %223, align 8
  %225 = load i32, i32* %10, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 7
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %231 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %230, i32 0, i32 21
  store i32 %229, i32* %231, align 4
  %232 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @rc_params, align 8
  %233 = load i32, i32* %9, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %232, i64 %234
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %235, align 8
  %237 = load i32, i32* %10, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 6
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %243 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %242, i32 0, i32 20
  store i32 %241, i32* %243, align 8
  %244 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @rc_params, align 8
  %245 = load i32, i32* %9, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %244, i64 %246
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %247, align 8
  %249 = load i32, i32* %10, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %255 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %254, i32 0, i32 11
  store i32 %253, i32* %255, align 8
  %256 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @rc_params, align 8
  %257 = load i32, i32* %9, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %256, i64 %258
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %259, align 8
  %261 = load i32, i32* %10, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %267 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %266, i32 0, i32 19
  store i32 %265, i32* %267, align 4
  %268 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @rc_params, align 8
  %269 = load i32, i32* %9, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %268, i64 %270
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %271, align 8
  %273 = load i32, i32* %10, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %279 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %278, i32 0, i32 18
  store i32 %277, i32* %279, align 8
  %280 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @rc_params, align 8
  %281 = load i32, i32* %9, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %280, i64 %282
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %283, align 8
  %285 = load i32, i32* %10, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %291 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %290, i32 0, i32 17
  store i32 %289, i32* %291, align 4
  %292 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @rc_params, align 8
  %293 = load i32, i32* %9, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %292, i64 %294
  %296 = load %struct.TYPE_12__*, %struct.TYPE_12__** %295, align 8
  %297 = load i32, i32* %10, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %303 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %302, i32 0, i32 16
  store i32 %301, i32* %303, align 8
  store i64 0, i64* %8, align 8
  br label %304

304:                                              ; preds = %372, %219
  %305 = load i64, i64* %8, align 8
  %306 = load i32, i32* @DSC_NUM_BUF_RANGES, align 4
  %307 = sext i32 %306 to i64
  %308 = icmp slt i64 %305, %307
  br i1 %308, label %309, label %375

309:                                              ; preds = %304
  %310 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @rc_params, align 8
  %311 = load i32, i32* %9, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %310, i64 %312
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** %313, align 8
  %315 = load i32, i32* %10, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 1
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %318, align 8
  %320 = load i64, i64* %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %325 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %324, i32 0, i32 15
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** %325, align 8
  %327 = load i64, i64* %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 2
  store i32 %323, i32* %329, align 4
  %330 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @rc_params, align 8
  %331 = load i32, i32* %9, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %330, i64 %332
  %334 = load %struct.TYPE_12__*, %struct.TYPE_12__** %333, align 8
  %335 = load i32, i32* %10, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 1
  %339 = load %struct.TYPE_11__*, %struct.TYPE_11__** %338, align 8
  %340 = load i64, i64* %8, align 8
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %345 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %344, i32 0, i32 15
  %346 = load %struct.TYPE_10__*, %struct.TYPE_10__** %345, align 8
  %347 = load i64, i64* %8, align 8
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %348, i32 0, i32 1
  store i32 %343, i32* %349, align 4
  %350 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @rc_params, align 8
  %351 = load i32, i32* %9, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %350, i64 %352
  %354 = load %struct.TYPE_12__*, %struct.TYPE_12__** %353, align 8
  %355 = load i32, i32* %10, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 1
  %359 = load %struct.TYPE_11__*, %struct.TYPE_11__** %358, align 8
  %360 = load i64, i64* %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %359, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = load i32, i32* @DSC_RANGE_BPG_OFFSET_MASK, align 4
  %365 = and i32 %363, %364
  %366 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %367 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %366, i32 0, i32 15
  %368 = load %struct.TYPE_10__*, %struct.TYPE_10__** %367, align 8
  %369 = load i64, i64* %8, align 8
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %368, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i32 0, i32 0
  store i32 %365, i32* %371, align 4
  br label %372

372:                                              ; preds = %309
  %373 = load i64, i64* %8, align 8
  %374 = add nsw i64 %373, 1
  store i64 %374, i64* %8, align 8
  br label %304

375:                                              ; preds = %304
  %376 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %377 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %376, i32 0, i32 9
  %378 = load i32, i32* %377, align 4
  %379 = icmp eq i32 %378, 8
  br i1 %379, label %385, label %380

380:                                              ; preds = %375
  %381 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %382 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %381, i32 0, i32 9
  %383 = load i32, i32* %382, align 4
  %384 = icmp eq i32 %383, 10
  br i1 %384, label %385, label %389

385:                                              ; preds = %380, %375
  %386 = load i32, i32* @DSC_MUX_WORD_SIZE_8_10_BPC, align 4
  %387 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %388 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %387, i32 0, i32 14
  store i32 %386, i32* %388, align 4
  br label %399

389:                                              ; preds = %380
  %390 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %391 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %390, i32 0, i32 9
  %392 = load i32, i32* %391, align 4
  %393 = icmp eq i32 %392, 12
  br i1 %393, label %394, label %398

394:                                              ; preds = %389
  %395 = load i32, i32* @DSC_MUX_WORD_SIZE_12_BPC, align 4
  %396 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %397 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %396, i32 0, i32 14
  store i32 %395, i32* %397, align 4
  br label %398

398:                                              ; preds = %394, %389
  br label %399

399:                                              ; preds = %398, %385
  %400 = load i32, i32* @DSC_RC_MODEL_SIZE_CONST, align 4
  %401 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %402 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %401, i32 0, i32 12
  store i32 %400, i32* %402, align 4
  %403 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %404 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %403, i32 0, i32 12
  %405 = load i32, i32* %404, align 4
  %406 = shl i32 %405, 3
  %407 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %408 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %407, i32 0, i32 12
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %411 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %410, i32 0, i32 11
  %412 = load i32, i32* %411, align 8
  %413 = sub nsw i32 %409, %412
  %414 = sdiv i32 %406, %413
  %415 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %416 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %415, i32 0, i32 13
  store i32 %414, i32* %416, align 8
  %417 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %6, align 8
  %418 = call i32 @drm_dsc_compute_rc_parameters(%struct.drm_dsc_config* %417)
  store i32 %418, i32* %3, align 4
  br label %419

419:                                              ; preds = %399, %216, %112
  %420 = load i32, i32* %3, align 4
  ret i32 %420
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @drm_dp_dsc_sink_line_buf_depth(i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @get_row_index_for_rc_params(i32) #1

declare dso_local i32 @get_column_index_for_rc_params(i32) #1

declare dso_local i32 @drm_dsc_compute_rc_parameters(%struct.drm_dsc_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
