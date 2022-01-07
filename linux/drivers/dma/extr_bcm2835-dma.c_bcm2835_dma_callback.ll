; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_bcm2835-dma.c_bcm2835_dma_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_bcm2835-dma.c_bcm2835_dma_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_chan = type { i32, %struct.TYPE_2__, %struct.bcm2835_desc*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.bcm2835_desc = type { i32, i64 }

@IRQF_SHARED = common dso_local global i32 0, align 4
@BCM2835_DMA_CS = common dso_local global i64 0, align 8
@BCM2835_DMA_INT = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@BCM2835_DMA_ACTIVE = common dso_local global i64 0, align 8
@BCM2835_DMA_ADDR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bcm2835_dma_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_dma_callback(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bcm2835_chan*, align 8
  %7 = alloca %struct.bcm2835_desc*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.bcm2835_chan*
  store %struct.bcm2835_chan* %10, %struct.bcm2835_chan** %6, align 8
  %11 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %6, align 8
  %12 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IRQF_SHARED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %6, align 8
  %19 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BCM2835_DMA_CS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i64 @readl(i64 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @BCM2835_DMA_INT, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  %29 = load i32, i32* @IRQ_NONE, align 4
  store i32 %29, i32* %3, align 4
  br label %85

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %6, align 8
  %33 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load i64, i64* @BCM2835_DMA_INT, align 8
  %38 = load i64, i64* @BCM2835_DMA_ACTIVE, align 8
  %39 = or i64 %37, %38
  %40 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %6, align 8
  %41 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BCM2835_DMA_CS, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i64 %39, i64 %44)
  %46 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %6, align 8
  %47 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %46, i32 0, i32 2
  %48 = load %struct.bcm2835_desc*, %struct.bcm2835_desc** %47, align 8
  store %struct.bcm2835_desc* %48, %struct.bcm2835_desc** %7, align 8
  %49 = load %struct.bcm2835_desc*, %struct.bcm2835_desc** %7, align 8
  %50 = icmp ne %struct.bcm2835_desc* %49, null
  br i1 %50, label %51, label %78

51:                                               ; preds = %31
  %52 = load %struct.bcm2835_desc*, %struct.bcm2835_desc** %7, align 8
  %53 = getelementptr inbounds %struct.bcm2835_desc, %struct.bcm2835_desc* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.bcm2835_desc*, %struct.bcm2835_desc** %7, align 8
  %58 = getelementptr inbounds %struct.bcm2835_desc, %struct.bcm2835_desc* %57, i32 0, i32 0
  %59 = call i32 @vchan_cyclic_callback(i32* %58)
  br label %77

60:                                               ; preds = %51
  %61 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %6, align 8
  %62 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @BCM2835_DMA_ADDR, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i64 @readl(i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %60
  %69 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %6, align 8
  %70 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %69, i32 0, i32 2
  %71 = load %struct.bcm2835_desc*, %struct.bcm2835_desc** %70, align 8
  %72 = getelementptr inbounds %struct.bcm2835_desc, %struct.bcm2835_desc* %71, i32 0, i32 0
  %73 = call i32 @vchan_cookie_complete(i32* %72)
  %74 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %6, align 8
  %75 = call i32 @bcm2835_dma_start_desc(%struct.bcm2835_chan* %74)
  br label %76

76:                                               ; preds = %68, %60
  br label %77

77:                                               ; preds = %76, %56
  br label %78

78:                                               ; preds = %77, %31
  %79 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %6, align 8
  %80 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %78, %28
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @vchan_cyclic_callback(i32*) #1

declare dso_local i32 @vchan_cookie_complete(i32*) #1

declare dso_local i32 @bcm2835_dma_start_desc(%struct.bcm2835_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
