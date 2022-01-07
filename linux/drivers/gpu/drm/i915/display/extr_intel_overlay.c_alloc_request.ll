; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_overlay.c_alloc_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_overlay.c_alloc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32 }
%struct.intel_overlay = type { void (%struct.intel_overlay*)*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_request* (%struct.intel_overlay*, void (%struct.intel_overlay*)*)* @alloc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_request* @alloc_request(%struct.intel_overlay* %0, void (%struct.intel_overlay*)* %1) #0 {
  %3 = alloca %struct.i915_request*, align 8
  %4 = alloca %struct.intel_overlay*, align 8
  %5 = alloca void (%struct.intel_overlay*)*, align 8
  %6 = alloca %struct.i915_request*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_overlay* %0, %struct.intel_overlay** %4, align 8
  store void (%struct.intel_overlay*)* %1, void (%struct.intel_overlay*)** %5, align 8
  %8 = load void (%struct.intel_overlay*)*, void (%struct.intel_overlay*)** %5, align 8
  %9 = load %struct.intel_overlay*, %struct.intel_overlay** %4, align 8
  %10 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %9, i32 0, i32 0
  store void (%struct.intel_overlay*)* %8, void (%struct.intel_overlay*)** %10, align 8
  %11 = load %struct.intel_overlay*, %struct.intel_overlay** %4, align 8
  %12 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.i915_request* @i915_request_create(i32 %13)
  store %struct.i915_request* %14, %struct.i915_request** %6, align 8
  %15 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %16 = call i64 @IS_ERR(%struct.i915_request* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  store %struct.i915_request* %19, %struct.i915_request** %3, align 8
  br label %37

20:                                               ; preds = %2
  %21 = load %struct.intel_overlay*, %struct.intel_overlay** %4, align 8
  %22 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %21, i32 0, i32 1
  %23 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %24 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %27 = call i32 @i915_active_ref(i32* %22, i32 %25, %struct.i915_request* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %32 = call i32 @i915_request_add(%struct.i915_request* %31)
  %33 = load i32, i32* %7, align 4
  %34 = call %struct.i915_request* @ERR_PTR(i32 %33)
  store %struct.i915_request* %34, %struct.i915_request** %3, align 8
  br label %37

35:                                               ; preds = %20
  %36 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  store %struct.i915_request* %36, %struct.i915_request** %3, align 8
  br label %37

37:                                               ; preds = %35, %30, %18
  %38 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  ret %struct.i915_request* %38
}

declare dso_local %struct.i915_request* @i915_request_create(i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_request*) #1

declare dso_local i32 @i915_active_ref(i32*, i32, %struct.i915_request*) #1

declare dso_local i32 @i915_request_add(%struct.i915_request*) #1

declare dso_local %struct.i915_request* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
