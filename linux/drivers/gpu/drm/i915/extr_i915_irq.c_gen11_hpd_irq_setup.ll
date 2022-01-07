; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_gen11_hpd_irq_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_gen11_hpd_irq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@hpd_gen12 = common dso_local global i32* null, align 8
@hpd_gen11 = common dso_local global i32* null, align 8
@GEN11_DE_TC_HOTPLUG_MASK = common dso_local global i32 0, align 4
@GEN11_DE_TBT_HOTPLUG_MASK = common dso_local global i32 0, align 4
@GEN11_DE_HPD_IMR = common dso_local global i32 0, align 4
@PCH_TGP = common dso_local global i64 0, align 8
@PCH_ICP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @gen11_hpd_irq_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen11_hpd_irq_setup(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %8 = call i32 @INTEL_GEN(%struct.drm_i915_private* %7)
  %9 = icmp sge i32 %8, 12
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32*, i32** @hpd_gen12, align 8
  br label %14

12:                                               ; preds = %1
  %13 = load i32*, i32** @hpd_gen11, align 8
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32* [ %11, %10 ], [ %13, %12 ]
  store i32* %15, i32** %5, align 8
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @intel_hpd_enabled_irqs(%struct.drm_i915_private* %16, i32* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @GEN11_DE_TC_HOTPLUG_MASK, align 4
  %20 = load i32, i32* @GEN11_DE_TBT_HOTPLUG_MASK, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @GEN11_DE_HPD_IMR, align 4
  %23 = call i32 @I915_READ(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %3, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @GEN11_DE_HPD_IMR, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @I915_WRITE(i32 %28, i32 %29)
  %31 = load i32, i32* @GEN11_DE_HPD_IMR, align 4
  %32 = call i32 @POSTING_READ(i32 %31)
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %34 = call i32 @gen11_hpd_detection_setup(%struct.drm_i915_private* %33)
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %36 = call i64 @INTEL_PCH_TYPE(%struct.drm_i915_private* %35)
  %37 = load i64, i64* @PCH_TGP, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %14
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %41 = call i32 @tgp_hpd_irq_setup(%struct.drm_i915_private* %40)
  br label %51

42:                                               ; preds = %14
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %44 = call i64 @INTEL_PCH_TYPE(%struct.drm_i915_private* %43)
  %45 = load i64, i64* @PCH_ICP, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %49 = call i32 @icp_hpd_irq_setup(%struct.drm_i915_private* %48)
  br label %50

50:                                               ; preds = %47, %42
  br label %51

51:                                               ; preds = %50, %39
  ret void
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_hpd_enabled_irqs(%struct.drm_i915_private*, i32*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @gen11_hpd_detection_setup(%struct.drm_i915_private*) #1

declare dso_local i64 @INTEL_PCH_TYPE(%struct.drm_i915_private*) #1

declare dso_local i32 @tgp_hpd_irq_setup(%struct.drm_i915_private*) #1

declare dso_local i32 @icp_hpd_irq_setup(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
