; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_i9xx_emit_breadcrumb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_i9xx_emit_breadcrumb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@I915_GEM_HWS_SEQNO_ADDR = common dso_local global i64 0, align 8
@MI_FLUSH = common dso_local global i32 0, align 4
@MI_STORE_DWORD_INDEX = common dso_local global i32 0, align 4
@MI_USER_INTERRUPT = common dso_local global i64 0, align 8
@MI_NOOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.i915_request*, i32*)* @i9xx_emit_breadcrumb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @i9xx_emit_breadcrumb(%struct.i915_request* %0, i32* %1) #0 {
  %3 = alloca %struct.i915_request*, align 8
  %4 = alloca i32*, align 8
  store %struct.i915_request* %0, %struct.i915_request** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %6 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %5, i32 0, i32 3
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %11 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %10, i32 0, i32 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %9, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @GEM_BUG_ON(i32 %17)
  %19 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %20 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %19, i32 0, i32 3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @offset_in_page(i32 %23)
  %25 = load i64, i64* @I915_GEM_HWS_SEQNO_ADDR, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @GEM_BUG_ON(i32 %27)
  %29 = load i32, i32* @MI_FLUSH, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %4, align 8
  store i32 %29, i32* %30, align 4
  %32 = load i32, i32* @MI_STORE_DWORD_INDEX, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %4, align 8
  store i32 %32, i32* %33, align 4
  %35 = load i64, i64* @I915_GEM_HWS_SEQNO_ADDR, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %4, align 8
  store i32 %36, i32* %37, align 4
  %39 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %40 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %4, align 8
  store i32 %43, i32* %44, align 4
  %46 = load i64, i64* @MI_USER_INTERRUPT, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %4, align 8
  store i32 %47, i32* %48, align 4
  %50 = load i64, i64* @MI_NOOP, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %4, align 8
  store i32 %51, i32* %52, align 4
  %54 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @intel_ring_offset(%struct.i915_request* %54, i32* %55)
  %57 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %58 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %60 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %63 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @assert_ring_tail_valid(i32 %61, i32 %64)
  %66 = load i32*, i32** %4, align 8
  ret i32* %66
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i64 @offset_in_page(i32) #1

declare dso_local i32 @intel_ring_offset(%struct.i915_request*, i32*) #1

declare dso_local i32 @assert_ring_tail_valid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
