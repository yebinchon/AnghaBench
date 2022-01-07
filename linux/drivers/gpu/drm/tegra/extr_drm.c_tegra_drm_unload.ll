; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_drm.c_tegra_drm_unload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_drm.c_tegra_drm_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.tegra_drm*, i32 }
%struct.tegra_drm = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.host1x_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @tegra_drm_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_drm_unload(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.host1x_device*, align 8
  %4 = alloca %struct.tegra_drm*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.host1x_device* @to_host1x_device(i32 %8)
  store %struct.host1x_device* %9, %struct.host1x_device** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.tegra_drm*, %struct.tegra_drm** %11, align 8
  store %struct.tegra_drm* %12, %struct.tegra_drm** %4, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %14 = call i32 @drm_kms_helper_poll_fini(%struct.drm_device* %13)
  %15 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %16 = call i32 @tegra_drm_fb_exit(%struct.drm_device* %15)
  %17 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %18 = call i32 @drm_atomic_helper_shutdown(%struct.drm_device* %17)
  %19 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %20 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %19)
  %21 = load %struct.host1x_device*, %struct.host1x_device** %3, align 8
  %22 = call i32 @host1x_device_exit(%struct.host1x_device* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %50

26:                                               ; preds = %1
  %27 = load %struct.tegra_drm*, %struct.tegra_drm** %4, align 8
  %28 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load %struct.tegra_drm*, %struct.tegra_drm** %4, align 8
  %33 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %32, i32 0, i32 3
  %34 = call i32 @mutex_destroy(i32* %33)
  %35 = load %struct.tegra_drm*, %struct.tegra_drm** %4, align 8
  %36 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %35, i32 0, i32 2
  %37 = call i32 @drm_mm_takedown(i32* %36)
  %38 = load %struct.tegra_drm*, %struct.tegra_drm** %4, align 8
  %39 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @put_iova_domain(i32* %40)
  %42 = call i32 (...) @iova_cache_put()
  %43 = load %struct.tegra_drm*, %struct.tegra_drm** %4, align 8
  %44 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @iommu_domain_free(i64 %45)
  br label %47

47:                                               ; preds = %31, %26
  %48 = load %struct.tegra_drm*, %struct.tegra_drm** %4, align 8
  %49 = call i32 @kfree(%struct.tegra_drm* %48)
  br label %50

50:                                               ; preds = %47, %25
  ret void
}

declare dso_local %struct.host1x_device* @to_host1x_device(i32) #1

declare dso_local i32 @drm_kms_helper_poll_fini(%struct.drm_device*) #1

declare dso_local i32 @tegra_drm_fb_exit(%struct.drm_device*) #1

declare dso_local i32 @drm_atomic_helper_shutdown(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

declare dso_local i32 @host1x_device_exit(%struct.host1x_device*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @drm_mm_takedown(i32*) #1

declare dso_local i32 @put_iova_domain(i32*) #1

declare dso_local i32 @iova_cache_put(...) #1

declare dso_local i32 @iommu_domain_free(i64) #1

declare dso_local i32 @kfree(%struct.tegra_drm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
