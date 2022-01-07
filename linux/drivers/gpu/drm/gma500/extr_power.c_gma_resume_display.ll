; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_power.c_gma_resume_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_power.c_gma_resume_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)* }

@_PSB_PGETBL_ENABLED = common dso_local global i32 0, align 4
@PSB_PGETBL_CTL = common dso_local global i32 0, align 4
@PSB_GMCH_CTRL = common dso_local global i32 0, align 4
@_PSB_GMCH_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @gma_resume_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gma_resume_display(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_psb_private*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.drm_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.drm_device* %6, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.drm_psb_private*, %struct.drm_psb_private** %8, align 8
  store %struct.drm_psb_private* %9, %struct.drm_psb_private** %4, align 8
  %10 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %11 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %13, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = call i32 %14(%struct.drm_device* %15)
  %17 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %18 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %20 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %22 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @_PSB_PGETBL_ENABLED, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @PSB_PGETBL_CTL, align 4
  %27 = call i32 @PSB_WVDC32(i32 %25, i32 %26)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = load i32, i32* @PSB_GMCH_CTRL, align 4
  %30 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %31 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @_PSB_GMCH_ENABLED, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @pci_write_config_word(%struct.pci_dev* %28, i32 %29, i32 %34)
  %36 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %37 = call i32 @psb_gtt_restore(%struct.drm_device* %36)
  %38 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %39 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %38, i32 0, i32 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %41, align 8
  %43 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %44 = call i32 %42(%struct.drm_device* %43)
  ret void
}

declare dso_local %struct.drm_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @PSB_WVDC32(i32, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @psb_gtt_restore(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
