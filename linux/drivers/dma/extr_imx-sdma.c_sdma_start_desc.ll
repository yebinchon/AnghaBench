; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_start_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_start_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_channel = type { i32, i32, %struct.sdma_desc*, %struct.sdma_engine*, i32 }
%struct.sdma_desc = type { i32 }
%struct.sdma_engine = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.virt_dma_desc = type { i32, i32 }

@IMX_DMA_SG_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdma_channel*)* @sdma_start_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_start_desc(%struct.sdma_channel* %0) #0 {
  %2 = alloca %struct.sdma_channel*, align 8
  %3 = alloca %struct.virt_dma_desc*, align 8
  %4 = alloca %struct.sdma_desc*, align 8
  %5 = alloca %struct.sdma_engine*, align 8
  %6 = alloca i32, align 4
  store %struct.sdma_channel* %0, %struct.sdma_channel** %2, align 8
  %7 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %8 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %7, i32 0, i32 4
  %9 = call %struct.virt_dma_desc* @vchan_next_desc(i32* %8)
  store %struct.virt_dma_desc* %9, %struct.virt_dma_desc** %3, align 8
  %10 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %11 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %10, i32 0, i32 3
  %12 = load %struct.sdma_engine*, %struct.sdma_engine** %11, align 8
  store %struct.sdma_engine* %12, %struct.sdma_engine** %5, align 8
  %13 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %14 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %3, align 8
  %17 = icmp ne %struct.virt_dma_desc* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %20 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %19, i32 0, i32 2
  store %struct.sdma_desc* null, %struct.sdma_desc** %20, align 8
  br label %63

21:                                               ; preds = %1
  %22 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %3, align 8
  %23 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %22, i32 0, i32 1
  %24 = call %struct.sdma_desc* @to_sdma_desc(i32* %23)
  store %struct.sdma_desc* %24, %struct.sdma_desc** %4, align 8
  %25 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %26 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %25, i32 0, i32 2
  store %struct.sdma_desc* %24, %struct.sdma_desc** %26, align 8
  %27 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %28 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IMX_DMA_SG_LOOP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %21
  %34 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %3, align 8
  %35 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %34, i32 0, i32 0
  %36 = call i32 @list_del(i32* %35)
  br label %37

37:                                               ; preds = %33, %21
  %38 = load %struct.sdma_desc*, %struct.sdma_desc** %4, align 8
  %39 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %42 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 %40, i32* %47, align 4
  %48 = load %struct.sdma_desc*, %struct.sdma_desc** %4, align 8
  %49 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %52 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %50, i32* %57, align 4
  %58 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %59 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %60 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @sdma_enable_channel(%struct.sdma_engine* %58, i32 %61)
  br label %63

63:                                               ; preds = %37, %18
  ret void
}

declare dso_local %struct.virt_dma_desc* @vchan_next_desc(i32*) #1

declare dso_local %struct.sdma_desc* @to_sdma_desc(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @sdma_enable_channel(%struct.sdma_engine*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
