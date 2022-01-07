; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_userptr.c_i915_gem_userptr_init__mm_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_userptr.c_i915_gem_userptr_init__mm_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.drm_i915_gem_object = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.i915_mm_struct* }
%struct.i915_mm_struct = type { i32, i64, i32, i32*, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32, i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_gem_object*)* @i915_gem_userptr_init__mm_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_gem_userptr_init__mm_struct(%struct.drm_i915_gem_object* %0) #0 {
  %2 = alloca %struct.drm_i915_gem_object*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_mm_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %2, align 8
  %6 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %7 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i8* @to_i915(i32 %9)
  %11 = bitcast i8* %10 to %struct.drm_i915_private*
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %3, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call %struct.i915_mm_struct* @__i915_mm_struct_find(%struct.drm_i915_private* %15, i64 %18)
  store %struct.i915_mm_struct* %19, %struct.i915_mm_struct** %4, align 8
  %20 = load %struct.i915_mm_struct*, %struct.i915_mm_struct** %4, align 8
  %21 = icmp eq %struct.i915_mm_struct* %20, null
  br i1 %21, label %22, label %61

22:                                               ; preds = %1
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.i915_mm_struct* @kmalloc(i32 40, i32 %23)
  store %struct.i915_mm_struct* %24, %struct.i915_mm_struct** %4, align 8
  %25 = load %struct.i915_mm_struct*, %struct.i915_mm_struct** %4, align 8
  %26 = icmp eq %struct.i915_mm_struct* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %70

30:                                               ; preds = %22
  %31 = load %struct.i915_mm_struct*, %struct.i915_mm_struct** %4, align 8
  %32 = getelementptr inbounds %struct.i915_mm_struct, %struct.i915_mm_struct* %31, i32 0, i32 0
  %33 = call i32 @kref_init(i32* %32)
  %34 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %35 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @to_i915(i32 %37)
  %39 = load %struct.i915_mm_struct*, %struct.i915_mm_struct** %4, align 8
  %40 = getelementptr inbounds %struct.i915_mm_struct, %struct.i915_mm_struct* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.i915_mm_struct*, %struct.i915_mm_struct** %4, align 8
  %45 = getelementptr inbounds %struct.i915_mm_struct, %struct.i915_mm_struct* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @mmgrab(i64 %48)
  %50 = load %struct.i915_mm_struct*, %struct.i915_mm_struct** %4, align 8
  %51 = getelementptr inbounds %struct.i915_mm_struct, %struct.i915_mm_struct* %50, i32 0, i32 3
  store i32* null, i32** %51, align 8
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %53 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.i915_mm_struct*, %struct.i915_mm_struct** %4, align 8
  %56 = getelementptr inbounds %struct.i915_mm_struct, %struct.i915_mm_struct* %55, i32 0, i32 2
  %57 = load %struct.i915_mm_struct*, %struct.i915_mm_struct** %4, align 8
  %58 = getelementptr inbounds %struct.i915_mm_struct, %struct.i915_mm_struct* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @hash_add(i32 %54, i32* %56, i64 %59)
  br label %65

61:                                               ; preds = %1
  %62 = load %struct.i915_mm_struct*, %struct.i915_mm_struct** %4, align 8
  %63 = getelementptr inbounds %struct.i915_mm_struct, %struct.i915_mm_struct* %62, i32 0, i32 0
  %64 = call i32 @kref_get(i32* %63)
  br label %65

65:                                               ; preds = %61, %30
  %66 = load %struct.i915_mm_struct*, %struct.i915_mm_struct** %4, align 8
  %67 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %68 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store %struct.i915_mm_struct* %66, %struct.i915_mm_struct** %69, align 8
  br label %70

70:                                               ; preds = %65, %27
  %71 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %72 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i8* @to_i915(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.i915_mm_struct* @__i915_mm_struct_find(%struct.drm_i915_private*, i64) #1

declare dso_local %struct.i915_mm_struct* @kmalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mmgrab(i64) #1

declare dso_local i32 @hash_add(i32, i32*, i64) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
