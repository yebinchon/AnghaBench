; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_pages.c___i915_gem_object_put_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_pages.c___i915_gem_object_put_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.drm_i915_gem_object*, %struct.sg_table*)* }
%struct.sg_table = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__i915_gem_object_put_pages(%struct.drm_i915_gem_object* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sg_table*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %9 = call i64 @i915_gem_object_has_pinned_pages(%struct.drm_i915_gem_object* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %66

14:                                               ; preds = %2
  %15 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %16 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %15, i32 0, i32 2
  %17 = call i32 @atomic_read(i32* %16)
  %18 = call i32 @GEM_BUG_ON(i32 %17)
  %19 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %20 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @mutex_lock_nested(i32* %21, i32 %22)
  %24 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %25 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = call i32 @atomic_read(i32* %26)
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %14
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %60

33:                                               ; preds = %14
  %34 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %35 = call %struct.sg_table* @__i915_gem_object_unset_pages(%struct.drm_i915_gem_object* %34)
  store %struct.sg_table* %35, %struct.sg_table** %6, align 8
  %36 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %37 = icmp ne %struct.sg_table* %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %33
  %39 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %40 = call i32 @i915_gem_object_needs_async_cancel(%struct.drm_i915_gem_object* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.sg_table* @ERR_PTR(i32 %44)
  store %struct.sg_table* %45, %struct.sg_table** %6, align 8
  br label %46

46:                                               ; preds = %42, %38, %33
  %47 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %48 = call i32 @IS_ERR(%struct.sg_table* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %46
  %51 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %52 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32 (%struct.drm_i915_gem_object*, %struct.sg_table*)*, i32 (%struct.drm_i915_gem_object*, %struct.sg_table*)** %54, align 8
  %56 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %57 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %58 = call i32 %55(%struct.drm_i915_gem_object* %56, %struct.sg_table* %57)
  br label %59

59:                                               ; preds = %50, %46
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %59, %30
  %61 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %62 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %60, %11
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @i915_gem_object_has_pinned_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sg_table* @__i915_gem_object_unset_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_needs_async_cancel(%struct.drm_i915_gem_object*) #1

declare dso_local %struct.sg_table* @ERR_PTR(i32) #1

declare dso_local i32 @IS_ERR(%struct.sg_table*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
