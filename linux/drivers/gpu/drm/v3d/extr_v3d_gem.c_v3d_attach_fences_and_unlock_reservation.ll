; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_attach_fences_and_unlock_reservation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_attach_fences_and_unlock_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.v3d_job = type { i32, %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ww_acquire_ctx = type { i32 }
%struct.dma_fence = type { i32 }
%struct.drm_syncobj = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_file*, %struct.v3d_job*, %struct.ww_acquire_ctx*, i32, %struct.dma_fence*)* @v3d_attach_fences_and_unlock_reservation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v3d_attach_fences_and_unlock_reservation(%struct.drm_file* %0, %struct.v3d_job* %1, %struct.ww_acquire_ctx* %2, i32 %3, %struct.dma_fence* %4) #0 {
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.v3d_job*, align 8
  %8 = alloca %struct.ww_acquire_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dma_fence*, align 8
  %11 = alloca %struct.drm_syncobj*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %6, align 8
  store %struct.v3d_job* %1, %struct.v3d_job** %7, align 8
  store %struct.ww_acquire_ctx* %2, %struct.ww_acquire_ctx** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.dma_fence* %4, %struct.dma_fence** %10, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %33, %5
  %14 = load i32, i32* %12, align 4
  %15 = load %struct.v3d_job*, %struct.v3d_job** %7, align 8
  %16 = getelementptr inbounds %struct.v3d_job, %struct.v3d_job* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %13
  %20 = load %struct.v3d_job*, %struct.v3d_job** %7, align 8
  %21 = getelementptr inbounds %struct.v3d_job, %struct.v3d_job* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %21, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.v3d_job*, %struct.v3d_job** %7, align 8
  %30 = getelementptr inbounds %struct.v3d_job, %struct.v3d_job* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dma_resv_add_excl_fence(i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %19
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %12, align 4
  br label %13

36:                                               ; preds = %13
  %37 = load %struct.v3d_job*, %struct.v3d_job** %7, align 8
  %38 = getelementptr inbounds %struct.v3d_job, %struct.v3d_job* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %38, align 8
  %40 = load %struct.v3d_job*, %struct.v3d_job** %7, align 8
  %41 = getelementptr inbounds %struct.v3d_job, %struct.v3d_job* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %8, align 8
  %44 = call i32 @drm_gem_unlock_reservations(%struct.TYPE_2__** %39, i32 %42, %struct.ww_acquire_ctx* %43)
  %45 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call %struct.drm_syncobj* @drm_syncobj_find(%struct.drm_file* %45, i32 %46)
  store %struct.drm_syncobj* %47, %struct.drm_syncobj** %11, align 8
  %48 = load %struct.drm_syncobj*, %struct.drm_syncobj** %11, align 8
  %49 = icmp ne %struct.drm_syncobj* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %36
  %51 = load %struct.drm_syncobj*, %struct.drm_syncobj** %11, align 8
  %52 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %53 = call i32 @drm_syncobj_replace_fence(%struct.drm_syncobj* %51, %struct.dma_fence* %52)
  %54 = load %struct.drm_syncobj*, %struct.drm_syncobj** %11, align 8
  %55 = call i32 @drm_syncobj_put(%struct.drm_syncobj* %54)
  br label %56

56:                                               ; preds = %50, %36
  ret void
}

declare dso_local i32 @dma_resv_add_excl_fence(i32, i32) #1

declare dso_local i32 @drm_gem_unlock_reservations(%struct.TYPE_2__**, i32, %struct.ww_acquire_ctx*) #1

declare dso_local %struct.drm_syncobj* @drm_syncobj_find(%struct.drm_file*, i32) #1

declare dso_local i32 @drm_syncobj_replace_fence(%struct.drm_syncobj*, %struct.dma_fence*) #1

declare dso_local i32 @drm_syncobj_put(%struct.drm_syncobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
