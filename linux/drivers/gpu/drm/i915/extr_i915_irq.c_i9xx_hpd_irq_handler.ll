; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_i9xx_hpd_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_i9xx_hpd_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@HOTPLUG_INT_STATUS_G4X = common dso_local global i32 0, align 4
@hpd_status_g4x = common dso_local global i32 0, align 4
@i9xx_port_hotplug_long_detect = common dso_local global i32 0, align 4
@DP_AUX_CHANNEL_MASK_INT_STATUS_G4X = common dso_local global i32 0, align 4
@HOTPLUG_INT_STATUS_I915 = common dso_local global i32 0, align 4
@hpd_status_i915 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @i9xx_hpd_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i9xx_hpd_irq_handler(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = call i64 @IS_G4X(%struct.drm_i915_private* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %14 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %18 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %16, %12, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @HOTPLUG_INT_STATUS_G4X, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @hpd_status_g4x, align 4
  %31 = load i32, i32* @i9xx_port_hotplug_long_detect, align 4
  %32 = call i32 @intel_get_hpd_pins(%struct.drm_i915_private* %27, i32* %5, i32* %6, i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @intel_hpd_irq_handler(%struct.drm_i915_private* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %26, %20
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @DP_AUX_CHANNEL_MASK_INT_STATUS_G4X, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %44 = call i32 @dp_aux_irq_handler(%struct.drm_i915_private* %43)
  br label %45

45:                                               ; preds = %42, %37
  br label %64

46:                                               ; preds = %16
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @HOTPLUG_INT_STATUS_I915, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @hpd_status_i915, align 4
  %57 = load i32, i32* @i9xx_port_hotplug_long_detect, align 4
  %58 = call i32 @intel_get_hpd_pins(%struct.drm_i915_private* %53, i32* %5, i32* %6, i32 %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @intel_hpd_irq_handler(%struct.drm_i915_private* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %52, %46
  br label %64

64:                                               ; preds = %63, %45
  ret void
}

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_get_hpd_pins(%struct.drm_i915_private*, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @intel_hpd_irq_handler(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @dp_aux_irq_handler(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
