; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_dma_base_get_6g.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_dma_base_get_6g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_host = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsi_dma_base_get_6g(%struct.msm_dsi_host* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msm_dsi_host*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.msm_drm_private*, align 8
  store %struct.msm_dsi_host* %0, %struct.msm_dsi_host** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %9 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %8, i32 0, i32 1
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %6, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.msm_drm_private*, %struct.msm_drm_private** %12, align 8
  store %struct.msm_drm_private* %13, %struct.msm_drm_private** %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %30

19:                                               ; preds = %2
  %20 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %21 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.msm_drm_private*, %struct.msm_drm_private** %7, align 8
  %24 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @msm_gem_get_and_pin_iova(i32 %22, i32 %27, i32* %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %19, %16
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @msm_gem_get_and_pin_iova(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
