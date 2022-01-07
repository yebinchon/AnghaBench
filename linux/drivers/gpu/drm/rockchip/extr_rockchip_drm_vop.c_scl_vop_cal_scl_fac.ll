; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_scl_vop_cal_scl_fac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_scl_vop_cal_scl_fac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop = type { i32 }
%struct.vop_win_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.drm_format_info = type { i32, i32, i64 }

@SCALE_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Maximum dst width (3840) exceeded\0A\00", align 1
@scale_yrgb_x = common dso_local global i32 0, align 4
@scale_yrgb_y = common dso_local global i32 0, align 4
@scale_cbcr_x = common dso_local global i32 0, align 4
@scale_cbcr_y = common dso_local global i32 0, align 4
@SCALE_DOWN = common dso_local global i64 0, align 8
@LB_RGB_3840X2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"not allow yrgb ver scale\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"not allow cbcr ver scale\0A\00", align 1
@SCALE_UP_BIL = common dso_local global i64 0, align 8
@LB_RGB_2560X4 = common dso_local global i64 0, align 8
@SCALE_UP_BIC = common dso_local global i64 0, align 8
@vsd_yrgb_gt4 = common dso_local global i64 0, align 8
@vsd_yrgb_gt2 = common dso_local global i64 0, align 8
@yrgb_hsd_mode = common dso_local global i64 0, align 8
@SCALE_DOWN_BIL = common dso_local global i64 0, align 8
@yrgb_vsd_mode = common dso_local global i64 0, align 8
@yrgb_vsu_mode = common dso_local global i64 0, align 8
@vsd_cbcr_gt4 = common dso_local global i64 0, align 8
@vsd_cbcr_gt2 = common dso_local global i64 0, align 8
@cbcr_hsd_mode = common dso_local global i64 0, align 8
@cbcr_vsd_mode = common dso_local global i64 0, align 8
@cbcr_vsu_mode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vop*, %struct.vop_win_data*, i32, i32, i32, i32, %struct.drm_format_info*)* @scl_vop_cal_scl_fac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scl_vop_cal_scl_fac(%struct.vop* %0, %struct.vop_win_data* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.drm_format_info* %6) #0 {
  %8 = alloca %struct.vop*, align 8
  %9 = alloca %struct.vop_win_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.drm_format_info*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.vop* %0, %struct.vop** %8, align 8
  store %struct.vop_win_data* %1, %struct.vop_win_data** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.drm_format_info* %6, %struct.drm_format_info** %14, align 8
  %26 = load i64, i64* @SCALE_NONE, align 8
  store i64 %26, i64* %17, align 8
  %27 = load i64, i64* @SCALE_NONE, align 8
  store i64 %27, i64* %18, align 8
  store i32 0, i32* %19, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.drm_format_info*, %struct.drm_format_info** %14, align 8
  %30 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sdiv i32 %28, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %20, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.drm_format_info*, %struct.drm_format_info** %14, align 8
  %36 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %34, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %21, align 8
  %40 = load %struct.drm_format_info*, %struct.drm_format_info** %14, align 8
  %41 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %7
  store i32 1, i32* %19, align 4
  br label %45

45:                                               ; preds = %44, %7
  %46 = load i32, i32* %12, align 4
  %47 = icmp sgt i32 %46, 3840
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.vop*, %struct.vop** %8, align 8
  %50 = getelementptr inbounds %struct.vop, %struct.vop* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @DRM_DEV_ERROR(i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %301

53:                                               ; preds = %45
  %54 = load %struct.vop_win_data*, %struct.vop_win_data** %9, align 8
  %55 = getelementptr inbounds %struct.vop_win_data, %struct.vop_win_data* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %97, label %62

62:                                               ; preds = %53
  %63 = load %struct.vop*, %struct.vop** %8, align 8
  %64 = load %struct.vop_win_data*, %struct.vop_win_data** %9, align 8
  %65 = load i32, i32* @scale_yrgb_x, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @scl_cal_scale2(i64 %67, i32 %68)
  %70 = call i32 @VOP_SCL_SET(%struct.vop* %63, %struct.vop_win_data* %64, i32 %65, i32 %69)
  %71 = load %struct.vop*, %struct.vop** %8, align 8
  %72 = load %struct.vop_win_data*, %struct.vop_win_data** %9, align 8
  %73 = load i32, i32* @scale_yrgb_y, align 4
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @scl_cal_scale2(i64 %75, i32 %76)
  %78 = call i32 @VOP_SCL_SET(%struct.vop* %71, %struct.vop_win_data* %72, i32 %73, i32 %77)
  %79 = load i32, i32* %19, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %62
  %82 = load %struct.vop*, %struct.vop** %8, align 8
  %83 = load %struct.vop_win_data*, %struct.vop_win_data** %9, align 8
  %84 = load i32, i32* @scale_cbcr_x, align 4
  %85 = load i64, i64* %20, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @scl_cal_scale2(i64 %85, i32 %86)
  %88 = call i32 @VOP_SCL_SET(%struct.vop* %82, %struct.vop_win_data* %83, i32 %84, i32 %87)
  %89 = load %struct.vop*, %struct.vop** %8, align 8
  %90 = load %struct.vop_win_data*, %struct.vop_win_data** %9, align 8
  %91 = load i32, i32* @scale_cbcr_y, align 4
  %92 = load i64, i64* %21, align 8
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @scl_cal_scale2(i64 %92, i32 %93)
  %95 = call i32 @VOP_SCL_SET(%struct.vop* %89, %struct.vop_win_data* %90, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %81, %62
  br label %301

97:                                               ; preds = %53
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = load i32, i32* %12, align 4
  %101 = call i64 @scl_get_scl_mode(i64 %99, i32 %100)
  store i64 %101, i64* %15, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = load i32, i32* %13, align 4
  %105 = call i64 @scl_get_scl_mode(i64 %103, i32 %104)
  store i64 %105, i64* %16, align 8
  %106 = load i32, i32* %19, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %97
  %109 = load i64, i64* %20, align 8
  %110 = load i32, i32* %12, align 4
  %111 = call i64 @scl_get_scl_mode(i64 %109, i32 %110)
  store i64 %111, i64* %17, align 8
  %112 = load i64, i64* %21, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i64 @scl_get_scl_mode(i64 %112, i32 %113)
  store i64 %114, i64* %18, align 8
  %115 = load i64, i64* %17, align 8
  %116 = load i64, i64* @SCALE_DOWN, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %108
  %119 = load i32, i32* %12, align 4
  %120 = call i64 @scl_vop_cal_lb_mode(i32 %119, i32 1)
  store i64 %120, i64* %23, align 8
  br label %125

121:                                              ; preds = %108
  %122 = load i64, i64* %20, align 8
  %123 = trunc i64 %122 to i32
  %124 = call i64 @scl_vop_cal_lb_mode(i32 %123, i32 1)
  store i64 %124, i64* %23, align 8
  br label %125

125:                                              ; preds = %121, %118
  br label %137

126:                                              ; preds = %97
  %127 = load i64, i64* %15, align 8
  %128 = load i64, i64* @SCALE_DOWN, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i32, i32* %12, align 4
  %132 = call i64 @scl_vop_cal_lb_mode(i32 %131, i32 0)
  store i64 %132, i64* %23, align 8
  br label %136

133:                                              ; preds = %126
  %134 = load i32, i32* %10, align 4
  %135 = call i64 @scl_vop_cal_lb_mode(i32 %134, i32 0)
  store i64 %135, i64* %23, align 8
  br label %136

136:                                              ; preds = %133, %130
  br label %137

137:                                              ; preds = %136, %125
  %138 = load %struct.vop*, %struct.vop** %8, align 8
  %139 = load %struct.vop_win_data*, %struct.vop_win_data** %9, align 8
  %140 = load i64, i64* %23, align 8
  %141 = load i64, i64* %23, align 8
  %142 = call i32 @VOP_SCL_SET_EXT(%struct.vop* %138, %struct.vop_win_data* %139, i64 %140, i64 %141)
  %143 = load i64, i64* %23, align 8
  %144 = load i64, i64* @LB_RGB_3840X2, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %166

146:                                              ; preds = %137
  %147 = load i64, i64* %16, align 8
  %148 = load i64, i64* @SCALE_NONE, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load %struct.vop*, %struct.vop** %8, align 8
  %152 = getelementptr inbounds %struct.vop, %struct.vop* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @DRM_DEV_ERROR(i32 %153, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %301

155:                                              ; preds = %146
  %156 = load i64, i64* %18, align 8
  %157 = load i64, i64* @SCALE_NONE, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = load %struct.vop*, %struct.vop** %8, align 8
  %161 = getelementptr inbounds %struct.vop, %struct.vop* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @DRM_DEV_ERROR(i32 %162, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %301

164:                                              ; preds = %155
  %165 = load i64, i64* @SCALE_UP_BIL, align 8
  store i64 %165, i64* %22, align 8
  br label %175

166:                                              ; preds = %137
  %167 = load i64, i64* %23, align 8
  %168 = load i64, i64* @LB_RGB_2560X4, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = load i64, i64* @SCALE_UP_BIL, align 8
  store i64 %171, i64* %22, align 8
  br label %174

172:                                              ; preds = %166
  %173 = load i64, i64* @SCALE_UP_BIC, align 8
  store i64 %173, i64* %22, align 8
  br label %174

174:                                              ; preds = %172, %170
  br label %175

175:                                              ; preds = %174, %164
  %176 = load i64, i64* %15, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = load i32, i32* %12, align 4
  %180 = call i32 @scl_vop_cal_scale(i64 %176, i64 %178, i32 %179, i32 1, i64 0, i32* null)
  store i32 %180, i32* %24, align 4
  %181 = load %struct.vop*, %struct.vop** %8, align 8
  %182 = load %struct.vop_win_data*, %struct.vop_win_data** %9, align 8
  %183 = load i32, i32* @scale_yrgb_x, align 4
  %184 = load i32, i32* %24, align 4
  %185 = call i32 @VOP_SCL_SET(%struct.vop* %181, %struct.vop_win_data* %182, i32 %183, i32 %184)
  %186 = load i64, i64* %16, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = load i32, i32* %13, align 4
  %190 = load i64, i64* %22, align 8
  %191 = call i32 @scl_vop_cal_scale(i64 %186, i64 %188, i32 %189, i32 0, i64 %190, i32* %25)
  store i32 %191, i32* %24, align 4
  %192 = load %struct.vop*, %struct.vop** %8, align 8
  %193 = load %struct.vop_win_data*, %struct.vop_win_data** %9, align 8
  %194 = load i32, i32* @scale_yrgb_y, align 4
  %195 = load i32, i32* %24, align 4
  %196 = call i32 @VOP_SCL_SET(%struct.vop* %192, %struct.vop_win_data* %193, i32 %194, i32 %195)
  %197 = load %struct.vop*, %struct.vop** %8, align 8
  %198 = load %struct.vop_win_data*, %struct.vop_win_data** %9, align 8
  %199 = load i64, i64* @vsd_yrgb_gt4, align 8
  %200 = load i32, i32* %25, align 4
  %201 = icmp eq i32 %200, 4
  %202 = zext i1 %201 to i32
  %203 = sext i32 %202 to i64
  %204 = call i32 @VOP_SCL_SET_EXT(%struct.vop* %197, %struct.vop_win_data* %198, i64 %199, i64 %203)
  %205 = load %struct.vop*, %struct.vop** %8, align 8
  %206 = load %struct.vop_win_data*, %struct.vop_win_data** %9, align 8
  %207 = load i64, i64* @vsd_yrgb_gt2, align 8
  %208 = load i32, i32* %25, align 4
  %209 = icmp eq i32 %208, 2
  %210 = zext i1 %209 to i32
  %211 = sext i32 %210 to i64
  %212 = call i32 @VOP_SCL_SET_EXT(%struct.vop* %205, %struct.vop_win_data* %206, i64 %207, i64 %211)
  %213 = load %struct.vop*, %struct.vop** %8, align 8
  %214 = load %struct.vop_win_data*, %struct.vop_win_data** %9, align 8
  %215 = load i64, i64* %15, align 8
  %216 = load i64, i64* %15, align 8
  %217 = call i32 @VOP_SCL_SET_EXT(%struct.vop* %213, %struct.vop_win_data* %214, i64 %215, i64 %216)
  %218 = load %struct.vop*, %struct.vop** %8, align 8
  %219 = load %struct.vop_win_data*, %struct.vop_win_data** %9, align 8
  %220 = load i64, i64* %16, align 8
  %221 = load i64, i64* %16, align 8
  %222 = call i32 @VOP_SCL_SET_EXT(%struct.vop* %218, %struct.vop_win_data* %219, i64 %220, i64 %221)
  %223 = load %struct.vop*, %struct.vop** %8, align 8
  %224 = load %struct.vop_win_data*, %struct.vop_win_data** %9, align 8
  %225 = load i64, i64* @yrgb_hsd_mode, align 8
  %226 = load i64, i64* @SCALE_DOWN_BIL, align 8
  %227 = call i32 @VOP_SCL_SET_EXT(%struct.vop* %223, %struct.vop_win_data* %224, i64 %225, i64 %226)
  %228 = load %struct.vop*, %struct.vop** %8, align 8
  %229 = load %struct.vop_win_data*, %struct.vop_win_data** %9, align 8
  %230 = load i64, i64* @yrgb_vsd_mode, align 8
  %231 = load i64, i64* @SCALE_DOWN_BIL, align 8
  %232 = call i32 @VOP_SCL_SET_EXT(%struct.vop* %228, %struct.vop_win_data* %229, i64 %230, i64 %231)
  %233 = load %struct.vop*, %struct.vop** %8, align 8
  %234 = load %struct.vop_win_data*, %struct.vop_win_data** %9, align 8
  %235 = load i64, i64* @yrgb_vsu_mode, align 8
  %236 = load i64, i64* %22, align 8
  %237 = call i32 @VOP_SCL_SET_EXT(%struct.vop* %233, %struct.vop_win_data* %234, i64 %235, i64 %236)
  %238 = load i32, i32* %19, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %301

240:                                              ; preds = %175
  %241 = load i64, i64* %17, align 8
  %242 = load i64, i64* %20, align 8
  %243 = load i32, i32* %12, align 4
  %244 = call i32 @scl_vop_cal_scale(i64 %241, i64 %242, i32 %243, i32 1, i64 0, i32* null)
  store i32 %244, i32* %24, align 4
  %245 = load %struct.vop*, %struct.vop** %8, align 8
  %246 = load %struct.vop_win_data*, %struct.vop_win_data** %9, align 8
  %247 = load i32, i32* @scale_cbcr_x, align 4
  %248 = load i32, i32* %24, align 4
  %249 = call i32 @VOP_SCL_SET(%struct.vop* %245, %struct.vop_win_data* %246, i32 %247, i32 %248)
  %250 = load i64, i64* %18, align 8
  %251 = load i64, i64* %21, align 8
  %252 = load i32, i32* %13, align 4
  %253 = load i64, i64* %22, align 8
  %254 = call i32 @scl_vop_cal_scale(i64 %250, i64 %251, i32 %252, i32 0, i64 %253, i32* %25)
  store i32 %254, i32* %24, align 4
  %255 = load %struct.vop*, %struct.vop** %8, align 8
  %256 = load %struct.vop_win_data*, %struct.vop_win_data** %9, align 8
  %257 = load i32, i32* @scale_cbcr_y, align 4
  %258 = load i32, i32* %24, align 4
  %259 = call i32 @VOP_SCL_SET(%struct.vop* %255, %struct.vop_win_data* %256, i32 %257, i32 %258)
  %260 = load %struct.vop*, %struct.vop** %8, align 8
  %261 = load %struct.vop_win_data*, %struct.vop_win_data** %9, align 8
  %262 = load i64, i64* @vsd_cbcr_gt4, align 8
  %263 = load i32, i32* %25, align 4
  %264 = icmp eq i32 %263, 4
  %265 = zext i1 %264 to i32
  %266 = sext i32 %265 to i64
  %267 = call i32 @VOP_SCL_SET_EXT(%struct.vop* %260, %struct.vop_win_data* %261, i64 %262, i64 %266)
  %268 = load %struct.vop*, %struct.vop** %8, align 8
  %269 = load %struct.vop_win_data*, %struct.vop_win_data** %9, align 8
  %270 = load i64, i64* @vsd_cbcr_gt2, align 8
  %271 = load i32, i32* %25, align 4
  %272 = icmp eq i32 %271, 2
  %273 = zext i1 %272 to i32
  %274 = sext i32 %273 to i64
  %275 = call i32 @VOP_SCL_SET_EXT(%struct.vop* %268, %struct.vop_win_data* %269, i64 %270, i64 %274)
  %276 = load %struct.vop*, %struct.vop** %8, align 8
  %277 = load %struct.vop_win_data*, %struct.vop_win_data** %9, align 8
  %278 = load i64, i64* %17, align 8
  %279 = load i64, i64* %17, align 8
  %280 = call i32 @VOP_SCL_SET_EXT(%struct.vop* %276, %struct.vop_win_data* %277, i64 %278, i64 %279)
  %281 = load %struct.vop*, %struct.vop** %8, align 8
  %282 = load %struct.vop_win_data*, %struct.vop_win_data** %9, align 8
  %283 = load i64, i64* %18, align 8
  %284 = load i64, i64* %18, align 8
  %285 = call i32 @VOP_SCL_SET_EXT(%struct.vop* %281, %struct.vop_win_data* %282, i64 %283, i64 %284)
  %286 = load %struct.vop*, %struct.vop** %8, align 8
  %287 = load %struct.vop_win_data*, %struct.vop_win_data** %9, align 8
  %288 = load i64, i64* @cbcr_hsd_mode, align 8
  %289 = load i64, i64* @SCALE_DOWN_BIL, align 8
  %290 = call i32 @VOP_SCL_SET_EXT(%struct.vop* %286, %struct.vop_win_data* %287, i64 %288, i64 %289)
  %291 = load %struct.vop*, %struct.vop** %8, align 8
  %292 = load %struct.vop_win_data*, %struct.vop_win_data** %9, align 8
  %293 = load i64, i64* @cbcr_vsd_mode, align 8
  %294 = load i64, i64* @SCALE_DOWN_BIL, align 8
  %295 = call i32 @VOP_SCL_SET_EXT(%struct.vop* %291, %struct.vop_win_data* %292, i64 %293, i64 %294)
  %296 = load %struct.vop*, %struct.vop** %8, align 8
  %297 = load %struct.vop_win_data*, %struct.vop_win_data** %9, align 8
  %298 = load i64, i64* @cbcr_vsu_mode, align 8
  %299 = load i64, i64* %22, align 8
  %300 = call i32 @VOP_SCL_SET_EXT(%struct.vop* %296, %struct.vop_win_data* %297, i64 %298, i64 %299)
  br label %301

301:                                              ; preds = %48, %96, %150, %159, %240, %175
  ret void
}

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local i32 @VOP_SCL_SET(%struct.vop*, %struct.vop_win_data*, i32, i32) #1

declare dso_local i32 @scl_cal_scale2(i64, i32) #1

declare dso_local i64 @scl_get_scl_mode(i64, i32) #1

declare dso_local i64 @scl_vop_cal_lb_mode(i32, i32) #1

declare dso_local i32 @VOP_SCL_SET_EXT(%struct.vop*, %struct.vop_win_data*, i64, i64) #1

declare dso_local i32 @scl_vop_cal_scale(i64, i64, i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
