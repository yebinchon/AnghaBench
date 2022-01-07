; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_ring_request_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_ring_request_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.i915_request*, i32)* }
%struct.TYPE_3__ = type { i32 }

@LEGACY_REQUEST_SIZE = common dso_local global i64 0, align 8
@EMIT_INVALIDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*)* @ring_request_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ring_request_alloc(%struct.i915_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_request*, align 8
  %4 = alloca i32, align 4
  store %struct.i915_request* %0, %struct.i915_request** %3, align 8
  %5 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %6 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @intel_context_is_pinned(i32 %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @GEM_BUG_ON(i32 %11)
  %13 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %14 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @GEM_BUG_ON(i32 %17)
  %19 = load i64, i64* @LEGACY_REQUEST_SIZE, align 8
  %20 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %21 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %19
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 8
  %26 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %27 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (%struct.i915_request*, i32)*, i32 (%struct.i915_request*, i32)** %29, align 8
  %31 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %32 = load i32, i32* @EMIT_INVALIDATE, align 4
  %33 = call i32 %30(%struct.i915_request* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %53

38:                                               ; preds = %1
  %39 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %40 = call i32 @switch_context(%struct.i915_request* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %53

45:                                               ; preds = %38
  %46 = load i64, i64* @LEGACY_REQUEST_SIZE, align 8
  %47 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %48 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %50, %46
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 8
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %45, %43, %36
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @intel_context_is_pinned(i32) #1

declare dso_local i32 @switch_context(%struct.i915_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
