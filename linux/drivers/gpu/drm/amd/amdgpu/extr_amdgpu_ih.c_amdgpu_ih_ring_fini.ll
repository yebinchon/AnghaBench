; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ih.c_amdgpu_ih_ring_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ih.c_amdgpu_ih_ring_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ih_ring = type { i32, i32, i32, i32*, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_ih_ring_fini(%struct.amdgpu_device* %0, %struct.amdgpu_ih_ring* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ih_ring*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_ih_ring* %1, %struct.amdgpu_ih_ring** %4, align 8
  %5 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %6 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %5, i32 0, i32 6
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %2
  %10 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %11 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %62

15:                                               ; preds = %9
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %20 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 8
  %23 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %24 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = bitcast i32* %25 to i8*
  %27 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %28 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dma_free_coherent(i32 %18, i64 %22, i8* %26, i32 %29)
  %31 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %32 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %31, i32 0, i32 3
  store i32* null, i32** %32, align 8
  br label %62

33:                                               ; preds = %2
  %34 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %35 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %34, i32 0, i32 4
  %36 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %37 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %36, i32 0, i32 0
  %38 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %39 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %38, i32 0, i32 3
  %40 = bitcast i32** %39 to i8**
  %41 = call i32 @amdgpu_bo_free_kernel(i32* %35, i32* %37, i8** %40)
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %43 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %44 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %47 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %45, %48
  %50 = sdiv i32 %49, 4
  %51 = call i32 @amdgpu_device_wb_free(%struct.amdgpu_device* %42, i32 %50)
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %53 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %54 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %57 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %55, %58
  %60 = sdiv i32 %59, 4
  %61 = call i32 @amdgpu_device_wb_free(%struct.amdgpu_device* %52, i32 %60)
  br label %62

62:                                               ; preds = %14, %33, %15
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i64, i8*, i32) #1

declare dso_local i32 @amdgpu_bo_free_kernel(i32*, i32*, i8**) #1

declare dso_local i32 @amdgpu_device_wb_free(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
