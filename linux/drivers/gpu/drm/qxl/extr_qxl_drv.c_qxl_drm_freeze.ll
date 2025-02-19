; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_drv.c_qxl_drm_freeze.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_drv.c_qxl_drm_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.qxl_device*, %struct.pci_dev* }
%struct.qxl_device = type { i32, i32 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @qxl_drm_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_drm_freeze(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.qxl_device*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.qxl_device*, %struct.qxl_device** %11, align 8
  store %struct.qxl_device* %12, %struct.qxl_device** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = call i32 @drm_mode_config_helper_suspend(%struct.drm_device* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %48

19:                                               ; preds = %1
  %20 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %21 = call i32 @qxl_destroy_monitors_object(%struct.qxl_device* %20)
  %22 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %23 = call i32 @qxl_surf_evict(%struct.qxl_device* %22)
  %24 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %25 = call i32 @qxl_vram_evict(%struct.qxl_device* %24)
  br label %26

26:                                               ; preds = %33, %19
  %27 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %28 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @qxl_check_idle(i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %26

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %42, %34
  %36 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %37 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @qxl_check_idle(i32 %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %44 = call i32 @qxl_queue_garbage_collect(%struct.qxl_device* %43, i32 1)
  br label %35

45:                                               ; preds = %35
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = call i32 @pci_save_state(%struct.pci_dev* %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %17
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @drm_mode_config_helper_suspend(%struct.drm_device*) #1

declare dso_local i32 @qxl_destroy_monitors_object(%struct.qxl_device*) #1

declare dso_local i32 @qxl_surf_evict(%struct.qxl_device*) #1

declare dso_local i32 @qxl_vram_evict(%struct.qxl_device*) #1

declare dso_local i32 @qxl_check_idle(i32) #1

declare dso_local i32 @qxl_queue_garbage_collect(%struct.qxl_device*, i32) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
