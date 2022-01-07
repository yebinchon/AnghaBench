; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-resv.c_dma_resv_test_signaled_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-resv.c_dma_resv_test_signaled_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }

@DMA_FENCE_FLAG_SIGNALED_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_fence*)* @dma_resv_test_signaled_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_resv_test_signaled_single(%struct.dma_fence* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_fence*, align 8
  %4 = alloca %struct.dma_fence*, align 8
  %5 = alloca %struct.dma_fence*, align 8
  %6 = alloca i32, align 4
  store %struct.dma_fence* %0, %struct.dma_fence** %3, align 8
  %7 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  store %struct.dma_fence* %7, %struct.dma_fence** %5, align 8
  store i32 1, i32* %6, align 4
  %8 = load i32, i32* @DMA_FENCE_FLAG_SIGNALED_BIT, align 4
  %9 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %10 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %9, i32 0, i32 0
  %11 = call i32 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %1
  %14 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %15 = call %struct.dma_fence* @dma_fence_get_rcu(%struct.dma_fence* %14)
  store %struct.dma_fence* %15, %struct.dma_fence** %4, align 8
  %16 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %17 = icmp ne %struct.dma_fence* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 -1, i32* %2, align 4
  br label %30

19:                                               ; preds = %13
  %20 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %21 = call i32 @dma_fence_is_signaled(%struct.dma_fence* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %27 = call i32 @dma_fence_put(%struct.dma_fence* %26)
  br label %28

28:                                               ; preds = %19, %1
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %18
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.dma_fence* @dma_fence_get_rcu(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_is_signaled(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
