; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_pps_unlock_regs_wa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_pps_unlock_regs_wa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@PANEL_UNLOCK_MASK = common dso_local global i32 0, align 4
@PANEL_UNLOCK_REGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_pps_unlock_regs_wa(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %7 = call i64 @HAS_DDI(%struct.drm_i915_private* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %42

10:                                               ; preds = %1
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %12 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %16 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %10
  store i32 2, i32* %3, align 4
  br label %20

19:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %18
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %39, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @PP_CONTROL(i32 %26)
  %28 = call i32 @I915_READ(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @PANEL_UNLOCK_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = load i32, i32* @PANEL_UNLOCK_REGS, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @PP_CONTROL(i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @I915_WRITE(i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %21

42:                                               ; preds = %9, %21
  ret void
}

declare dso_local i64 @HAS_DDI(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PP_CONTROL(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
