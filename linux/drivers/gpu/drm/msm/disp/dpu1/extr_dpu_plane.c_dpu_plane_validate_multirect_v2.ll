; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c_dpu_plane_validate_multirect_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c_dpu_plane_validate_multirect_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_multirect_plane_states = type { %struct.drm_plane_state*, %struct.drm_plane_state* }
%struct.drm_plane_state = type { i32, i32, i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.msm_format = type { i32 }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.dpu_plane_state = type { i8*, i8* }
%struct.dpu_plane = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.dpu_format = type { i32 }

@R_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"DPU plane state of plane id %d is NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"scaling is not supported in multirect mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Unsupported format for multirect mode\0A\00", align 1
@DPU_SSPP_MULTIRECT_PARALLEL = common dso_local global i8* null, align 8
@R0 = common dso_local global i64 0, align 8
@R1 = common dso_local global i64 0, align 8
@DPU_SSPP_MULTIRECT_TIME_MX = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"No multirect mode possible for the planes (%d - %d)\0A\00", align 1
@DPU_SSPP_RECT_1 = common dso_local global i8* null, align 8
@DPU_SSPP_RECT_0 = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"R0: %d - %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"R1: %d - %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpu_plane_validate_multirect_v2(%struct.dpu_multirect_plane_states* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpu_multirect_plane_states*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.msm_format*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.drm_rect, align 4
  store %struct.dpu_multirect_plane_states* %0, %struct.dpu_multirect_plane_states** %3, align 8
  %20 = load i32, i32* @R_MAX, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %4, align 8
  %23 = alloca %struct.dpu_plane_state*, i64 %21, align 16
  store i64 %21, i64* %5, align 8
  %24 = load i32, i32* @R_MAX, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca %struct.drm_plane_state*, i64 %25, align 16
  store i64 %25, i64* %6, align 8
  %27 = load i32, i32* @R_MAX, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca %struct.drm_rect, i64 %28, align 16
  store i64 %28, i64* %7, align 8
  %30 = load i32, i32* @R_MAX, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca %struct.drm_rect, i64 %31, align 16
  store i64 %31, i64* %8, align 8
  %33 = load i32, i32* @R_MAX, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca %struct.dpu_plane*, i64 %34, align 16
  store i64 %34, i64* %9, align 8
  %36 = load i32, i32* @R_MAX, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca %struct.dpu_format*, i64 %37, align 16
  store i64 %37, i64* %10, align 8
  store i32 1, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %95, %1
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @R_MAX, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %98

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.dpu_multirect_plane_states*, %struct.dpu_multirect_plane_states** %3, align 8
  %48 = getelementptr inbounds %struct.dpu_multirect_plane_states, %struct.dpu_multirect_plane_states* %47, i32 0, i32 1
  %49 = load %struct.drm_plane_state*, %struct.drm_plane_state** %48, align 8
  br label %54

50:                                               ; preds = %43
  %51 = load %struct.dpu_multirect_plane_states*, %struct.dpu_multirect_plane_states** %3, align 8
  %52 = getelementptr inbounds %struct.dpu_multirect_plane_states, %struct.dpu_multirect_plane_states* %51, i32 0, i32 0
  %53 = load %struct.drm_plane_state*, %struct.drm_plane_state** %52, align 8
  br label %54

54:                                               ; preds = %50, %46
  %55 = phi %struct.drm_plane_state* [ %49, %46 ], [ %53, %50 ]
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.drm_plane_state*, %struct.drm_plane_state** %26, i64 %57
  store %struct.drm_plane_state* %55, %struct.drm_plane_state** %58, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.drm_plane_state*, %struct.drm_plane_state** %26, i64 %60
  %62 = load %struct.drm_plane_state*, %struct.drm_plane_state** %61, align 8
  %63 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.msm_format* @msm_framebuffer_format(i32 %64)
  store %struct.msm_format* %65, %struct.msm_format** %16, align 8
  %66 = load %struct.msm_format*, %struct.msm_format** %16, align 8
  %67 = call %struct.dpu_format* @to_dpu_format(%struct.msm_format* %66)
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.dpu_format*, %struct.dpu_format** %38, i64 %69
  store %struct.dpu_format* %67, %struct.dpu_format** %70, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.dpu_format*, %struct.dpu_format** %38, i64 %72
  %74 = load %struct.dpu_format*, %struct.dpu_format** %73, align 8
  %75 = call i64 @DPU_FORMAT_IS_UBWC(%struct.dpu_format* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %54
  store i32 1, i32* %15, align 4
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.dpu_format*, %struct.dpu_format** %38, i64 %79
  %81 = load %struct.dpu_format*, %struct.dpu_format** %80, align 8
  %82 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp ugt i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %77
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.dpu_format*, %struct.dpu_format** %38, i64 %88
  %90 = load %struct.dpu_format*, %struct.dpu_format** %89, align 8
  %91 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %86, %77
  br label %94

94:                                               ; preds = %93, %54
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %39

98:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %99

99:                                               ; preds = %280, %98
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @R_MAX, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %283

103:                                              ; preds = %99
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.drm_plane_state*, %struct.drm_plane_state** %26, i64 %105
  %107 = load %struct.drm_plane_state*, %struct.drm_plane_state** %106, align 8
  %108 = call %struct.dpu_plane_state* @to_dpu_plane_state(%struct.drm_plane_state* %107)
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.dpu_plane_state*, %struct.dpu_plane_state** %23, i64 %110
  store %struct.dpu_plane_state* %108, %struct.dpu_plane_state** %111, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.drm_plane_state*, %struct.drm_plane_state** %26, i64 %113
  %115 = load %struct.drm_plane_state*, %struct.drm_plane_state** %114, align 8
  %116 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %115, i32 0, i32 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = call %struct.dpu_plane* @to_dpu_plane(%struct.TYPE_8__* %117)
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.dpu_plane*, %struct.dpu_plane** %35, i64 %120
  store %struct.dpu_plane* %118, %struct.dpu_plane** %121, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.dpu_plane_state*, %struct.dpu_plane_state** %23, i64 %123
  %125 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %124, align 8
  %126 = icmp eq %struct.dpu_plane_state* %125, null
  br i1 %126, label %127, label %140

127:                                              ; preds = %103
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.drm_plane_state*, %struct.drm_plane_state** %26, i64 %129
  %131 = load %struct.drm_plane_state*, %struct.drm_plane_state** %130, align 8
  %132 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %131, i32 0, i32 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i8*, i32, ...) @DPU_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %413

140:                                              ; preds = %103
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.drm_plane_state*, %struct.drm_plane_state** %26, i64 %142
  %144 = load %struct.drm_plane_state*, %struct.drm_plane_state** %143, align 8
  %145 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = ashr i32 %146, 16
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %29, i64 %149
  %151 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %150, i32 0, i32 0
  store i32 %147, i32* %151, align 16
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.drm_plane_state*, %struct.drm_plane_state** %26, i64 %153
  %155 = load %struct.drm_plane_state*, %struct.drm_plane_state** %154, align 8
  %156 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = ashr i32 %157, 16
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %29, i64 %160
  %162 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %161, i32 0, i32 1
  store i32 %158, i32* %162, align 4
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %29, i64 %164
  %166 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 16
  %168 = load i32, i32* %11, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.drm_plane_state*, %struct.drm_plane_state** %26, i64 %169
  %171 = load %struct.drm_plane_state*, %struct.drm_plane_state** %170, align 8
  %172 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = ashr i32 %173, 16
  %175 = add nsw i32 %167, %174
  %176 = load i32, i32* %11, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %29, i64 %177
  %179 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %178, i32 0, i32 2
  store i32 %175, i32* %179, align 8
  %180 = load i32, i32* %11, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %29, i64 %181
  %183 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.drm_plane_state*, %struct.drm_plane_state** %26, i64 %186
  %188 = load %struct.drm_plane_state*, %struct.drm_plane_state** %187, align 8
  %189 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = ashr i32 %190, 16
  %192 = add nsw i32 %184, %191
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %29, i64 %194
  %196 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %195, i32 0, i32 3
  store i32 %192, i32* %196, align 4
  %197 = load i32, i32* %11, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %32, i64 %198
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.drm_plane_state*, %struct.drm_plane_state** %26, i64 %201
  %203 = load %struct.drm_plane_state*, %struct.drm_plane_state** %202, align 8
  %204 = call { i64, i64 } @drm_plane_state_dest(%struct.drm_plane_state* %203)
  %205 = bitcast %struct.drm_rect* %19 to { i64, i64 }*
  %206 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %205, i32 0, i32 0
  %207 = extractvalue { i64, i64 } %204, 0
  store i64 %207, i64* %206, align 4
  %208 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %205, i32 0, i32 1
  %209 = extractvalue { i64, i64 } %204, 1
  store i64 %209, i64* %208, align 4
  %210 = bitcast %struct.drm_rect* %199 to i8*
  %211 = bitcast %struct.drm_rect* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %210, i8* align 4 %211, i64 16, i1 false)
  %212 = load i32, i32* %11, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %29, i64 %213
  %215 = load i32, i32* %11, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %32, i64 %216
  %218 = call i32 @drm_rect_calc_hscale(%struct.drm_rect* %214, %struct.drm_rect* %217, i32 1, i32 1)
  %219 = icmp ne i32 %218, 1
  br i1 %219, label %229, label %220

220:                                              ; preds = %140
  %221 = load i32, i32* %11, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %29, i64 %222
  %224 = load i32, i32* %11, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %32, i64 %225
  %227 = call i32 @drm_rect_calc_vscale(%struct.drm_rect* %223, %struct.drm_rect* %226, i32 1, i32 1)
  %228 = icmp ne i32 %227, 1
  br i1 %228, label %229, label %237

229:                                              ; preds = %220, %140
  %230 = load i32, i32* %11, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.dpu_plane*, %struct.dpu_plane** %35, i64 %231
  %233 = load %struct.dpu_plane*, %struct.dpu_plane** %232, align 8
  %234 = call i32 @DPU_ERROR_PLANE(%struct.dpu_plane* %233, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %235 = load i32, i32* @EINVAL, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %413

237:                                              ; preds = %220
  %238 = load i32, i32* %11, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.dpu_format*, %struct.dpu_format** %38, i64 %239
  %241 = load %struct.dpu_format*, %struct.dpu_format** %240, align 8
  %242 = call i64 @DPU_FORMAT_IS_YUV(%struct.dpu_format* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %252

244:                                              ; preds = %237
  %245 = load i32, i32* %11, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.dpu_plane*, %struct.dpu_plane** %35, i64 %246
  %248 = load %struct.dpu_plane*, %struct.dpu_plane** %247, align 8
  %249 = call i32 @DPU_ERROR_PLANE(%struct.dpu_plane* %248, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %250 = load i32, i32* @EINVAL, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %413

252:                                              ; preds = %237
  %253 = load i32, i32* %11, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.dpu_plane*, %struct.dpu_plane** %35, i64 %254
  %256 = load %struct.dpu_plane*, %struct.dpu_plane** %255, align 8
  %257 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %256, i32 0, i32 1
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  store i32 %262, i32* %17, align 4
  %263 = load i32, i32* %15, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %252
  %266 = load i32, i32* %17, align 4
  %267 = sdiv i32 %266, 2
  store i32 %267, i32* %17, align 4
  br label %268

268:                                              ; preds = %265, %252
  %269 = load i32, i32* %14, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %279

271:                                              ; preds = %268
  %272 = load i32, i32* %11, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %29, i64 %273
  %275 = call i32 @drm_rect_width(%struct.drm_rect* %274)
  %276 = load i32, i32* %17, align 4
  %277 = icmp sgt i32 %275, %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %271
  store i32 0, i32* %14, align 4
  br label %279

279:                                              ; preds = %278, %271, %268
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %11, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %11, align 4
  br label %99

283:                                              ; preds = %99
  %284 = load i32, i32* %14, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %297

286:                                              ; preds = %283
  %287 = load i8*, i8** @DPU_SSPP_MULTIRECT_PARALLEL, align 8
  %288 = load i64, i64* @R0, align 8
  %289 = getelementptr inbounds %struct.dpu_plane_state*, %struct.dpu_plane_state** %23, i64 %288
  %290 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %289, align 8
  %291 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %290, i32 0, i32 1
  store i8* %287, i8** %291, align 8
  %292 = load i8*, i8** @DPU_SSPP_MULTIRECT_PARALLEL, align 8
  %293 = load i64, i64* @R1, align 8
  %294 = getelementptr inbounds %struct.dpu_plane_state*, %struct.dpu_plane_state** %23, i64 %293
  %295 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %294, align 8
  %296 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %295, i32 0, i32 1
  store i8* %292, i8** %296, align 8
  br label %355

297:                                              ; preds = %283
  %298 = load i32, i32* %13, align 4
  %299 = mul i32 2, %298
  store i32 %299, i32* %12, align 4
  %300 = load i64, i64* @R1, align 8
  %301 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %32, i64 %300
  %302 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load i64, i64* @R0, align 8
  %305 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %32, i64 %304
  %306 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %12, align 4
  %309 = add nsw i32 %307, %308
  %310 = icmp sge i32 %303, %309
  br i1 %310, label %323, label %311

311:                                              ; preds = %297
  %312 = load i64, i64* @R0, align 8
  %313 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %32, i64 %312
  %314 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = load i64, i64* @R1, align 8
  %317 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %32, i64 %316
  %318 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* %12, align 4
  %321 = add nsw i32 %319, %320
  %322 = icmp sge i32 %315, %321
  br i1 %322, label %323, label %334

323:                                              ; preds = %311, %297
  %324 = load i8*, i8** @DPU_SSPP_MULTIRECT_TIME_MX, align 8
  %325 = load i64, i64* @R0, align 8
  %326 = getelementptr inbounds %struct.dpu_plane_state*, %struct.dpu_plane_state** %23, i64 %325
  %327 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %326, align 8
  %328 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %327, i32 0, i32 1
  store i8* %324, i8** %328, align 8
  %329 = load i8*, i8** @DPU_SSPP_MULTIRECT_TIME_MX, align 8
  %330 = load i64, i64* @R1, align 8
  %331 = getelementptr inbounds %struct.dpu_plane_state*, %struct.dpu_plane_state** %23, i64 %330
  %332 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %331, align 8
  %333 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %332, i32 0, i32 1
  store i8* %329, i8** %333, align 8
  br label %354

334:                                              ; preds = %311
  %335 = load i64, i64* @R0, align 8
  %336 = getelementptr inbounds %struct.drm_plane_state*, %struct.drm_plane_state** %26, i64 %335
  %337 = load %struct.drm_plane_state*, %struct.drm_plane_state** %336, align 8
  %338 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %337, i32 0, i32 4
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = load i64, i64* @R1, align 8
  %344 = getelementptr inbounds %struct.drm_plane_state*, %struct.drm_plane_state** %26, i64 %343
  %345 = load %struct.drm_plane_state*, %struct.drm_plane_state** %344, align 8
  %346 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %345, i32 0, i32 4
  %347 = load %struct.TYPE_8__*, %struct.TYPE_8__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = call i32 (i8*, i32, ...) @DPU_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %342, i32 %350)
  %352 = load i32, i32* @EINVAL, align 4
  %353 = sub nsw i32 0, %352
  store i32 %353, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %413

354:                                              ; preds = %323
  br label %355

355:                                              ; preds = %354, %286
  %356 = load i64, i64* @R0, align 8
  %357 = getelementptr inbounds %struct.dpu_plane*, %struct.dpu_plane** %35, i64 %356
  %358 = load %struct.dpu_plane*, %struct.dpu_plane** %357, align 8
  %359 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %373

362:                                              ; preds = %355
  %363 = load i8*, i8** @DPU_SSPP_RECT_1, align 8
  %364 = load i64, i64* @R0, align 8
  %365 = getelementptr inbounds %struct.dpu_plane_state*, %struct.dpu_plane_state** %23, i64 %364
  %366 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %365, align 8
  %367 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %366, i32 0, i32 0
  store i8* %363, i8** %367, align 8
  %368 = load i8*, i8** @DPU_SSPP_RECT_0, align 8
  %369 = load i64, i64* @R1, align 8
  %370 = getelementptr inbounds %struct.dpu_plane_state*, %struct.dpu_plane_state** %23, i64 %369
  %371 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %370, align 8
  %372 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %371, i32 0, i32 0
  store i8* %368, i8** %372, align 8
  br label %384

373:                                              ; preds = %355
  %374 = load i8*, i8** @DPU_SSPP_RECT_0, align 8
  %375 = load i64, i64* @R0, align 8
  %376 = getelementptr inbounds %struct.dpu_plane_state*, %struct.dpu_plane_state** %23, i64 %375
  %377 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %376, align 8
  %378 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %377, i32 0, i32 0
  store i8* %374, i8** %378, align 8
  %379 = load i8*, i8** @DPU_SSPP_RECT_1, align 8
  %380 = load i64, i64* @R1, align 8
  %381 = getelementptr inbounds %struct.dpu_plane_state*, %struct.dpu_plane_state** %23, i64 %380
  %382 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %381, align 8
  %383 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %382, i32 0, i32 0
  store i8* %379, i8** %383, align 8
  br label %384

384:                                              ; preds = %373, %362
  %385 = load i64, i64* @R0, align 8
  %386 = getelementptr inbounds %struct.dpu_plane*, %struct.dpu_plane** %35, i64 %385
  %387 = load %struct.dpu_plane*, %struct.dpu_plane** %386, align 8
  %388 = load i64, i64* @R0, align 8
  %389 = getelementptr inbounds %struct.dpu_plane_state*, %struct.dpu_plane_state** %23, i64 %388
  %390 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %389, align 8
  %391 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %390, i32 0, i32 1
  %392 = load i8*, i8** %391, align 8
  %393 = load i64, i64* @R0, align 8
  %394 = getelementptr inbounds %struct.dpu_plane_state*, %struct.dpu_plane_state** %23, i64 %393
  %395 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %394, align 8
  %396 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %395, i32 0, i32 0
  %397 = load i8*, i8** %396, align 8
  %398 = call i32 @DPU_DEBUG_PLANE(%struct.dpu_plane* %387, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %392, i8* %397)
  %399 = load i64, i64* @R1, align 8
  %400 = getelementptr inbounds %struct.dpu_plane*, %struct.dpu_plane** %35, i64 %399
  %401 = load %struct.dpu_plane*, %struct.dpu_plane** %400, align 8
  %402 = load i64, i64* @R1, align 8
  %403 = getelementptr inbounds %struct.dpu_plane_state*, %struct.dpu_plane_state** %23, i64 %402
  %404 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %403, align 8
  %405 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %404, i32 0, i32 1
  %406 = load i8*, i8** %405, align 8
  %407 = load i64, i64* @R1, align 8
  %408 = getelementptr inbounds %struct.dpu_plane_state*, %struct.dpu_plane_state** %23, i64 %407
  %409 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %408, align 8
  %410 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %409, i32 0, i32 0
  %411 = load i8*, i8** %410, align 8
  %412 = call i32 @DPU_DEBUG_PLANE(%struct.dpu_plane* %401, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %406, i8* %411)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %413

413:                                              ; preds = %384, %334, %244, %229, %127
  %414 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %414)
  %415 = load i32, i32* %2, align 4
  ret i32 %415
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.msm_format* @msm_framebuffer_format(i32) #2

declare dso_local %struct.dpu_format* @to_dpu_format(%struct.msm_format*) #2

declare dso_local i64 @DPU_FORMAT_IS_UBWC(%struct.dpu_format*) #2

declare dso_local %struct.dpu_plane_state* @to_dpu_plane_state(%struct.drm_plane_state*) #2

declare dso_local %struct.dpu_plane* @to_dpu_plane(%struct.TYPE_8__*) #2

declare dso_local i32 @DPU_ERROR(i8*, i32, ...) #2

declare dso_local { i64, i64 } @drm_plane_state_dest(%struct.drm_plane_state*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @drm_rect_calc_hscale(%struct.drm_rect*, %struct.drm_rect*, i32, i32) #2

declare dso_local i32 @drm_rect_calc_vscale(%struct.drm_rect*, %struct.drm_rect*, i32, i32) #2

declare dso_local i32 @DPU_ERROR_PLANE(%struct.dpu_plane*, i8*) #2

declare dso_local i64 @DPU_FORMAT_IS_YUV(%struct.dpu_format*) #2

declare dso_local i32 @drm_rect_width(%struct.drm_rect*) #2

declare dso_local i32 @DPU_DEBUG_PLANE(%struct.dpu_plane*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
