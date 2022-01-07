; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_sgdma.c_nouveau_sgdma_create_ttm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_sgdma.c_nouveau_sgdma_create_ttm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32* }
%struct.ttm_buffer_object = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.nouveau_sgdma_be = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.ttm_tt }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NV_DEVICE_INFO_V0_TESLA = common dso_local global i64 0, align 8
@nv04_sgdma_backend = common dso_local global i32 0, align 4
@nv50_sgdma_backend = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ttm_tt* @nouveau_sgdma_create_ttm(%struct.ttm_buffer_object* %0, i32 %1) #0 {
  %3 = alloca %struct.ttm_tt*, align 8
  %4 = alloca %struct.ttm_buffer_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.nouveau_sgdma_be*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %9 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.nouveau_drm* @nouveau_bdev(i32 %10)
  store %struct.nouveau_drm* %11, %struct.nouveau_drm** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.nouveau_sgdma_be* @kzalloc(i32 8, i32 %12)
  store %struct.nouveau_sgdma_be* %13, %struct.nouveau_sgdma_be** %7, align 8
  %14 = load %struct.nouveau_sgdma_be*, %struct.nouveau_sgdma_be** %7, align 8
  %15 = icmp ne %struct.nouveau_sgdma_be* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.ttm_tt* null, %struct.ttm_tt** %3, align 8
  br label %48

17:                                               ; preds = %2
  %18 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %19 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NV_DEVICE_INFO_V0_TESLA, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load %struct.nouveau_sgdma_be*, %struct.nouveau_sgdma_be** %7, align 8
  %28 = getelementptr inbounds %struct.nouveau_sgdma_be, %struct.nouveau_sgdma_be* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %29, i32 0, i32 0
  store i32* @nv04_sgdma_backend, i32** %30, align 8
  br label %36

31:                                               ; preds = %17
  %32 = load %struct.nouveau_sgdma_be*, %struct.nouveau_sgdma_be** %7, align 8
  %33 = getelementptr inbounds %struct.nouveau_sgdma_be, %struct.nouveau_sgdma_be* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %34, i32 0, i32 0
  store i32* @nv50_sgdma_backend, i32** %35, align 8
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.nouveau_sgdma_be*, %struct.nouveau_sgdma_be** %7, align 8
  %38 = getelementptr inbounds %struct.nouveau_sgdma_be, %struct.nouveau_sgdma_be* %37, i32 0, i32 0
  %39 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @ttm_dma_tt_init(%struct.TYPE_8__* %38, %struct.ttm_buffer_object* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store %struct.ttm_tt* null, %struct.ttm_tt** %3, align 8
  br label %48

44:                                               ; preds = %36
  %45 = load %struct.nouveau_sgdma_be*, %struct.nouveau_sgdma_be** %7, align 8
  %46 = getelementptr inbounds %struct.nouveau_sgdma_be, %struct.nouveau_sgdma_be* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store %struct.ttm_tt* %47, %struct.ttm_tt** %3, align 8
  br label %48

48:                                               ; preds = %44, %43, %16
  %49 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  ret %struct.ttm_tt* %49
}

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local %struct.nouveau_sgdma_be* @kzalloc(i32, i32) #1

declare dso_local i64 @ttm_dma_tt_init(%struct.TYPE_8__*, %struct.ttm_buffer_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
