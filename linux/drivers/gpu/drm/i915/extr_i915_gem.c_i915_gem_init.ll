; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_6__, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@I915_GTT_PAGE_SIZE_4K = common dso_local global i32 0, align 4
@FORCEWAKE_ALL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SZ_256K = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to initialize GPU, declaring it wedged!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_init(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %6 = call i64 @intel_vgpu_active(%struct.drm_i915_private* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = call i32 @intel_vgpu_has_huge_gtt(%struct.drm_i915_private* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* @I915_GTT_PAGE_SIZE_4K, align 4
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = call %struct.TYPE_7__* @mkwrite_device_info(%struct.drm_i915_private* %14)
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  br label %17

17:                                               ; preds = %12, %8, %1
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %19 = call i32 @intel_timelines_init(%struct.drm_i915_private* %18)
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %21 = call i32 @i915_gem_init_userptr(%struct.drm_i915_private* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %278

26:                                               ; preds = %17
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = call i32 @intel_uc_fetch_firmwares(i32* %29)
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %32 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %31, i32 0, i32 3
  %33 = call i32 @intel_wopcm_init(i32* %32)
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %35 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %39 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %38, i32 0, i32 2
  %40 = load i32, i32* @FORCEWAKE_ALL, align 4
  %41 = call i32 @intel_uncore_forcewake_get(i32* %39, i32 %40)
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %43 = call i32 @i915_init_ggtt(%struct.drm_i915_private* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %26
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @GEM_BUG_ON(i32 %51)
  br label %219

53:                                               ; preds = %26
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %56 = call i64 @IS_GEN(%struct.drm_i915_private* %55, i32 2)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @SZ_256K, align 4
  br label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @PAGE_SIZE, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = call i32 @i915_gem_init_scratch(%struct.drm_i915_private* %54, i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp eq i32 %68, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @GEM_BUG_ON(i32 %72)
  br label %218

74:                                               ; preds = %62
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %76 = call i32 @intel_engines_setup(%struct.drm_i915_private* %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %80, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @GEM_BUG_ON(i32 %84)
  br label %219

86:                                               ; preds = %74
  %87 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %88 = call i32 @i915_gem_contexts_init(%struct.drm_i915_private* %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  %95 = icmp eq i32 %92, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @GEM_BUG_ON(i32 %96)
  br label %215

98:                                               ; preds = %86
  %99 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %100 = call i32 @intel_engines_init(%struct.drm_i915_private* %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  %107 = icmp eq i32 %104, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @GEM_BUG_ON(i32 %108)
  br label %206

110:                                              ; preds = %98
  %111 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %112 = call i32 @intel_init_gt_powersave(%struct.drm_i915_private* %111)
  %113 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %114 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = call i32 @intel_uc_init(i32* %115)
  %117 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %118 = call i32 @i915_gem_init_hw(%struct.drm_i915_private* %117)
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %110
  br label %191

122:                                              ; preds = %110
  %123 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %124 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %123, i32 0, i32 1
  %125 = call i32 @intel_gt_resume(%struct.TYPE_8__* %124)
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %186

129:                                              ; preds = %122
  %130 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %131 = call i32 @intel_init_clock_gating(%struct.drm_i915_private* %130)
  %132 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %133 = call i32 @intel_engines_verify_workarounds(%struct.drm_i915_private* %132)
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* %4, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %168

137:                                              ; preds = %129
  %138 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %139 = call i32 @__intel_engines_record_defaults(%struct.drm_i915_private* %138)
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %168

143:                                              ; preds = %137
  %144 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %145 = load i32, i32* @ENODEV, align 4
  %146 = sub nsw i32 0, %145
  %147 = call i32 @i915_inject_load_error(%struct.drm_i915_private* %144, i32 %146)
  store i32 %147, i32* %4, align 4
  %148 = load i32, i32* %4, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  br label %168

151:                                              ; preds = %143
  %152 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %153 = load i32, i32* @EIO, align 4
  %154 = sub nsw i32 0, %153
  %155 = call i32 @i915_inject_load_error(%struct.drm_i915_private* %152, i32 %154)
  store i32 %155, i32* %4, align 4
  %156 = load i32, i32* %4, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %168

159:                                              ; preds = %151
  %160 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %161 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %160, i32 0, i32 2
  %162 = load i32, i32* @FORCEWAKE_ALL, align 4
  %163 = call i32 @intel_uncore_forcewake_put(i32* %161, i32 %162)
  %164 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %165 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = call i32 @mutex_unlock(i32* %166)
  store i32 0, i32* %2, align 4
  br label %278

168:                                              ; preds = %158, %150, %142, %136
  %169 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %170 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = call i32 @mutex_unlock(i32* %171)
  %173 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %174 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %173, i32 0, i32 1
  %175 = call i32 @intel_gt_set_wedged(%struct.TYPE_8__* %174)
  %176 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %177 = call i32 @i915_gem_suspend(%struct.drm_i915_private* %176)
  %178 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %179 = call i32 @i915_gem_suspend_late(%struct.drm_i915_private* %178)
  %180 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %181 = call i32 @i915_gem_drain_workqueue(%struct.drm_i915_private* %180)
  %182 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %183 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = call i32 @mutex_lock(i32* %184)
  br label %186

186:                                              ; preds = %168, %128
  %187 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %188 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = call i32 @intel_uc_fini_hw(i32* %189)
  br label %191

191:                                              ; preds = %186, %121
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* @EIO, align 4
  %194 = sub nsw i32 0, %193
  %195 = icmp ne i32 %192, %194
  br i1 %195, label %196, label %205

196:                                              ; preds = %191
  %197 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %198 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = call i32 @intel_uc_fini(i32* %199)
  %201 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %202 = call i32 @intel_cleanup_gt_powersave(%struct.drm_i915_private* %201)
  %203 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %204 = call i32 @intel_engines_cleanup(%struct.drm_i915_private* %203)
  br label %205

205:                                              ; preds = %196, %191
  br label %206

206:                                              ; preds = %205, %103
  %207 = load i32, i32* %4, align 4
  %208 = load i32, i32* @EIO, align 4
  %209 = sub nsw i32 0, %208
  %210 = icmp ne i32 %207, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %213 = call i32 @i915_gem_contexts_fini(%struct.drm_i915_private* %212)
  br label %214

214:                                              ; preds = %211, %206
  br label %215

215:                                              ; preds = %214, %91
  %216 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %217 = call i32 @i915_gem_fini_scratch(%struct.drm_i915_private* %216)
  br label %218

218:                                              ; preds = %215, %67
  br label %219

219:                                              ; preds = %218, %79, %46
  %220 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %221 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %220, i32 0, i32 2
  %222 = load i32, i32* @FORCEWAKE_ALL, align 4
  %223 = call i32 @intel_uncore_forcewake_put(i32* %221, i32 %222)
  %224 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %225 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = call i32 @mutex_unlock(i32* %226)
  %228 = load i32, i32* %4, align 4
  %229 = load i32, i32* @EIO, align 4
  %230 = sub nsw i32 0, %229
  %231 = icmp ne i32 %228, %230
  br i1 %231, label %232, label %241

232:                                              ; preds = %219
  %233 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %234 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = call i32 @intel_uc_cleanup_firmwares(i32* %235)
  %237 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %238 = call i32 @i915_gem_cleanup_userptr(%struct.drm_i915_private* %237)
  %239 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %240 = call i32 @intel_timelines_fini(%struct.drm_i915_private* %239)
  br label %241

241:                                              ; preds = %232, %219
  %242 = load i32, i32* %4, align 4
  %243 = load i32, i32* @EIO, align 4
  %244 = sub nsw i32 0, %243
  %245 = icmp eq i32 %242, %244
  br i1 %245, label %246, label %274

246:                                              ; preds = %241
  %247 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %248 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = call i32 @mutex_lock(i32* %249)
  %251 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %252 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %251, i32 0, i32 1
  %253 = call i32 @intel_gt_is_wedged(%struct.TYPE_8__* %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %261, label %255

255:                                              ; preds = %246
  %256 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %257 = call i32 @i915_probe_error(%struct.drm_i915_private* %256, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %258 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %259 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %258, i32 0, i32 1
  %260 = call i32 @intel_gt_set_wedged(%struct.TYPE_8__* %259)
  br label %261

261:                                              ; preds = %255, %246
  %262 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %263 = call i32 @i915_ggtt_enable_hw(%struct.drm_i915_private* %262)
  store i32 %263, i32* %4, align 4
  %264 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %265 = call i32 @i915_gem_restore_gtt_mappings(%struct.drm_i915_private* %264)
  %266 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %267 = call i32 @i915_gem_restore_fences(%struct.drm_i915_private* %266)
  %268 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %269 = call i32 @intel_init_clock_gating(%struct.drm_i915_private* %268)
  %270 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %271 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = call i32 @mutex_unlock(i32* %272)
  br label %274

274:                                              ; preds = %261, %241
  %275 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %276 = call i32 @i915_gem_drain_freed_objects(%struct.drm_i915_private* %275)
  %277 = load i32, i32* %4, align 4
  store i32 %277, i32* %2, align 4
  br label %278

278:                                              ; preds = %274, %159, %24
  %279 = load i32, i32* %2, align 4
  ret i32 %279
}

declare dso_local i64 @intel_vgpu_active(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_vgpu_has_huge_gtt(%struct.drm_i915_private*) #1

declare dso_local %struct.TYPE_7__* @mkwrite_device_info(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_timelines_init(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_init_userptr(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_uc_fetch_firmwares(i32*) #1

declare dso_local i32 @intel_wopcm_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_uncore_forcewake_get(i32*, i32) #1

declare dso_local i32 @i915_init_ggtt(%struct.drm_i915_private*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_gem_init_scratch(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_engines_setup(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_contexts_init(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_engines_init(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_init_gt_powersave(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_uc_init(i32*) #1

declare dso_local i32 @i915_gem_init_hw(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_gt_resume(%struct.TYPE_8__*) #1

declare dso_local i32 @intel_init_clock_gating(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_engines_verify_workarounds(%struct.drm_i915_private*) #1

declare dso_local i32 @__intel_engines_record_defaults(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_inject_load_error(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_uncore_forcewake_put(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @intel_gt_set_wedged(%struct.TYPE_8__*) #1

declare dso_local i32 @i915_gem_suspend(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_suspend_late(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_drain_workqueue(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_uc_fini_hw(i32*) #1

declare dso_local i32 @intel_uc_fini(i32*) #1

declare dso_local i32 @intel_cleanup_gt_powersave(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_engines_cleanup(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_contexts_fini(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_fini_scratch(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_uc_cleanup_firmwares(i32*) #1

declare dso_local i32 @i915_gem_cleanup_userptr(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_timelines_fini(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_gt_is_wedged(%struct.TYPE_8__*) #1

declare dso_local i32 @i915_probe_error(%struct.drm_i915_private*, i8*) #1

declare dso_local i32 @i915_ggtt_enable_hw(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_restore_gtt_mappings(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_restore_fences(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_drain_freed_objects(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
