; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_wait_all_fences.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_wait_all_fences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.drm_file = type { i32 }
%union.drm_amdgpu_wait_fences = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.drm_amdgpu_fence = type { i32 }
%struct.dma_fence = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.drm_file*, %union.drm_amdgpu_wait_fences*, %struct.drm_amdgpu_fence*)* @amdgpu_cs_wait_all_fences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_cs_wait_all_fences(%struct.amdgpu_device* %0, %struct.drm_file* %1, %union.drm_amdgpu_wait_fences* %2, %struct.drm_amdgpu_fence* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %union.drm_amdgpu_wait_fences*, align 8
  %9 = alloca %struct.drm_amdgpu_fence*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.dma_fence*, align 8
  %14 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store %struct.drm_file* %1, %struct.drm_file** %7, align 8
  store %union.drm_amdgpu_wait_fences* %2, %union.drm_amdgpu_wait_fences** %8, align 8
  store %struct.drm_amdgpu_fence* %3, %struct.drm_amdgpu_fence** %9, align 8
  %15 = load %union.drm_amdgpu_wait_fences*, %union.drm_amdgpu_wait_fences** %8, align 8
  %16 = bitcast %union.drm_amdgpu_wait_fences* %15 to %struct.TYPE_3__*
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  store i64 1, i64* %12, align 8
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %72, %4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %75

23:                                               ; preds = %19
  %24 = load %union.drm_amdgpu_wait_fences*, %union.drm_amdgpu_wait_fences** %8, align 8
  %25 = bitcast %union.drm_amdgpu_wait_fences* %24 to %struct.TYPE_3__*
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @amdgpu_gem_timeout(i32 %27)
  store i64 %28, i64* %14, align 8
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %30 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %31 = load %struct.drm_amdgpu_fence*, %struct.drm_amdgpu_fence** %9, align 8
  %32 = load i32, i32* %11, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.drm_amdgpu_fence, %struct.drm_amdgpu_fence* %31, i64 %33
  %35 = call %struct.dma_fence* @amdgpu_cs_get_fence(%struct.amdgpu_device* %29, %struct.drm_file* %30, %struct.drm_amdgpu_fence* %34)
  store %struct.dma_fence* %35, %struct.dma_fence** %13, align 8
  %36 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %37 = call i64 @IS_ERR(%struct.dma_fence* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %23
  %40 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %41 = call i32 @PTR_ERR(%struct.dma_fence* %40)
  store i32 %41, i32* %5, align 4
  br label %84

42:                                               ; preds = %23
  %43 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %44 = icmp ne %struct.dma_fence* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  br label %72

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %49 = load i64, i64* %14, align 8
  %50 = call i64 @dma_fence_wait_timeout(%struct.dma_fence* %48, i32 1, i64 %49)
  store i64 %50, i64* %12, align 8
  %51 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %52 = call i32 @dma_fence_put(%struct.dma_fence* %51)
  %53 = load i64, i64* %12, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i64, i64* %12, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %5, align 4
  br label %84

58:                                               ; preds = %47
  %59 = load i64, i64* %12, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %75

62:                                               ; preds = %58
  %63 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %64 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %69 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %5, align 4
  br label %84

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %45
  %73 = load i32, i32* %11, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %19

75:                                               ; preds = %61, %19
  %76 = load %union.drm_amdgpu_wait_fences*, %union.drm_amdgpu_wait_fences** %8, align 8
  %77 = call i32 @memset(%union.drm_amdgpu_wait_fences* %76, i32 0, i32 8)
  %78 = load i64, i64* %12, align 8
  %79 = icmp sgt i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = load %union.drm_amdgpu_wait_fences*, %union.drm_amdgpu_wait_fences** %8, align 8
  %82 = bitcast %union.drm_amdgpu_wait_fences* %81 to %struct.TYPE_4__*
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 4
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %75, %67, %55, %39
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i64 @amdgpu_gem_timeout(i32) #1

declare dso_local %struct.dma_fence* @amdgpu_cs_get_fence(%struct.amdgpu_device*, %struct.drm_file*, %struct.drm_amdgpu_fence*) #1

declare dso_local i64 @IS_ERR(%struct.dma_fence*) #1

declare dso_local i32 @PTR_ERR(%struct.dma_fence*) #1

declare dso_local i64 @dma_fence_wait_timeout(%struct.dma_fence*, i32, i64) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @memset(%union.drm_amdgpu_wait_fences*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
