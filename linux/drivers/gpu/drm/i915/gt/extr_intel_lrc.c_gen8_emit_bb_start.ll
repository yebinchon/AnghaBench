; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_gen8_emit_bb_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_gen8_emit_bb_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32 }

@MI_ARB_ON_OFF = common dso_local global i32 0, align 4
@MI_ARB_DISABLE = common dso_local global i32 0, align 4
@MI_BATCH_BUFFER_START_GEN8 = common dso_local global i32 0, align 4
@I915_DISPATCH_SECURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*, i32, i32, i32)* @gen8_emit_bb_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen8_emit_bb_start(%struct.i915_request* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i915_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.i915_request* %0, %struct.i915_request** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %12 = call i32* @intel_ring_begin(%struct.i915_request* %11, i32 4)
  store i32* %12, i32** %10, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = call i64 @IS_ERR(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32*, i32** %10, align 8
  %18 = call i32 @PTR_ERR(i32* %17)
  store i32 %18, i32* %5, align 4
  br label %49

19:                                               ; preds = %4
  %20 = load i32, i32* @MI_ARB_ON_OFF, align 4
  %21 = load i32, i32* @MI_ARB_DISABLE, align 4
  %22 = or i32 %20, %21
  %23 = load i32*, i32** %10, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %10, align 8
  store i32 %22, i32* %23, align 4
  %25 = load i32, i32* @MI_BATCH_BUFFER_START_GEN8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @I915_DISPATCH_SECURE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %33

31:                                               ; preds = %19
  %32 = call i32 @BIT(i32 8)
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i32 [ 0, %30 ], [ %32, %31 ]
  %35 = or i32 %25, %34
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %10, align 8
  store i32 %35, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @lower_32_bits(i32 %38)
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %10, align 8
  store i32 %39, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @upper_32_bits(i32 %42)
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %10, align 8
  store i32 %43, i32* %44, align 4
  %46 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @intel_ring_advance(%struct.i915_request* %46, i32* %47)
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %33, %16
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32* @intel_ring_begin(%struct.i915_request*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @intel_ring_advance(%struct.i915_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
