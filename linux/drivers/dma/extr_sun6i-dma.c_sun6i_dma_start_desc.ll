; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_dma_start_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_dma_start_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_vchan = type { i32, i64, %struct.sun6i_pchan*, %struct.TYPE_5__ }
%struct.sun6i_pchan = type { i32, i64, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sun6i_dma_dev = type { i64 }
%struct.virt_dma_desc = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@DMA_IRQ_CHAN_NR = common dso_local global i32 0, align 4
@DMA_IRQ_PKG = common dso_local global i32 0, align 4
@DMA_IRQ_QUEUE = common dso_local global i32 0, align 4
@DMA_IRQ_HALF = common dso_local global i32 0, align 4
@DMA_IRQ_CHAN_WIDTH = common dso_local global i32 0, align 4
@DMA_CHAN_LLI_ADDR = common dso_local global i64 0, align 8
@DMA_CHAN_ENABLE_START = common dso_local global i32 0, align 4
@DMA_CHAN_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun6i_vchan*)* @sun6i_dma_start_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_dma_start_desc(%struct.sun6i_vchan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sun6i_vchan*, align 8
  %4 = alloca %struct.sun6i_dma_dev*, align 8
  %5 = alloca %struct.virt_dma_desc*, align 8
  %6 = alloca %struct.sun6i_pchan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sun6i_vchan* %0, %struct.sun6i_vchan** %3, align 8
  %10 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %3, align 8
  %11 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.sun6i_dma_dev* @to_sun6i_dma_dev(i32 %14)
  store %struct.sun6i_dma_dev* %15, %struct.sun6i_dma_dev** %4, align 8
  %16 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %3, align 8
  %17 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %16, i32 0, i32 3
  %18 = call %struct.virt_dma_desc* @vchan_next_desc(%struct.TYPE_5__* %17)
  store %struct.virt_dma_desc* %18, %struct.virt_dma_desc** %5, align 8
  %19 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %3, align 8
  %20 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %19, i32 0, i32 2
  %21 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %20, align 8
  store %struct.sun6i_pchan* %21, %struct.sun6i_pchan** %6, align 8
  %22 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %6, align 8
  %23 = icmp ne %struct.sun6i_pchan* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %136

27:                                               ; preds = %1
  %28 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %5, align 8
  %29 = icmp ne %struct.virt_dma_desc* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %6, align 8
  %32 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %31, i32 0, i32 2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %32, align 8
  %33 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %6, align 8
  %34 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %33, i32 0, i32 3
  store i32* null, i32** %34, align 8
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %136

37:                                               ; preds = %27
  %38 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %5, align 8
  %39 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %38, i32 0, i32 1
  %40 = call i32 @list_del(i32* %39)
  %41 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %5, align 8
  %42 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %41, i32 0, i32 0
  %43 = call %struct.TYPE_6__* @to_sun6i_desc(i32* %42)
  %44 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %6, align 8
  %45 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %44, i32 0, i32 2
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %45, align 8
  %46 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %6, align 8
  %47 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %46, i32 0, i32 3
  store i32* null, i32** %47, align 8
  %48 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %3, align 8
  %49 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %6, align 8
  %50 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %49, i32 0, i32 2
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sun6i_dma_dump_lli(%struct.sun6i_vchan* %48, i32 %53)
  %55 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %6, align 8
  %56 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @DMA_IRQ_CHAN_NR, align 4
  %59 = sdiv i32 %57, %58
  store i32 %59, i32* %8, align 4
  %60 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %6, align 8
  %61 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @DMA_IRQ_CHAN_NR, align 4
  %64 = srem i32 %62, %63
  store i32 %64, i32* %9, align 4
  %65 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %3, align 8
  %66 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %37
  %70 = load i32, i32* @DMA_IRQ_PKG, align 4
  br label %73

71:                                               ; preds = %37
  %72 = load i32, i32* @DMA_IRQ_QUEUE, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %3, align 8
  %76 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %4, align 8
  %78 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i64 @DMA_IRQ_EN(i32 %80)
  %82 = add nsw i64 %79, %81
  %83 = call i32 @readl(i64 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* @DMA_IRQ_HALF, align 4
  %85 = load i32, i32* @DMA_IRQ_PKG, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @DMA_IRQ_QUEUE, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @DMA_IRQ_CHAN_WIDTH, align 4
  %91 = mul nsw i32 %89, %90
  %92 = shl i32 %88, %91
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %7, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %7, align 4
  %96 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %3, align 8
  %97 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @DMA_IRQ_CHAN_WIDTH, align 4
  %101 = mul nsw i32 %99, %100
  %102 = shl i32 %98, %101
  %103 = load i32, i32* %7, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %4, align 8
  %107 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i64 @DMA_IRQ_EN(i32 %109)
  %111 = add nsw i64 %108, %110
  %112 = call i32 @writel(i32 %105, i64 %111)
  %113 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %6, align 8
  %114 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %113, i32 0, i32 2
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %6, align 8
  %119 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @DMA_CHAN_LLI_ADDR, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @writel(i32 %117, i64 %122)
  %124 = load i32, i32* @DMA_CHAN_ENABLE_START, align 4
  %125 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %6, align 8
  %126 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @DMA_CHAN_ENABLE, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @writel(i32 %124, i64 %129)
  %131 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %4, align 8
  %132 = call i32 @sun6i_dma_dump_com_regs(%struct.sun6i_dma_dev* %131)
  %133 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %4, align 8
  %134 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %6, align 8
  %135 = call i32 @sun6i_dma_dump_chan_regs(%struct.sun6i_dma_dev* %133, %struct.sun6i_pchan* %134)
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %73, %30, %24
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.sun6i_dma_dev* @to_sun6i_dma_dev(i32) #1

declare dso_local %struct.virt_dma_desc* @vchan_next_desc(%struct.TYPE_5__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local %struct.TYPE_6__* @to_sun6i_desc(i32*) #1

declare dso_local i32 @sun6i_dma_dump_lli(%struct.sun6i_vchan*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @DMA_IRQ_EN(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @sun6i_dma_dump_com_regs(%struct.sun6i_dma_dev*) #1

declare dso_local i32 @sun6i_dma_dump_chan_regs(%struct.sun6i_dma_dev*, %struct.sun6i_pchan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
