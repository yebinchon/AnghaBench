; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_intel_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_intel_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@cherryview_irq_handler = common dso_local global i32 0, align 4
@valleyview_irq_handler = common dso_local global i32 0, align 4
@i965_irq_handler = common dso_local global i32 0, align 4
@i915_irq_handler = common dso_local global i32 0, align 4
@i8xx_irq_handler = common dso_local global i32 0, align 4
@gen11_irq_handler = common dso_local global i32 0, align 4
@gen8_irq_handler = common dso_local global i32 0, align 4
@ironlake_irq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @intel_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_irq_handler(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %5 = call i64 @HAS_GMCH(%struct.drm_i915_private* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %1
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i32, i32* @cherryview_irq_handler, align 4
  store i32 %12, i32* %2, align 4
  br label %47

13:                                               ; preds = %7
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @valleyview_irq_handler, align 4
  store i32 %18, i32* %2, align 4
  br label %47

19:                                               ; preds = %13
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %21 = call i64 @IS_GEN(%struct.drm_i915_private* %20, i32 4)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @i965_irq_handler, align 4
  store i32 %24, i32* %2, align 4
  br label %47

25:                                               ; preds = %19
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %27 = call i64 @IS_GEN(%struct.drm_i915_private* %26, i32 3)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @i915_irq_handler, align 4
  store i32 %30, i32* %2, align 4
  br label %47

31:                                               ; preds = %25
  %32 = load i32, i32* @i8xx_irq_handler, align 4
  store i32 %32, i32* %2, align 4
  br label %47

33:                                               ; preds = %1
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %35 = call i32 @INTEL_GEN(%struct.drm_i915_private* %34)
  %36 = icmp sge i32 %35, 11
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @gen11_irq_handler, align 4
  store i32 %38, i32* %2, align 4
  br label %47

39:                                               ; preds = %33
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %41 = call i32 @INTEL_GEN(%struct.drm_i915_private* %40)
  %42 = icmp sge i32 %41, 8
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @gen8_irq_handler, align 4
  store i32 %44, i32* %2, align 4
  br label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @ironlake_irq_handler, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %43, %37, %31, %29, %23, %17, %11
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @HAS_GMCH(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
