; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_spt_hpd_detection_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_spt_hpd_detection_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@SOUTH_CHICKEN1 = common dso_local global i32 0, align 4
@CHASSIS_CLK_REQ_DURATION_MASK = common dso_local global i32 0, align 4
@PCH_PORT_HOTPLUG = common dso_local global i32 0, align 4
@PORTA_HOTPLUG_ENABLE = common dso_local global i32 0, align 4
@PORTB_HOTPLUG_ENABLE = common dso_local global i32 0, align 4
@PORTC_HOTPLUG_ENABLE = common dso_local global i32 0, align 4
@PORTD_HOTPLUG_ENABLE = common dso_local global i32 0, align 4
@PCH_PORT_HOTPLUG2 = common dso_local global i32 0, align 4
@PORTE_HOTPLUG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @spt_hpd_detection_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spt_hpd_detection_setup(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = call i64 @HAS_PCH_CNP(%struct.drm_i915_private* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load i32, i32* @SOUTH_CHICKEN1, align 4
  %10 = call i32 @I915_READ(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @CHASSIS_CLK_REQ_DURATION_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = call i32 @CHASSIS_CLK_REQ_DURATION(i32 15)
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @SOUTH_CHICKEN1, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @I915_WRITE(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %8, %1
  %22 = load i32, i32* @PCH_PORT_HOTPLUG, align 4
  %23 = call i32 @I915_READ(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @PORTA_HOTPLUG_ENABLE, align 4
  %25 = load i32, i32* @PORTB_HOTPLUG_ENABLE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @PORTC_HOTPLUG_ENABLE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @PORTD_HOTPLUG_ENABLE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @PCH_PORT_HOTPLUG, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @I915_WRITE(i32 %33, i32 %34)
  %36 = load i32, i32* @PCH_PORT_HOTPLUG2, align 4
  %37 = call i32 @I915_READ(i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @PORTE_HOTPLUG_ENABLE, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* @PCH_PORT_HOTPLUG2, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @I915_WRITE(i32 %41, i32 %42)
  ret void
}

declare dso_local i64 @HAS_PCH_CNP(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @CHASSIS_CLK_REQ_DURATION(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
