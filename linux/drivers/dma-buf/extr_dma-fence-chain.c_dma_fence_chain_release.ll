; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-fence-chain.c_dma_fence_chain_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-fence-chain.c_dma_fence_chain_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.dma_fence_chain = type { %struct.dma_fence*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_fence*)* @dma_fence_chain_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_fence_chain_release(%struct.dma_fence* %0) #0 {
  %2 = alloca %struct.dma_fence*, align 8
  %3 = alloca %struct.dma_fence_chain*, align 8
  %4 = alloca %struct.dma_fence*, align 8
  %5 = alloca %struct.dma_fence_chain*, align 8
  store %struct.dma_fence* %0, %struct.dma_fence** %2, align 8
  %6 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  %7 = call %struct.dma_fence_chain* @to_dma_fence_chain(%struct.dma_fence* %6)
  store %struct.dma_fence_chain* %7, %struct.dma_fence_chain** %3, align 8
  br label %8

8:                                                ; preds = %26, %1
  %9 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %3, align 8
  %10 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.dma_fence* @rcu_dereference_protected(i32 %11, i32 1)
  store %struct.dma_fence* %12, %struct.dma_fence** %4, align 8
  %13 = icmp ne %struct.dma_fence* %12, null
  br i1 %13, label %14, label %38

14:                                               ; preds = %8
  %15 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %16 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %15, i32 0, i32 0
  %17 = call i32 @kref_read(i32* %16)
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %38

20:                                               ; preds = %14
  %21 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %22 = call %struct.dma_fence_chain* @to_dma_fence_chain(%struct.dma_fence* %21)
  store %struct.dma_fence_chain* %22, %struct.dma_fence_chain** %5, align 8
  %23 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %5, align 8
  %24 = icmp ne %struct.dma_fence_chain* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %38

26:                                               ; preds = %20
  %27 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %5, align 8
  %28 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %3, align 8
  %31 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %5, align 8
  %33 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @RCU_INIT_POINTER(i32 %34, i32* null)
  %36 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %37 = call i32 @dma_fence_put(%struct.dma_fence* %36)
  br label %8

38:                                               ; preds = %25, %19, %8
  %39 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %40 = call i32 @dma_fence_put(%struct.dma_fence* %39)
  %41 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %3, align 8
  %42 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %41, i32 0, i32 0
  %43 = load %struct.dma_fence*, %struct.dma_fence** %42, align 8
  %44 = call i32 @dma_fence_put(%struct.dma_fence* %43)
  %45 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  %46 = call i32 @dma_fence_free(%struct.dma_fence* %45)
  ret void
}

declare dso_local %struct.dma_fence_chain* @to_dma_fence_chain(%struct.dma_fence*) #1

declare dso_local %struct.dma_fence* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_free(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
