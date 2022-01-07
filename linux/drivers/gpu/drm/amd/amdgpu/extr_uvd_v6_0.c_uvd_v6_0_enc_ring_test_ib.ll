; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v6_0.c_uvd_v6_0_enc_ring_test_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v6_0.c_uvd_v6_0_enc_ring_test_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }
%struct.dma_fence = type { i32 }
%struct.amdgpu_bo = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*, i64)* @uvd_v6_0_enc_ring_test_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvd_v6_0_enc_ring_test_ib(%struct.amdgpu_ring* %0, i64 %1) #0 {
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
  %10 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %14 = call i64 @amdgpu_bo_create_reserved(i32 %11, i32 131072, i32 %12, i32 %13, %struct.amdgpu_bo** %7, i32* null, i32* null)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i64, i64* %8, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %3, align 4
  br label %57

20:                                               ; preds = %2
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %22 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %23 = call i64 @uvd_v6_0_enc_get_create_msg(%struct.amdgpu_ring* %21, i32 1, %struct.amdgpu_bo* %22, i32* null)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %49

27:                                               ; preds = %20
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %29 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %30 = call i64 @uvd_v6_0_enc_get_destroy_msg(%struct.amdgpu_ring* %28, i32 1, %struct.amdgpu_bo* %29, %struct.dma_fence** %6)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %49

34:                                               ; preds = %27
  %35 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @dma_fence_wait_timeout(%struct.dma_fence* %35, i32 0, i64 %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i64, i64* @ETIMEDOUT, align 8
  %42 = sub nsw i64 0, %41
  store i64 %42, i64* %8, align 8
  br label %48

43:                                               ; preds = %34
  %44 = load i64, i64* %8, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i64 0, i64* %8, align 8
  br label %47

47:                                               ; preds = %46, %43
  br label %48

48:                                               ; preds = %47, %40
  br label %49

49:                                               ; preds = %48, %33, %26
  %50 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %51 = call i32 @dma_fence_put(%struct.dma_fence* %50)
  %52 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %53 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %52)
  %54 = call i32 @amdgpu_bo_unref(%struct.amdgpu_bo** %7)
  %55 = load i64, i64* %8, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %49, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @amdgpu_bo_create_reserved(i32, i32, i32, i32, %struct.amdgpu_bo**, i32*, i32*) #1

declare dso_local i64 @uvd_v6_0_enc_get_create_msg(%struct.amdgpu_ring*, i32, %struct.amdgpu_bo*, i32*) #1

declare dso_local i64 @uvd_v6_0_enc_get_destroy_msg(%struct.amdgpu_ring*, i32, %struct.amdgpu_bo*, %struct.dma_fence**) #1

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
