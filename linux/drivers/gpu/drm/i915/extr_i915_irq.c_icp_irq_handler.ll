; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_icp_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_icp_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@SDE_DDI_MASK_TGP = common dso_local global i32 0, align 4
@SDE_DDI_MASK_ICP = common dso_local global i32 0, align 4
@SDE_TC_MASK_ICP = common dso_local global i32 0, align 4
@SHOTPLUG_CTL_DDI = common dso_local global i32 0, align 4
@icp_ddi_port_hotplug_long_detect = common dso_local global i32 0, align 4
@SHOTPLUG_CTL_TC = common dso_local global i32 0, align 4
@icp_tc_port_hotplug_long_detect = common dso_local global i32 0, align 4
@SDE_GMBUS_ICP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32, i32*)* @icp_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icp_irq_handler(%struct.drm_i915_private* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %14 = call i64 @HAS_PCH_MCC(%struct.drm_i915_private* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SDE_DDI_MASK_TGP, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %27

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SDE_DDI_MASK_ICP, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SDE_TC_MASK_ICP, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %20, %16
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load i32, i32* @SHOTPLUG_CTL_DDI, align 4
  %32 = call i32 @I915_READ(i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* @SHOTPLUG_CTL_DDI, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @I915_WRITE(i32 %33, i32 %34)
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @icp_ddi_port_hotplug_long_detect, align 4
  %41 = call i32 @intel_get_hpd_pins(%struct.drm_i915_private* %36, i32* %9, i32* %10, i32 %37, i32 %38, i32* %39, i32 %40)
  br label %42

42:                                               ; preds = %30, %27
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load i32, i32* @SHOTPLUG_CTL_TC, align 4
  %47 = call i32 @I915_READ(i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* @SHOTPLUG_CTL_TC, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @I915_WRITE(i32 %48, i32 %49)
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* @icp_tc_port_hotplug_long_detect, align 4
  %56 = call i32 @intel_get_hpd_pins(%struct.drm_i915_private* %51, i32* %9, i32* %10, i32 %52, i32 %53, i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %45, %42
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @intel_hpd_irq_handler(%struct.drm_i915_private* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %57
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @SDE_GMBUS_ICP, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %72 = call i32 @gmbus_irq_handler(%struct.drm_i915_private* %71)
  br label %73

73:                                               ; preds = %70, %65
  ret void
}

declare dso_local i64 @HAS_PCH_MCC(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @intel_get_hpd_pins(%struct.drm_i915_private*, i32*, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @intel_hpd_irq_handler(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @gmbus_irq_handler(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
