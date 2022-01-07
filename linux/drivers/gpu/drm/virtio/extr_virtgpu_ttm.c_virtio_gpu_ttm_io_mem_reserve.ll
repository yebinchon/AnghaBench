; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_ttm.c_virtio_gpu_ttm_io_mem_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_ttm.c_virtio_gpu_ttm_io_mem_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { i32 }
%struct.ttm_mem_reg = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i32* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@TTM_MEMTYPE_FLAG_MAPPABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_bo_device*, %struct.ttm_mem_reg*)* @virtio_gpu_ttm_io_mem_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_gpu_ttm_io_mem_reserve(%struct.ttm_bo_device* %0, %struct.ttm_mem_reg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_bo_device*, align 8
  %5 = alloca %struct.ttm_mem_reg*, align 8
  %6 = alloca %struct.ttm_mem_type_manager*, align 8
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %4, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %5, align 8
  %7 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %8 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %7, i32 0, i32 0
  %9 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %8, align 8
  %10 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %11 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %9, i64 %12
  store %struct.ttm_mem_type_manager* %13, %struct.ttm_mem_type_manager** %6, align 8
  %14 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %15 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  store i32* null, i32** %16, align 8
  %17 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %18 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %21 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PAGE_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %26 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %29 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %32 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %35 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TTM_MEMTYPE_FLAG_MAPPABLE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %2
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %51

43:                                               ; preds = %2
  %44 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %45 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  switch i64 %46, label %48 [
    i64 129, label %47
    i64 128, label %47
  ]

47:                                               ; preds = %43, %43
  store i32 0, i32* %3, align 4
  br label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %47, %40
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
