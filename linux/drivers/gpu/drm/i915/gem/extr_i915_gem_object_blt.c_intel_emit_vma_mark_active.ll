; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_object_blt.c_intel_emit_vma_mark_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_object_blt.c_intel_emit_vma_mark_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { i32, i32 }
%struct.i915_request = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_emit_vma_mark_active(%struct.i915_vma* %0, %struct.i915_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i915_vma*, align 8
  %5 = alloca %struct.i915_request*, align 8
  %6 = alloca i32, align 4
  store %struct.i915_vma* %0, %struct.i915_vma** %4, align 8
  store %struct.i915_request* %1, %struct.i915_request** %5, align 8
  %7 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %8 = call i32 @i915_vma_lock(%struct.i915_vma* %7)
  %9 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %10 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %11 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @i915_request_await_object(%struct.i915_request* %9, i32 %12, i32 0)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %18 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %19 = call i32 @i915_vma_move_to_active(%struct.i915_vma* %17, %struct.i915_request* %18, i32 0)
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %22 = call i32 @i915_vma_unlock(%struct.i915_vma* %21)
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %34

28:                                               ; preds = %20
  %29 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %30 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %33 = call i32 @intel_engine_pool_mark_active(i32 %31, %struct.i915_request* %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %28, %26
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @i915_vma_lock(%struct.i915_vma*) #1

declare dso_local i32 @i915_request_await_object(%struct.i915_request*, i32, i32) #1

declare dso_local i32 @i915_vma_move_to_active(%struct.i915_vma*, %struct.i915_request*, i32) #1

declare dso_local i32 @i915_vma_unlock(%struct.i915_vma*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @intel_engine_pool_mark_active(i32, %struct.i915_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
