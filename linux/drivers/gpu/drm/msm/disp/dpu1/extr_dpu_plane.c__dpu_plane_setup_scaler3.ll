; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c__dpu_plane_setup_scaler3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c__dpu_plane_setup_scaler3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_plane = type { i32 }
%struct.dpu_plane_state = type { %struct.dpu_hw_scaler3_cfg }
%struct.dpu_hw_scaler3_cfg = type { i64*, i64*, i64*, i64*, i64*, i64*, i64, i64, i32, i32, i64, i32, i8*, i8*, i32*, i32* }
%struct.dpu_format = type { i32 }

@PHASE_STEP_SHIFT = common dso_local global i32 0, align 4
@DPU_SSPP_COMP_0 = common dso_local global i64 0, align 8
@DPU_SSPP_COMP_1_2 = common dso_local global i64 0, align 8
@DPU_SSPP_COMP_2 = common dso_local global i64 0, align 8
@DPU_SSPP_COMP_3 = common dso_local global i64 0, align 8
@DPU_MAX_PLANES = common dso_local global i64 0, align 8
@DPU_QSEED3_DEFAULT_PRELOAD_H = common dso_local global i32 0, align 4
@DPU_QSEED3_DEFAULT_PRELOAD_V = common dso_local global i32 0, align 4
@DPU_SCALE_BIL = common dso_local global i8* null, align 8
@DPU_SCALE_ALPHA_BIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_plane*, %struct.dpu_plane_state*, i64, i64, i64, i64, %struct.dpu_hw_scaler3_cfg*, %struct.dpu_format*, i64, i64)* @_dpu_plane_setup_scaler3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_plane_setup_scaler3(%struct.dpu_plane* %0, %struct.dpu_plane_state* %1, i64 %2, i64 %3, i64 %4, i64 %5, %struct.dpu_hw_scaler3_cfg* %6, %struct.dpu_format* %7, i64 %8, i64 %9) #0 {
  %11 = alloca %struct.dpu_plane*, align 8
  %12 = alloca %struct.dpu_plane_state*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.dpu_hw_scaler3_cfg*, align 8
  %18 = alloca %struct.dpu_format*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.dpu_plane* %0, %struct.dpu_plane** %11, align 8
  store %struct.dpu_plane_state* %1, %struct.dpu_plane_state** %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store %struct.dpu_hw_scaler3_cfg* %6, %struct.dpu_hw_scaler3_cfg** %17, align 8
  store %struct.dpu_format* %7, %struct.dpu_format** %18, align 8
  store i64 %8, i64* %19, align 8
  store i64 %9, i64* %20, align 8
  %22 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %23 = call i32 @memset(%struct.dpu_hw_scaler3_cfg* %22, i32 0, i32 120)
  %24 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %12, align 8
  %25 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %24, i32 0, i32 0
  %26 = call i32 @memset(%struct.dpu_hw_scaler3_cfg* %25, i32 0, i32 4)
  %27 = load i32, i32* @PHASE_STEP_SHIFT, align 4
  %28 = shl i32 1, %27
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* %15, align 8
  %31 = call i8* @mult_frac(i32 %28, i64 %29, i64 %30)
  %32 = ptrtoint i8* %31 to i64
  %33 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %34 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @DPU_SSPP_COMP_0, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  store i64 %32, i64* %37, align 8
  %38 = load i32, i32* @PHASE_STEP_SHIFT, align 4
  %39 = shl i32 1, %38
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* %16, align 8
  %42 = call i8* @mult_frac(i32 %39, i64 %40, i64 %41)
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %45 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* @DPU_SSPP_COMP_0, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  store i64 %43, i64* %48, align 8
  %49 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %50 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* @DPU_SSPP_COMP_0, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %20, align 8
  %56 = udiv i64 %54, %55
  %57 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %58 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* @DPU_SSPP_COMP_1_2, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  store i64 %56, i64* %61, align 8
  %62 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %63 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* @DPU_SSPP_COMP_0, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %19, align 8
  %69 = udiv i64 %67, %68
  %70 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %71 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* @DPU_SSPP_COMP_1_2, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  store i64 %69, i64* %74, align 8
  %75 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %76 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* @DPU_SSPP_COMP_1_2, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %82 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* @DPU_SSPP_COMP_2, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  store i64 %80, i64* %85, align 8
  %86 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %87 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* @DPU_SSPP_COMP_1_2, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %93 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = load i64, i64* @DPU_SSPP_COMP_2, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  store i64 %91, i64* %96, align 8
  %97 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %98 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load i64, i64* @DPU_SSPP_COMP_0, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %104 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load i64, i64* @DPU_SSPP_COMP_3, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  store i64 %102, i64* %107, align 8
  %108 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %109 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* @DPU_SSPP_COMP_0, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %115 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %114, i32 0, i32 1
  %116 = load i64*, i64** %115, align 8
  %117 = load i64, i64* @DPU_SSPP_COMP_3, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  store i64 %113, i64* %118, align 8
  store i64 0, i64* %21, align 8
  br label %119

119:                                              ; preds = %197, %10
  %120 = load i64, i64* %21, align 8
  %121 = load i64, i64* @DPU_MAX_PLANES, align 8
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %123, label %200

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8
  %125 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %126 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %125, i32 0, i32 2
  %127 = load i64*, i64** %126, align 8
  %128 = load i64, i64* %21, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  store i64 %124, i64* %129, align 8
  %130 = load i64, i64* %14, align 8
  %131 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %132 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %131, i32 0, i32 3
  %133 = load i64*, i64** %132, align 8
  %134 = load i64, i64* %21, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  store i64 %130, i64* %135, align 8
  %136 = load i64, i64* %21, align 8
  %137 = load i64, i64* @DPU_SSPP_COMP_1_2, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %143, label %139

139:                                              ; preds = %123
  %140 = load i64, i64* %21, align 8
  %141 = load i64, i64* @DPU_SSPP_COMP_2, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %160

143:                                              ; preds = %139, %123
  %144 = load i64, i64* %19, align 8
  %145 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %146 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %145, i32 0, i32 2
  %147 = load i64*, i64** %146, align 8
  %148 = load i64, i64* %21, align 8
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = udiv i64 %150, %144
  store i64 %151, i64* %149, align 8
  %152 = load i64, i64* %20, align 8
  %153 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %154 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %153, i32 0, i32 3
  %155 = load i64*, i64** %154, align 8
  %156 = load i64, i64* %21, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = udiv i64 %158, %152
  store i64 %159, i64* %157, align 8
  br label %160

160:                                              ; preds = %143, %139
  %161 = load i32, i32* @DPU_QSEED3_DEFAULT_PRELOAD_H, align 4
  %162 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %163 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %162, i32 0, i32 15
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* %21, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  store i32 %161, i32* %166, align 4
  %167 = load i32, i32* @DPU_QSEED3_DEFAULT_PRELOAD_V, align 4
  %168 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %169 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %168, i32 0, i32 14
  %170 = load i32*, i32** %169, align 8
  %171 = load i64, i64* %21, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  store i32 %167, i32* %172, align 4
  %173 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %174 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %173, i32 0, i32 3
  %175 = load i64*, i64** %174, align 8
  %176 = load i64, i64* %21, align 8
  %177 = getelementptr inbounds i64, i64* %175, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %12, align 8
  %180 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %180, i32 0, i32 4
  %182 = load i64*, i64** %181, align 8
  %183 = load i64, i64* %21, align 8
  %184 = getelementptr inbounds i64, i64* %182, i64 %183
  store i64 %178, i64* %184, align 8
  %185 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %186 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %185, i32 0, i32 2
  %187 = load i64*, i64** %186, align 8
  %188 = load i64, i64* %21, align 8
  %189 = getelementptr inbounds i64, i64* %187, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %12, align 8
  %192 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %192, i32 0, i32 5
  %194 = load i64*, i64** %193, align 8
  %195 = load i64, i64* %21, align 8
  %196 = getelementptr inbounds i64, i64* %194, i64 %195
  store i64 %190, i64* %196, align 8
  br label %197

197:                                              ; preds = %160
  %198 = load i64, i64* %21, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %21, align 8
  br label %119

200:                                              ; preds = %119
  %201 = load %struct.dpu_format*, %struct.dpu_format** %18, align 8
  %202 = call i32 @DPU_FORMAT_IS_YUV(%struct.dpu_format* %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %213, label %204

204:                                              ; preds = %200
  %205 = load i64, i64* %14, align 8
  %206 = load i64, i64* %16, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %213

208:                                              ; preds = %204
  %209 = load i64, i64* %13, align 8
  %210 = load i64, i64* %15, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %208
  br label %235

213:                                              ; preds = %208, %204, %200
  %214 = load i64, i64* %15, align 8
  %215 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %216 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %215, i32 0, i32 6
  store i64 %214, i64* %216, align 8
  %217 = load i64, i64* %16, align 8
  %218 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %219 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %218, i32 0, i32 7
  store i64 %217, i64* %219, align 8
  %220 = load i8*, i8** @DPU_SCALE_BIL, align 8
  %221 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %222 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %221, i32 0, i32 13
  store i8* %220, i8** %222, align 8
  %223 = load i8*, i8** @DPU_SCALE_BIL, align 8
  %224 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %225 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %224, i32 0, i32 12
  store i8* %223, i8** %225, align 8
  %226 = load i32, i32* @DPU_SCALE_ALPHA_BIL, align 4
  %227 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %228 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %227, i32 0, i32 11
  store i32 %226, i32* %228, align 8
  %229 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %230 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %229, i32 0, i32 10
  store i64 0, i64* %230, align 8
  %231 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %232 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %231, i32 0, i32 8
  store i32 1, i32* %232, align 8
  %233 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %17, align 8
  %234 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %233, i32 0, i32 9
  store i32 1, i32* %234, align 4
  br label %235

235:                                              ; preds = %213, %212
  ret void
}

declare dso_local i32 @memset(%struct.dpu_hw_scaler3_cfg*, i32, i32) #1

declare dso_local i8* @mult_frac(i32, i64, i64) #1

declare dso_local i32 @DPU_FORMAT_IS_YUV(%struct.dpu_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
