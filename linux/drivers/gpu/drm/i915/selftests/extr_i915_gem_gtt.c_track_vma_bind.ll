; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_gem_gtt.c_track_vma_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_gem_gtt.c_track_vma_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { %struct.TYPE_4__*, i32, i32, %struct.drm_i915_gem_object* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_vma*)* @track_vma_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @track_vma_bind(%struct.i915_vma* %0) #0 {
  %2 = alloca %struct.i915_vma*, align 8
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  store %struct.i915_vma* %0, %struct.i915_vma** %2, align 8
  %4 = load %struct.i915_vma*, %struct.i915_vma** %2, align 8
  %5 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %4, i32 0, i32 3
  %6 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  store %struct.drm_i915_gem_object* %6, %struct.drm_i915_gem_object** %3, align 8
  %7 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %8 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %7, i32 0, i32 1
  %9 = call i32 @atomic_inc(i32* %8)
  %10 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %11 = call i32 @__i915_gem_object_pin_pages(%struct.drm_i915_gem_object* %10)
  %12 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %13 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.i915_vma*, %struct.i915_vma** %2, align 8
  %17 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.i915_vma*, %struct.i915_vma** %2, align 8
  %19 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.i915_vma*, %struct.i915_vma** %2, align 8
  %24 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %23, i32 0, i32 1
  %25 = load %struct.i915_vma*, %struct.i915_vma** %2, align 8
  %26 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = call i32 @list_move_tail(i32* %24, i32* %28)
  %30 = load %struct.i915_vma*, %struct.i915_vma** %2, align 8
  %31 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @__i915_gem_object_pin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
