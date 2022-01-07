; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_fence.c_amdgpu_fence_driver_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_fence.c_amdgpu_fence_driver_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.amdgpu_ring** }
%struct.amdgpu_ring = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32*, i32, i32, i32 }

@AMDGPU_MAX_RINGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_fence_driver_fini(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_ring*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %86, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @AMDGPU_MAX_RINGS, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %89

11:                                               ; preds = %7
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = load %struct.amdgpu_ring**, %struct.amdgpu_ring*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, i64 %16
  %18 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %17, align 8
  store %struct.amdgpu_ring* %18, %struct.amdgpu_ring** %6, align 8
  %19 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %20 = icmp ne %struct.amdgpu_ring* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %11
  %22 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %23 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21, %11
  br label %86

28:                                               ; preds = %21
  %29 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %30 = call i32 @amdgpu_fence_wait_empty(%struct.amdgpu_ring* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %35 = call i32 @amdgpu_fence_driver_force_completion(%struct.amdgpu_ring* %34)
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %38 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %39 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %43 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @amdgpu_irq_put(%struct.amdgpu_device* %37, i32 %41, i32 %45)
  %47 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %48 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %47, i32 0, i32 1
  %49 = call i32 @drm_sched_fini(i32* %48)
  %50 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %51 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = call i32 @del_timer_sync(i32* %52)
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %71, %36
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %57 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ule i32 %55, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %54
  %62 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %63 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dma_fence_put(i32 %69)
  br label %71

71:                                               ; preds = %61
  %72 = load i32, i32* %4, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %54

74:                                               ; preds = %54
  %75 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %76 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @kfree(i32* %78)
  %80 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %81 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  store i32* null, i32** %82, align 8
  %83 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %84 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  br label %86

86:                                               ; preds = %74, %27
  %87 = load i32, i32* %3, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %7

89:                                               ; preds = %7
  ret void
}

declare dso_local i32 @amdgpu_fence_wait_empty(%struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_fence_driver_force_completion(%struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_irq_put(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @drm_sched_fini(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @dma_fence_put(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
