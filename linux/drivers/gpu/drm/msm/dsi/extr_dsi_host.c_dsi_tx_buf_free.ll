; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_tx_buf_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_tx_buf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_host = type { i32, i32, i32, i32*, %struct.drm_device* }
%struct.drm_device = type { i32, %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_dsi_host*)* @dsi_tx_buf_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_tx_buf_free(%struct.msm_dsi_host* %0) #0 {
  %2 = alloca %struct.msm_dsi_host*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.msm_drm_private*, align 8
  store %struct.msm_dsi_host* %0, %struct.msm_dsi_host** %2, align 8
  %5 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %2, align 8
  %6 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %5, i32 0, i32 4
  %7 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  store %struct.drm_device* %7, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = icmp ne %struct.drm_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %54

11:                                               ; preds = %1
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 1
  %14 = load %struct.msm_drm_private*, %struct.msm_drm_private** %13, align 8
  store %struct.msm_drm_private* %14, %struct.msm_drm_private** %4, align 8
  %15 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %2, align 8
  %16 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %11
  %20 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %2, align 8
  %21 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %24 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @msm_gem_unpin_iova(i32* %22, i32 %27)
  %29 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %2, align 8
  %30 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @drm_gem_object_put_unlocked(i32* %31)
  %33 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %2, align 8
  %34 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %33, i32 0, i32 3
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %19, %11
  %36 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %2, align 8
  %37 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %42 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %2, align 8
  %45 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %2, align 8
  %48 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %2, align 8
  %51 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dma_free_coherent(i32 %43, i32 %46, i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %10, %40, %35
  ret void
}

declare dso_local i32 @msm_gem_unpin_iova(i32*, i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
