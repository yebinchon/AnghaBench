; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_intel_irq_postinstall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_intel_irq_postinstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @intel_irq_postinstall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_irq_postinstall(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %4 = call i64 @HAS_GMCH(%struct.drm_i915_private* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %41

6:                                                ; preds = %1
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %8 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %12 = call i32 @cherryview_irq_postinstall(%struct.drm_i915_private* %11)
  br label %40

13:                                               ; preds = %6
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %15 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %19 = call i32 @valleyview_irq_postinstall(%struct.drm_i915_private* %18)
  br label %39

20:                                               ; preds = %13
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %22 = call i64 @IS_GEN(%struct.drm_i915_private* %21, i32 4)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %26 = call i32 @i965_irq_postinstall(%struct.drm_i915_private* %25)
  br label %38

27:                                               ; preds = %20
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %29 = call i64 @IS_GEN(%struct.drm_i915_private* %28, i32 3)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %33 = call i32 @i915_irq_postinstall(%struct.drm_i915_private* %32)
  br label %37

34:                                               ; preds = %27
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %36 = call i32 @i8xx_irq_postinstall(%struct.drm_i915_private* %35)
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37, %24
  br label %39

39:                                               ; preds = %38, %17
  br label %40

40:                                               ; preds = %39, %10
  br label %60

41:                                               ; preds = %1
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %43 = call i32 @INTEL_GEN(%struct.drm_i915_private* %42)
  %44 = icmp sge i32 %43, 11
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %47 = call i32 @gen11_irq_postinstall(%struct.drm_i915_private* %46)
  br label %59

48:                                               ; preds = %41
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %50 = call i32 @INTEL_GEN(%struct.drm_i915_private* %49)
  %51 = icmp sge i32 %50, 8
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %54 = call i32 @gen8_irq_postinstall(%struct.drm_i915_private* %53)
  br label %58

55:                                               ; preds = %48
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %57 = call i32 @ironlake_irq_postinstall(%struct.drm_i915_private* %56)
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58, %45
  br label %60

60:                                               ; preds = %59, %40
  ret void
}

declare dso_local i64 @HAS_GMCH(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @cherryview_irq_postinstall(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @valleyview_irq_postinstall(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @i965_irq_postinstall(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_irq_postinstall(%struct.drm_i915_private*) #1

declare dso_local i32 @i8xx_irq_postinstall(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @gen11_irq_postinstall(%struct.drm_i915_private*) #1

declare dso_local i32 @gen8_irq_postinstall(%struct.drm_i915_private*) #1

declare dso_local i32 @ironlake_irq_postinstall(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
