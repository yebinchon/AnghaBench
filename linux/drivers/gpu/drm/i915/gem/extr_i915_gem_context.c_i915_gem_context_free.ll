; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_i915_gem_context_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_i915_gem_context_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gem_context = type { i32, i32, i32, i32, i64, i32, i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_gem_context*)* @i915_gem_context_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_gem_context_free(%struct.i915_gem_context* %0) #0 {
  %2 = alloca %struct.i915_gem_context*, align 8
  store %struct.i915_gem_context* %0, %struct.i915_gem_context** %2, align 8
  %3 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %4 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %3, i32 0, i32 9
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %10 = call i32 @i915_gem_context_is_closed(%struct.i915_gem_context* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @GEM_BUG_ON(i32 %13)
  %15 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %16 = call i32 @release_hw_id(%struct.i915_gem_context* %15)
  %17 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %18 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %17, i32 0, i32 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %23 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %22, i32 0, i32 8
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @i915_vm_put(i64 %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %28 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @rcu_access_pointer(i32 %29)
  %31 = call i32 @free_engines(i32 %30)
  %32 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %33 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %32, i32 0, i32 6
  %34 = call i32 @mutex_destroy(i32* %33)
  %35 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %36 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @kfree(i32 %37)
  %39 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %40 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %26
  %44 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %45 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @intel_timeline_put(i64 %46)
  br label %48

48:                                               ; preds = %43, %26
  %49 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %50 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @kfree(i32 %51)
  %53 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %54 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @put_pid(i32 %55)
  %57 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %58 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %57, i32 0, i32 1
  %59 = call i32 @list_del(i32* %58)
  %60 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %61 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %60, i32 0, i32 0
  %62 = call i32 @mutex_destroy(i32* %61)
  %63 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %64 = load i32, i32* @rcu, align 4
  %65 = call i32 @kfree_rcu(%struct.i915_gem_context* %63, i32 %64)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_gem_context_is_closed(%struct.i915_gem_context*) #1

declare dso_local i32 @release_hw_id(%struct.i915_gem_context*) #1

declare dso_local i32 @i915_vm_put(i64) #1

declare dso_local i32 @free_engines(i32) #1

declare dso_local i32 @rcu_access_pointer(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @intel_timeline_put(i64) #1

declare dso_local i32 @put_pid(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.i915_gem_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
