; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_gen8_emit_rpcs_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_gen8_emit_rpcs_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32 }
%struct.intel_context = type { i32 }
%struct.intel_sseu = type { i32 }

@LRC_STATE_PN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@CTX_R_PWR_CLK_STATE = common dso_local global i32 0, align 4
@MI_STORE_DWORD_IMM_GEN4 = common dso_local global i32 0, align 4
@MI_USE_GGTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*, %struct.intel_context*, i32)* @gen8_emit_rpcs_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen8_emit_rpcs_config(%struct.i915_request* %0, %struct.intel_context* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_sseu, align 4
  %6 = alloca %struct.i915_request*, align 8
  %7 = alloca %struct.intel_context*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = getelementptr inbounds %struct.intel_sseu, %struct.intel_sseu* %5, i32 0, i32 0
  store i32 %2, i32* %10, align 4
  store %struct.i915_request* %0, %struct.i915_request** %6, align 8
  store %struct.intel_context* %1, %struct.intel_context** %7, align 8
  %11 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %12 = call i32* @intel_ring_begin(%struct.i915_request* %11, i32 4)
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = call i64 @IS_ERR(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @PTR_ERR(i32* %17)
  store i32 %18, i32* %4, align 4
  br label %56

19:                                               ; preds = %3
  %20 = load %struct.intel_context*, %struct.intel_context** %7, align 8
  %21 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @i915_ggtt_offset(i32 %22)
  %24 = load i32, i32* @LRC_STATE_PN, align 4
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %23, %27
  %29 = load i32, i32* @CTX_R_PWR_CLK_STATE, align 4
  %30 = add nsw i32 %29, 1
  %31 = mul nsw i32 %30, 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %28, %32
  store i64 %33, i64* %8, align 8
  %34 = load i32, i32* @MI_STORE_DWORD_IMM_GEN4, align 4
  %35 = load i32, i32* @MI_USE_GGTT, align 4
  %36 = or i32 %34, %35
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @lower_32_bits(i64 %39)
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @upper_32_bits(i64 %43)
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  %47 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %48 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @intel_sseu_make_rpcs(i32 %49, %struct.intel_sseu* %5)
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  %53 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @intel_ring_advance(%struct.i915_request* %53, i32* %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %19, %16
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32* @intel_ring_begin(%struct.i915_request*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @i915_ggtt_offset(i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @intel_sseu_make_rpcs(i32, %struct.intel_sseu*) #1

declare dso_local i32 @intel_ring_advance(%struct.i915_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
