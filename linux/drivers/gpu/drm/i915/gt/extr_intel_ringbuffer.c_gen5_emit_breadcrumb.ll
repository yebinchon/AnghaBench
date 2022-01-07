; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_gen5_emit_breadcrumb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_gen5_emit_breadcrumb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@I915_GEM_HWS_SEQNO_ADDR = common dso_local global i64 0, align 8
@MI_FLUSH = common dso_local global i32 0, align 4
@GEN5_WA_STORES = common dso_local global i32 0, align 4
@MI_STORE_DWORD_INDEX = common dso_local global i32 0, align 4
@MI_USER_INTERRUPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.i915_request*, i32*)* @gen5_emit_breadcrumb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gen5_emit_breadcrumb(%struct.i915_request* %0, i32* %1) #0 {
  %3 = alloca %struct.i915_request*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.i915_request* %0, %struct.i915_request** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %7 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %6, i32 0, i32 3
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %12 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %11, i32 0, i32 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %10, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @GEM_BUG_ON(i32 %18)
  %20 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %21 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %20, i32 0, i32 3
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @offset_in_page(i32 %24)
  %26 = load i64, i64* @I915_GEM_HWS_SEQNO_ADDR, align 8
  %27 = icmp ne i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @GEM_BUG_ON(i32 %28)
  %30 = load i32, i32* @MI_FLUSH, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %4, align 8
  store i32 %30, i32* %31, align 4
  %33 = load i32, i32* @GEN5_WA_STORES, align 4
  %34 = icmp slt i32 %33, 1
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUILD_BUG_ON(i32 %35)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %56, %2
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @GEN5_WA_STORES, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load i32, i32* @MI_STORE_DWORD_INDEX, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %4, align 8
  store i32 %42, i32* %43, align 4
  %45 = load i64, i64* @I915_GEM_HWS_SEQNO_ADDR, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %4, align 8
  store i32 %46, i32* %47, align 4
  %49 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %50 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %4, align 8
  store i32 %53, i32* %54, align 4
  br label %56

56:                                               ; preds = %41
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %37

59:                                               ; preds = %37
  %60 = load i64, i64* @MI_USER_INTERRUPT, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %4, align 8
  store i32 %61, i32* %62, align 4
  %64 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @intel_ring_offset(%struct.i915_request* %64, i32* %65)
  %67 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %68 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %70 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %73 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @assert_ring_tail_valid(i32 %71, i32 %74)
  %76 = load i32*, i32** %4, align 8
  ret i32* %76
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i64 @offset_in_page(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @intel_ring_offset(%struct.i915_request*, i32*) #1

declare dso_local i32 @assert_ring_tail_valid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
