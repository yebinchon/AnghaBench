; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_tx_buf_alloc_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_tx_buf_alloc_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_host = type { i32, i32, i32, %struct.drm_device* }
%struct.drm_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsi_tx_buf_alloc_v2(%struct.msm_dsi_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msm_dsi_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  store %struct.msm_dsi_host* %0, %struct.msm_dsi_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %8 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %7, i32 0, i32 3
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %6, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %15 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %14, i32 0, i32 2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32 @dma_alloc_coherent(i32 %12, i32 %13, i32* %15, i32 %16)
  %18 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %19 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %21 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %31

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %30 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
