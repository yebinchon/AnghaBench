; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_g4x_raw_plane_wm_compute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_g4x_raw_plane_wm_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.g4x_pipe_wm* }
%struct.g4x_pipe_wm = type { i32*, i32 }
%struct.intel_plane_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.intel_plane = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@PLANE_PRIMARY = common dso_local global i32 0, align 4
@G4X_WM_LEVEL_NORMAL = common dso_local global i32 0, align 4
@USHRT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s watermarks: normal=%d, SR=%d, HPLL=%d\0A\00", align 1
@G4X_WM_LEVEL_SR = common dso_local global i64 0, align 8
@G4X_WM_LEVEL_HPLL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"FBC watermarks: SR=%d, HPLL=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.intel_plane_state*)* @g4x_raw_plane_wm_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g4x_raw_plane_wm_compute(%struct.intel_crtc_state* %0, %struct.intel_plane_state* %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.intel_plane_state*, align 8
  %5 = alloca %struct.intel_plane*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.g4x_pipe_wm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store %struct.intel_plane_state* %1, %struct.intel_plane_state** %4, align 8
  %13 = load %struct.intel_plane_state*, %struct.intel_plane_state** %4, align 8
  %14 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.intel_plane* @to_intel_plane(i32 %16)
  store %struct.intel_plane* %17, %struct.intel_plane** %5, align 8
  %18 = load %struct.intel_plane*, %struct.intel_plane** %5, align 8
  %19 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @to_i915(i32 %21)
  %23 = call i32 @intel_wm_num_levels(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.intel_plane*, %struct.intel_plane** %5, align 8
  %25 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %27 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %28 = load %struct.intel_plane_state*, %struct.intel_plane_state** %4, align 8
  %29 = call i32 @intel_wm_plane_visible(%struct.intel_crtc_state* %27, %struct.intel_plane_state* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %2
  %32 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @g4x_raw_plane_wm_set(%struct.intel_crtc_state* %32, i32 0, i32 %33, i32 0)
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @PLANE_PRIMARY, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %42 = call i32 @g4x_raw_fbc_wm_set(%struct.intel_crtc_state* %41, i32 0, i32 0)
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %40, %31
  br label %151

46:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %129, %46
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %132

51:                                               ; preds = %47
  %52 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %53 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.g4x_pipe_wm*, %struct.g4x_pipe_wm** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.g4x_pipe_wm, %struct.g4x_pipe_wm* %56, i64 %58
  store %struct.g4x_pipe_wm* %59, %struct.g4x_pipe_wm** %10, align 8
  %60 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %61 = load %struct.intel_plane_state*, %struct.intel_plane_state** %4, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @g4x_compute_wm(%struct.intel_crtc_state* %60, %struct.intel_plane_state* %61, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @g4x_plane_fifo_size(i32 %64, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %51
  br label %132

71:                                               ; preds = %51
  %72 = load %struct.g4x_pipe_wm*, %struct.g4x_pipe_wm** %10, align 8
  %73 = getelementptr inbounds %struct.g4x_pipe_wm, %struct.g4x_pipe_wm* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.g4x_pipe_wm*, %struct.g4x_pipe_wm** %10, align 8
  %86 = getelementptr inbounds %struct.g4x_pipe_wm, %struct.g4x_pipe_wm* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %84, i32* %90, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @PLANE_PRIMARY, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %71
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @G4X_WM_LEVEL_NORMAL, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94, %71
  br label %129

99:                                               ; preds = %94
  %100 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %101 = load %struct.intel_plane_state*, %struct.intel_plane_state** %4, align 8
  %102 = load %struct.g4x_pipe_wm*, %struct.g4x_pipe_wm** %10, align 8
  %103 = getelementptr inbounds %struct.g4x_pipe_wm, %struct.g4x_pipe_wm* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ilk_compute_fbc_wm(%struct.intel_crtc_state* %100, %struct.intel_plane_state* %101, i32 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @g4x_fbc_fifo_size(i32 %110)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %99
  %116 = load i32, i32* @USHRT_MAX, align 4
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %115, %99
  %118 = load %struct.g4x_pipe_wm*, %struct.g4x_pipe_wm** %10, align 8
  %119 = getelementptr inbounds %struct.g4x_pipe_wm, %struct.g4x_pipe_wm* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* %8, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load %struct.g4x_pipe_wm*, %struct.g4x_pipe_wm** %10, align 8
  %128 = getelementptr inbounds %struct.g4x_pipe_wm, %struct.g4x_pipe_wm* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %117, %98
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %47

132:                                              ; preds = %70, %47
  %133 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @USHRT_MAX, align 4
  %137 = call i32 @g4x_raw_plane_wm_set(%struct.intel_crtc_state* %133, i32 %134, i32 %135, i32 %136)
  %138 = load i32, i32* %8, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @PLANE_PRIMARY, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %132
  %144 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @USHRT_MAX, align 4
  %147 = call i32 @g4x_raw_fbc_wm_set(%struct.intel_crtc_state* %144, i32 %145, i32 %146)
  %148 = load i32, i32* %8, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %8, align 4
  br label %150

150:                                              ; preds = %143, %132
  br label %151

151:                                              ; preds = %150, %45
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %224

154:                                              ; preds = %151
  %155 = load %struct.intel_plane*, %struct.intel_plane** %5, align 8
  %156 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %160 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load %struct.g4x_pipe_wm*, %struct.g4x_pipe_wm** %162, align 8
  %164 = load i32, i32* @G4X_WM_LEVEL_NORMAL, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.g4x_pipe_wm, %struct.g4x_pipe_wm* %163, i64 %165
  %167 = getelementptr inbounds %struct.g4x_pipe_wm, %struct.g4x_pipe_wm* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %7, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %174 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load %struct.g4x_pipe_wm*, %struct.g4x_pipe_wm** %176, align 8
  %178 = load i64, i64* @G4X_WM_LEVEL_SR, align 8
  %179 = getelementptr inbounds %struct.g4x_pipe_wm, %struct.g4x_pipe_wm* %177, i64 %178
  %180 = getelementptr inbounds %struct.g4x_pipe_wm, %struct.g4x_pipe_wm* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %7, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %187 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load %struct.g4x_pipe_wm*, %struct.g4x_pipe_wm** %189, align 8
  %191 = load i64, i64* @G4X_WM_LEVEL_HPLL, align 8
  %192 = getelementptr inbounds %struct.g4x_pipe_wm, %struct.g4x_pipe_wm* %190, i64 %191
  %193 = getelementptr inbounds %struct.g4x_pipe_wm, %struct.g4x_pipe_wm* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %7, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %158, i32 %172, i32 %185, i32 %198)
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* @PLANE_PRIMARY, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %223

203:                                              ; preds = %154
  %204 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %205 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = load %struct.g4x_pipe_wm*, %struct.g4x_pipe_wm** %207, align 8
  %209 = load i64, i64* @G4X_WM_LEVEL_SR, align 8
  %210 = getelementptr inbounds %struct.g4x_pipe_wm, %struct.g4x_pipe_wm* %208, i64 %209
  %211 = getelementptr inbounds %struct.g4x_pipe_wm, %struct.g4x_pipe_wm* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %214 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  %217 = load %struct.g4x_pipe_wm*, %struct.g4x_pipe_wm** %216, align 8
  %218 = load i64, i64* @G4X_WM_LEVEL_HPLL, align 8
  %219 = getelementptr inbounds %struct.g4x_pipe_wm, %struct.g4x_pipe_wm* %217, i64 %218
  %220 = getelementptr inbounds %struct.g4x_pipe_wm, %struct.g4x_pipe_wm* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %212, i32 %221)
  br label %223

223:                                              ; preds = %203, %154
  br label %224

224:                                              ; preds = %223, %151
  %225 = load i32, i32* %8, align 4
  ret i32 %225
}

declare dso_local %struct.intel_plane* @to_intel_plane(i32) #1

declare dso_local i32 @intel_wm_num_levels(i32) #1

declare dso_local i32 @to_i915(i32) #1

declare dso_local i32 @intel_wm_plane_visible(%struct.intel_crtc_state*, %struct.intel_plane_state*) #1

declare dso_local i32 @g4x_raw_plane_wm_set(%struct.intel_crtc_state*, i32, i32, i32) #1

declare dso_local i32 @g4x_raw_fbc_wm_set(%struct.intel_crtc_state*, i32, i32) #1

declare dso_local i32 @g4x_compute_wm(%struct.intel_crtc_state*, %struct.intel_plane_state*, i32) #1

declare dso_local i32 @g4x_plane_fifo_size(i32, i32) #1

declare dso_local i32 @ilk_compute_fbc_wm(%struct.intel_crtc_state*, %struct.intel_plane_state*, i32) #1

declare dso_local i32 @g4x_fbc_fifo_size(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
