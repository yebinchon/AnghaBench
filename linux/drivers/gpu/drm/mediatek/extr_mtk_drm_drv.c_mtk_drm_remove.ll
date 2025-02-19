; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_drv.c_mtk_drm_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_drv.c_mtk_drm_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mtk_drm_private = type { i32*, i32 }

@mtk_drm_ops = common dso_local global i32 0, align 4
@DDP_COMPONENT_ID_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_drm_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_drm_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mtk_drm_private*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.mtk_drm_private* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.mtk_drm_private* %6, %struct.mtk_drm_private** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call i32 @component_master_del(i32* %8, i32* @mtk_drm_ops)
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call i32 @pm_runtime_disable(i32* %11)
  %13 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %3, align 8
  %14 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @of_node_put(i32 %15)
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %30, %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @DDP_COMPONENT_ID_MAX, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %3, align 8
  %23 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @of_node_put(i32 %28)
  br label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %17

33:                                               ; preds = %17
  ret i32 0
}

declare dso_local %struct.mtk_drm_private* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @component_master_del(i32*, i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @of_node_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
