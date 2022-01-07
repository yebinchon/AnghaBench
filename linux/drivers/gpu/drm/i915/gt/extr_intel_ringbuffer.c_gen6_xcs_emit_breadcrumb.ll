; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_gen6_xcs_emit_breadcrumb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_gen6_xcs_emit_breadcrumb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@I915_GEM_HWS_SEQNO_ADDR = common dso_local global i32 0, align 4
@MI_FLUSH_DW = common dso_local global i32 0, align 4
@MI_FLUSH_DW_OP_STOREDW = common dso_local global i32 0, align 4
@MI_FLUSH_DW_STORE_INDEX = common dso_local global i32 0, align 4
@MI_FLUSH_DW_USE_GTT = common dso_local global i32 0, align 4
@MI_USER_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.i915_request*, i32*)* @gen6_xcs_emit_breadcrumb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gen6_xcs_emit_breadcrumb(%struct.i915_request* %0, i32* %1) #0 {
  %3 = alloca %struct.i915_request*, align 8
  %4 = alloca i32*, align 8
  store %struct.i915_request* %0, %struct.i915_request** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %6 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %5, i32 0, i32 3
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %11 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %10, i32 0, i32 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %9, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @GEM_BUG_ON(i32 %17)
  %19 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %20 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %19, i32 0, i32 3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @offset_in_page(i32 %23)
  %25 = load i32, i32* @I915_GEM_HWS_SEQNO_ADDR, align 4
  %26 = icmp ne i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @GEM_BUG_ON(i32 %27)
  %29 = load i32, i32* @MI_FLUSH_DW, align 4
  %30 = load i32, i32* @MI_FLUSH_DW_OP_STOREDW, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @MI_FLUSH_DW_STORE_INDEX, align 4
  %33 = or i32 %31, %32
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %4, align 8
  store i32 %33, i32* %34, align 4
  %36 = load i32, i32* @I915_GEM_HWS_SEQNO_ADDR, align 4
  %37 = load i32, i32* @MI_FLUSH_DW_USE_GTT, align 4
  %38 = or i32 %36, %37
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %4, align 8
  store i32 %38, i32* %39, align 4
  %41 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %42 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %4, align 8
  store i32 %44, i32* %45, align 4
  %47 = load i32, i32* @MI_USER_INTERRUPT, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %4, align 8
  store i32 %47, i32* %48, align 4
  %50 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @intel_ring_offset(%struct.i915_request* %50, i32* %51)
  %53 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %54 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %56 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %59 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @assert_ring_tail_valid(i32 %57, i32 %60)
  %62 = load i32*, i32** %4, align 8
  ret i32* %62
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local i32 @intel_ring_offset(%struct.i915_request*, i32*) #1

declare dso_local i32 @assert_ring_tail_valid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
