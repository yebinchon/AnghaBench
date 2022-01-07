; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_drv.c_v3d_platform_drm_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_drv.c_v3d_platform_drm_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.drm_device = type { i32 }
%struct.v3d_dev = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @v3d_platform_drm_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v3d_platform_drm_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.v3d_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.drm_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.drm_device* %6, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = call %struct.v3d_dev* @to_v3d_dev(%struct.drm_device* %7)
  store %struct.v3d_dev* %8, %struct.v3d_dev** %4, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = call i32 @drm_dev_unregister(%struct.drm_device* %9)
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = call i32 @v3d_gem_destroy(%struct.drm_device* %11)
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = call i32 @drm_dev_put(%struct.drm_device* %13)
  %15 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %16 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %19 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %22 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dma_free_wc(i32 %17, i32 4096, i32 %20, i32 %23)
  ret i32 0
}

declare dso_local %struct.drm_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.v3d_dev* @to_v3d_dev(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_unregister(%struct.drm_device*) #1

declare dso_local i32 @v3d_gem_destroy(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

declare dso_local i32 @dma_free_wc(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
