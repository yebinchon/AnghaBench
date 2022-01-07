; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_gem_gtt_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_gem_gtt_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_address_space = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.i915_address_space }
%struct.drm_mm_node = type { i64, i8*, i8* }

@I915_GTT_PAGE_SIZE = common dso_local global i32 0, align 4
@I915_GTT_MIN_ALIGNMENT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@PIN_NOEVICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_gtt_reserve(%struct.i915_address_space* %0, %struct.drm_mm_node* %1, i8* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.i915_address_space*, align 8
  %9 = alloca %struct.drm_mm_node*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i915_address_space* %0, %struct.i915_address_space** %8, align 8
  store %struct.drm_mm_node* %1, %struct.drm_mm_node** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i8*, i8** %10, align 8
  %16 = icmp ne i8* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @GEM_BUG_ON(i32 %18)
  %20 = load i8*, i8** %10, align 8
  %21 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  %22 = call i32 @IS_ALIGNED(i8* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @GEM_BUG_ON(i32 %25)
  %27 = load i8*, i8** %11, align 8
  %28 = load i32, i32* @I915_GTT_MIN_ALIGNMENT, align 4
  %29 = call i32 @IS_ALIGNED(i8* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @GEM_BUG_ON(i32 %32)
  %34 = load i8*, i8** %11, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load %struct.i915_address_space*, %struct.i915_address_space** %8, align 8
  %37 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @range_overflows(i8* %34, i8* %35, i32 %38)
  %40 = call i32 @GEM_BUG_ON(i32 %39)
  %41 = load %struct.i915_address_space*, %struct.i915_address_space** %8, align 8
  %42 = load %struct.i915_address_space*, %struct.i915_address_space** %8, align 8
  %43 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = icmp eq %struct.i915_address_space* %41, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @GEM_BUG_ON(i32 %50)
  %52 = load %struct.drm_mm_node*, %struct.drm_mm_node** %9, align 8
  %53 = call i32 @drm_mm_node_allocated(%struct.drm_mm_node* %52)
  %54 = call i32 @GEM_BUG_ON(i32 %53)
  %55 = load i8*, i8** %10, align 8
  %56 = load %struct.drm_mm_node*, %struct.drm_mm_node** %9, align 8
  %57 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load %struct.drm_mm_node*, %struct.drm_mm_node** %9, align 8
  %60 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load %struct.drm_mm_node*, %struct.drm_mm_node** %9, align 8
  %63 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.i915_address_space*, %struct.i915_address_space** %8, align 8
  %65 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %64, i32 0, i32 0
  %66 = load %struct.drm_mm_node*, %struct.drm_mm_node** %9, align 8
  %67 = call i32 @drm_mm_reserve_node(i32* %65, %struct.drm_mm_node* %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @ENOSPC, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %6
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %7, align 4
  br label %96

74:                                               ; preds = %6
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @PIN_NOEVICT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* @ENOSPC, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  br label %96

82:                                               ; preds = %74
  %83 = load %struct.i915_address_space*, %struct.i915_address_space** %8, align 8
  %84 = load %struct.drm_mm_node*, %struct.drm_mm_node** %9, align 8
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @i915_gem_evict_for_node(%struct.i915_address_space* %83, %struct.drm_mm_node* %84, i32 %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load %struct.i915_address_space*, %struct.i915_address_space** %8, align 8
  %91 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %90, i32 0, i32 0
  %92 = load %struct.drm_mm_node*, %struct.drm_mm_node** %9, align 8
  %93 = call i32 @drm_mm_reserve_node(i32* %91, %struct.drm_mm_node* %92)
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %89, %82
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %94, %79, %72
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i8*, i32) #1

declare dso_local i32 @range_overflows(i8*, i8*, i32) #1

declare dso_local i32 @drm_mm_node_allocated(%struct.drm_mm_node*) #1

declare dso_local i32 @drm_mm_reserve_node(i32*, %struct.drm_mm_node*) #1

declare dso_local i32 @i915_gem_evict_for_node(%struct.i915_address_space*, %struct.drm_mm_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
