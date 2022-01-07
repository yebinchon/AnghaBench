; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_pmops_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_pmops_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvif_device }
%struct.nvif_device = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@PCI_D0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"resume failed with: %d\0A\00", align 1
@DRM_SWITCH_POWER_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @nouveau_pmops_runtime_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_pmops_runtime_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.nvif_device*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.pci_dev* @to_pci_dev(%struct.device* %9)
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = call %struct.drm_device* @pci_get_drvdata(%struct.pci_dev* %11)
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %13)
  store %struct.nouveau_drm* %14, %struct.nouveau_drm** %6, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %15)
  %17 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.nvif_device* %18, %struct.nvif_device** %7, align 8
  %19 = call i32 (...) @nouveau_pmops_runtime()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = call i32 @pm_runtime_forbid(%struct.device* %22)
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %62

26:                                               ; preds = %1
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = load i32, i32* @PCI_D0, align 4
  %29 = call i32 @pci_set_power_state(%struct.pci_dev* %27, i32 %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = call i32 @pci_restore_state(%struct.pci_dev* %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = call i32 @pci_enable_device(%struct.pci_dev* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %2, align 4
  br label %62

38:                                               ; preds = %26
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = call i32 @pci_set_master(%struct.pci_dev* %39)
  %41 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %42 = call i32 @nouveau_do_resume(%struct.drm_device* %41, i32 1)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @NV_ERROR(%struct.nouveau_drm* %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %2, align 4
  br label %62

50:                                               ; preds = %38
  %51 = load %struct.nvif_device*, %struct.nvif_device** %7, align 8
  %52 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %51, i32 0, i32 0
  %53 = call i32 @nvif_mask(i32* %52, i32 558216, i32 33554432, i32 33554432)
  %54 = load i32, i32* @DRM_SWITCH_POWER_ON, align 4
  %55 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %56 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %58 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %57)
  %59 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %58, i32 0, i32 0
  %60 = call i32 @schedule_work(i32* %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %50, %45, %36, %21
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.drm_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @nouveau_pmops_runtime(...) #1

declare dso_local i32 @pm_runtime_forbid(%struct.device*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @nouveau_do_resume(%struct.drm_device*, i32) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*, i32) #1

declare dso_local i32 @nvif_mask(i32*, i32, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
