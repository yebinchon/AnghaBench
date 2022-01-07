; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-fence-chain.c_dma_fence_chain_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-fence-chain.c_dma_fence_chain_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence_chain = type { i32, i32, i64, i32, %struct.dma_fence*, i32 }
%struct.dma_fence = type { i64, i32, i32 }

@dma_fence_chain_irq_work = common dso_local global i32 0, align 4
@dma_fence_chain_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_fence_chain_init(%struct.dma_fence_chain* %0, %struct.dma_fence* %1, %struct.dma_fence* %2, i32 %3) #0 {
  %5 = alloca %struct.dma_fence_chain*, align 8
  %6 = alloca %struct.dma_fence*, align 8
  %7 = alloca %struct.dma_fence*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dma_fence_chain*, align 8
  %10 = alloca i32, align 4
  store %struct.dma_fence_chain* %0, %struct.dma_fence_chain** %5, align 8
  store %struct.dma_fence* %1, %struct.dma_fence** %6, align 8
  store %struct.dma_fence* %2, %struct.dma_fence** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %12 = call %struct.dma_fence_chain* @to_dma_fence_chain(%struct.dma_fence* %11)
  store %struct.dma_fence_chain* %12, %struct.dma_fence_chain** %9, align 8
  %13 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %5, align 8
  %14 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %5, align 8
  %17 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %20 = call i32 @rcu_assign_pointer(i32 %18, %struct.dma_fence* %19)
  %21 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %22 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %5, align 8
  %23 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %22, i32 0, i32 4
  store %struct.dma_fence* %21, %struct.dma_fence** %23, align 8
  %24 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %5, align 8
  %25 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %5, align 8
  %27 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %26, i32 0, i32 3
  %28 = load i32, i32* @dma_fence_chain_irq_work, align 4
  %29 = call i32 @init_irq_work(i32* %27, i32 %28)
  %30 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %9, align 8
  %31 = icmp ne %struct.dma_fence_chain* %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %35 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %38 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @__dma_fence_is_later(i32 %33, i64 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %32
  %43 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %44 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %10, align 4
  %46 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %47 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %5, align 8
  %50 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  br label %62

51:                                               ; preds = %32, %4
  %52 = call i32 @dma_fence_context_alloc(i32 1)
  store i32 %52, i32* %10, align 4
  %53 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %9, align 8
  %54 = icmp ne %struct.dma_fence_chain* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %57 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @max(i64 %58, i32 %59)
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %55, %51
  br label %62

62:                                               ; preds = %61, %42
  %63 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %5, align 8
  %64 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %63, i32 0, i32 1
  %65 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %5, align 8
  %66 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %65, i32 0, i32 0
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @dma_fence_init(i32* %64, i32* @dma_fence_chain_ops, i32* %66, i32 %67, i32 %68)
  ret void
}

declare dso_local %struct.dma_fence_chain* @to_dma_fence_chain(%struct.dma_fence*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.dma_fence*) #1

declare dso_local i32 @init_irq_work(i32*, i32) #1

declare dso_local i64 @__dma_fence_is_later(i32, i64, i32) #1

declare dso_local i32 @dma_fence_context_alloc(i32) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local i32 @dma_fence_init(i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
