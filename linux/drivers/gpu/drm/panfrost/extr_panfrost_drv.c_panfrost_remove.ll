; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_drv.c_panfrost_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_drv.c_panfrost_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.panfrost_device = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @panfrost_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panfrost_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.panfrost_device*, align 8
  %4 = alloca %struct.drm_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.panfrost_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.panfrost_device* %6, %struct.panfrost_device** %3, align 8
  %7 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %8 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %7, i32 0, i32 1
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = call i32 @drm_dev_unregister(%struct.drm_device* %10)
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = call i32 @panfrost_gem_shrinker_cleanup(%struct.drm_device* %12)
  %14 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %15 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @pm_runtime_get_sync(i32 %16)
  %18 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %19 = call i32 @panfrost_devfreq_fini(%struct.panfrost_device* %18)
  %20 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %21 = call i32 @panfrost_device_fini(%struct.panfrost_device* %20)
  %22 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %23 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @pm_runtime_put_sync_suspend(i32 %24)
  %26 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %27 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pm_runtime_disable(i32 %28)
  %30 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %31 = call i32 @drm_dev_put(%struct.drm_device* %30)
  ret i32 0
}

declare dso_local %struct.panfrost_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @drm_dev_unregister(%struct.drm_device*) #1

declare dso_local i32 @panfrost_gem_shrinker_cleanup(%struct.drm_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @panfrost_devfreq_fini(%struct.panfrost_device*) #1

declare dso_local i32 @panfrost_device_fini(%struct.panfrost_device*) #1

declare dso_local i32 @pm_runtime_put_sync_suspend(i32) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
