; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_ibx_hpd_detection_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_ibx_hpd_detection_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@PCH_PORT_HOTPLUG = common dso_local global i32 0, align 4
@PORTB_PULSE_DURATION_MASK = common dso_local global i32 0, align 4
@PORTC_PULSE_DURATION_MASK = common dso_local global i32 0, align 4
@PORTD_PULSE_DURATION_MASK = common dso_local global i32 0, align 4
@PORTB_HOTPLUG_ENABLE = common dso_local global i32 0, align 4
@PORTB_PULSE_DURATION_2ms = common dso_local global i32 0, align 4
@PORTC_HOTPLUG_ENABLE = common dso_local global i32 0, align 4
@PORTC_PULSE_DURATION_2ms = common dso_local global i32 0, align 4
@PORTD_HOTPLUG_ENABLE = common dso_local global i32 0, align 4
@PORTD_PULSE_DURATION_2ms = common dso_local global i32 0, align 4
@PORTA_HOTPLUG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @ibx_hpd_detection_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibx_hpd_detection_setup(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load i32, i32* @PCH_PORT_HOTPLUG, align 4
  %5 = call i32 @I915_READ(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @PORTB_PULSE_DURATION_MASK, align 4
  %7 = load i32, i32* @PORTC_PULSE_DURATION_MASK, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @PORTD_PULSE_DURATION_MASK, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @PORTB_HOTPLUG_ENABLE, align 4
  %15 = load i32, i32* @PORTB_PULSE_DURATION_2ms, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @PORTC_HOTPLUG_ENABLE, align 4
  %20 = load i32, i32* @PORTC_PULSE_DURATION_2ms, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @PORTD_HOTPLUG_ENABLE, align 4
  %25 = load i32, i32* @PORTD_PULSE_DURATION_2ms, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %30 = call i64 @HAS_PCH_LPT_LP(%struct.drm_i915_private* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load i32, i32* @PORTA_HOTPLUG_ENABLE, align 4
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %1
  %37 = load i32, i32* @PCH_PORT_HOTPLUG, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @I915_WRITE(i32 %37, i32 %38)
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @HAS_PCH_LPT_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
