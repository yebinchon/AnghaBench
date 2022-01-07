; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_gen11_hpd_detection_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_gen11_hpd_detection_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@GEN11_TC_HOTPLUG_CTL = common dso_local global i32 0, align 4
@PORT_TC1 = common dso_local global i32 0, align 4
@PORT_TC2 = common dso_local global i32 0, align 4
@PORT_TC3 = common dso_local global i32 0, align 4
@PORT_TC4 = common dso_local global i32 0, align 4
@GEN11_TBT_HOTPLUG_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @gen11_hpd_detection_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen11_hpd_detection_setup(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load i32, i32* @GEN11_TC_HOTPLUG_CTL, align 4
  %5 = call i32 @I915_READ(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @PORT_TC1, align 4
  %7 = call i32 @GEN11_HOTPLUG_CTL_ENABLE(i32 %6)
  %8 = load i32, i32* @PORT_TC2, align 4
  %9 = call i32 @GEN11_HOTPLUG_CTL_ENABLE(i32 %8)
  %10 = or i32 %7, %9
  %11 = load i32, i32* @PORT_TC3, align 4
  %12 = call i32 @GEN11_HOTPLUG_CTL_ENABLE(i32 %11)
  %13 = or i32 %10, %12
  %14 = load i32, i32* @PORT_TC4, align 4
  %15 = call i32 @GEN11_HOTPLUG_CTL_ENABLE(i32 %14)
  %16 = or i32 %13, %15
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @GEN11_TC_HOTPLUG_CTL, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @I915_WRITE(i32 %19, i32 %20)
  %22 = load i32, i32* @GEN11_TBT_HOTPLUG_CTL, align 4
  %23 = call i32 @I915_READ(i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @PORT_TC1, align 4
  %25 = call i32 @GEN11_HOTPLUG_CTL_ENABLE(i32 %24)
  %26 = load i32, i32* @PORT_TC2, align 4
  %27 = call i32 @GEN11_HOTPLUG_CTL_ENABLE(i32 %26)
  %28 = or i32 %25, %27
  %29 = load i32, i32* @PORT_TC3, align 4
  %30 = call i32 @GEN11_HOTPLUG_CTL_ENABLE(i32 %29)
  %31 = or i32 %28, %30
  %32 = load i32, i32* @PORT_TC4, align 4
  %33 = call i32 @GEN11_HOTPLUG_CTL_ENABLE(i32 %32)
  %34 = or i32 %31, %33
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @GEN11_TBT_HOTPLUG_CTL, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @I915_WRITE(i32 %37, i32 %38)
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @GEN11_HOTPLUG_CTL_ENABLE(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
