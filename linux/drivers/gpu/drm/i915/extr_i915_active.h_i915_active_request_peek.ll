; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_active.h_i915_active_request_peek.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_active.h_i915_active_request_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32 }
%struct.i915_active_request = type { i32 }
%struct.mutex = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_request* (%struct.i915_active_request*, %struct.mutex*)* @i915_active_request_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_request* @i915_active_request_peek(%struct.i915_active_request* %0, %struct.mutex* %1) #0 {
  %3 = alloca %struct.i915_request*, align 8
  %4 = alloca %struct.i915_active_request*, align 8
  %5 = alloca %struct.mutex*, align 8
  %6 = alloca %struct.i915_request*, align 8
  store %struct.i915_active_request* %0, %struct.i915_active_request** %4, align 8
  store %struct.mutex* %1, %struct.mutex** %5, align 8
  %7 = load %struct.i915_active_request*, %struct.i915_active_request** %4, align 8
  %8 = load %struct.mutex*, %struct.mutex** %5, align 8
  %9 = call %struct.i915_request* @i915_active_request_raw(%struct.i915_active_request* %7, %struct.mutex* %8)
  store %struct.i915_request* %9, %struct.i915_request** %6, align 8
  %10 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %11 = icmp ne %struct.i915_request* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %14 = call i64 @i915_request_completed(%struct.i915_request* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %2
  store %struct.i915_request* null, %struct.i915_request** %3, align 8
  br label %19

17:                                               ; preds = %12
  %18 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  store %struct.i915_request* %18, %struct.i915_request** %3, align 8
  br label %19

19:                                               ; preds = %17, %16
  %20 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  ret %struct.i915_request* %20
}

declare dso_local %struct.i915_request* @i915_active_request_raw(%struct.i915_active_request*, %struct.mutex*) #1

declare dso_local i64 @i915_request_completed(%struct.i915_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
