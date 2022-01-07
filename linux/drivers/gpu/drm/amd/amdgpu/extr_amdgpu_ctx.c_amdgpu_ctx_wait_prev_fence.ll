; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ctx.c_amdgpu_ctx_wait_prev_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ctx.c_amdgpu_ctx_wait_prev_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ctx = type { i32 }
%struct.drm_sched_entity = type { i32 }
%struct.amdgpu_ctx_entity = type { i32, i32* }
%struct.dma_fence = type { i32 }

@amdgpu_sched_jobs = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Error (%ld) waiting for fence!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ctx_wait_prev_fence(%struct.amdgpu_ctx* %0, %struct.drm_sched_entity* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_ctx*, align 8
  %5 = alloca %struct.drm_sched_entity*, align 8
  %6 = alloca %struct.amdgpu_ctx_entity*, align 8
  %7 = alloca %struct.dma_fence*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.amdgpu_ctx* %0, %struct.amdgpu_ctx** %4, align 8
  store %struct.drm_sched_entity* %1, %struct.drm_sched_entity** %5, align 8
  %10 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %5, align 8
  %11 = call %struct.amdgpu_ctx_entity* @to_amdgpu_ctx_entity(%struct.drm_sched_entity* %10)
  store %struct.amdgpu_ctx_entity* %11, %struct.amdgpu_ctx_entity** %6, align 8
  %12 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.amdgpu_ctx_entity*, %struct.amdgpu_ctx_entity** %6, align 8
  %16 = getelementptr inbounds %struct.amdgpu_ctx_entity, %struct.amdgpu_ctx_entity* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @amdgpu_sched_jobs, align 4
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %17, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.amdgpu_ctx_entity*, %struct.amdgpu_ctx_entity** %6, align 8
  %22 = getelementptr inbounds %struct.amdgpu_ctx_entity, %struct.amdgpu_ctx_entity* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.dma_fence* @dma_fence_get(i32 %27)
  store %struct.dma_fence* %28, %struct.dma_fence** %7, align 8
  %29 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %33 = icmp ne %struct.dma_fence* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

35:                                               ; preds = %2
  %36 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %37 = call i64 @dma_fence_wait(%struct.dma_fence* %36, i32 1)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @ERESTARTSYS, align 8
  %43 = sub nsw i64 0, %42
  %44 = icmp ne i64 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %46)
  br label %48

48:                                               ; preds = %45, %40, %35
  %49 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %50 = call i32 @dma_fence_put(%struct.dma_fence* %49)
  %51 = load i64, i64* %9, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %34
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.amdgpu_ctx_entity* @to_amdgpu_ctx_entity(%struct.drm_sched_entity*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dma_fence* @dma_fence_get(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @dma_fence_wait(%struct.dma_fence*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i64) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
