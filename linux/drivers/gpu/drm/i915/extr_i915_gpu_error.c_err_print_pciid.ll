; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_err_print_pciid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_err_print_pciid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_error_state_buf = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"PCI ID: 0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"PCI Revision: 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"PCI Subsystem: %04x:%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_error_state_buf*, %struct.drm_i915_private*)* @err_print_pciid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @err_print_pciid(%struct.drm_i915_error_state_buf* %0, %struct.drm_i915_private* %1) #0 {
  %3 = alloca %struct.drm_i915_error_state_buf*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.drm_i915_error_state_buf* %0, %struct.drm_i915_error_state_buf** %3, align 8
  store %struct.drm_i915_private* %1, %struct.drm_i915_private** %4, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %7 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %5, align 8
  %10 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %23, i32 %26)
  ret void
}

declare dso_local i32 @err_printf(%struct.drm_i915_error_state_buf*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
