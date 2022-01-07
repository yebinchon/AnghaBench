; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ring.c_amdgpu_ring_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ring.c_amdgpu_ring_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i64, %struct.TYPE_4__*, i64, i32*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32** }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_ring_fini(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %3 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %4 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %3, i32 0, i32 11
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %7 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %12 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32**, i32*** %14, align 8
  %16 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32*, i32** %15, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %10, %1
  br label %79

23:                                               ; preds = %10
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %25 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %28 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %27, i32 0, i32 10
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @amdgpu_device_wb_free(%struct.TYPE_4__* %26, i32 %29)
  %31 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %32 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %35 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @amdgpu_device_wb_free(%struct.TYPE_4__* %33, i32 %36)
  %38 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %39 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %42 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @amdgpu_device_wb_free(%struct.TYPE_4__* %40, i32 %43)
  %45 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %46 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %49 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @amdgpu_device_wb_free(%struct.TYPE_4__* %47, i32 %50)
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %53 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %52, i32 0, i32 6
  %54 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %55 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %54, i32 0, i32 5
  %56 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %57 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %56, i32 0, i32 4
  %58 = bitcast i32* %57 to i8**
  %59 = call i32 @amdgpu_bo_free_kernel(i32* %53, i32* %55, i8** %58)
  %60 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %61 = call i32 @amdgpu_debugfs_ring_fini(%struct.amdgpu_ring* %60)
  %62 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %63 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @dma_fence_put(i32* %64)
  %66 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %67 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %66, i32 0, i32 3
  store i32* null, i32** %67, align 8
  %68 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %69 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %71 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32**, i32*** %73, align 8
  %75 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %76 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32*, i32** %74, i64 %77
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %23, %22
  ret void
}

declare dso_local i32 @amdgpu_device_wb_free(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @amdgpu_bo_free_kernel(i32*, i32*, i8**) #1

declare dso_local i32 @amdgpu_debugfs_ring_fini(%struct.amdgpu_ring*) #1

declare dso_local i32 @dma_fence_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
