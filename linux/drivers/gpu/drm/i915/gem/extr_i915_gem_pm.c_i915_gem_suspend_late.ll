; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_pm.c_i915_gem_suspend_late.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_pm.c_i915_gem_suspend_late.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.list_head, %struct.list_head }
%struct.list_head = type { i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@keep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_gem_suspend_late(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca [3 x %struct.list_head*], align 16
  %5 = alloca %struct.list_head**, align 8
  %6 = alloca i64, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %7 = getelementptr inbounds [3 x %struct.list_head*], [3 x %struct.list_head*]* %4, i64 0, i64 0
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store %struct.list_head* %10, %struct.list_head** %7, align 8
  %11 = getelementptr inbounds %struct.list_head*, %struct.list_head** %7, i64 1
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store %struct.list_head* %14, %struct.list_head** %11, align 8
  %15 = getelementptr inbounds %struct.list_head*, %struct.list_head** %11, i64 1
  store %struct.list_head* null, %struct.list_head** %15, align 8
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = getelementptr inbounds [3 x %struct.list_head*], [3 x %struct.list_head*]* %4, i64 0, i64 0
  store %struct.list_head** %21, %struct.list_head*** %5, align 8
  br label %22

22:                                               ; preds = %69, %1
  %23 = load %struct.list_head**, %struct.list_head*** %5, align 8
  %24 = load %struct.list_head*, %struct.list_head** %23, align 8
  %25 = icmp ne %struct.list_head* %24, null
  br i1 %25, label %26, label %72

26:                                               ; preds = %22
  %27 = load i32, i32* @keep, align 4
  %28 = call i32 @LIST_HEAD(i32 %27)
  br label %29

29:                                               ; preds = %45, %44, %26
  %30 = load %struct.list_head**, %struct.list_head*** %5, align 8
  %31 = load %struct.list_head*, %struct.list_head** %30, align 8
  %32 = call %struct.drm_i915_gem_object* @first_mm_object(%struct.list_head* %31)
  store %struct.drm_i915_gem_object* %32, %struct.drm_i915_gem_object** %3, align 8
  %33 = icmp ne %struct.drm_i915_gem_object* %32, null
  br i1 %33, label %34, label %65

34:                                               ; preds = %29
  %35 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %36 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @list_move_tail(i32* %37, i32* @keep)
  %39 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %40 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = call i32 @kref_get_unless_zero(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  br label %29

45:                                               ; preds = %34
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %47 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %52 = call i32 @i915_gem_object_lock(%struct.drm_i915_gem_object* %51)
  %53 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %54 = call i32 @i915_gem_object_set_to_gtt_domain(%struct.drm_i915_gem_object* %53, i32 0)
  %55 = call i32 @WARN_ON(i32 %54)
  %56 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %57 = call i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object* %56)
  %58 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %59 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %58)
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %61 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  br label %29

65:                                               ; preds = %29
  %66 = load %struct.list_head**, %struct.list_head*** %5, align 8
  %67 = load %struct.list_head*, %struct.list_head** %66, align 8
  %68 = call i32 @list_splice_tail(i32* @keep, %struct.list_head* %67)
  br label %69

69:                                               ; preds = %65
  %70 = load %struct.list_head**, %struct.list_head*** %5, align 8
  %71 = getelementptr inbounds %struct.list_head*, %struct.list_head** %70, i32 1
  store %struct.list_head** %71, %struct.list_head*** %5, align 8
  br label %22

72:                                               ; preds = %22
  %73 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %74 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %79 = call i32 @i915_gem_sanitize(%struct.drm_i915_private* %78)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local %struct.drm_i915_gem_object* @first_mm_object(%struct.list_head*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @kref_get_unless_zero(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @i915_gem_object_lock(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @i915_gem_object_set_to_gtt_domain(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_put(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @list_splice_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @i915_gem_sanitize(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
