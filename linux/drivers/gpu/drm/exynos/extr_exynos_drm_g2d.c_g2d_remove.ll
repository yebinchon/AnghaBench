; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_g2d_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_g2d_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.g2d_data = type { i32, i32 }

@g2d_component_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @g2d_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g2d_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.g2d_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.g2d_data* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.g2d_data* %5, %struct.g2d_data** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call i32 @component_del(i32* %7, i32* @g2d_component_ops)
  %9 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %10 = call i32 @g2d_remove_runqueue_nodes(%struct.g2d_data* %9, i32* null)
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call i32 @pm_runtime_dont_use_autosuspend(i32* %12)
  %14 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @pm_runtime_disable(i32* %15)
  %17 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %18 = call i32 @g2d_fini_cmdlist(%struct.g2d_data* %17)
  %19 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %20 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @destroy_workqueue(i32 %21)
  %23 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %24 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @kmem_cache_destroy(i32 %25)
  ret i32 0
}

declare dso_local %struct.g2d_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @component_del(i32*, i32*) #1

declare dso_local i32 @g2d_remove_runqueue_nodes(%struct.g2d_data*, i32*) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @g2d_fini_cmdlist(%struct.g2d_data*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
