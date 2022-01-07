; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vcn.c_amdgpu_vcn_dec_get_create_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vcn.c_amdgpu_vcn_dec_get_create_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.dma_fence = type { i32 }
%struct.amdgpu_bo = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*, i32, %struct.dma_fence**)* @amdgpu_vcn_dec_get_create_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_vcn_dec_get_create_msg(%struct.amdgpu_ring* %0, i32 %1, %struct.dma_fence** %2) #0 {
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
  br label %86

25:                                               ; preds = %3
  %26 = call i32 @cpu_to_le32(i32 40)
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %26, i32* %28, align 4
  %29 = call i32 @cpu_to_le32(i32 56)
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %29, i32* %31, align 4
  %32 = call i32 @cpu_to_le32(i32 1)
  %33 = load i32*, i32** %10, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32 %32, i32* %34, align 4
  %35 = call i32 @cpu_to_le32(i32 0)
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
  %45 = call i32 @cpu_to_le32(i32 1)
  %46 = load i32*, i32** %10, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 6
  store i32 %45, i32* %47, align 4
  %48 = call i32 @cpu_to_le32(i32 40)
  %49 = load i32*, i32** %10, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 7
  store i32 %48, i32* %50, align 4
  %51 = call i32 @cpu_to_le32(i32 16)
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 8
  store i32 %51, i32* %53, align 4
  %54 = call i32 @cpu_to_le32(i32 0)
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 9
  store i32 %54, i32* %56, align 4
  %57 = call i32 @cpu_to_le32(i32 7)
  %58 = load i32*, i32** %10, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 10
  store i32 %57, i32* %59, align 4
  %60 = call i32 @cpu_to_le32(i32 0)
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 11
  store i32 %60, i32* %62, align 4
  %63 = call i32 @cpu_to_le32(i32 1920)
  %64 = load i32*, i32** %10, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 12
  store i32 %63, i32* %65, align 4
  %66 = call i32 @cpu_to_le32(i32 1088)
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 13
  store i32 %66, i32* %68, align 4
  store i32 14, i32* %12, align 4
  br label %69

69:                                               ; preds = %78, %25
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %70, 1024
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = call i32 @cpu_to_le32(i32 0)
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  br label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %69

81:                                               ; preds = %69
  %82 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %83 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %84 = load %struct.dma_fence**, %struct.dma_fence*** %7, align 8
  %85 = call i32 @amdgpu_vcn_dec_send_msg(%struct.amdgpu_ring* %82, %struct.amdgpu_bo* %83, %struct.dma_fence** %84)
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %81, %23
  %87 = load i32, i32* %4, align 4
  ret i32 %87
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
