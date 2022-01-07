; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vcn.c_amdgpu_vcn_dec_get_destroy_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vcn.c_amdgpu_vcn_dec_get_destroy_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.dma_fence = type { i32 }
%struct.amdgpu_bo = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*, i32, %struct.dma_fence**)* @amdgpu_vcn_dec_get_destroy_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_vcn_dec_get_destroy_msg(%struct.amdgpu_ring* %0, i32 %1, %struct.dma_fence** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_fence**, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.amdgpu_bo*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dma_fence** %2, %struct.dma_fence*** %7, align 8
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %13, i32 0, i32 0
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  store %struct.amdgpu_device* %15, %struct.amdgpu_device** %8, align 8
  store %struct.amdgpu_bo* null, %struct.amdgpu_bo** %9, align 8
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %19 = bitcast i32** %10 to i8**
  %20 = call i32 @amdgpu_bo_create_reserved(%struct.amdgpu_device* %16, i32 1024, i32 %17, i32 %18, %struct.amdgpu_bo** %9, i32* null, i8** %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  br label %62

25:                                               ; preds = %3
  %26 = call i32 @cpu_to_le32(i32 40)
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %26, i32* %28, align 4
  %29 = call i32 @cpu_to_le32(i32 24)
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %29, i32* %31, align 4
  %32 = call i32 @cpu_to_le32(i32 0)
  %33 = load i32*, i32** %10, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32 %32, i32* %34, align 4
  %35 = call i32 @cpu_to_le32(i32 2)
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @cpu_to_le32(i32 %38)
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  store i32 %39, i32* %41, align 4
  %42 = call i32 @cpu_to_le32(i32 0)
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 5
  store i32 %42, i32* %44, align 4
  store i32 6, i32* %12, align 4
  br label %45

45:                                               ; preds = %54, %25
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 1024
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = call i32 @cpu_to_le32(i32 0)
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %49, i32* %53, align 4
  br label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %45

57:                                               ; preds = %45
  %58 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %59 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %60 = load %struct.dma_fence**, %struct.dma_fence*** %7, align 8
  %61 = call i32 @amdgpu_vcn_dec_send_msg(%struct.amdgpu_ring* %58, %struct.amdgpu_bo* %59, %struct.dma_fence** %60)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %57, %23
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @amdgpu_bo_create_reserved(%struct.amdgpu_device*, i32, i32, i32, %struct.amdgpu_bo**, i32*, i8**) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @amdgpu_vcn_dec_send_msg(%struct.amdgpu_ring*, %struct.amdgpu_bo*, %struct.dma_fence**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
