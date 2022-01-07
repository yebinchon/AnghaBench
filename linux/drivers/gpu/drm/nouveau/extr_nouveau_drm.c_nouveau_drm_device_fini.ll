; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_drm_device_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_drm_device_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.nouveau_drm = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @nouveau_drm_device_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_drm_device_fini(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.nouveau_drm*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %4)
  store %struct.nouveau_drm* %5, %struct.nouveau_drm** %3, align 8
  %6 = call i64 (...) @nouveau_pmops_runtime()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @pm_runtime_get_sync(i32 %11)
  %13 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @pm_runtime_forbid(i32 %15)
  br label %17

17:                                               ; preds = %8, %1
  %18 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %19 = call i32 @nouveau_led_fini(%struct.drm_device* %18)
  %20 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %21 = call i32 @nouveau_fbcon_fini(%struct.drm_device* %20)
  %22 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %23 = call i32 @nouveau_dmem_fini(%struct.nouveau_drm* %22)
  %24 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %25 = call i32 @nouveau_svm_fini(%struct.nouveau_drm* %24)
  %26 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %27 = call i32 @nouveau_hwmon_fini(%struct.drm_device* %26)
  %28 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %29 = call i32 @nouveau_debugfs_fini(%struct.nouveau_drm* %28)
  %30 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %17
  %36 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %37 = call i32 @nouveau_display_fini(%struct.drm_device* %36, i32 0, i32 0)
  br label %38

38:                                               ; preds = %35, %17
  %39 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %40 = call i32 @nouveau_display_destroy(%struct.drm_device* %39)
  %41 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %42 = call i32 @nouveau_accel_fini(%struct.nouveau_drm* %41)
  %43 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %44 = call i32 @nouveau_bios_takedown(%struct.drm_device* %43)
  %45 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %46 = call i32 @nouveau_ttm_fini(%struct.nouveau_drm* %45)
  %47 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %48 = call i32 @nouveau_vga_fini(%struct.nouveau_drm* %47)
  %49 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %50 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %49, i32 0, i32 1
  %51 = call i32 @nouveau_cli_fini(i32* %50)
  %52 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %53 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %52, i32 0, i32 0
  %54 = call i32 @nouveau_cli_fini(i32* %53)
  %55 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %56 = call i32 @kfree(%struct.nouveau_drm* %55)
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i64 @nouveau_pmops_runtime(...) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_forbid(i32) #1

declare dso_local i32 @nouveau_led_fini(%struct.drm_device*) #1

declare dso_local i32 @nouveau_fbcon_fini(%struct.drm_device*) #1

declare dso_local i32 @nouveau_dmem_fini(%struct.nouveau_drm*) #1

declare dso_local i32 @nouveau_svm_fini(%struct.nouveau_drm*) #1

declare dso_local i32 @nouveau_hwmon_fini(%struct.drm_device*) #1

declare dso_local i32 @nouveau_debugfs_fini(%struct.nouveau_drm*) #1

declare dso_local i32 @nouveau_display_fini(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @nouveau_display_destroy(%struct.drm_device*) #1

declare dso_local i32 @nouveau_accel_fini(%struct.nouveau_drm*) #1

declare dso_local i32 @nouveau_bios_takedown(%struct.drm_device*) #1

declare dso_local i32 @nouveau_ttm_fini(%struct.nouveau_drm*) #1

declare dso_local i32 @nouveau_vga_fini(%struct.nouveau_drm*) #1

declare dso_local i32 @nouveau_cli_fini(i32*) #1

declare dso_local i32 @kfree(%struct.nouveau_drm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
