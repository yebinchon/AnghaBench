; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_active.c_i915_active_trygrab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_active.c_i915_active_trygrab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_active = type { i32, i32 }

@I915_ACTIVE_GRAB_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_active_trygrab(%struct.i915_active* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_active*, align 8
  store %struct.i915_active* %0, %struct.i915_active** %3, align 8
  %4 = load %struct.i915_active*, %struct.i915_active** %3, align 8
  %5 = call i32 @debug_active_assert(%struct.i915_active* %4)
  %6 = load i32, i32* @I915_ACTIVE_GRAB_BIT, align 4
  %7 = load %struct.i915_active*, %struct.i915_active** %3, align 8
  %8 = getelementptr inbounds %struct.i915_active, %struct.i915_active* %7, i32 0, i32 1
  %9 = call i64 @test_and_set_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

12:                                               ; preds = %1
  %13 = load %struct.i915_active*, %struct.i915_active** %3, align 8
  %14 = getelementptr inbounds %struct.i915_active, %struct.i915_active* %13, i32 0, i32 0
  %15 = call i32 @atomic_add_unless(i32* %14, i32 1, i32 0)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load %struct.i915_active*, %struct.i915_active** %3, align 8
  %19 = call i32 @__active_ungrab(%struct.i915_active* %18)
  store i32 0, i32* %2, align 4
  br label %21

20:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %17, %11
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @debug_active_assert(%struct.i915_active*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i32 @__active_ungrab(%struct.i915_active*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
