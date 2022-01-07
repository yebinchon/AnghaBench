; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_power.c_gma_resume_pci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_power.c_gma_resume_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@PCI_D0 = common dso_local global i32 0, align 4
@PSB_PCIx_MSI_ADDR_LOC = common dso_local global i32 0, align 4
@PSB_PCIx_MSI_DATA_LOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"pci_enable failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @gma_resume_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gma_resume_pci(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_psb_private*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call %struct.drm_device* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.drm_device* %8, %struct.drm_device** %4, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.drm_psb_private*, %struct.drm_psb_private** %10, align 8
  store %struct.drm_psb_private* %11, %struct.drm_psb_private** %5, align 8
  %12 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %13 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %66

17:                                               ; preds = %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = load i32, i32* @PCI_D0, align 4
  %20 = call i32 @pci_set_power_state(%struct.pci_dev* %18, i32 %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = call i32 @pci_restore_state(%struct.pci_dev* %21)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %25 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pci_write_config_dword(%struct.pci_dev* %23, i32 92, i32 %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %31 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pci_write_config_dword(%struct.pci_dev* %29, i32 252, i32 %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %36 = load i32, i32* @PSB_PCIx_MSI_ADDR_LOC, align 4
  %37 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %38 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pci_write_config_dword(%struct.pci_dev* %35, i32 %36, i32 %39)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %42 = load i32, i32* @PSB_PCIx_MSI_DATA_LOC, align 4
  %43 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %44 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pci_write_config_dword(%struct.pci_dev* %41, i32 %42, i32 %45)
  %47 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %48 = call i32 @pci_enable_device(%struct.pci_dev* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %17
  %52 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %59

56:                                               ; preds = %17
  %57 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %58 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %61 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %59, %16
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.drm_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
