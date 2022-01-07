; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vcn.c_amdgpu_vcn_dec_ring_test_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vcn.c_amdgpu_vcn_dec_ring_test_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }
%struct.dma_fence = type { i32 }

@ETIMEDOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_vcn_dec_ring_test_ib(%struct.amdgpu_ring* %0, i64 %1) #0 {
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dma_fence*, align 8
  %6 = alloca i64, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %8 = call i64 @amdgpu_vcn_dec_get_create_msg(%struct.amdgpu_ring* %7, i32 1, i32* null)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %35

12:                                               ; preds = %2
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %14 = call i64 @amdgpu_vcn_dec_get_destroy_msg(%struct.amdgpu_ring* %13, i32 1, %struct.dma_fence** %5)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %35

18:                                               ; preds = %12
  %19 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @dma_fence_wait_timeout(%struct.dma_fence* %19, i32 0, i64 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i64, i64* @ETIMEDOUT, align 8
  %26 = sub nsw i64 0, %25
  store i64 %26, i64* %6, align 8
  br label %32

27:                                               ; preds = %18
  %28 = load i64, i64* %6, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i64 0, i64* %6, align 8
  br label %31

31:                                               ; preds = %30, %27
  br label %32

32:                                               ; preds = %31, %24
  %33 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %34 = call i32 @dma_fence_put(%struct.dma_fence* %33)
  br label %35

35:                                               ; preds = %32, %17, %11
  %36 = load i64, i64* %6, align 8
  %37 = trunc i64 %36 to i32
  ret i32 %37
}

declare dso_local i64 @amdgpu_vcn_dec_get_create_msg(%struct.amdgpu_ring*, i32, i32*) #1

declare dso_local i64 @amdgpu_vcn_dec_get_destroy_msg(%struct.amdgpu_ring*, i32, %struct.dma_fence**) #1

declare dso_local i64 @dma_fence_wait_timeout(%struct.dma_fence*, i32, i64) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
