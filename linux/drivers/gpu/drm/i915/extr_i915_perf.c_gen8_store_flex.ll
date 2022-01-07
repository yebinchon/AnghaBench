; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_gen8_store_flex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_gen8_store_flex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32 }
%struct.intel_context = type { i32 }
%struct.flex = type { i32, i32 }

@LRC_STATE_PN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MI_STORE_DWORD_IMM_GEN4 = common dso_local global i32 0, align 4
@MI_USE_GGTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*, %struct.intel_context*, %struct.flex*, i32)* @gen8_store_flex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen8_store_flex(%struct.i915_request* %0, %struct.intel_context* %1, %struct.flex* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i915_request*, align 8
  %7 = alloca %struct.intel_context*, align 8
  %8 = alloca %struct.flex*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.i915_request* %0, %struct.i915_request** %6, align 8
  store %struct.intel_context* %1, %struct.intel_context** %7, align 8
  store %struct.flex* %2, %struct.flex** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %13 = load i32, i32* %9, align 4
  %14 = mul i32 4, %13
  %15 = call i32* @intel_ring_begin(%struct.i915_request* %12, i32 %14)
  store i32* %15, i32** %11, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = call i64 @IS_ERR(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @PTR_ERR(i32* %20)
  store i32 %21, i32* %5, align 4
  br label %66

22:                                               ; preds = %4
  %23 = load %struct.intel_context*, %struct.intel_context** %7, align 8
  %24 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @i915_ggtt_offset(i32 %25)
  %27 = load i32, i32* @LRC_STATE_PN, align 4
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = mul nsw i32 %27, %28
  %30 = add nsw i32 %26, %29
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %56, %22
  %32 = load i32, i32* @MI_STORE_DWORD_IMM_GEN4, align 4
  %33 = load i32, i32* @MI_USE_GGTT, align 4
  %34 = or i32 %32, %33
  %35 = load i32*, i32** %11, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %11, align 8
  store i32 %34, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.flex*, %struct.flex** %8, align 8
  %40 = getelementptr inbounds %struct.flex, %struct.flex* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = add i64 %38, %44
  %46 = trunc i64 %45 to i32
  %47 = load i32*, i32** %11, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %11, align 8
  store i32 %46, i32* %47, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %11, align 8
  store i32 0, i32* %49, align 4
  %51 = load %struct.flex*, %struct.flex** %8, align 8
  %52 = getelementptr inbounds %struct.flex, %struct.flex* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %11, align 8
  store i32 %53, i32* %54, align 4
  br label %56

56:                                               ; preds = %31
  %57 = load %struct.flex*, %struct.flex** %8, align 8
  %58 = getelementptr inbounds %struct.flex, %struct.flex* %57, i32 1
  store %struct.flex* %58, %struct.flex** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = add i32 %59, -1
  store i32 %60, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %31, label %62

62:                                               ; preds = %56
  %63 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @intel_ring_advance(%struct.i915_request* %63, i32* %64)
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %62, %19
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32* @intel_ring_begin(%struct.i915_request*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @i915_ggtt_offset(i32) #1

declare dso_local i32 @intel_ring_advance(%struct.i915_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
