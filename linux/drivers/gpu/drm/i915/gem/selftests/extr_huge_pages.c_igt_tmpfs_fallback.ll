; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_huge_pages.c_igt_tmpfs_fallback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_huge_pages.c_igt_tmpfs_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gem_context = type { i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.vfsmount* }
%struct.vfsmount = type { i32 }
%struct.TYPE_3__ = type { %struct.i915_address_space }
%struct.i915_address_space = type { i32 }
%struct.drm_i915_gem_object = type opaque
%struct.i915_vma = type opaque

@PAGE_SIZE = common dso_local global i32 0, align 4
@I915_MAP_WB = common dso_local global i32 0, align 4
@PIN_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_tmpfs_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_tmpfs_fallback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.i915_gem_context*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.i915_address_space*, align 8
  %7 = alloca %struct.drm_i915_gem_object*, align 8
  %8 = alloca %struct.i915_vma*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.i915_gem_context*
  store %struct.i915_gem_context* %12, %struct.i915_gem_context** %3, align 8
  %13 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %14 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %13, i32 0, i32 1
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %4, align 8
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.vfsmount*, %struct.vfsmount** %18, align 8
  store %struct.vfsmount* %19, %struct.vfsmount** %5, align 8
  %20 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %21 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = sext i32 %22 to i64
  %26 = inttoptr i64 %25 to %struct.i915_address_space*
  br label %31

27:                                               ; preds = %1
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi %struct.i915_address_space* [ %26, %24 ], [ %30, %27 ]
  store %struct.i915_address_space* %32, %struct.i915_address_space** %6, align 8
  store i32 0, i32* %10, align 4
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %34 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store %struct.vfsmount* null, %struct.vfsmount** %35, align 8
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = call i32* @i915_gem_object_create_shmem(%struct.drm_i915_private* %36, i32 %37)
  %39 = bitcast i32* %38 to %struct.drm_i915_gem_object*
  store %struct.drm_i915_gem_object* %39, %struct.drm_i915_gem_object** %7, align 8
  %40 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %41 = bitcast %struct.drm_i915_gem_object* %40 to i32*
  %42 = call i64 @IS_ERR(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %31
  %45 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %46 = bitcast %struct.drm_i915_gem_object* %45 to i32*
  %47 = call i32 @PTR_ERR(i32* %46)
  store i32 %47, i32* %10, align 4
  br label %103

48:                                               ; preds = %31
  %49 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %50 = bitcast %struct.drm_i915_gem_object* %49 to i32*
  %51 = load i32, i32* @I915_MAP_WB, align 4
  %52 = call i32* @i915_gem_object_pin_map(i32* %50, i32 %51)
  store i32* %52, i32** %9, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i64 @IS_ERR(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @PTR_ERR(i32* %57)
  store i32 %58, i32* %10, align 4
  br label %99

59:                                               ; preds = %48
  %60 = load i32*, i32** %9, align 8
  store i32 -559038801, i32* %60, align 4
  %61 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %62 = bitcast %struct.drm_i915_gem_object* %61 to i32*
  %63 = call i32 @__i915_gem_object_flush_map(i32* %62, i32 0, i32 64)
  %64 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %65 = bitcast %struct.drm_i915_gem_object* %64 to i32*
  %66 = call i32 @i915_gem_object_unpin_map(i32* %65)
  %67 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %68 = bitcast %struct.drm_i915_gem_object* %67 to i32*
  %69 = load %struct.i915_address_space*, %struct.i915_address_space** %6, align 8
  %70 = call i32* @i915_vma_instance(i32* %68, %struct.i915_address_space* %69, i32* null)
  %71 = bitcast i32* %70 to %struct.i915_vma*
  store %struct.i915_vma* %71, %struct.i915_vma** %8, align 8
  %72 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %73 = bitcast %struct.i915_vma* %72 to i32*
  %74 = call i64 @IS_ERR(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %59
  %77 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %78 = bitcast %struct.i915_vma* %77 to i32*
  %79 = call i32 @PTR_ERR(i32* %78)
  store i32 %79, i32* %10, align 4
  br label %99

80:                                               ; preds = %59
  %81 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %82 = bitcast %struct.i915_vma* %81 to i32*
  %83 = load i32, i32* @PIN_USER, align 4
  %84 = call i32 @i915_vma_pin(i32* %82, i32 0, i32 0, i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %95

88:                                               ; preds = %80
  %89 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %90 = bitcast %struct.i915_vma* %89 to i32*
  %91 = call i32 @igt_check_page_sizes(i32* %90)
  store i32 %91, i32* %10, align 4
  %92 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %93 = bitcast %struct.i915_vma* %92 to i32*
  %94 = call i32 @i915_vma_unpin(i32* %93)
  br label %95

95:                                               ; preds = %88, %87
  %96 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %97 = bitcast %struct.i915_vma* %96 to i32*
  %98 = call i32 @i915_vma_close(i32* %97)
  br label %99

99:                                               ; preds = %95, %76, %56
  %100 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %101 = bitcast %struct.drm_i915_gem_object* %100 to i32*
  %102 = call i32 @i915_gem_object_put(i32* %101)
  br label %103

103:                                              ; preds = %99, %44
  %104 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %106 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  store %struct.vfsmount* %104, %struct.vfsmount** %107, align 8
  %108 = load i32, i32* %10, align 4
  ret i32 %108
}

declare dso_local i32* @i915_gem_object_create_shmem(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @i915_gem_object_pin_map(i32*, i32) #1

declare dso_local i32 @__i915_gem_object_flush_map(i32*, i32, i32) #1

declare dso_local i32 @i915_gem_object_unpin_map(i32*) #1

declare dso_local i32* @i915_vma_instance(i32*, %struct.i915_address_space*, i32*) #1

declare dso_local i32 @i915_vma_pin(i32*, i32, i32, i32) #1

declare dso_local i32 @igt_check_page_sizes(i32*) #1

declare dso_local i32 @i915_vma_unpin(i32*) #1

declare dso_local i32 @i915_vma_close(i32*) #1

declare dso_local i32 @i915_gem_object_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
