; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_ttm_io_mem_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_ttm_io_mem_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { i32 }
%struct.ttm_mem_reg = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.nouveau_mem = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@NVIF_CLASS_MEM_NV50 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_bo_device*, %struct.ttm_mem_reg*)* @nouveau_ttm_io_mem_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_ttm_io_mem_free(%struct.ttm_bo_device* %0, %struct.ttm_mem_reg* %1) #0 {
  %3 = alloca %struct.ttm_bo_device*, align 8
  %4 = alloca %struct.ttm_mem_reg*, align 8
  %5 = alloca %struct.nouveau_drm*, align 8
  %6 = alloca %struct.nouveau_mem*, align 8
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %3, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %4, align 8
  %7 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %8 = call %struct.nouveau_drm* @nouveau_bdev(%struct.ttm_bo_device* %7)
  store %struct.nouveau_drm* %8, %struct.nouveau_drm** %5, align 8
  %9 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %10 = call %struct.nouveau_mem* @nouveau_mem(%struct.ttm_mem_reg* %9)
  store %struct.nouveau_mem* %10, %struct.nouveau_mem** %6, align 8
  %11 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %12 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NVIF_CLASS_MEM_NV50, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %2
  %20 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %21 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %39 [
    i32 129, label %23
    i32 128, label %34
  ]

23:                                               ; preds = %19
  %24 = load %struct.nouveau_mem*, %struct.nouveau_mem** %6, align 8
  %25 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.nouveau_mem*, %struct.nouveau_mem** %6, align 8
  %30 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = call i32 @nvif_object_unmap_handle(i32* %31)
  br label %33

33:                                               ; preds = %28, %23
  br label %40

34:                                               ; preds = %19
  %35 = load %struct.nouveau_mem*, %struct.nouveau_mem** %6, align 8
  %36 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = call i32 @nvif_object_unmap_handle(i32* %37)
  br label %40

39:                                               ; preds = %19
  br label %40

40:                                               ; preds = %39, %34, %33
  br label %41

41:                                               ; preds = %40, %2
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_bdev(%struct.ttm_bo_device*) #1

declare dso_local %struct.nouveau_mem* @nouveau_mem(%struct.ttm_mem_reg*) #1

declare dso_local i32 @nvif_object_unmap_handle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
