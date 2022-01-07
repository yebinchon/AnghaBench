; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_clone_vm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_clone_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gem_context = type { i32 }
%struct.i915_address_space = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_gem_context*, %struct.i915_gem_context*)* @clone_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clone_vm(%struct.i915_gem_context* %0, %struct.i915_gem_context* %1) #0 {
  %3 = alloca %struct.i915_gem_context*, align 8
  %4 = alloca %struct.i915_gem_context*, align 8
  %5 = alloca %struct.i915_address_space*, align 8
  store %struct.i915_gem_context* %0, %struct.i915_gem_context** %3, align 8
  store %struct.i915_gem_context* %1, %struct.i915_gem_context** %4, align 8
  %6 = call i32 (...) @rcu_read_lock()
  br label %7

7:                                                ; preds = %32, %2
  %8 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %9 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.i915_address_space* @READ_ONCE(i32 %10)
  store %struct.i915_address_space* %11, %struct.i915_address_space** %5, align 8
  %12 = load %struct.i915_address_space*, %struct.i915_address_space** %5, align 8
  %13 = icmp ne %struct.i915_address_space* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  br label %33

15:                                               ; preds = %7
  %16 = load %struct.i915_address_space*, %struct.i915_address_space** %5, align 8
  %17 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %16, i32 0, i32 0
  %18 = call i32 @kref_get_unless_zero(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %32

21:                                               ; preds = %15
  %22 = load %struct.i915_address_space*, %struct.i915_address_space** %5, align 8
  %23 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %24 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.i915_address_space* @READ_ONCE(i32 %25)
  %27 = icmp eq %struct.i915_address_space* %22, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %33

29:                                               ; preds = %21
  %30 = load %struct.i915_address_space*, %struct.i915_address_space** %5, align 8
  %31 = call i32 @i915_vm_put(%struct.i915_address_space* %30)
  br label %32

32:                                               ; preds = %29, %20
  br i1 true, label %7, label %33

33:                                               ; preds = %32, %28, %14
  %34 = call i32 (...) @rcu_read_unlock()
  %35 = load %struct.i915_address_space*, %struct.i915_address_space** %5, align 8
  %36 = icmp ne %struct.i915_address_space* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %39 = load %struct.i915_address_space*, %struct.i915_address_space** %5, align 8
  %40 = call i32 @__assign_ppgtt(%struct.i915_gem_context* %38, %struct.i915_address_space* %39)
  %41 = load %struct.i915_address_space*, %struct.i915_address_space** %5, align 8
  %42 = call i32 @i915_vm_put(%struct.i915_address_space* %41)
  br label %43

43:                                               ; preds = %37, %33
  ret i32 0
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.i915_address_space* @READ_ONCE(i32) #1

declare dso_local i32 @kref_get_unless_zero(i32*) #1

declare dso_local i32 @i915_vm_put(%struct.i915_address_space*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @__assign_ppgtt(%struct.i915_gem_context*, %struct.i915_address_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
