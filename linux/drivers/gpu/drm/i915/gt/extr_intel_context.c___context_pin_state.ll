; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_context.c___context_pin_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_context.c___context_pin_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PIN_OFFSET_BIAS = common dso_local global i32 0, align 4
@PIN_HIGH = common dso_local global i32 0, align 4
@PIN_GLOBAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_vma*)* @__context_pin_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__context_pin_state(%struct.i915_vma* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_vma*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i915_vma* %0, %struct.i915_vma** %3, align 8
  %6 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %7 = call i32 @i915_ggtt_pin_bias(%struct.i915_vma* %6)
  %8 = load i32, i32* @PIN_OFFSET_BIAS, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @PIN_HIGH, align 4
  %11 = load i32, i32* @PIN_GLOBAL, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @i915_vma_pin(%struct.i915_vma* %15, i32 0, i32 0, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %30

22:                                               ; preds = %1
  %23 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %24 = call i32 @i915_vma_make_unshrinkable(%struct.i915_vma* %23)
  %25 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %26 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %22, %20
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @i915_ggtt_pin_bias(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_pin(%struct.i915_vma*, i32, i32, i32) #1

declare dso_local i32 @i915_vma_make_unshrinkable(%struct.i915_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
