; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_address_space_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_address_space_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_address_space = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_address_space*)* @i915_address_space_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_address_space_fini(%struct.i915_address_space* %0) #0 {
  %2 = alloca %struct.i915_address_space*, align 8
  store %struct.i915_address_space* %0, %struct.i915_address_space** %2, align 8
  %3 = load %struct.i915_address_space*, %struct.i915_address_space** %2, align 8
  %4 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.i915_address_space*, %struct.i915_address_space** %2, align 8
  %8 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = call i64 @pagevec_count(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.i915_address_space*, %struct.i915_address_space** %2, align 8
  %14 = call i32 @vm_free_pages_release(%struct.i915_address_space* %13, i32 1)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.i915_address_space*, %struct.i915_address_space** %2, align 8
  %17 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i64 @pagevec_count(i32* %18)
  %20 = call i32 @GEM_BUG_ON(i64 %19)
  %21 = load %struct.i915_address_space*, %struct.i915_address_space** %2, align 8
  %22 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load %struct.i915_address_space*, %struct.i915_address_space** %2, align 8
  %26 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %25, i32 0, i32 1
  %27 = call i32 @drm_mm_takedown(i32* %26)
  %28 = load %struct.i915_address_space*, %struct.i915_address_space** %2, align 8
  %29 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %28, i32 0, i32 0
  %30 = call i32 @mutex_destroy(i32* %29)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @pagevec_count(i32*) #1

declare dso_local i32 @vm_free_pages_release(%struct.i915_address_space*, i32) #1

declare dso_local i32 @GEM_BUG_ON(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @drm_mm_takedown(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
