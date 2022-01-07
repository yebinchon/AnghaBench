; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_address_space_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_address_space_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_address_space = type { i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@__i915_vm_release = common dso_local global i32 0, align 4
@I915_COLOR_UNEVICTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_address_space*, i32)* @i915_address_space_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_address_space_init(%struct.i915_address_space* %0, i32 %1) #0 {
  %3 = alloca %struct.i915_address_space*, align 8
  %4 = alloca i32, align 4
  store %struct.i915_address_space* %0, %struct.i915_address_space** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %6 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %5, i32 0, i32 8
  %7 = call i32 @kref_init(i32* %6)
  %8 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %9 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %8, i32 0, i32 7
  %10 = load i32, i32* @__i915_vm_release, align 4
  %11 = call i32 @INIT_RCU_WORK(i32* %9, i32 %10)
  %12 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %13 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %12, i32 0, i32 5
  %14 = call i32 @mutex_init(i32* %13)
  %15 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %16 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %15, i32 0, i32 5
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @lockdep_set_subclass(i32* %16, i32 %17)
  %19 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %20 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %23 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %22, i32 0, i32 5
  %24 = call i32 @i915_gem_shrinker_taints_mutex(i32 %21, i32* %23)
  %25 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %26 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @GEM_BUG_ON(i32 %30)
  %32 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %33 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %32, i32 0, i32 3
  %34 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %35 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @drm_mm_init(%struct.TYPE_4__* %33, i32 0, i32 %36)
  %38 = load i32, i32* @I915_COLOR_UNEVICTABLE, align 4
  %39 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %40 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  %43 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %44 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %43, i32 0, i32 2
  %45 = call i32 @stash_init(i32* %44)
  %46 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %47 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %46, i32 0, i32 1
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %50 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %49, i32 0, i32 0
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  ret void
}

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_RCU_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lockdep_set_subclass(i32*, i32) #1

declare dso_local i32 @i915_gem_shrinker_taints_mutex(i32, i32*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @drm_mm_init(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @stash_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
