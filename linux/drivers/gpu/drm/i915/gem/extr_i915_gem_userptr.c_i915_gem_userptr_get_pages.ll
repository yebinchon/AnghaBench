; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_userptr.c_i915_gem_userptr_get_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_userptr.c_i915_gem_userptr_get_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, %struct.sg_table*, %struct.TYPE_6__* }
%struct.sg_table = type { i32 }
%struct.TYPE_6__ = type { %struct.mm_struct* }
%struct.TYPE_5__ = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_gem_object*)* @i915_gem_userptr_get_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_gem_userptr_get_pages(%struct.drm_i915_gem_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.page**, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %3, align 8
  %10 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %11 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PAGE_SHIFT, align 4
  %15 = ashr i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %17 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.mm_struct*, %struct.mm_struct** %20, align 8
  store %struct.mm_struct* %21, %struct.mm_struct** %5, align 8
  %22 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %23 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load %struct.sg_table*, %struct.sg_table** %24, align 8
  %26 = icmp ne %struct.sg_table* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %1
  %28 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %29 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load %struct.sg_table*, %struct.sg_table** %30, align 8
  %32 = call i64 @IS_ERR(%struct.sg_table* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %36 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load %struct.sg_table*, %struct.sg_table** %37, align 8
  %39 = call i32 @PTR_ERR(%struct.sg_table* %38)
  store i32 %39, i32* %2, align 4
  br label %122

40:                                               ; preds = %27
  %41 = load i32, i32* @EAGAIN, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %122

43:                                               ; preds = %1
  store %struct.page** null, %struct.page*** %6, align 8
  store i32 0, i32* %9, align 4
  %44 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.mm_struct*, %struct.mm_struct** %46, align 8
  %48 = icmp eq %struct.mm_struct* %44, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %43
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = load i32, i32* @__GFP_NORETRY, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @__GFP_NOWARN, align 4
  %55 = or i32 %53, %54
  %56 = call %struct.page** @kvmalloc_array(i32 %50, i32 8, i32 %55)
  store %struct.page** %56, %struct.page*** %6, align 8
  %57 = load %struct.page**, %struct.page*** %6, align 8
  %58 = icmp ne %struct.page** %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %49
  %60 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %61 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %66 = call i32 @i915_gem_object_is_readonly(%struct.drm_i915_gem_object* %65)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load %struct.page**, %struct.page*** %6, align 8
  %71 = call i32 @__get_user_pages_fast(i32 %63, i32 %64, i32 %69, %struct.page** %70)
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %59, %49
  br label %73

73:                                               ; preds = %72, %43
  store i32 0, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = call %struct.sg_table* @ERR_PTR(i32 %77)
  store %struct.sg_table* %78, %struct.sg_table** %7, align 8
  store i32 0, i32* %9, align 4
  br label %103

79:                                               ; preds = %73
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %85 = call %struct.sg_table* @__i915_gem_userptr_get_pages_schedule(%struct.drm_i915_gem_object* %84)
  store %struct.sg_table* %85, %struct.sg_table** %7, align 8
  %86 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %87 = load i32, i32* @EAGAIN, align 4
  %88 = sub nsw i32 0, %87
  %89 = call %struct.sg_table* @ERR_PTR(i32 %88)
  %90 = icmp eq %struct.sg_table* %86, %89
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %8, align 4
  br label %102

92:                                               ; preds = %79
  %93 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %94 = load %struct.page**, %struct.page*** %6, align 8
  %95 = load i32, i32* %4, align 4
  %96 = call %struct.sg_table* @__i915_gem_userptr_alloc_pages(%struct.drm_i915_gem_object* %93, %struct.page** %94, i32 %95)
  store %struct.sg_table* %96, %struct.sg_table** %7, align 8
  %97 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %98 = call i64 @IS_ERR(%struct.sg_table* %97)
  %99 = icmp ne i64 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %92, %83
  br label %103

103:                                              ; preds = %102, %76
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %108 = call i32 @__i915_gem_userptr_set_active(%struct.drm_i915_gem_object* %107, i32 1)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %111 = call i64 @IS_ERR(%struct.sg_table* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load %struct.page**, %struct.page*** %6, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @release_pages(%struct.page** %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %109
  %118 = load %struct.page**, %struct.page*** %6, align 8
  %119 = call i32 @kvfree(%struct.page** %118)
  %120 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %121 = call i32 @PTR_ERR_OR_ZERO(%struct.sg_table* %120)
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %117, %40, %34
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i64 @IS_ERR(%struct.sg_table*) #1

declare dso_local i32 @PTR_ERR(%struct.sg_table*) #1

declare dso_local %struct.page** @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @__get_user_pages_fast(i32, i32, i32, %struct.page**) #1

declare dso_local i32 @i915_gem_object_is_readonly(%struct.drm_i915_gem_object*) #1

declare dso_local %struct.sg_table* @ERR_PTR(i32) #1

declare dso_local %struct.sg_table* @__i915_gem_userptr_get_pages_schedule(%struct.drm_i915_gem_object*) #1

declare dso_local %struct.sg_table* @__i915_gem_userptr_alloc_pages(%struct.drm_i915_gem_object*, %struct.page**, i32) #1

declare dso_local i32 @__i915_gem_userptr_set_active(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @release_pages(%struct.page**, i32) #1

declare dso_local i32 @kvfree(%struct.page**) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.sg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
