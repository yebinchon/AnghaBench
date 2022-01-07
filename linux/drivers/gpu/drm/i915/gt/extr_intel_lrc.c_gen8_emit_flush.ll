; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_gen8_emit_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_gen8_emit_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MI_FLUSH_DW = common dso_local global i32 0, align 4
@MI_FLUSH_DW_STORE_INDEX = common dso_local global i32 0, align 4
@MI_FLUSH_DW_OP_STOREDW = common dso_local global i32 0, align 4
@EMIT_INVALIDATE = common dso_local global i32 0, align 4
@MI_INVALIDATE_TLB = common dso_local global i32 0, align 4
@VIDEO_DECODE_CLASS = common dso_local global i64 0, align 8
@MI_INVALIDATE_BSD = common dso_local global i32 0, align 4
@I915_GEM_HWS_SCRATCH_ADDR = common dso_local global i32 0, align 4
@MI_FLUSH_DW_USE_GTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*, i32)* @gen8_emit_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen8_emit_flush(%struct.i915_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i915_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.i915_request* %0, %struct.i915_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %9 = call i32* @intel_ring_begin(%struct.i915_request* %8, i32 4)
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = call i64 @IS_ERR(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @PTR_ERR(i32* %14)
  store i32 %15, i32* %3, align 4
  br label %60

16:                                               ; preds = %2
  %17 = load i32, i32* @MI_FLUSH_DW, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @MI_FLUSH_DW_STORE_INDEX, align 4
  %20 = load i32, i32* @MI_FLUSH_DW_OP_STOREDW, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @EMIT_INVALIDATE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %16
  %29 = load i32, i32* @MI_INVALIDATE_TLB, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %33 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @VIDEO_DECODE_CLASS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load i32, i32* @MI_INVALIDATE_BSD, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %39, %28
  br label %44

44:                                               ; preds = %43, %16
  %45 = load i32, i32* %6, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  %48 = load i32, i32* @I915_GEM_HWS_SCRATCH_ADDR, align 4
  %49 = load i32, i32* @MI_FLUSH_DW_USE_GTT, align 4
  %50 = or i32 %48, %49
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %7, align 8
  store i32 0, i32* %53, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %7, align 8
  store i32 0, i32* %55, align 4
  %57 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @intel_ring_advance(%struct.i915_request* %57, i32* %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %44, %13
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32* @intel_ring_begin(%struct.i915_request*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @intel_ring_advance(%struct.i915_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
