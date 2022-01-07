; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ids.c_amdgpu_pasid_free_delayed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ids.c_amdgpu_pasid_free_delayed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_resv = type { i32 }
%struct.dma_fence = type { i32 }
%struct.amdgpu_pasid_cb = type { i32, i32 }
%struct.dma_fence_array = type { %struct.dma_fence }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_pasid_free_delayed(%struct.dma_resv* %0, i32 %1) #0 {
  %3 = alloca %struct.dma_resv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_fence*, align 8
  %6 = alloca %struct.dma_fence**, align 8
  %7 = alloca %struct.amdgpu_pasid_cb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dma_fence_array*, align 8
  store %struct.dma_resv* %0, %struct.dma_resv** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.dma_resv*, %struct.dma_resv** %3, align 8
  %13 = call i32 @dma_resv_get_fences_rcu(%struct.dma_resv* %12, i32* null, i32* %8, %struct.dma_fence*** %6)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %74

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @amdgpu_pasid_free(i32 %21)
  br label %80

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.dma_fence**, %struct.dma_fence*** %6, align 8
  %28 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %27, i64 0
  %29 = load %struct.dma_fence*, %struct.dma_fence** %28, align 8
  store %struct.dma_fence* %29, %struct.dma_fence** %5, align 8
  %30 = load %struct.dma_fence**, %struct.dma_fence*** %6, align 8
  %31 = call i32 @kfree(%struct.dma_fence** %30)
  br label %46

32:                                               ; preds = %23
  %33 = call i32 @dma_fence_context_alloc(i32 1)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.dma_fence**, %struct.dma_fence*** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call %struct.dma_fence_array* @dma_fence_array_create(i32 %34, %struct.dma_fence** %35, i32 %36, i32 1, i32 0)
  store %struct.dma_fence_array* %37, %struct.dma_fence_array** %11, align 8
  %38 = load %struct.dma_fence_array*, %struct.dma_fence_array** %11, align 8
  %39 = icmp ne %struct.dma_fence_array* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load %struct.dma_fence**, %struct.dma_fence*** %6, align 8
  %42 = call i32 @kfree(%struct.dma_fence** %41)
  br label %74

43:                                               ; preds = %32
  %44 = load %struct.dma_fence_array*, %struct.dma_fence_array** %11, align 8
  %45 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %44, i32 0, i32 0
  store %struct.dma_fence* %45, %struct.dma_fence** %5, align 8
  br label %46

46:                                               ; preds = %43, %26
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.amdgpu_pasid_cb* @kmalloc(i32 8, i32 %47)
  store %struct.amdgpu_pasid_cb* %48, %struct.amdgpu_pasid_cb** %7, align 8
  %49 = load %struct.amdgpu_pasid_cb*, %struct.amdgpu_pasid_cb** %7, align 8
  %50 = icmp ne %struct.amdgpu_pasid_cb* %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %46
  %52 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %53 = call i32 @dma_fence_wait(%struct.dma_fence* %52, i32 0)
  %54 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %55 = call i32 @dma_fence_put(%struct.dma_fence* %54)
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @amdgpu_pasid_free(i32 %56)
  br label %73

58:                                               ; preds = %46
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.amdgpu_pasid_cb*, %struct.amdgpu_pasid_cb** %7, align 8
  %61 = getelementptr inbounds %struct.amdgpu_pasid_cb, %struct.amdgpu_pasid_cb* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %63 = load %struct.amdgpu_pasid_cb*, %struct.amdgpu_pasid_cb** %7, align 8
  %64 = getelementptr inbounds %struct.amdgpu_pasid_cb, %struct.amdgpu_pasid_cb* %63, i32 0, i32 1
  %65 = call i64 @dma_fence_add_callback(%struct.dma_fence* %62, i32* %64, i32 (%struct.dma_fence*, i32*)* @amdgpu_pasid_free_cb)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %58
  %68 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %69 = load %struct.amdgpu_pasid_cb*, %struct.amdgpu_pasid_cb** %7, align 8
  %70 = getelementptr inbounds %struct.amdgpu_pasid_cb, %struct.amdgpu_pasid_cb* %69, i32 0, i32 1
  %71 = call i32 @amdgpu_pasid_free_cb(%struct.dma_fence* %68, i32* %70)
  br label %72

72:                                               ; preds = %67, %58
  br label %73

73:                                               ; preds = %72, %51
  br label %80

74:                                               ; preds = %40, %16
  %75 = load %struct.dma_resv*, %struct.dma_resv** %3, align 8
  %76 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %77 = call i32 @dma_resv_wait_timeout_rcu(%struct.dma_resv* %75, i32 1, i32 0, i32 %76)
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @amdgpu_pasid_free(i32 %78)
  br label %80

80:                                               ; preds = %74, %73, %20
  ret void
}

declare dso_local i32 @dma_resv_get_fences_rcu(%struct.dma_resv*, i32*, i32*, %struct.dma_fence***) #1

declare dso_local i32 @amdgpu_pasid_free(i32) #1

declare dso_local i32 @kfree(%struct.dma_fence**) #1

declare dso_local i32 @dma_fence_context_alloc(i32) #1

declare dso_local %struct.dma_fence_array* @dma_fence_array_create(i32, %struct.dma_fence**, i32, i32, i32) #1

declare dso_local %struct.amdgpu_pasid_cb* @kmalloc(i32, i32) #1

declare dso_local i32 @dma_fence_wait(%struct.dma_fence*, i32) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i64 @dma_fence_add_callback(%struct.dma_fence*, i32*, i32 (%struct.dma_fence*, i32*)*) #1

declare dso_local i32 @amdgpu_pasid_free_cb(%struct.dma_fence*, i32*) #1

declare dso_local i32 @dma_resv_wait_timeout_rcu(%struct.dma_resv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
