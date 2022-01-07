; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_dma_buf.c_amdgpu_dma_buf_map_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_dma_buf.c_amdgpu_dma_buf_map_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { %struct.drm_gem_object* }
%struct.drm_gem_object = type { i32 }
%struct.dma_buf_attachment = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.amdgpu_bo = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_buf*, %struct.dma_buf_attachment*)* @amdgpu_dma_buf_map_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_dma_buf_map_detach(%struct.dma_buf* %0, %struct.dma_buf_attachment* %1) #0 {
  %3 = alloca %struct.dma_buf*, align 8
  %4 = alloca %struct.dma_buf_attachment*, align 8
  %5 = alloca %struct.drm_gem_object*, align 8
  %6 = alloca %struct.amdgpu_bo*, align 8
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca i32, align 4
  store %struct.dma_buf* %0, %struct.dma_buf** %3, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %4, align 8
  %9 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %10 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %9, i32 0, i32 0
  %11 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  store %struct.drm_gem_object* %11, %struct.drm_gem_object** %5, align 8
  %12 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %13 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object* %12)
  store %struct.amdgpu_bo* %13, %struct.amdgpu_bo** %6, align 8
  %14 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %15 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %17)
  store %struct.amdgpu_device* %18, %struct.amdgpu_device** %7, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %20 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %19, i32 1)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %54

27:                                               ; preds = %2
  %28 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %29 = call i32 @amdgpu_bo_unpin(%struct.amdgpu_bo* %28)
  %30 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %31 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %34, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %27
  %42 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %43 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %48 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* %48, align 8
  br label %51

51:                                               ; preds = %46, %41, %27
  %52 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %53 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %52)
  br label %54

54:                                               ; preds = %51, %26
  %55 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %56 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %57 = call i32 @drm_gem_map_detach(%struct.dma_buf* %55, %struct.dma_buf_attachment* %56)
  ret void
}

declare dso_local %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object*) #1

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

declare dso_local i32 @amdgpu_bo_reserve(%struct.amdgpu_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @amdgpu_bo_unpin(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo*) #1

declare dso_local i32 @drm_gem_map_detach(%struct.dma_buf*, %struct.dma_buf_attachment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
