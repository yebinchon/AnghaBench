; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_get_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_get_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.amdgpu_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_amdgpu_fence = type { i32, i32, i32, i32, i32 }
%struct.drm_sched_entity = type { i32 }
%struct.amdgpu_ctx = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_fence* (%struct.amdgpu_device*, %struct.drm_file*, %struct.drm_amdgpu_fence*)* @amdgpu_cs_get_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_fence* @amdgpu_cs_get_fence(%struct.amdgpu_device* %0, %struct.drm_file* %1, %struct.drm_amdgpu_fence* %2) #0 {
  %4 = alloca %struct.dma_fence*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_amdgpu_fence*, align 8
  %8 = alloca %struct.drm_sched_entity*, align 8
  %9 = alloca %struct.amdgpu_ctx*, align 8
  %10 = alloca %struct.dma_fence*, align 8
  %11 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.drm_amdgpu_fence* %2, %struct.drm_amdgpu_fence** %7, align 8
  %12 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %13 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.drm_amdgpu_fence*, %struct.drm_amdgpu_fence** %7, align 8
  %16 = getelementptr inbounds %struct.drm_amdgpu_fence, %struct.drm_amdgpu_fence* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.amdgpu_ctx* @amdgpu_ctx_get(i32 %14, i32 %17)
  store %struct.amdgpu_ctx* %18, %struct.amdgpu_ctx** %9, align 8
  %19 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %20 = icmp eq %struct.amdgpu_ctx* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.dma_fence* @ERR_PTR(i32 %23)
  store %struct.dma_fence* %24, %struct.dma_fence** %4, align 8
  br label %54

25:                                               ; preds = %3
  %26 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %27 = load %struct.drm_amdgpu_fence*, %struct.drm_amdgpu_fence** %7, align 8
  %28 = getelementptr inbounds %struct.drm_amdgpu_fence, %struct.drm_amdgpu_fence* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.drm_amdgpu_fence*, %struct.drm_amdgpu_fence** %7, align 8
  %31 = getelementptr inbounds %struct.drm_amdgpu_fence, %struct.drm_amdgpu_fence* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.drm_amdgpu_fence*, %struct.drm_amdgpu_fence** %7, align 8
  %34 = getelementptr inbounds %struct.drm_amdgpu_fence, %struct.drm_amdgpu_fence* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @amdgpu_ctx_get_entity(%struct.amdgpu_ctx* %26, i32 %29, i32 %32, i32 %35, %struct.drm_sched_entity** %8)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %25
  %40 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %41 = call i32 @amdgpu_ctx_put(%struct.amdgpu_ctx* %40)
  %42 = load i32, i32* %11, align 4
  %43 = call %struct.dma_fence* @ERR_PTR(i32 %42)
  store %struct.dma_fence* %43, %struct.dma_fence** %4, align 8
  br label %54

44:                                               ; preds = %25
  %45 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %46 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %8, align 8
  %47 = load %struct.drm_amdgpu_fence*, %struct.drm_amdgpu_fence** %7, align 8
  %48 = getelementptr inbounds %struct.drm_amdgpu_fence, %struct.drm_amdgpu_fence* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.dma_fence* @amdgpu_ctx_get_fence(%struct.amdgpu_ctx* %45, %struct.drm_sched_entity* %46, i32 %49)
  store %struct.dma_fence* %50, %struct.dma_fence** %10, align 8
  %51 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %52 = call i32 @amdgpu_ctx_put(%struct.amdgpu_ctx* %51)
  %53 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  store %struct.dma_fence* %53, %struct.dma_fence** %4, align 8
  br label %54

54:                                               ; preds = %44, %39, %21
  %55 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  ret %struct.dma_fence* %55
}

declare dso_local %struct.amdgpu_ctx* @amdgpu_ctx_get(i32, i32) #1

declare dso_local %struct.dma_fence* @ERR_PTR(i32) #1

declare dso_local i32 @amdgpu_ctx_get_entity(%struct.amdgpu_ctx*, i32, i32, i32, %struct.drm_sched_entity**) #1

declare dso_local i32 @amdgpu_ctx_put(%struct.amdgpu_ctx*) #1

declare dso_local %struct.dma_fence* @amdgpu_ctx_get_fence(%struct.amdgpu_ctx*, %struct.drm_sched_entity*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
