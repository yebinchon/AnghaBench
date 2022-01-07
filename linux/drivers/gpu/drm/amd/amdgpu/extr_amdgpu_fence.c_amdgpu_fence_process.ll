; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_fence.c_amdgpu_fence_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_fence.c_amdgpu_fence_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_fence_driver }
%struct.amdgpu_fence_driver = type { i64, i64, %struct.dma_fence**, i32, i32 }
%struct.dma_fence = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"signaled from irq context\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_fence_process(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca %struct.amdgpu_fence_driver*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_fence*, align 8
  %9 = alloca %struct.dma_fence**, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %3, align 8
  %10 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %10, i32 0, i32 0
  store %struct.amdgpu_fence_driver* %11, %struct.amdgpu_fence_driver** %4, align 8
  br label %12

12:                                               ; preds = %19, %1
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.amdgpu_fence_driver, %struct.amdgpu_fence_driver* %14, i32 0, i32 4
  %16 = call i64 @atomic_read(i32* %15)
  store i64 %16, i64* %6, align 8
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %18 = call i64 @amdgpu_fence_read(%struct.amdgpu_ring* %17)
  store i64 %18, i64* %5, align 8
  br label %19

19:                                               ; preds = %12
  %20 = load %struct.amdgpu_fence_driver*, %struct.amdgpu_fence_driver** %4, align 8
  %21 = getelementptr inbounds %struct.amdgpu_fence_driver, %struct.amdgpu_fence_driver* %20, i32 0, i32 4
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @atomic_cmpxchg(i32* %21, i64 %22, i64 %23)
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %12, label %27

27:                                               ; preds = %19
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %29 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.amdgpu_fence_driver, %struct.amdgpu_fence_driver* %29, i32 0, i32 3
  %31 = call i64 @del_timer(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %36 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.amdgpu_fence_driver, %struct.amdgpu_fence_driver* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %34, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %42 = call i32 @amdgpu_fence_schedule_fallback(%struct.amdgpu_ring* %41)
  br label %43

43:                                               ; preds = %40, %33, %27
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %102

51:                                               ; preds = %43
  %52 = load %struct.amdgpu_fence_driver*, %struct.amdgpu_fence_driver** %4, align 8
  %53 = getelementptr inbounds %struct.amdgpu_fence_driver, %struct.amdgpu_fence_driver* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = and i64 %55, %54
  store i64 %56, i64* %6, align 8
  %57 = load %struct.amdgpu_fence_driver*, %struct.amdgpu_fence_driver** %4, align 8
  %58 = getelementptr inbounds %struct.amdgpu_fence_driver, %struct.amdgpu_fence_driver* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = and i64 %60, %59
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %97, %51
  %63 = load i64, i64* %6, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %6, align 8
  %65 = load %struct.amdgpu_fence_driver*, %struct.amdgpu_fence_driver** %4, align 8
  %66 = getelementptr inbounds %struct.amdgpu_fence_driver, %struct.amdgpu_fence_driver* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = and i64 %68, %67
  store i64 %69, i64* %6, align 8
  %70 = load %struct.amdgpu_fence_driver*, %struct.amdgpu_fence_driver** %4, align 8
  %71 = getelementptr inbounds %struct.amdgpu_fence_driver, %struct.amdgpu_fence_driver* %70, i32 0, i32 2
  %72 = load %struct.dma_fence**, %struct.dma_fence*** %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %72, i64 %73
  store %struct.dma_fence** %74, %struct.dma_fence*** %9, align 8
  %75 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %76 = load %struct.dma_fence*, %struct.dma_fence** %75, align 8
  %77 = call %struct.dma_fence* @rcu_dereference_protected(%struct.dma_fence* %76, i32 1)
  store %struct.dma_fence* %77, %struct.dma_fence** %8, align 8
  %78 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %79 = load %struct.dma_fence*, %struct.dma_fence** %78, align 8
  %80 = call i32 @RCU_INIT_POINTER(%struct.dma_fence* %79, i32* null)
  %81 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %82 = icmp ne %struct.dma_fence* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %62
  br label %97

84:                                               ; preds = %62
  %85 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %86 = call i32 @dma_fence_signal(%struct.dma_fence* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %91 = call i32 @DMA_FENCE_TRACE(%struct.dma_fence* %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %94

92:                                               ; preds = %84
  %93 = call i32 (...) @BUG()
  br label %94

94:                                               ; preds = %92, %89
  %95 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %96 = call i32 @dma_fence_put(%struct.dma_fence* %95)
  br label %97

97:                                               ; preds = %94, %83
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* %5, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %62, label %101

101:                                              ; preds = %97
  store i32 1, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %50
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @amdgpu_fence_read(%struct.amdgpu_ring*) #1

declare dso_local i64 @atomic_cmpxchg(i32*, i64, i64) #1

declare dso_local i64 @del_timer(i32*) #1

declare dso_local i32 @amdgpu_fence_schedule_fallback(%struct.amdgpu_ring*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.dma_fence* @rcu_dereference_protected(%struct.dma_fence*, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(%struct.dma_fence*, i32*) #1

declare dso_local i32 @dma_fence_signal(%struct.dma_fence*) #1

declare dso_local i32 @DMA_FENCE_TRACE(%struct.dma_fence*, i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
