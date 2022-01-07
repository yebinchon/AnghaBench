; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ctx.c_amdgpu_ctx_get_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ctx.c_amdgpu_ctx_get_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.amdgpu_ctx = type { i32 }
%struct.drm_sched_entity = type { i32 }
%struct.amdgpu_ctx_entity = type { i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@amdgpu_sched_jobs = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_fence* @amdgpu_ctx_get_fence(%struct.amdgpu_ctx* %0, %struct.drm_sched_entity* %1, i64 %2) #0 {
  %4 = alloca %struct.dma_fence*, align 8
  %5 = alloca %struct.amdgpu_ctx*, align 8
  %6 = alloca %struct.drm_sched_entity*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.amdgpu_ctx_entity*, align 8
  %9 = alloca %struct.dma_fence*, align 8
  store %struct.amdgpu_ctx* %0, %struct.amdgpu_ctx** %5, align 8
  store %struct.drm_sched_entity* %1, %struct.drm_sched_entity** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %6, align 8
  %11 = call %struct.amdgpu_ctx_entity* @to_amdgpu_ctx_entity(%struct.drm_sched_entity* %10)
  store %struct.amdgpu_ctx_entity* %11, %struct.amdgpu_ctx_entity** %8, align 8
  %12 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, -1
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.amdgpu_ctx_entity*, %struct.amdgpu_ctx_entity** %8, align 8
  %19 = getelementptr inbounds %struct.amdgpu_ctx_entity, %struct.amdgpu_ctx_entity* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub i64 %20, 1
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %17, %3
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.amdgpu_ctx_entity*, %struct.amdgpu_ctx_entity** %8, align 8
  %25 = getelementptr inbounds %struct.amdgpu_ctx_entity, %struct.amdgpu_ctx_entity* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp uge i64 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.dma_fence* @ERR_PTR(i32 %33)
  store %struct.dma_fence* %34, %struct.dma_fence** %4, align 8
  br label %62

35:                                               ; preds = %22
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @amdgpu_sched_jobs, align 8
  %38 = add i64 %36, %37
  %39 = load %struct.amdgpu_ctx_entity*, %struct.amdgpu_ctx_entity** %8, align 8
  %40 = getelementptr inbounds %struct.amdgpu_ctx_entity, %struct.amdgpu_ctx_entity* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %5, align 8
  %45 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock(i32* %45)
  store %struct.dma_fence* null, %struct.dma_fence** %4, align 8
  br label %62

47:                                               ; preds = %35
  %48 = load %struct.amdgpu_ctx_entity*, %struct.amdgpu_ctx_entity** %8, align 8
  %49 = getelementptr inbounds %struct.amdgpu_ctx_entity, %struct.amdgpu_ctx_entity* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @amdgpu_sched_jobs, align 8
  %53 = sub i64 %52, 1
  %54 = and i64 %51, %53
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.dma_fence* @dma_fence_get(i32 %56)
  store %struct.dma_fence* %57, %struct.dma_fence** %9, align 8
  %58 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %5, align 8
  %59 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  store %struct.dma_fence* %61, %struct.dma_fence** %4, align 8
  br label %62

62:                                               ; preds = %47, %43, %28
  %63 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  ret %struct.dma_fence* %63
}

declare dso_local %struct.amdgpu_ctx_entity* @to_amdgpu_ctx_entity(%struct.drm_sched_entity*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.dma_fence* @ERR_PTR(i32) #1

declare dso_local %struct.dma_fence* @dma_fence_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
