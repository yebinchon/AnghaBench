; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_vm_free_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_vm_free_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_address_space = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.page = type { i32 }

@PAGEVEC_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_address_space*, %struct.page*)* @vm_free_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_free_page(%struct.i915_address_space* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.i915_address_space*, align 8
  %4 = alloca %struct.page*, align 8
  store %struct.i915_address_space* %0, %struct.i915_address_space** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %5 = call i32 (...) @might_sleep()
  %6 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %7 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  br label %10

10:                                               ; preds = %17, %2
  %11 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %12 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = call i32 @pagevec_space(i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %19 = call i32 @vm_free_pages_release(%struct.i915_address_space* %18, i32 0)
  br label %10

20:                                               ; preds = %10
  %21 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %22 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = call i64 @pagevec_count(i32* %23)
  %25 = load i64, i64* @PAGEVEC_SIZE, align 8
  %26 = icmp sge i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @GEM_BUG_ON(i32 %27)
  %29 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %30 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load %struct.page*, %struct.page** %4, align 8
  %33 = call i32 @pagevec_add(i32* %31, %struct.page* %32)
  %34 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %35 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pagevec_space(i32*) #1

declare dso_local i32 @vm_free_pages_release(%struct.i915_address_space*, i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i64 @pagevec_count(i32*) #1

declare dso_local i32 @pagevec_add(i32*, %struct.page*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
