; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_hsw_power_well_post_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_hsw_power_well_post_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@VGA_RSRC_LEGACY_IO = common dso_local global i32 0, align 4
@VGA_MSR_READ = common dso_local global i32 0, align 4
@VGA_MSR_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i64, i32)* @hsw_power_well_post_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsw_power_well_post_enable(%struct.drm_i915_private* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %16 = load i32, i32* @VGA_RSRC_LEGACY_IO, align 4
  %17 = call i32 @vga_get_uninterruptible(%struct.pci_dev* %15, i32 %16)
  %18 = load i32, i32* @VGA_MSR_READ, align 4
  %19 = call i32 @inb(i32 %18)
  %20 = load i32, i32* @VGA_MSR_WRITE, align 4
  %21 = call i32 @outb(i32 %19, i32 %20)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %23 = load i32, i32* @VGA_RSRC_LEGACY_IO, align 4
  %24 = call i32 @vga_put(%struct.pci_dev* %22, i32 %23)
  br label %25

25:                                               ; preds = %14, %3
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @gen8_irq_power_well_post_enable(%struct.drm_i915_private* %29, i64 %30)
  br label %32

32:                                               ; preds = %28, %25
  ret void
}

declare dso_local i32 @vga_get_uninterruptible(%struct.pci_dev*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @vga_put(%struct.pci_dev*, i32) #1

declare dso_local i32 @gen8_irq_power_well_post_enable(%struct.drm_i915_private*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
