; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_g2d_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_g2d_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.g2d_data = type { i32, i32, i32 }
%struct.drm_device = type { %struct.exynos_drm_private* }
%struct.exynos_drm_private = type { i32* }

@G2D_BIT_SUSPEND_RUNQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.device*, i8*)* @g2d_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g2d_unbind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.g2d_data*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.exynos_drm_private*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.g2d_data* @dev_get_drvdata(%struct.device* %10)
  store %struct.g2d_data* %11, %struct.g2d_data** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_device*
  store %struct.drm_device* %13, %struct.drm_device** %8, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.exynos_drm_private*, %struct.exynos_drm_private** %15, align 8
  store %struct.exynos_drm_private* %16, %struct.exynos_drm_private** %9, align 8
  %17 = load i32, i32* @G2D_BIT_SUSPEND_RUNQUEUE, align 4
  %18 = load %struct.g2d_data*, %struct.g2d_data** %7, align 8
  %19 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %18, i32 0, i32 2
  %20 = call i32 @set_bit(i32 %17, i32* %19)
  %21 = load %struct.g2d_data*, %struct.g2d_data** %7, align 8
  %22 = call i32 @g2d_wait_finish(%struct.g2d_data* %21, i32* null)
  %23 = load %struct.exynos_drm_private*, %struct.exynos_drm_private** %9, align 8
  %24 = getelementptr inbounds %struct.exynos_drm_private, %struct.exynos_drm_private* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.g2d_data*, %struct.g2d_data** %7, align 8
  %26 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %25, i32 0, i32 1
  %27 = call i32 @cancel_work_sync(i32* %26)
  %28 = load %struct.g2d_data*, %struct.g2d_data** %7, align 8
  %29 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i32 @exynos_drm_unregister_dma(i32 %30, %struct.device* %31)
  ret void
}

declare dso_local %struct.g2d_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @g2d_wait_finish(%struct.g2d_data*, i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @exynos_drm_unregister_dma(i32, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
