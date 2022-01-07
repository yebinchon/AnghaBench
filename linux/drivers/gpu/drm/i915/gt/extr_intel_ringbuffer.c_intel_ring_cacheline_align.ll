; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_intel_ring_cacheline_align.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_intel_ring_cacheline_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CACHELINE_BYTES = common dso_local global i32 0, align 4
@CACHELINE_DWORDS = common dso_local global i32 0, align 4
@MI_NOOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_ring_cacheline_align(%struct.i915_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.i915_request* %0, %struct.i915_request** %3, align 8
  %6 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %7 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CACHELINE_BYTES, align 4
  %12 = sub nsw i32 %11, 1
  %13 = and i32 %10, %12
  %14 = sext i32 %13 to i64
  %15 = udiv i64 %14, 4
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

20:                                               ; preds = %1
  %21 = load i32, i32* @CACHELINE_DWORDS, align 4
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 1
  %26 = call i32 @GEM_BUG_ON(i32 %25)
  %27 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i8* @intel_ring_begin(%struct.i915_request* %27, i32 %28)
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @IS_ERR(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @PTR_ERR(i8* %34)
  store i32 %35, i32* %2, align 4
  br label %57

36:                                               ; preds = %20
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* @MI_NOOP, align 4
  %39 = shl i32 %38, 32
  %40 = load i32, i32* @MI_NOOP, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %4, align 4
  %43 = sdiv i32 %42, 2
  %44 = call i32 @memset64(i8* %37, i32 %41, i32 %43)
  %45 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @intel_ring_advance(%struct.i915_request* %45, i8* %46)
  %48 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %49 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CACHELINE_BYTES, align 4
  %54 = sub nsw i32 %53, 1
  %55 = and i32 %52, %54
  %56 = call i32 @GEM_BUG_ON(i32 %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %36, %33, %19
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i8* @intel_ring_begin(%struct.i915_request*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @memset64(i8*, i32, i32) #1

declare dso_local i32 @intel_ring_advance(%struct.i915_request*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
