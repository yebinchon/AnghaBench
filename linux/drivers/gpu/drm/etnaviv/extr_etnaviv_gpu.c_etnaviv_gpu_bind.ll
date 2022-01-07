; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_device = type { %struct.etnaviv_drm_private* }
%struct.etnaviv_drm_private = type { i32, %struct.etnaviv_gpu** }
%struct.etnaviv_gpu = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_device* }

@CONFIG_DRM_ETNAVIV_THERMAL = common dso_local global i32 0, align 4
@cooling_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sync_point_worker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @etnaviv_gpu_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etnaviv_gpu_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.etnaviv_drm_private*, align 8
  %10 = alloca %struct.etnaviv_gpu*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.drm_device*
  store %struct.drm_device* %13, %struct.drm_device** %8, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %15, align 8
  store %struct.etnaviv_drm_private* %16, %struct.etnaviv_drm_private** %9, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.etnaviv_gpu* @dev_get_drvdata(%struct.device* %17)
  store %struct.etnaviv_gpu* %18, %struct.etnaviv_gpu** %10, align 8
  %19 = load i32, i32* @CONFIG_DRM_ETNAVIV_THERMAL, align 4
  %20 = call i64 @IS_ENABLED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %3
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = call i64 @dev_name(%struct.device* %26)
  %28 = inttoptr i64 %27 to i8*
  %29 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %10, align 8
  %30 = call i32 @thermal_of_cooling_device_register(i32 %25, i8* %28, %struct.etnaviv_gpu* %29, i32* @cooling_ops)
  %31 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %10, align 8
  %32 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %10, align 8
  %34 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %22
  %39 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %10, align 8
  %40 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PTR_ERR(i32 %41)
  store i32 %42, i32* %4, align 4
  br label %126

43:                                               ; preds = %22
  br label %44

44:                                               ; preds = %43, %3
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = call i64 @dev_name(%struct.device* %45)
  %47 = call i32 @alloc_ordered_workqueue(i64 %46, i32 0)
  %48 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %10, align 8
  %49 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %10, align 8
  %51 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %11, align 4
  br label %115

57:                                               ; preds = %44
  %58 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %10, align 8
  %59 = call i32 @etnaviv_sched_init(%struct.etnaviv_gpu* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %110

63:                                               ; preds = %57
  %64 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %10, align 8
  %65 = call i32 @etnaviv_gpu_clk_enable(%struct.etnaviv_gpu* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %107

69:                                               ; preds = %63
  %70 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %71 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %10, align 8
  %72 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %71, i32 0, i32 8
  store %struct.drm_device* %70, %struct.drm_device** %72, align 8
  %73 = call i32 @dma_fence_context_alloc(i32 1)
  %74 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %10, align 8
  %75 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 4
  %76 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %10, align 8
  %77 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %76, i32 0, i32 6
  %78 = call i32 @idr_init(i32* %77)
  %79 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %10, align 8
  %80 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %79, i32 0, i32 5
  %81 = call i32 @spin_lock_init(i32* %80)
  %82 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %10, align 8
  %83 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %82, i32 0, i32 4
  %84 = load i32, i32* @sync_point_worker, align 4
  %85 = call i32 @INIT_WORK(i32* %83, i32 %84)
  %86 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %10, align 8
  %87 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %86, i32 0, i32 3
  %88 = call i32 @init_waitqueue_head(i32* %87)
  %89 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %10, align 8
  %90 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %9, align 8
  %91 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %90, i32 0, i32 1
  %92 = load %struct.etnaviv_gpu**, %struct.etnaviv_gpu*** %91, align 8
  %93 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %9, align 8
  %94 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %92, i64 %97
  store %struct.etnaviv_gpu* %89, %struct.etnaviv_gpu** %98, align 8
  %99 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %10, align 8
  %100 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @pm_runtime_mark_last_busy(i32 %101)
  %103 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %10, align 8
  %104 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @pm_runtime_put_autosuspend(i32 %105)
  store i32 0, i32* %4, align 4
  br label %126

107:                                              ; preds = %68
  %108 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %10, align 8
  %109 = call i32 @etnaviv_sched_fini(%struct.etnaviv_gpu* %108)
  br label %110

110:                                              ; preds = %107, %62
  %111 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %10, align 8
  %112 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @destroy_workqueue(i32 %113)
  br label %115

115:                                              ; preds = %110, %54
  %116 = load i32, i32* @CONFIG_DRM_ETNAVIV_THERMAL, align 4
  %117 = call i64 @IS_ENABLED(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %10, align 8
  %121 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @thermal_cooling_device_unregister(i32 %122)
  br label %124

124:                                              ; preds = %119, %115
  %125 = load i32, i32* %11, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %124, %69, %38
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local %struct.etnaviv_gpu* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @thermal_of_cooling_device_register(i32, i8*, %struct.etnaviv_gpu*, i32*) #1

declare dso_local i64 @dev_name(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @alloc_ordered_workqueue(i64, i32) #1

declare dso_local i32 @etnaviv_sched_init(%struct.etnaviv_gpu*) #1

declare dso_local i32 @etnaviv_gpu_clk_enable(%struct.etnaviv_gpu*) #1

declare dso_local i32 @dma_fence_context_alloc(i32) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @etnaviv_sched_fini(%struct.etnaviv_gpu*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @thermal_cooling_device_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
