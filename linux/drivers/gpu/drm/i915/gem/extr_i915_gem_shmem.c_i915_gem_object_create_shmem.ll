; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_shmem.c_i915_gem_object_create_shmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_shmem.c_i915_gem_object_create_shmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.drm_i915_private = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@__GFP_RECLAIMABLE = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@__GFP_DMA32 = common dso_local global i32 0, align 4
@__GFP_RECLAIM = common dso_local global i32 0, align 4
@i915_gem_shmem_ops = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_CPU = common dso_local global i8* null, align 8
@I915_CACHE_LLC = common dso_local global i32 0, align 4
@I915_CACHE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_i915_gem_object* @i915_gem_object_create_shmem(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i64, i64* @PAGE_SHIFT, align 8
  %13 = trunc i64 %12 to i32
  %14 = ashr i32 %11, %13
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* @INT_MAX, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @E2BIG, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.drm_i915_gem_object* @ERR_PTR(i32 %20)
  store %struct.drm_i915_gem_object* %21, %struct.drm_i915_gem_object** %3, align 8
  br label %115

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %25 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @overflows_type(i32 %23, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i32, i32* @E2BIG, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.drm_i915_gem_object* @ERR_PTR(i32 %32)
  store %struct.drm_i915_gem_object* %33, %struct.drm_i915_gem_object** %3, align 8
  br label %115

34:                                               ; preds = %22
  %35 = call %struct.drm_i915_gem_object* (...) @i915_gem_object_alloc()
  store %struct.drm_i915_gem_object* %35, %struct.drm_i915_gem_object** %6, align 8
  %36 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %37 = icmp ne %struct.drm_i915_gem_object* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.drm_i915_gem_object* @ERR_PTR(i32 %40)
  store %struct.drm_i915_gem_object* %41, %struct.drm_i915_gem_object** %3, align 8
  br label %115

42:                                               ; preds = %34
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %44 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %45 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %44, i32 0, i32 2
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @create_shmem(%struct.drm_i915_private* %43, %struct.TYPE_4__* %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %110

51:                                               ; preds = %42
  %52 = load i32, i32* @GFP_HIGHUSER, align 4
  %53 = load i32, i32* @__GFP_RECLAIMABLE, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %9, align 4
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %56 = call i64 @IS_I965GM(%struct.drm_i915_private* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %60 = call i64 @IS_I965G(%struct.drm_i915_private* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58, %51
  %63 = load i32, i32* @__GFP_HIGHMEM, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* @__GFP_DMA32, align 4
  %68 = load i32, i32* %9, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %62, %58
  %71 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %72 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load %struct.address_space*, %struct.address_space** %75, align 8
  store %struct.address_space* %76, %struct.address_space** %7, align 8
  %77 = load %struct.address_space*, %struct.address_space** %7, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @mapping_set_gfp_mask(%struct.address_space* %77, i32 %78)
  %80 = load %struct.address_space*, %struct.address_space** %7, align 8
  %81 = call i32 @mapping_gfp_mask(%struct.address_space* %80)
  %82 = load i32, i32* @__GFP_RECLAIM, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 @GEM_BUG_ON(i32 %86)
  %88 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %89 = call i32 @i915_gem_object_init(%struct.drm_i915_gem_object* %88, i32* @i915_gem_shmem_ops)
  %90 = load i8*, i8** @I915_GEM_DOMAIN_CPU, align 8
  %91 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %92 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** @I915_GEM_DOMAIN_CPU, align 8
  %94 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %95 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  %96 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %97 = call i64 @HAS_LLC(%struct.drm_i915_private* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %70
  %100 = load i32, i32* @I915_CACHE_LLC, align 4
  store i32 %100, i32* %8, align 4
  br label %103

101:                                              ; preds = %70
  %102 = load i32, i32* @I915_CACHE_NONE, align 4
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @i915_gem_object_set_cache_coherency(%struct.drm_i915_gem_object* %104, i32 %105)
  %107 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %108 = call i32 @trace_i915_gem_object_create(%struct.drm_i915_gem_object* %107)
  %109 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  store %struct.drm_i915_gem_object* %109, %struct.drm_i915_gem_object** %3, align 8
  br label %115

110:                                              ; preds = %50
  %111 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %112 = call i32 @i915_gem_object_free(%struct.drm_i915_gem_object* %111)
  %113 = load i32, i32* %10, align 4
  %114 = call %struct.drm_i915_gem_object* @ERR_PTR(i32 %113)
  store %struct.drm_i915_gem_object* %114, %struct.drm_i915_gem_object** %3, align 8
  br label %115

115:                                              ; preds = %110, %103, %38, %30, %18
  %116 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  ret %struct.drm_i915_gem_object* %116
}

declare dso_local %struct.drm_i915_gem_object* @ERR_PTR(i32) #1

declare dso_local i64 @overflows_type(i32, i32) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_alloc(...) #1

declare dso_local i32 @create_shmem(%struct.drm_i915_private*, %struct.TYPE_4__*, i32) #1

declare dso_local i64 @IS_I965GM(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I965G(%struct.drm_i915_private*) #1

declare dso_local i32 @mapping_set_gfp_mask(%struct.address_space*, i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @mapping_gfp_mask(%struct.address_space*) #1

declare dso_local i32 @i915_gem_object_init(%struct.drm_i915_gem_object*, i32*) #1

declare dso_local i64 @HAS_LLC(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_object_set_cache_coherency(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @trace_i915_gem_object_create(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_free(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
