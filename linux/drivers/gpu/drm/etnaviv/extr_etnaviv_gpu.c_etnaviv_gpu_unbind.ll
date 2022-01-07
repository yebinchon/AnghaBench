; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.etnaviv_gpu = type { i32, i32*, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CONFIG_DRM_ETNAVIV_THERMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.device*, i8*)* @etnaviv_gpu_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etnaviv_gpu_unbind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.etnaviv_gpu*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.etnaviv_gpu* @dev_get_drvdata(%struct.device* %8)
  store %struct.etnaviv_gpu* %9, %struct.etnaviv_gpu** %7, align 8
  %10 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %7, align 8
  %11 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_name(i32 %12)
  %14 = call i32 @DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %7, align 8
  %16 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @flush_workqueue(i32 %17)
  %19 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %7, align 8
  %20 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @destroy_workqueue(i32 %21)
  %23 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %7, align 8
  %24 = call i32 @etnaviv_sched_fini(%struct.etnaviv_gpu* %23)
  %25 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %7, align 8
  %26 = call i32 @etnaviv_gpu_hw_suspend(%struct.etnaviv_gpu* %25)
  %27 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %7, align 8
  %28 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %3
  %32 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %7, align 8
  %33 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %32, i32 0, i32 4
  %34 = call i32 @etnaviv_cmdbuf_free(i32* %33)
  %35 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %7, align 8
  %36 = call i32 @etnaviv_iommu_global_fini(%struct.etnaviv_gpu* %35)
  %37 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %7, align 8
  %38 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %39

39:                                               ; preds = %31, %3
  %40 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %7, align 8
  %41 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %40, i32 0, i32 3
  store i32* null, i32** %41, align 8
  %42 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %7, align 8
  %43 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %42, i32 0, i32 2
  %44 = call i32 @idr_destroy(i32* %43)
  %45 = load i32, i32* @CONFIG_DRM_ETNAVIV_THERMAL, align 4
  %46 = call i64 @IS_ENABLED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %7, align 8
  %50 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @thermal_cooling_device_unregister(i32* %51)
  br label %53

53:                                               ; preds = %48, %39
  %54 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %7, align 8
  %55 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %54, i32 0, i32 1
  store i32* null, i32** %55, align 8
  ret void
}

declare dso_local %struct.etnaviv_gpu* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @etnaviv_sched_fini(%struct.etnaviv_gpu*) #1

declare dso_local i32 @etnaviv_gpu_hw_suspend(%struct.etnaviv_gpu*) #1

declare dso_local i32 @etnaviv_cmdbuf_free(i32*) #1

declare dso_local i32 @etnaviv_iommu_global_fini(%struct.etnaviv_gpu*) #1

declare dso_local i32 @idr_destroy(i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @thermal_cooling_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
