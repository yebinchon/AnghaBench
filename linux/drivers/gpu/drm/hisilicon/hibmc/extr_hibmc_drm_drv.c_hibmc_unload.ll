; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_drv.c_hibmc_unload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_drv.c_hibmc_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.hibmc_drm_private*, i32, i64 }
%struct.hibmc_drm_private = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @hibmc_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hibmc_unload(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.hibmc_drm_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 0
  %6 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %5, align 8
  store %struct.hibmc_drm_private* %6, %struct.hibmc_drm_private** %3, align 8
  %7 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %8 = call i32 @hibmc_fbdev_fini(%struct.hibmc_drm_private* %7)
  %9 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %10 = call i32 @drm_atomic_helper_shutdown(%struct.drm_device* %9)
  %11 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %17 = call i32 @drm_irq_uninstall(%struct.drm_device* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %20 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @pci_disable_msi(i32 %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %30 = call i32 @hibmc_kms_fini(%struct.hibmc_drm_private* %29)
  %31 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %32 = call i32 @hibmc_mm_fini(%struct.hibmc_drm_private* %31)
  %33 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %34 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %33, i32 0, i32 0
  store %struct.hibmc_drm_private* null, %struct.hibmc_drm_private** %34, align 8
  ret i32 0
}

declare dso_local i32 @hibmc_fbdev_fini(%struct.hibmc_drm_private*) #1

declare dso_local i32 @drm_atomic_helper_shutdown(%struct.drm_device*) #1

declare dso_local i32 @drm_irq_uninstall(%struct.drm_device*) #1

declare dso_local i32 @pci_disable_msi(i32) #1

declare dso_local i32 @hibmc_kms_fini(%struct.hibmc_drm_private*) #1

declare dso_local i32 @hibmc_mm_fini(%struct.hibmc_drm_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
