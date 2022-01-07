; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c___bxt_hpd_detection_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c___bxt_hpd_detection_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@PCH_PORT_HOTPLUG = common dso_local global i32 0, align 4
@PORTA_HOTPLUG_ENABLE = common dso_local global i32 0, align 4
@PORTB_HOTPLUG_ENABLE = common dso_local global i32 0, align 4
@PORTC_HOTPLUG_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Invert bit setting: hp_ctl:%x hp_port:%x\0A\00", align 1
@BXT_DDI_HPD_INVERT_MASK = common dso_local global i32 0, align 4
@BXT_DE_PORT_HP_DDIA = common dso_local global i32 0, align 4
@PORT_A = common dso_local global i32 0, align 4
@BXT_DDIA_HPD_INVERT = common dso_local global i32 0, align 4
@BXT_DE_PORT_HP_DDIB = common dso_local global i32 0, align 4
@PORT_B = common dso_local global i32 0, align 4
@BXT_DDIB_HPD_INVERT = common dso_local global i32 0, align 4
@BXT_DE_PORT_HP_DDIC = common dso_local global i32 0, align 4
@PORT_C = common dso_local global i32 0, align 4
@BXT_DDIC_HPD_INVERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @__bxt_hpd_detection_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bxt_hpd_detection_setup(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @PCH_PORT_HOTPLUG, align 4
  %7 = call i32 @I915_READ(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @PORTA_HOTPLUG_ENABLE, align 4
  %9 = load i32, i32* @PORTB_HOTPLUG_ENABLE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @PORTC_HOTPLUG_ENABLE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load i32, i32* @BXT_DDI_HPD_INVERT_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @BXT_DE_PORT_HP_DDIA, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = load i32, i32* @PORT_A, align 4
  %29 = call i64 @intel_bios_is_port_hpd_inverted(%struct.drm_i915_private* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @BXT_DDIA_HPD_INVERT, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %26, %2
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @BXT_DE_PORT_HP_DDIB, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %42 = load i32, i32* @PORT_B, align 4
  %43 = call i64 @intel_bios_is_port_hpd_inverted(%struct.drm_i915_private* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @BXT_DDIB_HPD_INVERT, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %45, %40, %35
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @BXT_DE_PORT_HP_DDIC, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %56 = load i32, i32* @PORT_C, align 4
  %57 = call i64 @intel_bios_is_port_hpd_inverted(%struct.drm_i915_private* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @BXT_DDIC_HPD_INVERT, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %54, %49
  %64 = load i32, i32* @PCH_PORT_HOTPLUG, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @I915_WRITE(i32 %64, i32 %65)
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i64 @intel_bios_is_port_hpd_inverted(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
