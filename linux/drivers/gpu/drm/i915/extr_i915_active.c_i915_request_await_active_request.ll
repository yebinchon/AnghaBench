; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_active.c_i915_request_await_active_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_active.c_i915_request_await_active_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i915_active_request = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_request_await_active_request(%struct.i915_request* %0, %struct.i915_active_request* %1) #0 {
  %3 = alloca %struct.i915_request*, align 8
  %4 = alloca %struct.i915_active_request*, align 8
  %5 = alloca %struct.i915_request*, align 8
  store %struct.i915_request* %0, %struct.i915_request** %3, align 8
  store %struct.i915_active_request* %1, %struct.i915_active_request** %4, align 8
  %6 = load %struct.i915_active_request*, %struct.i915_active_request** %4, align 8
  %7 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %8 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call %struct.i915_request* @i915_active_request_raw(%struct.i915_active_request* %6, i32* %11)
  store %struct.i915_request* %12, %struct.i915_request** %5, align 8
  %13 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %14 = icmp ne %struct.i915_request* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %17 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %18 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %17, i32 0, i32 0
  %19 = call i32 @i915_request_await_dma_fence(%struct.i915_request* %16, i32* %18)
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %15
  %22 = phi i32 [ %19, %15 ], [ 0, %20 ]
  ret i32 %22
}

declare dso_local %struct.i915_request* @i915_active_request_raw(%struct.i915_active_request*, i32*) #1

declare dso_local i32 @i915_request_await_dma_fence(%struct.i915_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
