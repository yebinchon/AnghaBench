; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_i8xx_error_irq_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_i8xx_error_irq_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.intel_uncore }
%struct.intel_uncore = type { i32 }

@EIR = common dso_local global i32 0, align 4
@EMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32*, i32*)* @i8xx_error_irq_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i8xx_error_irq_ack(%struct.drm_i915_private* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.intel_uncore*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  store %struct.intel_uncore* %10, %struct.intel_uncore** %7, align 8
  %11 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %12 = load i32, i32* @EIR, align 4
  %13 = call i32 @intel_uncore_read16(%struct.intel_uncore* %11, i32 %12)
  %14 = load i32*, i32** %5, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %20 = load i32, i32* @EIR, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @intel_uncore_write16(%struct.intel_uncore* %19, i32 %20, i32 %22)
  br label %24

24:                                               ; preds = %18, %3
  %25 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %26 = load i32, i32* @EIR, align 4
  %27 = call i32 @intel_uncore_read16(%struct.intel_uncore* %25, i32 %26)
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %47

33:                                               ; preds = %24
  %34 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %35 = load i32, i32* @EMR, align 4
  %36 = call i32 @intel_uncore_read16(%struct.intel_uncore* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %38 = load i32, i32* @EMR, align 4
  %39 = call i32 @intel_uncore_write16(%struct.intel_uncore* %37, i32 %38, i32 65535)
  %40 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %41 = load i32, i32* @EMR, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %42, %44
  %46 = call i32 @intel_uncore_write16(%struct.intel_uncore* %40, i32 %41, i32 %45)
  br label %47

47:                                               ; preds = %33, %32
  ret void
}

declare dso_local i32 @intel_uncore_read16(%struct.intel_uncore*, i32) #1

declare dso_local i32 @intel_uncore_write16(%struct.intel_uncore*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
