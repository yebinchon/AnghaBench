; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_sync_file.c_sync_fill_fence_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_sync_file.c_sync_fill_fence_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dma_fence*)*, i32 (%struct.dma_fence*)* }
%struct.sync_fence_info = type { i32, i32, i32, i32 }

@DMA_FENCE_FLAG_SIGNALED_BIT = common dso_local global i32 0, align 4
@DMA_FENCE_FLAG_TIMESTAMP_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_fence*, %struct.sync_fence_info*)* @sync_fill_fence_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_fill_fence_info(%struct.dma_fence* %0, %struct.sync_fence_info* %1) #0 {
  %3 = alloca %struct.dma_fence*, align 8
  %4 = alloca %struct.sync_fence_info*, align 8
  store %struct.dma_fence* %0, %struct.dma_fence** %3, align 8
  store %struct.sync_fence_info* %1, %struct.sync_fence_info** %4, align 8
  %5 = load %struct.sync_fence_info*, %struct.sync_fence_info** %4, align 8
  %6 = getelementptr inbounds %struct.sync_fence_info, %struct.sync_fence_info* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %9 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32 (%struct.dma_fence*)*, i32 (%struct.dma_fence*)** %11, align 8
  %13 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %14 = call i32 %12(%struct.dma_fence* %13)
  %15 = call i32 @strlcpy(i32 %7, i32 %14, i32 4)
  %16 = load %struct.sync_fence_info*, %struct.sync_fence_info** %4, align 8
  %17 = getelementptr inbounds %struct.sync_fence_info, %struct.sync_fence_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %20 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.dma_fence*)*, i32 (%struct.dma_fence*)** %22, align 8
  %24 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %25 = call i32 %23(%struct.dma_fence* %24)
  %26 = call i32 @strlcpy(i32 %18, i32 %25, i32 4)
  %27 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %28 = call i32 @dma_fence_get_status(%struct.dma_fence* %27)
  %29 = load %struct.sync_fence_info*, %struct.sync_fence_info** %4, align 8
  %30 = getelementptr inbounds %struct.sync_fence_info, %struct.sync_fence_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %46, %2
  %32 = load i32, i32* @DMA_FENCE_FLAG_SIGNALED_BIT, align 4
  %33 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %34 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %33, i32 0, i32 1
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i32, i32* @DMA_FENCE_FLAG_TIMESTAMP_BIT, align 4
  %39 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %40 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %39, i32 0, i32 1
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %37, %31
  %45 = phi i1 [ false, %31 ], [ %43, %37 ]
  br i1 %45, label %46, label %48

46:                                               ; preds = %44
  %47 = call i32 (...) @cpu_relax()
  br label %31

48:                                               ; preds = %44
  %49 = load i32, i32* @DMA_FENCE_FLAG_TIMESTAMP_BIT, align 4
  %50 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %51 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %50, i32 0, i32 1
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %56 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ktime_to_ns(i32 %57)
  br label %61

59:                                               ; preds = %48
  %60 = call i32 @ktime_set(i32 0, i32 0)
  br label %61

61:                                               ; preds = %59, %54
  %62 = phi i32 [ %58, %54 ], [ %60, %59 ]
  %63 = load %struct.sync_fence_info*, %struct.sync_fence_info** %4, align 8
  %64 = getelementptr inbounds %struct.sync_fence_info, %struct.sync_fence_info* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.sync_fence_info*, %struct.sync_fence_info** %4, align 8
  %66 = getelementptr inbounds %struct.sync_fence_info, %struct.sync_fence_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  ret i32 %67
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @dma_fence_get_status(%struct.dma_fence*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
