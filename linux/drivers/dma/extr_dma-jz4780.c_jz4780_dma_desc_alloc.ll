; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_desc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_desc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_dma_desc = type { i32, i32, i32, i32 }
%struct.jz4780_dma_chan = type { i32 }

@JZ_DMA_MAX_DESC = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.jz4780_dma_desc* (%struct.jz4780_dma_chan*, i32, i32)* @jz4780_dma_desc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.jz4780_dma_desc* @jz4780_dma_desc_alloc(%struct.jz4780_dma_chan* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.jz4780_dma_desc*, align 8
  %5 = alloca %struct.jz4780_dma_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.jz4780_dma_desc*, align 8
  store %struct.jz4780_dma_chan* %0, %struct.jz4780_dma_chan** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @JZ_DMA_MAX_DESC, align 4
  %11 = icmp ugt i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.jz4780_dma_desc* null, %struct.jz4780_dma_desc** %4, align 8
  br label %44

13:                                               ; preds = %3
  %14 = load i32, i32* @GFP_NOWAIT, align 4
  %15 = call %struct.jz4780_dma_desc* @kzalloc(i32 16, i32 %14)
  store %struct.jz4780_dma_desc* %15, %struct.jz4780_dma_desc** %8, align 8
  %16 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %8, align 8
  %17 = icmp ne %struct.jz4780_dma_desc* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store %struct.jz4780_dma_desc* null, %struct.jz4780_dma_desc** %4, align 8
  br label %44

19:                                               ; preds = %13
  %20 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %5, align 8
  %21 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @GFP_NOWAIT, align 4
  %24 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %8, align 8
  %25 = getelementptr inbounds %struct.jz4780_dma_desc, %struct.jz4780_dma_desc* %24, i32 0, i32 3
  %26 = call i32 @dma_pool_alloc(i32 %22, i32 %23, i32* %25)
  %27 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %8, align 8
  %28 = getelementptr inbounds %struct.jz4780_dma_desc, %struct.jz4780_dma_desc* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %8, align 8
  %30 = getelementptr inbounds %struct.jz4780_dma_desc, %struct.jz4780_dma_desc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %19
  %34 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %8, align 8
  %35 = call i32 @kfree(%struct.jz4780_dma_desc* %34)
  store %struct.jz4780_dma_desc* null, %struct.jz4780_dma_desc** %4, align 8
  br label %44

36:                                               ; preds = %19
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %8, align 8
  %39 = getelementptr inbounds %struct.jz4780_dma_desc, %struct.jz4780_dma_desc* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %8, align 8
  %42 = getelementptr inbounds %struct.jz4780_dma_desc, %struct.jz4780_dma_desc* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %8, align 8
  store %struct.jz4780_dma_desc* %43, %struct.jz4780_dma_desc** %4, align 8
  br label %44

44:                                               ; preds = %36, %33, %18, %12
  %45 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %4, align 8
  ret %struct.jz4780_dma_desc* %45
}

declare dso_local %struct.jz4780_dma_desc* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.jz4780_dma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
