; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_allocate_hiq_sdma_mqd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_allocate_hiq_sdma_mqd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { %struct.TYPE_4__**, %struct.kfd_mem_obj, %struct.kfd_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.kfd_mem_obj = type { i32, i32, i32 }
%struct.kfd_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@KFD_MQD_TYPE_SDMA = common dso_local global i64 0, align 8
@KFD_MQD_TYPE_HIQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_queue_manager*)* @allocate_hiq_sdma_mqd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_hiq_sdma_mqd(%struct.device_queue_manager* %0) #0 {
  %2 = alloca %struct.device_queue_manager*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kfd_dev*, align 8
  %5 = alloca %struct.kfd_mem_obj*, align 8
  %6 = alloca i32, align 4
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %2, align 8
  %7 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %8 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %7, i32 0, i32 2
  %9 = load %struct.kfd_dev*, %struct.kfd_dev** %8, align 8
  store %struct.kfd_dev* %9, %struct.kfd_dev** %4, align 8
  %10 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %11 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %10, i32 0, i32 1
  store %struct.kfd_mem_obj* %11, %struct.kfd_mem_obj** %5, align 8
  %12 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %13 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %13, align 8
  %15 = load i64, i64* @KFD_MQD_TYPE_SDMA, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %14, i64 %15
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %21 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %19, %24
  %26 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %27 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %25, %30
  %32 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %33 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %33, align 8
  %35 = load i64, i64* @KFD_MQD_TYPE_HIQ, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %34, i64 %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %31, %39
  store i32 %40, i32* %6, align 4
  %41 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %42 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %5, align 8
  %46 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %45, i32 0, i32 2
  %47 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %5, align 8
  %48 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %47, i32 0, i32 1
  %49 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %5, align 8
  %50 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %49, i32 0, i32 0
  %51 = bitcast i32* %50 to i8*
  %52 = call i32 @amdgpu_amdkfd_alloc_gtt_mem(i32 %43, i32 %44, i32* %46, i32* %48, i8* %51, i32 1)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @amdgpu_amdkfd_alloc_gtt_mem(i32, i32, i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
