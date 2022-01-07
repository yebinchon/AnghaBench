; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_active.h___i915_active_request_get_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_active.h___i915_active_request_get_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32 }
%struct.i915_active_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_request* (%struct.i915_active_request*)* @__i915_active_request_get_rcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_request* @__i915_active_request_get_rcu(%struct.i915_active_request* %0) #0 {
  %2 = alloca %struct.i915_request*, align 8
  %3 = alloca %struct.i915_active_request*, align 8
  %4 = alloca %struct.i915_request*, align 8
  store %struct.i915_active_request* %0, %struct.i915_active_request** %3, align 8
  br label %5

5:                                                ; preds = %36, %1
  %6 = load %struct.i915_active_request*, %struct.i915_active_request** %3, align 8
  %7 = getelementptr inbounds %struct.i915_active_request, %struct.i915_active_request* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.i915_request* @rcu_dereference(i32 %8)
  store %struct.i915_request* %9, %struct.i915_request** %4, align 8
  %10 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %11 = icmp ne %struct.i915_request* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %5
  %13 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %14 = call i64 @i915_request_completed(%struct.i915_request* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %5
  store %struct.i915_request* null, %struct.i915_request** %2, align 8
  br label %37

17:                                               ; preds = %12
  %18 = call i32 (...) @barrier()
  %19 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %20 = call %struct.i915_request* @i915_request_get_rcu(%struct.i915_request* %19)
  store %struct.i915_request* %20, %struct.i915_request** %4, align 8
  %21 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %22 = icmp ne %struct.i915_request* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %25 = load %struct.i915_active_request*, %struct.i915_active_request** %3, align 8
  %26 = getelementptr inbounds %struct.i915_active_request, %struct.i915_active_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.i915_request* @rcu_access_pointer(i32 %27)
  %29 = icmp eq %struct.i915_request* %24, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23, %17
  %31 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %32 = call %struct.i915_request* @rcu_pointer_handoff(%struct.i915_request* %31)
  store %struct.i915_request* %32, %struct.i915_request** %2, align 8
  br label %37

33:                                               ; preds = %23
  %34 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %35 = call i32 @i915_request_put(%struct.i915_request* %34)
  br label %36

36:                                               ; preds = %33
  br i1 true, label %5, label %37

37:                                               ; preds = %16, %30, %36
  %38 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  ret %struct.i915_request* %38
}

declare dso_local %struct.i915_request* @rcu_dereference(i32) #1

declare dso_local i64 @i915_request_completed(%struct.i915_request*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local %struct.i915_request* @i915_request_get_rcu(%struct.i915_request*) #1

declare dso_local %struct.i915_request* @rcu_access_pointer(i32) #1

declare dso_local %struct.i915_request* @rcu_pointer_handoff(%struct.i915_request*) #1

declare dso_local i32 @i915_request_put(%struct.i915_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
