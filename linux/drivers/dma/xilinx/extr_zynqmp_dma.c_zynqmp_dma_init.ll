; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_zynqmp_dma.c_zynqmp_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_zynqmp_dma.c_zynqmp_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynqmp_dma_chan = type { i32, i64, i64 }

@ZYNQMP_DMA_IDS_DEFAULT_MASK = common dso_local global i32 0, align 4
@ZYNQMP_DMA_IDS = common dso_local global i64 0, align 8
@ZYNQMP_DMA_ISR = common dso_local global i64 0, align 8
@ZYNQMP_DMA_AXCOHRNT = common dso_local global i32 0, align 4
@ZYNQMP_DMA_AXCACHE = common dso_local global i32 0, align 4
@ZYNQMP_DMA_AXCACHE_VAL = common dso_local global i32 0, align 4
@ZYNQMP_DMA_AXCACHE_OFST = common dso_local global i32 0, align 4
@ZYNQMP_DMA_DSCR_ATTR = common dso_local global i64 0, align 8
@ZYNQMP_DMA_DATA_ATTR = common dso_local global i64 0, align 8
@ZYNQMP_DMA_ARCACHE = common dso_local global i32 0, align 4
@ZYNQMP_DMA_ARCACHE_OFST = common dso_local global i32 0, align 4
@ZYNQMP_DMA_AWCACHE = common dso_local global i32 0, align 4
@ZYNQMP_DMA_AWCACHE_OFST = common dso_local global i32 0, align 4
@ZYNQMP_DMA_IRQ_SRC_ACCT = common dso_local global i64 0, align 8
@ZYNQMP_DMA_IRQ_DST_ACCT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zynqmp_dma_chan*)* @zynqmp_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynqmp_dma_init(%struct.zynqmp_dma_chan* %0) #0 {
  %2 = alloca %struct.zynqmp_dma_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.zynqmp_dma_chan* %0, %struct.zynqmp_dma_chan** %2, align 8
  %4 = load i32, i32* @ZYNQMP_DMA_IDS_DEFAULT_MASK, align 4
  %5 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %6 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ZYNQMP_DMA_IDS, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writel(i32 %4, i64 %9)
  %11 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %12 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ZYNQMP_DMA_ISR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %19 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ZYNQMP_DMA_ISR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  %24 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %25 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %1
  %29 = load i32, i32* @ZYNQMP_DMA_AXCOHRNT, align 4
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @ZYNQMP_DMA_AXCACHE, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = load i32, i32* @ZYNQMP_DMA_AXCACHE_VAL, align 4
  %35 = load i32, i32* @ZYNQMP_DMA_AXCACHE_OFST, align 4
  %36 = shl i32 %34, %35
  %37 = or i32 %33, %36
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %40 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ZYNQMP_DMA_DSCR_ATTR, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  br label %45

45:                                               ; preds = %28, %1
  %46 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %47 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ZYNQMP_DMA_DATA_ATTR, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @readl(i64 %50)
  store i32 %51, i32* %3, align 4
  %52 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %53 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %45
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @ZYNQMP_DMA_ARCACHE, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = load i32, i32* @ZYNQMP_DMA_AXCACHE_VAL, align 4
  %62 = load i32, i32* @ZYNQMP_DMA_ARCACHE_OFST, align 4
  %63 = shl i32 %61, %62
  %64 = or i32 %60, %63
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @ZYNQMP_DMA_AWCACHE, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  %69 = load i32, i32* @ZYNQMP_DMA_AXCACHE_VAL, align 4
  %70 = load i32, i32* @ZYNQMP_DMA_AWCACHE_OFST, align 4
  %71 = shl i32 %69, %70
  %72 = or i32 %68, %71
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %56, %45
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %76 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ZYNQMP_DMA_DATA_ATTR, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writel(i32 %74, i64 %79)
  %81 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %82 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ZYNQMP_DMA_IRQ_SRC_ACCT, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @readl(i64 %85)
  store i32 %86, i32* %3, align 4
  %87 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %88 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ZYNQMP_DMA_IRQ_DST_ACCT, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @readl(i64 %91)
  store i32 %92, i32* %3, align 4
  %93 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %94 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
