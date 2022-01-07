; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_ttm.c_virtio_gpu_init_mem_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_ttm.c_virtio_gpu_init_mem_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { i32 }
%struct.ttm_mem_type_manager = type { i8*, i8*, i8*, i32* }

@TTM_MEMTYPE_FLAG_MAPPABLE = common dso_local global i8* null, align 8
@TTM_PL_MASK_CACHING = common dso_local global i8* null, align 8
@TTM_PL_FLAG_CACHED = common dso_local global i8* null, align 8
@virtio_gpu_bo_manager_func = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unsupported memory type %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_bo_device*, i32, %struct.ttm_mem_type_manager*)* @virtio_gpu_init_mem_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_gpu_init_mem_type(%struct.ttm_bo_device* %0, i32 %1, %struct.ttm_mem_type_manager* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_bo_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_mem_type_manager*, align 8
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ttm_mem_type_manager* %2, %struct.ttm_mem_type_manager** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %31 [
    i32 129, label %9
    i32 128, label %19
  ]

9:                                                ; preds = %3
  %10 = load i8*, i8** @TTM_MEMTYPE_FLAG_MAPPABLE, align 8
  %11 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %12 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %11, i32 0, i32 2
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** @TTM_PL_MASK_CACHING, align 8
  %14 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %15 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** @TTM_PL_FLAG_CACHED, align 8
  %17 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %18 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  br label %36

19:                                               ; preds = %3
  %20 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %21 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %20, i32 0, i32 3
  store i32* @virtio_gpu_bo_manager_func, i32** %21, align 8
  %22 = load i8*, i8** @TTM_MEMTYPE_FLAG_MAPPABLE, align 8
  %23 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %24 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** @TTM_PL_MASK_CACHING, align 8
  %26 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %27 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** @TTM_PL_FLAG_CACHED, align 8
  %29 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %30 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  br label %36

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %37

36:                                               ; preds = %19, %9
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
