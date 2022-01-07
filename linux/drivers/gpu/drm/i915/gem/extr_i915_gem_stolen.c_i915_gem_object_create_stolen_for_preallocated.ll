; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_stolen.c_i915_gem_object_create_stolen_for_preallocated.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_stolen.c_i915_gem_object_create_stolen_for_preallocated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.i915_ggtt }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.i915_ggtt = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.drm_mm_node = type { i8*, i8* }
%struct.i915_vma = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [82 x i8] c"creating preallocated stolen object: stolen_offset=%pa, gtt_offset=%pa, size=%pa\0A\00", align 1
@I915_GTT_PAGE_SIZE = common dso_local global i32 0, align 4
@I915_GTT_MIN_ALIGNMENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to allocate stolen space\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to allocate stolen object\0A\00", align 1
@I915_GTT_OFFSET_NONE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to allocate stolen GTT space\0A\00", align 1
@I915_VMA_GLOBAL_BIND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_i915_gem_object* @i915_gem_object_create_stolen_for_preallocated(%struct.drm_i915_private* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.i915_ggtt*, align 8
  %11 = alloca %struct.drm_i915_gem_object*, align 8
  %12 = alloca %struct.drm_mm_node*, align 8
  %13 = alloca %struct.i915_vma*, align 8
  %14 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 2
  store %struct.i915_ggtt* %16, %struct.i915_ggtt** %10, align 8
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = call i32 @drm_mm_initialized(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store %struct.drm_i915_gem_object* null, %struct.drm_i915_gem_object** %5, align 8
  br label %184

23:                                               ; preds = %4
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = call i32 @lockdep_assert_held(i32* %26)
  %28 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i8** %7, i8** %8, i8** %9)
  %29 = load i8*, i8** %9, align 8
  %30 = icmp eq i8* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %23
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  %37 = call i32 @IS_ALIGNED(i8* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %34
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* @I915_GTT_MIN_ALIGNMENT, align 4
  %46 = call i32 @IS_ALIGNED(i8* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @WARN_ON(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43, %34, %23
  store %struct.drm_i915_gem_object* null, %struct.drm_i915_gem_object** %5, align 8
  br label %184

53:                                               ; preds = %43
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.drm_mm_node* @kzalloc(i32 16, i32 %54)
  store %struct.drm_mm_node* %55, %struct.drm_mm_node** %12, align 8
  %56 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %57 = icmp ne %struct.drm_mm_node* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  store %struct.drm_i915_gem_object* null, %struct.drm_i915_gem_object** %5, align 8
  br label %184

59:                                               ; preds = %53
  %60 = load i8*, i8** %7, align 8
  %61 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %62 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %65 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %67 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = call i32 @mutex_lock(i32* %68)
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %71 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %74 = call i32 @drm_mm_reserve_node(i32* %72, %struct.drm_mm_node* %73)
  store i32 %74, i32* %14, align 4
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %76 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %59
  %82 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %84 = call i32 @kfree(%struct.drm_mm_node* %83)
  store %struct.drm_i915_gem_object* null, %struct.drm_i915_gem_object** %5, align 8
  br label %184

85:                                               ; preds = %59
  %86 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %87 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %88 = call %struct.drm_i915_gem_object* @_i915_gem_object_create_stolen(%struct.drm_i915_private* %86, %struct.drm_mm_node* %87)
  store %struct.drm_i915_gem_object* %88, %struct.drm_i915_gem_object** %11, align 8
  %89 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %90 = icmp eq %struct.drm_i915_gem_object* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %93 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %94 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %95 = call i32 @i915_gem_stolen_remove_node(%struct.drm_i915_private* %93, %struct.drm_mm_node* %94)
  %96 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %97 = call i32 @kfree(%struct.drm_mm_node* %96)
  store %struct.drm_i915_gem_object* null, %struct.drm_i915_gem_object** %5, align 8
  br label %184

98:                                               ; preds = %85
  %99 = load i8*, i8** %8, align 8
  %100 = load i8*, i8** @I915_GTT_OFFSET_NONE, align 8
  %101 = icmp eq i8* %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  store %struct.drm_i915_gem_object* %103, %struct.drm_i915_gem_object** %5, align 8
  br label %184

104:                                              ; preds = %98
  %105 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %106 = call i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object* %105)
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %181

110:                                              ; preds = %104
  %111 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %112 = load %struct.i915_ggtt*, %struct.i915_ggtt** %10, align 8
  %113 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %112, i32 0, i32 0
  %114 = call %struct.i915_vma* @i915_vma_instance(%struct.drm_i915_gem_object* %111, %struct.TYPE_9__* %113, i32* null)
  store %struct.i915_vma* %114, %struct.i915_vma** %13, align 8
  %115 = load %struct.i915_vma*, %struct.i915_vma** %13, align 8
  %116 = call i64 @IS_ERR(%struct.i915_vma* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %110
  %119 = load %struct.i915_vma*, %struct.i915_vma** %13, align 8
  %120 = call i32 @PTR_ERR(%struct.i915_vma* %119)
  store i32 %120, i32* %14, align 4
  br label %178

121:                                              ; preds = %110
  %122 = load %struct.i915_ggtt*, %struct.i915_ggtt** %10, align 8
  %123 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %122, i32 0, i32 0
  %124 = load %struct.i915_vma*, %struct.i915_vma** %13, align 8
  %125 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %124, i32 0, i32 3
  %126 = load i8*, i8** %9, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %129 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @i915_gem_gtt_reserve(%struct.TYPE_9__* %123, i32* %125, i8* %126, i8* %127, i32 %130, i32 0)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %121
  %135 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %178

136:                                              ; preds = %121
  %137 = load %struct.i915_vma*, %struct.i915_vma** %13, align 8
  %138 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %137, i32 0, i32 3
  %139 = call i32 @drm_mm_node_allocated(i32* %138)
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = call i32 @GEM_BUG_ON(i32 %142)
  %144 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %145 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.i915_vma*, %struct.i915_vma** %13, align 8
  %149 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @I915_VMA_GLOBAL_BIND, align 4
  %151 = load %struct.i915_vma*, %struct.i915_vma** %13, align 8
  %152 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load %struct.i915_vma*, %struct.i915_vma** %13, align 8
  %156 = call i32 @__i915_vma_set_map_and_fenceable(%struct.i915_vma* %155)
  %157 = load %struct.i915_ggtt*, %struct.i915_ggtt** %10, align 8
  %158 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = call i32 @mutex_lock(i32* %159)
  %161 = load %struct.i915_vma*, %struct.i915_vma** %13, align 8
  %162 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %161, i32 0, i32 0
  %163 = load %struct.i915_ggtt*, %struct.i915_ggtt** %10, align 8
  %164 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 1
  %166 = call i32 @list_move_tail(i32* %162, i32* %165)
  %167 = load %struct.i915_ggtt*, %struct.i915_ggtt** %10, align 8
  %168 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = call i32 @mutex_unlock(i32* %169)
  %171 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %172 = call i32 @i915_gem_object_is_shrinkable(%struct.drm_i915_gem_object* %171)
  %173 = call i32 @GEM_BUG_ON(i32 %172)
  %174 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %175 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %174, i32 0, i32 0
  %176 = call i32 @atomic_inc(i32* %175)
  %177 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  store %struct.drm_i915_gem_object* %177, %struct.drm_i915_gem_object** %5, align 8
  br label %184

178:                                              ; preds = %134, %118
  %179 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %180 = call i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object* %179)
  br label %181

181:                                              ; preds = %178, %109
  %182 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %183 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %182)
  store %struct.drm_i915_gem_object* null, %struct.drm_i915_gem_object** %5, align 8
  br label %184

184:                                              ; preds = %181, %136, %102, %91, %81, %58, %52, %22
  %185 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  ret %struct.drm_i915_gem_object* %185
}

declare dso_local i32 @drm_mm_initialized(i32*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, ...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i8*, i32) #1

declare dso_local %struct.drm_mm_node* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_mm_reserve_node(i32*, %struct.drm_mm_node*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.drm_mm_node*) #1

declare dso_local %struct.drm_i915_gem_object* @_i915_gem_object_create_stolen(%struct.drm_i915_private*, %struct.drm_mm_node*) #1

declare dso_local i32 @i915_gem_stolen_remove_node(%struct.drm_i915_private*, %struct.drm_mm_node*) #1

declare dso_local i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local %struct.i915_vma* @i915_vma_instance(%struct.drm_i915_gem_object*, %struct.TYPE_9__*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_vma*) #1

declare dso_local i32 @i915_gem_gtt_reserve(%struct.TYPE_9__*, i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @drm_mm_node_allocated(i32*) #1

declare dso_local i32 @__i915_vma_set_map_and_fenceable(%struct.i915_vma*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @i915_gem_object_is_shrinkable(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_put(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
