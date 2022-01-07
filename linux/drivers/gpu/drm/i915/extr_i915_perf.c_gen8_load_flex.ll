; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_gen8_load_flex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_gen8_load_flex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32 }
%struct.intel_context = type { i32 }
%struct.flex = type { i32, i32 }

@MI_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*, %struct.intel_context*, %struct.flex*, i32)* @gen8_load_flex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen8_load_flex(%struct.i915_request* %0, %struct.intel_context* %1, %struct.flex* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i915_request*, align 8
  %7 = alloca %struct.intel_context*, align 8
  %8 = alloca %struct.flex*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.i915_request* %0, %struct.i915_request** %6, align 8
  store %struct.intel_context* %1, %struct.intel_context** %7, align 8
  store %struct.flex* %2, %struct.flex** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ugt i32 %14, 63
  br label %16

16:                                               ; preds = %13, %4
  %17 = phi i1 [ true, %4 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @GEM_BUG_ON(i32 %18)
  %20 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = mul i32 2, %21
  %23 = add i32 %22, 2
  %24 = call i32* @intel_ring_begin(%struct.i915_request* %20, i32 %23)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call i64 @IS_ERR(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @PTR_ERR(i32* %29)
  store i32 %30, i32* %5, align 4
  br label %61

31:                                               ; preds = %16
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @MI_LOAD_REGISTER_IMM(i32 %32)
  %34 = load i32*, i32** %10, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %10, align 8
  store i32 %33, i32* %34, align 4
  br label %36

36:                                               ; preds = %48, %31
  %37 = load %struct.flex*, %struct.flex** %8, align 8
  %38 = getelementptr inbounds %struct.flex, %struct.flex* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @i915_mmio_reg_offset(i32 %39)
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %10, align 8
  store i32 %40, i32* %41, align 4
  %43 = load %struct.flex*, %struct.flex** %8, align 8
  %44 = getelementptr inbounds %struct.flex, %struct.flex* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %10, align 8
  store i32 %45, i32* %46, align 4
  br label %48

48:                                               ; preds = %36
  %49 = load %struct.flex*, %struct.flex** %8, align 8
  %50 = getelementptr inbounds %struct.flex, %struct.flex* %49, i32 1
  store %struct.flex* %50, %struct.flex** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = add i32 %51, -1
  store i32 %52, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %36, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @MI_NOOP, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %10, align 8
  store i32 %55, i32* %56, align 4
  %58 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @intel_ring_advance(%struct.i915_request* %58, i32* %59)
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %54, %28
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32* @intel_ring_begin(%struct.i915_request*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @MI_LOAD_REGISTER_IMM(i32) #1

declare dso_local i32 @i915_mmio_reg_offset(i32) #1

declare dso_local i32 @intel_ring_advance(%struct.i915_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
