; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vce.c_amdgpu_vce_ring_test_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vce.c_amdgpu_vce_ring_test_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.amdgpu_ring* }
%struct.dma_fence = type { i32 }
%struct.amdgpu_bo = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_vce_ring_test_ib(%struct.amdgpu_ring* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dma_fence*, align 8
  %7 = alloca %struct.amdgpu_bo*, align 8
  %8 = alloca i64, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.dma_fence* null, %struct.dma_fence** %6, align 8
  store %struct.amdgpu_bo* null, %struct.amdgpu_bo** %7, align 8
  %9 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %10 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %11 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %16 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %15, i64 0
  %17 = icmp ne %struct.amdgpu_ring* %9, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %67

19:                                               ; preds = %2
  %20 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %21 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %25 = call i64 @amdgpu_bo_create_reserved(%struct.TYPE_4__* %22, i32 512, i32 %23, i32 %24, %struct.amdgpu_bo** %7, i32* null, i32* null)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i64, i64* %8, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %67

31:                                               ; preds = %19
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %33 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %34 = call i64 @amdgpu_vce_get_create_msg(%struct.amdgpu_ring* %32, i32 1, %struct.amdgpu_bo* %33, i32* null)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %59

38:                                               ; preds = %31
  %39 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %40 = call i64 @amdgpu_vce_get_destroy_msg(%struct.amdgpu_ring* %39, i32 1, i32 1, %struct.dma_fence** %6)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %59

44:                                               ; preds = %38
  %45 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @dma_fence_wait_timeout(%struct.dma_fence* %45, i32 0, i64 %46)
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i64, i64* @ETIMEDOUT, align 8
  %52 = sub nsw i64 0, %51
  store i64 %52, i64* %8, align 8
  br label %58

53:                                               ; preds = %44
  %54 = load i64, i64* %8, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i64 0, i64* %8, align 8
  br label %57

57:                                               ; preds = %56, %53
  br label %58

58:                                               ; preds = %57, %50
  br label %59

59:                                               ; preds = %58, %43, %37
  %60 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %61 = call i32 @dma_fence_put(%struct.dma_fence* %60)
  %62 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %63 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %62)
  %64 = call i32 @amdgpu_bo_unref(%struct.amdgpu_bo** %7)
  %65 = load i64, i64* %8, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %59, %28, %18
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @amdgpu_bo_create_reserved(%struct.TYPE_4__*, i32, i32, i32, %struct.amdgpu_bo**, i32*, i32*) #1

declare dso_local i64 @amdgpu_vce_get_create_msg(%struct.amdgpu_ring*, i32, %struct.amdgpu_bo*, i32*) #1

declare dso_local i64 @amdgpu_vce_get_destroy_msg(%struct.amdgpu_ring*, i32, i32, %struct.dma_fence**) #1

declare dso_local i64 @dma_fence_wait_timeout(%struct.dma_fence*, i32, i64) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_unref(%struct.amdgpu_bo**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
