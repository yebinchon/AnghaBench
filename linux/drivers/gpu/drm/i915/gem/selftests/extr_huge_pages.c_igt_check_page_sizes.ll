; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_huge_pages.c_igt_check_page_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_huge_pages.c_igt_check_page_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { %struct.TYPE_7__, %struct.drm_i915_gem_object*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"unsupported page_sizes.sg=%u, supported=%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"unsupported page_sizes.gtt=%u, supported=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"vma->page_sizes.phys(%u) != obj->mm.page_sizes.phys(%u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"vma->page_sizes.sg(%u) != obj->mm.page_sizes.sg(%u)\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"obj->page_sizes.gtt(%u) should never be set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_vma*)* @igt_check_page_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_check_page_sizes(%struct.i915_vma* %0) #0 {
  %2 = alloca %struct.i915_vma*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca i32, align 4
  store %struct.i915_vma* %0, %struct.i915_vma** %2, align 8
  %7 = load %struct.i915_vma*, %struct.i915_vma** %2, align 8
  %8 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %7, i32 0, i32 2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %3, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = call %struct.TYPE_10__* @INTEL_INFO(%struct.drm_i915_private* %12)
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.i915_vma*, %struct.i915_vma** %2, align 8
  %17 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %16, i32 0, i32 1
  %18 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %17, align 8
  store %struct.drm_i915_gem_object* %18, %struct.drm_i915_gem_object** %5, align 8
  store i32 0, i32* %6, align 4
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %20 = load %struct.i915_vma*, %struct.i915_vma** %2, align 8
  %21 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @HAS_PAGE_SIZES(%struct.drm_i915_private* %19, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %1
  %27 = load %struct.i915_vma*, %struct.i915_vma** %2, align 8
  %28 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = load i32, i32* %4, align 4
  %35 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %26, %1
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %40 = load %struct.i915_vma*, %struct.i915_vma** %2, align 8
  %41 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @HAS_PAGE_SIZES(%struct.drm_i915_private* %39, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %38
  %47 = load %struct.i915_vma*, %struct.i915_vma** %2, align 8
  %48 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = load i32, i32* %4, align 4
  %55 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %46, %38
  %59 = load %struct.i915_vma*, %struct.i915_vma** %2, align 8
  %60 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %64 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %62, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %58
  %70 = load %struct.i915_vma*, %struct.i915_vma** %2, align 8
  %71 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %75 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %69, %58
  %83 = load %struct.i915_vma*, %struct.i915_vma** %2, align 8
  %84 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %88 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %86, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %82
  %94 = load %struct.i915_vma*, %struct.i915_vma** %2, align 8
  %95 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %99 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %97, i32 %102)
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %93, %82
  %107 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %108 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %106
  %114 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %115 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %113, %106
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local %struct.TYPE_10__* @INTEL_INFO(%struct.drm_i915_private*) #1

declare dso_local i32 @HAS_PAGE_SIZES(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
