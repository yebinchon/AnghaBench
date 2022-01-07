; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_get_ggtt_vma_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_get_ggtt_vma_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { %struct.TYPE_9__, i32*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@.str = private unnamed_addr constant [48 x i8] c"Failed to get pages for VMA view type %u (%d)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_vma*)* @i915_get_ggtt_vma_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_get_ggtt_vma_pages(%struct.i915_vma* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_vma*, align 8
  %4 = alloca i32, align 4
  store %struct.i915_vma* %0, %struct.i915_vma** %3, align 8
  %5 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %6 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %5, i32 0, i32 2
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = call i32 @i915_gem_object_has_pinned_pages(%struct.TYPE_8__* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @GEM_BUG_ON(i32 %11)
  %13 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %14 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %17 [
    i32 131, label %23
    i32 128, label %32
    i32 129, label %42
    i32 130, label %52
  ]

17:                                               ; preds = %1
  %18 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %19 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @GEM_BUG_ON(i32 %21)
  br label %23

23:                                               ; preds = %1, %17
  %24 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %25 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %24, i32 0, i32 2
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %31 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  store i32 0, i32* %2, align 4
  br label %82

32:                                               ; preds = %1
  %33 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %34 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %37 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %36, i32 0, i32 2
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = call i32* @intel_rotate_pages(i32* %35, %struct.TYPE_8__* %38)
  %40 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %41 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  br label %61

42:                                               ; preds = %1
  %43 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %44 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %47 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %46, i32 0, i32 2
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = call i32* @intel_remap_pages(i32* %45, %struct.TYPE_8__* %48)
  %50 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %51 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  br label %61

52:                                               ; preds = %1
  %53 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %54 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %53, i32 0, i32 0
  %55 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %56 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %55, i32 0, i32 2
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = call i32* @intel_partial_pages(%struct.TYPE_9__* %54, %struct.TYPE_8__* %57)
  %59 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %60 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %59, i32 0, i32 1
  store i32* %58, i32** %60, align 8
  br label %61

61:                                               ; preds = %52, %42, %32
  store i32 0, i32* %4, align 4
  %62 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %63 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i64 @IS_ERR(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %61
  %68 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %69 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @PTR_ERR(i32* %70)
  store i32 %71, i32* %4, align 4
  %72 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %73 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %72, i32 0, i32 1
  store i32* null, i32** %73, align 8
  %74 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %75 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %67, %61
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %80, %23
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_gem_object_has_pinned_pages(%struct.TYPE_8__*) #1

declare dso_local i32* @intel_rotate_pages(i32*, %struct.TYPE_8__*) #1

declare dso_local i32* @intel_remap_pages(i32*, %struct.TYPE_8__*) #1

declare dso_local i32* @intel_partial_pages(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
