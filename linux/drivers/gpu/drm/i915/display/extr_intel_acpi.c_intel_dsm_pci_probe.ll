; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_acpi.c_intel_dsm_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_acpi.c_intel_dsm_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@intel_dsm_guid = common dso_local global i32 0, align 4
@INTEL_DSM_REVISION_ID = common dso_local global i32 0, align 4
@INTEL_DSM_FN_PLATFORM_MUX_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"no _DSM method for intel device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.pci_dev*)* @intel_dsm_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @intel_dsm_pci_probe(%struct.pci_dev* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 0
  %7 = call i32* @ACPI_HANDLE(i32* %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %24

11:                                               ; preds = %1
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @INTEL_DSM_REVISION_ID, align 4
  %14 = load i32, i32* @INTEL_DSM_FN_PLATFORM_MUX_INFO, align 4
  %15 = shl i32 1, %14
  %16 = call i32 @acpi_check_dsm(i32* %12, i32* @intel_dsm_guid, i32 %13, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  %19 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %24

20:                                               ; preds = %11
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @intel_dsm_platform_mux_info(i32* %21)
  %23 = load i32*, i32** %4, align 8
  store i32* %23, i32** %2, align 8
  br label %24

24:                                               ; preds = %20, %18, %10
  %25 = load i32*, i32** %2, align 8
  ret i32* %25
}

declare dso_local i32* @ACPI_HANDLE(i32*) #1

declare dso_local i32 @acpi_check_dsm(i32*, i32*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @intel_dsm_platform_mux_info(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
