; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_gem_gtt_insert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_gem_gtt_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_address_space = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.i915_address_space }
%struct.TYPE_5__ = type { i32 }
%struct.drm_mm_node = type { i32 }

@I915_GTT_PAGE_SIZE = common dso_local global i64 0, align 8
@I915_GTT_MIN_ALIGNMENT = common dso_local global i64 0, align 8
@U64_MAX = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@DRM_MM_INSERT_BEST = common dso_local global i32 0, align 4
@PIN_HIGH = common dso_local global i32 0, align 4
@DRM_MM_INSERT_HIGHEST = common dso_local global i32 0, align 4
@PIN_MAPPABLE = common dso_local global i32 0, align 4
@DRM_MM_INSERT_LOW = common dso_local global i32 0, align 4
@DRM_MM_INSERT_ONCE = common dso_local global i32 0, align 4
@PIN_NOEVICT = common dso_local global i32 0, align 4
@PIN_NOSEARCH = common dso_local global i32 0, align 4
@DRM_MM_INSERT_EVICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_gtt_insert(%struct.i915_address_space* %0, %struct.drm_mm_node* %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.i915_address_space*, align 8
  %11 = alloca %struct.drm_mm_node*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.i915_address_space* %0, %struct.i915_address_space** %10, align 8
  store %struct.drm_mm_node* %1, %struct.drm_mm_node** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = load %struct.i915_address_space*, %struct.i915_address_space** %10, align 8
  %22 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call i32 @lockdep_assert_held(i32* %25)
  %27 = load i64, i64* %12, align 8
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @GEM_BUG_ON(i32 %30)
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @I915_GTT_PAGE_SIZE, align 8
  %34 = call i32 @IS_ALIGNED(i64 %32, i64 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @GEM_BUG_ON(i32 %37)
  %39 = load i64, i64* %13, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %8
  %42 = load i64, i64* %13, align 8
  %43 = call i32 @is_power_of_2(i64 %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %41, %8
  %47 = phi i1 [ false, %8 ], [ %45, %41 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @GEM_BUG_ON(i32 %48)
  %50 = load i64, i64* %13, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* @I915_GTT_MIN_ALIGNMENT, align 8
  %55 = call i32 @IS_ALIGNED(i64 %53, i64 %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %52, %46
  %59 = phi i1 [ false, %46 ], [ %57, %52 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @GEM_BUG_ON(i32 %60)
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* %16, align 8
  %64 = icmp sge i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @GEM_BUG_ON(i32 %65)
  %67 = load i64, i64* %15, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %58
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* @I915_GTT_PAGE_SIZE, align 8
  %72 = call i32 @IS_ALIGNED(i64 %70, i64 %71)
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br label %75

75:                                               ; preds = %69, %58
  %76 = phi i1 [ false, %58 ], [ %74, %69 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 @GEM_BUG_ON(i32 %77)
  %79 = load i64, i64* %16, align 8
  %80 = load i64, i64* @U64_MAX, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* @I915_GTT_PAGE_SIZE, align 8
  %85 = call i32 @IS_ALIGNED(i64 %83, i64 %84)
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  br label %88

88:                                               ; preds = %82, %75
  %89 = phi i1 [ false, %75 ], [ %87, %82 ]
  %90 = zext i1 %89 to i32
  %91 = call i32 @GEM_BUG_ON(i32 %90)
  %92 = load %struct.i915_address_space*, %struct.i915_address_space** %10, align 8
  %93 = load %struct.i915_address_space*, %struct.i915_address_space** %10, align 8
  %94 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %93, i32 0, i32 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = icmp eq %struct.i915_address_space* %92, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @GEM_BUG_ON(i32 %101)
  %103 = load %struct.drm_mm_node*, %struct.drm_mm_node** %11, align 8
  %104 = call i32 @drm_mm_node_allocated(%struct.drm_mm_node* %103)
  %105 = call i32 @GEM_BUG_ON(i32 %104)
  %106 = load i64, i64* %15, align 8
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* %16, align 8
  %109 = call i32 @range_overflows(i64 %106, i64 %107, i64 %108)
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %88
  %113 = load i32, i32* @ENOSPC, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %9, align 4
  br label %261

115:                                              ; preds = %88
  %116 = load i64, i64* %15, align 8
  %117 = load i64, i64* %13, align 8
  %118 = call i64 @round_up(i64 %116, i64 %117)
  %119 = load i64, i64* %16, align 8
  %120 = load i64, i64* %12, align 8
  %121 = sub nsw i64 %119, %120
  %122 = load i64, i64* %13, align 8
  %123 = call i64 @round_down(i64 %121, i64 %122)
  %124 = icmp sgt i64 %118, %123
  %125 = zext i1 %124 to i32
  %126 = call i64 @unlikely(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %115
  %129 = load i32, i32* @ENOSPC, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %9, align 4
  br label %261

131:                                              ; preds = %115
  %132 = load i32, i32* @DRM_MM_INSERT_BEST, align 4
  store i32 %132, i32* %18, align 4
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* @PIN_HIGH, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i32, i32* @DRM_MM_INSERT_HIGHEST, align 4
  store i32 %138, i32* %18, align 4
  br label %139

139:                                              ; preds = %137, %131
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* @PIN_MAPPABLE, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load i32, i32* @DRM_MM_INSERT_LOW, align 4
  store i32 %145, i32* %18, align 4
  br label %146

146:                                              ; preds = %144, %139
  %147 = load i64, i64* @I915_GTT_MIN_ALIGNMENT, align 8
  %148 = load i64, i64* @I915_GTT_PAGE_SIZE, align 8
  %149 = icmp sgt i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @BUILD_BUG_ON(i32 %150)
  %152 = load i64, i64* %13, align 8
  %153 = load i64, i64* @I915_GTT_MIN_ALIGNMENT, align 8
  %154 = icmp sle i64 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %146
  store i64 0, i64* %13, align 8
  br label %156

156:                                              ; preds = %155, %146
  %157 = load %struct.i915_address_space*, %struct.i915_address_space** %10, align 8
  %158 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %157, i32 0, i32 0
  %159 = load %struct.drm_mm_node*, %struct.drm_mm_node** %11, align 8
  %160 = load i64, i64* %12, align 8
  %161 = load i64, i64* %13, align 8
  %162 = load i64, i64* %14, align 8
  %163 = load i64, i64* %15, align 8
  %164 = load i64, i64* %16, align 8
  %165 = load i32, i32* %18, align 4
  %166 = call i32 @drm_mm_insert_node_in_range(i32* %158, %struct.drm_mm_node* %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164, i32 %165)
  store i32 %166, i32* %20, align 4
  %167 = load i32, i32* %20, align 4
  %168 = load i32, i32* @ENOSPC, align 4
  %169 = sub nsw i32 0, %168
  %170 = icmp ne i32 %167, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %156
  %172 = load i32, i32* %20, align 4
  store i32 %172, i32* %9, align 4
  br label %261

173:                                              ; preds = %156
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* @DRM_MM_INSERT_ONCE, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %196

178:                                              ; preds = %173
  %179 = load %struct.i915_address_space*, %struct.i915_address_space** %10, align 8
  %180 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %179, i32 0, i32 0
  %181 = load %struct.drm_mm_node*, %struct.drm_mm_node** %11, align 8
  %182 = load i64, i64* %12, align 8
  %183 = load i64, i64* %13, align 8
  %184 = load i64, i64* %14, align 8
  %185 = load i64, i64* %15, align 8
  %186 = load i64, i64* %16, align 8
  %187 = load i32, i32* @DRM_MM_INSERT_BEST, align 4
  %188 = call i32 @drm_mm_insert_node_in_range(i32* %180, %struct.drm_mm_node* %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186, i32 %187)
  store i32 %188, i32* %20, align 4
  %189 = load i32, i32* %20, align 4
  %190 = load i32, i32* @ENOSPC, align 4
  %191 = sub nsw i32 0, %190
  %192 = icmp ne i32 %189, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %178
  %194 = load i32, i32* %20, align 4
  store i32 %194, i32* %9, align 4
  br label %261

195:                                              ; preds = %178
  br label %196

196:                                              ; preds = %195, %173
  %197 = load i32, i32* %17, align 4
  %198 = load i32, i32* @PIN_NOEVICT, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = load i32, i32* @ENOSPC, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %9, align 4
  br label %261

204:                                              ; preds = %196
  %205 = load i64, i64* %15, align 8
  %206 = load i64, i64* %16, align 8
  %207 = load i64, i64* %12, align 8
  %208 = load i64, i64* %13, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %204
  br label %213

211:                                              ; preds = %204
  %212 = load i64, i64* @I915_GTT_MIN_ALIGNMENT, align 8
  br label %213

213:                                              ; preds = %211, %210
  %214 = phi i64 [ %208, %210 ], [ %212, %211 ]
  %215 = call i64 @random_offset(i64 %205, i64 %206, i64 %207, i64 %214)
  store i64 %215, i64* %19, align 8
  %216 = load %struct.i915_address_space*, %struct.i915_address_space** %10, align 8
  %217 = load %struct.drm_mm_node*, %struct.drm_mm_node** %11, align 8
  %218 = load i64, i64* %12, align 8
  %219 = load i64, i64* %19, align 8
  %220 = load i64, i64* %14, align 8
  %221 = load i32, i32* %17, align 4
  %222 = call i32 @i915_gem_gtt_reserve(%struct.i915_address_space* %216, %struct.drm_mm_node* %217, i64 %218, i64 %219, i64 %220, i32 %221)
  store i32 %222, i32* %20, align 4
  %223 = load i32, i32* %20, align 4
  %224 = load i32, i32* @ENOSPC, align 4
  %225 = sub nsw i32 0, %224
  %226 = icmp ne i32 %223, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %213
  %228 = load i32, i32* %20, align 4
  store i32 %228, i32* %9, align 4
  br label %261

229:                                              ; preds = %213
  %230 = load i32, i32* %17, align 4
  %231 = load i32, i32* @PIN_NOSEARCH, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %229
  %235 = load i32, i32* @ENOSPC, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %9, align 4
  br label %261

237:                                              ; preds = %229
  %238 = load %struct.i915_address_space*, %struct.i915_address_space** %10, align 8
  %239 = load i64, i64* %12, align 8
  %240 = load i64, i64* %13, align 8
  %241 = load i64, i64* %14, align 8
  %242 = load i64, i64* %15, align 8
  %243 = load i64, i64* %16, align 8
  %244 = load i32, i32* %17, align 4
  %245 = call i32 @i915_gem_evict_something(%struct.i915_address_space* %238, i64 %239, i64 %240, i64 %241, i64 %242, i64 %243, i32 %244)
  store i32 %245, i32* %20, align 4
  %246 = load i32, i32* %20, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %237
  %249 = load i32, i32* %20, align 4
  store i32 %249, i32* %9, align 4
  br label %261

250:                                              ; preds = %237
  %251 = load %struct.i915_address_space*, %struct.i915_address_space** %10, align 8
  %252 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %251, i32 0, i32 0
  %253 = load %struct.drm_mm_node*, %struct.drm_mm_node** %11, align 8
  %254 = load i64, i64* %12, align 8
  %255 = load i64, i64* %13, align 8
  %256 = load i64, i64* %14, align 8
  %257 = load i64, i64* %15, align 8
  %258 = load i64, i64* %16, align 8
  %259 = load i32, i32* @DRM_MM_INSERT_EVICT, align 4
  %260 = call i32 @drm_mm_insert_node_in_range(i32* %252, %struct.drm_mm_node* %253, i64 %254, i64 %255, i64 %256, i64 %257, i64 %258, i32 %259)
  store i32 %260, i32* %9, align 4
  br label %261

261:                                              ; preds = %250, %248, %234, %227, %201, %193, %171, %128, %112
  %262 = load i32, i32* %9, align 4
  ret i32 %262
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i64) #1

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i32 @drm_mm_node_allocated(%struct.drm_mm_node*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @range_overflows(i64, i64, i64) #1

declare dso_local i64 @round_up(i64, i64) #1

declare dso_local i64 @round_down(i64, i64) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @drm_mm_insert_node_in_range(i32*, %struct.drm_mm_node*, i64, i64, i64, i64, i64, i32) #1

declare dso_local i64 @random_offset(i64, i64, i64, i64) #1

declare dso_local i32 @i915_gem_gtt_reserve(%struct.i915_address_space*, %struct.drm_mm_node*, i64, i64, i64, i32) #1

declare dso_local i32 @i915_gem_evict_something(%struct.i915_address_space*, i64, i64, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
