; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_object.c_virtio_gpu_init_ttm_placement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_object.c_virtio_gpu_init_ttm_placement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_gpu_object = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i8*, i8*, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i64 }

@TTM_PL_MASK_CACHING = common dso_local global i32 0, align 4
@TTM_PL_FLAG_TT = common dso_local global i32 0, align 4
@TTM_PL_FLAG_NO_EVICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_gpu_object*)* @virtio_gpu_init_ttm_placement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtio_gpu_init_ttm_placement(%struct.virtio_gpu_object* %0) #0 {
  %2 = alloca %struct.virtio_gpu_object*, align 8
  %3 = alloca i8*, align 8
  store %struct.virtio_gpu_object* %0, %struct.virtio_gpu_object** %2, align 8
  store i8* inttoptr (i64 1 to i8*), i8** %3, align 8
  %4 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %2, align 8
  %5 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %4, i32 0, i32 1
  %6 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %2, align 8
  %7 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %8, align 8
  %9 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %2, align 8
  %10 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %9, i32 0, i32 1
  %11 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %2, align 8
  %12 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %13, align 8
  %14 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %2, align 8
  %15 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %2, align 8
  %18 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @TTM_PL_MASK_CACHING, align 4
  %21 = load i32, i32* @TTM_PL_FLAG_TT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @TTM_PL_FLAG_NO_EVICT, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %2, align 8
  %26 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %2, align 8
  %30 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i8* %28, i8** %31, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %2, align 8
  %34 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
