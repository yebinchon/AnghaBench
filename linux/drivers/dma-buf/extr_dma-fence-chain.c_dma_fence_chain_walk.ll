; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-fence-chain.c_dma_fence_chain_walk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-fence-chain.c_dma_fence_chain_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.dma_fence_chain = type { i32, %struct.dma_fence* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_fence* @dma_fence_chain_walk(%struct.dma_fence* %0) #0 {
  %2 = alloca %struct.dma_fence*, align 8
  %3 = alloca %struct.dma_fence*, align 8
  %4 = alloca %struct.dma_fence_chain*, align 8
  %5 = alloca %struct.dma_fence_chain*, align 8
  %6 = alloca %struct.dma_fence*, align 8
  %7 = alloca %struct.dma_fence*, align 8
  %8 = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %0, %struct.dma_fence** %3, align 8
  %9 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %10 = call %struct.dma_fence_chain* @to_dma_fence_chain(%struct.dma_fence* %9)
  store %struct.dma_fence_chain* %10, %struct.dma_fence_chain** %4, align 8
  %11 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %4, align 8
  %12 = icmp ne %struct.dma_fence_chain* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %15 = call i32 @dma_fence_put(%struct.dma_fence* %14)
  store %struct.dma_fence* null, %struct.dma_fence** %2, align 8
  br label %67

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %60, %16
  %18 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %4, align 8
  %19 = call %struct.dma_fence* @dma_fence_chain_get_prev(%struct.dma_fence_chain* %18)
  store %struct.dma_fence* %19, %struct.dma_fence** %6, align 8
  %20 = icmp ne %struct.dma_fence* %19, null
  br i1 %20, label %21, label %63

21:                                               ; preds = %17
  %22 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %23 = call %struct.dma_fence_chain* @to_dma_fence_chain(%struct.dma_fence* %22)
  store %struct.dma_fence_chain* %23, %struct.dma_fence_chain** %5, align 8
  %24 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %5, align 8
  %25 = icmp ne %struct.dma_fence_chain* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %5, align 8
  %28 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %27, i32 0, i32 1
  %29 = load %struct.dma_fence*, %struct.dma_fence** %28, align 8
  %30 = call i32 @dma_fence_is_signaled(%struct.dma_fence* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %63

33:                                               ; preds = %26
  %34 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %5, align 8
  %35 = call %struct.dma_fence* @dma_fence_chain_get_prev(%struct.dma_fence_chain* %34)
  store %struct.dma_fence* %35, %struct.dma_fence** %7, align 8
  br label %42

36:                                               ; preds = %21
  %37 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %38 = call i32 @dma_fence_is_signaled(%struct.dma_fence* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %63

41:                                               ; preds = %36
  store %struct.dma_fence* null, %struct.dma_fence** %7, align 8
  br label %42

42:                                               ; preds = %41, %33
  %43 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %4, align 8
  %44 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %43, i32 0, i32 0
  %45 = bitcast i32* %44 to i8**
  %46 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %47 = bitcast %struct.dma_fence* %46 to i8*
  %48 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %49 = bitcast %struct.dma_fence* %48 to i8*
  %50 = call %struct.dma_fence* @cmpxchg(i8** %45, i8* %47, i8* %49)
  store %struct.dma_fence* %50, %struct.dma_fence** %8, align 8
  %51 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %52 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %53 = icmp eq %struct.dma_fence* %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %56 = call i32 @dma_fence_put(%struct.dma_fence* %55)
  br label %60

57:                                               ; preds = %42
  %58 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %59 = call i32 @dma_fence_put(%struct.dma_fence* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %62 = call i32 @dma_fence_put(%struct.dma_fence* %61)
  br label %17

63:                                               ; preds = %40, %32, %17
  %64 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %65 = call i32 @dma_fence_put(%struct.dma_fence* %64)
  %66 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  store %struct.dma_fence* %66, %struct.dma_fence** %2, align 8
  br label %67

67:                                               ; preds = %63, %13
  %68 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  ret %struct.dma_fence* %68
}

declare dso_local %struct.dma_fence_chain* @to_dma_fence_chain(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local %struct.dma_fence* @dma_fence_chain_get_prev(%struct.dma_fence_chain*) #1

declare dso_local i32 @dma_fence_is_signaled(%struct.dma_fence*) #1

declare dso_local %struct.dma_fence* @cmpxchg(i8**, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
