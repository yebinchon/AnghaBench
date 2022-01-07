; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_request.c_empty_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_request.c_empty_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32 }
%struct.intel_engine_cs = type { i32 (%struct.i915_request.0*, i32, i32, i32)*, i32 }
%struct.i915_request.0 = type opaque
%struct.i915_vma = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@I915_DISPATCH_SECURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_request* (%struct.intel_engine_cs*, %struct.i915_vma*)* @empty_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_request* @empty_request(%struct.intel_engine_cs* %0, %struct.i915_vma* %1) #0 {
  %3 = alloca %struct.i915_request*, align 8
  %4 = alloca %struct.intel_engine_cs*, align 8
  %5 = alloca %struct.i915_vma*, align 8
  %6 = alloca %struct.i915_request*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %4, align 8
  store %struct.i915_vma* %1, %struct.i915_vma** %5, align 8
  %8 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %9 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.i915_request* @i915_request_create(i32 %10)
  store %struct.i915_request* %11, %struct.i915_request** %6, align 8
  %12 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %13 = call i64 @IS_ERR(%struct.i915_request* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  store %struct.i915_request* %16, %struct.i915_request** %3, align 8
  br label %49

17:                                               ; preds = %2
  %18 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %19 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %18, i32 0, i32 0
  %20 = load i32 (%struct.i915_request.0*, i32, i32, i32)*, i32 (%struct.i915_request.0*, i32, i32, i32)** %19, align 8
  %21 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %22 = bitcast %struct.i915_request* %21 to %struct.i915_request.0*
  %23 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %24 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %28 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @I915_DISPATCH_SECURE, align 4
  %32 = call i32 %20(%struct.i915_request.0* %22, i32 %26, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %17
  br label %37

36:                                               ; preds = %17
  br label %37

37:                                               ; preds = %36, %35
  %38 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %39 = call i32 @i915_request_add(%struct.i915_request* %38)
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.i915_request* @ERR_PTR(i32 %43)
  br label %47

45:                                               ; preds = %37
  %46 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  br label %47

47:                                               ; preds = %45, %42
  %48 = phi %struct.i915_request* [ %44, %42 ], [ %46, %45 ]
  store %struct.i915_request* %48, %struct.i915_request** %3, align 8
  br label %49

49:                                               ; preds = %47, %15
  %50 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  ret %struct.i915_request* %50
}

declare dso_local %struct.i915_request* @i915_request_create(i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_request*) #1

declare dso_local i32 @i915_request_add(%struct.i915_request*) #1

declare dso_local %struct.i915_request* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
