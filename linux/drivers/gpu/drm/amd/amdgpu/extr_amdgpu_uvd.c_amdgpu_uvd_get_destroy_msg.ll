; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_uvd.c_amdgpu_uvd_get_destroy_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_uvd.c_amdgpu_uvd_get_destroy_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.dma_fence = type { i32 }
%struct.amdgpu_bo = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_uvd_get_destroy_msg(%struct.amdgpu_ring* %0, i32 %1, i32 %2, %struct.dma_fence** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dma_fence**, align 8
  %10 = alloca %struct.amdgpu_device*, align 8
  %11 = alloca %struct.amdgpu_bo*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.dma_fence** %3, %struct.dma_fence*** %9, align 8
  %15 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %16 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %15, i32 0, i32 0
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %16, align 8
  store %struct.amdgpu_device* %17, %struct.amdgpu_device** %10, align 8
  store %struct.amdgpu_bo* null, %struct.amdgpu_bo** %11, align 8
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %21 = bitcast i32** %12 to i8**
  %22 = call i32 @amdgpu_bo_create_reserved(%struct.amdgpu_device* %18, i32 1024, i32 %19, i32 %20, %struct.amdgpu_bo** %11, i32* null, i8** %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %5, align 4
  br label %59

27:                                               ; preds = %4
  %28 = call i32 @cpu_to_le32(i32 3556)
  %29 = load i32*, i32** %12, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %28, i32* %30, align 4
  %31 = call i32 @cpu_to_le32(i32 2)
  %32 = load i32*, i32** %12, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @cpu_to_le32(i32 %34)
  %36 = load i32*, i32** %12, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  store i32 %35, i32* %37, align 4
  %38 = call i32 @cpu_to_le32(i32 0)
  %39 = load i32*, i32** %12, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  store i32 %38, i32* %40, align 4
  store i32 4, i32* %14, align 4
  br label %41

41:                                               ; preds = %50, %27
  %42 = load i32, i32* %14, align 4
  %43 = icmp slt i32 %42, 1024
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = call i32 @cpu_to_le32(i32 0)
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %45, i32* %49, align 4
  br label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %14, align 4
  br label %41

53:                                               ; preds = %41
  %54 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %55 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %58 = call i32 @amdgpu_uvd_send_msg(%struct.amdgpu_ring* %54, %struct.amdgpu_bo* %55, i32 %56, %struct.dma_fence** %57)
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %53, %25
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @amdgpu_bo_create_reserved(%struct.amdgpu_device*, i32, i32, i32, %struct.amdgpu_bo**, i32*, i8**) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @amdgpu_uvd_send_msg(%struct.amdgpu_ring*, %struct.amdgpu_bo*, i32, %struct.dma_fence**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
