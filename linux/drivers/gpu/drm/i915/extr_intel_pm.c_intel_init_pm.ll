; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_intel_init_pm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_intel_init_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, %struct.TYPE_5__, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64*, i64*, i64* }
%struct.TYPE_6__ = type { i32 }

@skl_initial_wm = common dso_local global i32 0, align 4
@skl_atomic_update_crtc_wm = common dso_local global i32 0, align 4
@skl_compute_wm = common dso_local global i32 0, align 4
@ilk_compute_pipe_wm = common dso_local global i32 0, align 4
@ilk_compute_intermediate_wm = common dso_local global i32 0, align 4
@ilk_initial_watermarks = common dso_local global i32 0, align 4
@ilk_optimize_watermarks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Failed to read display plane latency. Disable CxSR\0A\00", align 1
@vlv_compute_pipe_wm = common dso_local global i32 0, align 4
@vlv_compute_intermediate_wm = common dso_local global i32 0, align 4
@vlv_initial_watermarks = common dso_local global i32 0, align 4
@vlv_optimize_watermarks = common dso_local global i32 0, align 4
@vlv_atomic_update_fifo = common dso_local global i32 0, align 4
@g4x_compute_pipe_wm = common dso_local global i32 0, align 4
@g4x_compute_intermediate_wm = common dso_local global i32 0, align 4
@g4x_initial_watermarks = common dso_local global i32 0, align 4
@g4x_optimize_watermarks = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [90 x i8] c"failed to find known CxSR latency (found ddr%s fsb freq %d, mem freq %d), disabling CxSR\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@pineview_update_wm = common dso_local global i32* null, align 8
@i965_update_wm = common dso_local global i32* null, align 8
@i9xx_update_wm = common dso_local global i8* null, align 8
@i9xx_get_fifo_size = common dso_local global i32 0, align 4
@i845_update_wm = common dso_local global i32* null, align 8
@i845_get_fifo_size = common dso_local global i32 0, align 4
@i830_get_fifo_size = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"unexpected fall-through in intel_init_pm\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_init_pm(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %4 = call i64 @IS_PINEVIEW(%struct.drm_i915_private* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %8 = call i32 @i915_pineview_get_mem_freq(%struct.drm_i915_private* %7)
  br label %17

9:                                                ; preds = %1
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %11 = call i64 @IS_GEN(%struct.drm_i915_private* %10, i32 5)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %15 = call i32 @i915_ironlake_get_mem_freq(%struct.drm_i915_private* %14)
  br label %16

16:                                               ; preds = %13, %9
  br label %17

17:                                               ; preds = %16, %6
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %19 = call i32 @INTEL_GEN(%struct.drm_i915_private* %18)
  %20 = icmp sge i32 %19, 9
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %23 = call i32 @skl_setup_wm_latency(%struct.drm_i915_private* %22)
  %24 = load i32, i32* @skl_initial_wm, align 4
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @skl_atomic_update_crtc_wm, align 4
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %30 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 6
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* @skl_compute_wm, align 4
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %34 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 7
  store i32 %32, i32* %35, align 4
  br label %280

36:                                               ; preds = %17
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %38 = call i64 @HAS_PCH_SPLIT(%struct.drm_i915_private* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %118

40:                                               ; preds = %36
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %42 = call i32 @ilk_setup_wm_latency(%struct.drm_i915_private* %41)
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %44 = call i64 @IS_GEN(%struct.drm_i915_private* %43, i32 5)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %40
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %48 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %46
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %56 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %64 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %98, label %70

70:                                               ; preds = %62, %54, %46, %40
  %71 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %72 = call i64 @IS_GEN(%struct.drm_i915_private* %71, i32 5)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %115, label %74

74:                                               ; preds = %70
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %76 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %115

82:                                               ; preds = %74
  %83 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %84 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %115

90:                                               ; preds = %82
  %91 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %92 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %90, %62
  %99 = load i32, i32* @ilk_compute_pipe_wm, align 4
  %100 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %101 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 5
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* @ilk_compute_intermediate_wm, align 4
  %104 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %105 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 4
  store i32 %103, i32* %106, align 8
  %107 = load i32, i32* @ilk_initial_watermarks, align 4
  %108 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %109 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 3
  store i32 %107, i32* %110, align 4
  %111 = load i32, i32* @ilk_optimize_watermarks, align 4
  %112 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %113 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  store i32 %111, i32* %114, align 8
  br label %117

115:                                              ; preds = %90, %82, %74, %70
  %116 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %98
  br label %279

118:                                              ; preds = %36
  %119 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %120 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %124 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %149

126:                                              ; preds = %122, %118
  %127 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %128 = call i32 @vlv_setup_wm_latency(%struct.drm_i915_private* %127)
  %129 = load i32, i32* @vlv_compute_pipe_wm, align 4
  %130 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %131 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 5
  store i32 %129, i32* %132, align 4
  %133 = load i32, i32* @vlv_compute_intermediate_wm, align 4
  %134 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %135 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 4
  store i32 %133, i32* %136, align 8
  %137 = load i32, i32* @vlv_initial_watermarks, align 4
  %138 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %139 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 3
  store i32 %137, i32* %140, align 4
  %141 = load i32, i32* @vlv_optimize_watermarks, align 4
  %142 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %143 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 2
  store i32 %141, i32* %144, align 8
  %145 = load i32, i32* @vlv_atomic_update_fifo, align 4
  %146 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %147 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 6
  store i32 %145, i32* %148, align 8
  br label %278

149:                                              ; preds = %122
  %150 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %151 = call i64 @IS_G4X(%struct.drm_i915_private* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %172

153:                                              ; preds = %149
  %154 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %155 = call i32 @g4x_setup_wm_latency(%struct.drm_i915_private* %154)
  %156 = load i32, i32* @g4x_compute_pipe_wm, align 4
  %157 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %158 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 5
  store i32 %156, i32* %159, align 4
  %160 = load i32, i32* @g4x_compute_intermediate_wm, align 4
  %161 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %162 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 4
  store i32 %160, i32* %163, align 8
  %164 = load i32, i32* @g4x_initial_watermarks, align 4
  %165 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %166 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 3
  store i32 %164, i32* %167, align 4
  %168 = load i32, i32* @g4x_optimize_watermarks, align 4
  %169 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %170 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 2
  store i32 %168, i32* %171, align 8
  br label %277

172:                                              ; preds = %149
  %173 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %174 = call i64 @IS_PINEVIEW(%struct.drm_i915_private* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %218

176:                                              ; preds = %172
  %177 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %178 = call i32 @IS_MOBILE(%struct.drm_i915_private* %177)
  %179 = icmp ne i32 %178, 0
  %180 = xor i1 %179, true
  %181 = zext i1 %180 to i32
  %182 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %183 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %186 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %189 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @intel_get_cxsr_latency(i32 %181, i32 %184, i32 %187, i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %212, label %193

193:                                              ; preds = %176
  %194 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %195 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp eq i32 %196, 1
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %200 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %201 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %204 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @DRM_INFO(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i8* %199, i32 %202, i32 %205)
  %207 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %208 = call i32 @intel_set_memory_cxsr(%struct.drm_i915_private* %207, i32 0)
  %209 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %210 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 1
  store i32* null, i32** %211, align 8
  br label %217

212:                                              ; preds = %176
  %213 = load i32*, i32** @pineview_update_wm, align 8
  %214 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %215 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 1
  store i32* %213, i32** %216, align 8
  br label %217

217:                                              ; preds = %212, %193
  br label %276

218:                                              ; preds = %172
  %219 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %220 = call i64 @IS_GEN(%struct.drm_i915_private* %219, i32 4)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %218
  %223 = load i32*, i32** @i965_update_wm, align 8
  %224 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %225 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 1
  store i32* %223, i32** %226, align 8
  br label %275

227:                                              ; preds = %218
  %228 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %229 = call i64 @IS_GEN(%struct.drm_i915_private* %228, i32 3)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %227
  %232 = load i8*, i8** @i9xx_update_wm, align 8
  %233 = bitcast i8* %232 to i32*
  %234 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %235 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 1
  store i32* %233, i32** %236, align 8
  %237 = load i32, i32* @i9xx_get_fifo_size, align 4
  %238 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %239 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  store i32 %237, i32* %240, align 8
  br label %274

241:                                              ; preds = %227
  %242 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %243 = call i64 @IS_GEN(%struct.drm_i915_private* %242, i32 2)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %271

245:                                              ; preds = %241
  %246 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %247 = call %struct.TYPE_6__* @INTEL_INFO(%struct.drm_i915_private* %246)
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %251, label %260

251:                                              ; preds = %245
  %252 = load i32*, i32** @i845_update_wm, align 8
  %253 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %254 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 1
  store i32* %252, i32** %255, align 8
  %256 = load i32, i32* @i845_get_fifo_size, align 4
  %257 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %258 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 0
  store i32 %256, i32* %259, align 8
  br label %270

260:                                              ; preds = %245
  %261 = load i8*, i8** @i9xx_update_wm, align 8
  %262 = bitcast i8* %261 to i32*
  %263 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %264 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 1
  store i32* %262, i32** %265, align 8
  %266 = load i32, i32* @i830_get_fifo_size, align 4
  %267 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %268 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 0
  store i32 %266, i32* %269, align 8
  br label %270

270:                                              ; preds = %260, %251
  br label %273

271:                                              ; preds = %241
  %272 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %273

273:                                              ; preds = %271, %270
  br label %274

274:                                              ; preds = %273, %231
  br label %275

275:                                              ; preds = %274, %222
  br label %276

276:                                              ; preds = %275, %217
  br label %277

277:                                              ; preds = %276, %153
  br label %278

278:                                              ; preds = %277, %126
  br label %279

279:                                              ; preds = %278, %117
  br label %280

280:                                              ; preds = %279, %21
  ret void
}

declare dso_local i64 @IS_PINEVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_pineview_get_mem_freq(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @i915_ironlake_get_mem_freq(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @skl_setup_wm_latency(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_i915_private*) #1

declare dso_local i32 @ilk_setup_wm_latency(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_setup_wm_latency(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i32 @g4x_setup_wm_latency(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_get_cxsr_latency(i32, i32, i32, i32) #1

declare dso_local i32 @IS_MOBILE(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_INFO(i8*, i8*, i32, i32) #1

declare dso_local i32 @intel_set_memory_cxsr(%struct.drm_i915_private*, i32) #1

declare dso_local %struct.TYPE_6__* @INTEL_INFO(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
