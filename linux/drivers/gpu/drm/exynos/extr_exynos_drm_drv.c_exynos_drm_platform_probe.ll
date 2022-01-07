; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_drv.c_exynos_drm_platform_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_drv.c_exynos_drm_platform_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.component_match = type { i32 }

@exynos_drm_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @exynos_drm_platform_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_drm_platform_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.component_match*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = call i32 @DMA_BIT_MASK(i32 32)
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 %5, i32* %8, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.component_match* @exynos_drm_match_add(%struct.TYPE_3__* %10)
  store %struct.component_match* %11, %struct.component_match** %4, align 8
  %12 = load %struct.component_match*, %struct.component_match** %4, align 8
  %13 = call i64 @IS_ERR(%struct.component_match* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.component_match*, %struct.component_match** %4, align 8
  %17 = call i32 @PTR_ERR(%struct.component_match* %16)
  store i32 %17, i32* %2, align 4
  br label %23

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.component_match*, %struct.component_match** %4, align 8
  %22 = call i32 @component_master_add_with_match(%struct.TYPE_3__* %20, i32* @exynos_drm_ops, %struct.component_match* %21)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %18, %15
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.component_match* @exynos_drm_match_add(%struct.TYPE_3__*) #1

declare dso_local i64 @IS_ERR(%struct.component_match*) #1

declare dso_local i32 @PTR_ERR(%struct.component_match*) #1

declare dso_local i32 @component_master_add_with_match(%struct.TYPE_3__*, i32*, %struct.component_match*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
