; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_uniphier-mdmac.c_uniphier_mdmac_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_uniphier-mdmac.c_uniphier_mdmac_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_mdmac_chan = type { i32, i64, %struct.uniphier_mdmac_device* }
%struct.uniphier_mdmac_device = type { i64 }
%struct.uniphier_mdmac_desc = type { i64, i64, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@UNIPHIER_MDMAC_CH_IRQ__DONE = common dso_local global i64 0, align 8
@DMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@UNIPHIER_MDMAC_CH_MODE__ADDR_INC = common dso_local global i64 0, align 8
@UNIPHIER_MDMAC_CH_MODE__ADDR_FIXED = common dso_local global i64 0, align 8
@UNIPHIER_MDMAC_CH_SRC_MODE = common dso_local global i64 0, align 8
@UNIPHIER_MDMAC_CH_DEST_MODE = common dso_local global i64 0, align 8
@UNIPHIER_MDMAC_CH_SRC_ADDR = common dso_local global i64 0, align 8
@UNIPHIER_MDMAC_CH_DEST_ADDR = common dso_local global i64 0, align 8
@UNIPHIER_MDMAC_CH_SIZE = common dso_local global i64 0, align 8
@UNIPHIER_MDMAC_CH_IRQ_REQ = common dso_local global i64 0, align 8
@UNIPHIER_MDMAC_CH_IRQ_EN = common dso_local global i64 0, align 8
@UNIPHIER_MDMAC_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_desc*)* @uniphier_mdmac_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_mdmac_handle(%struct.uniphier_mdmac_chan* %0, %struct.uniphier_mdmac_desc* %1) #0 {
  %3 = alloca %struct.uniphier_mdmac_chan*, align 8
  %4 = alloca %struct.uniphier_mdmac_desc*, align 8
  %5 = alloca %struct.uniphier_mdmac_device*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.uniphier_mdmac_chan* %0, %struct.uniphier_mdmac_chan** %3, align 8
  store %struct.uniphier_mdmac_desc* %1, %struct.uniphier_mdmac_desc** %4, align 8
  %13 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %3, align 8
  %14 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %13, i32 0, i32 2
  %15 = load %struct.uniphier_mdmac_device*, %struct.uniphier_mdmac_device** %14, align 8
  store %struct.uniphier_mdmac_device* %15, %struct.uniphier_mdmac_device** %5, align 8
  %16 = load i64, i64* @UNIPHIER_MDMAC_CH_IRQ__DONE, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.uniphier_mdmac_desc*, %struct.uniphier_mdmac_desc** %4, align 8
  %18 = getelementptr inbounds %struct.uniphier_mdmac_desc, %struct.uniphier_mdmac_desc* %17, i32 0, i32 2
  %19 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %20 = load %struct.uniphier_mdmac_desc*, %struct.uniphier_mdmac_desc** %4, align 8
  %21 = getelementptr inbounds %struct.uniphier_mdmac_desc, %struct.uniphier_mdmac_desc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %19, i64 %22
  store %struct.scatterlist* %23, %struct.scatterlist** %6, align 8
  %24 = load %struct.uniphier_mdmac_desc*, %struct.uniphier_mdmac_desc** %4, align 8
  %25 = getelementptr inbounds %struct.uniphier_mdmac_desc, %struct.uniphier_mdmac_desc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load i64, i64* @UNIPHIER_MDMAC_CH_MODE__ADDR_INC, align 8
  store i64 %30, i64* %8, align 8
  %31 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %32 = call i64 @sg_dma_address(%struct.scatterlist* %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* @UNIPHIER_MDMAC_CH_MODE__ADDR_FIXED, align 8
  store i64 %33, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %39

34:                                               ; preds = %2
  %35 = load i64, i64* @UNIPHIER_MDMAC_CH_MODE__ADDR_FIXED, align 8
  store i64 %35, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %36 = load i64, i64* @UNIPHIER_MDMAC_CH_MODE__ADDR_INC, align 8
  store i64 %36, i64* %10, align 8
  %37 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %38 = call i64 @sg_dma_address(%struct.scatterlist* %37)
  store i64 %38, i64* %11, align 8
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %41 = call i64 @sg_dma_len(%struct.scatterlist* %40)
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %3, align 8
  %44 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @UNIPHIER_MDMAC_CH_SRC_MODE, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i64 %42, i64 %47)
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %3, align 8
  %51 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @UNIPHIER_MDMAC_CH_DEST_MODE, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i64 %49, i64 %54)
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %3, align 8
  %58 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @UNIPHIER_MDMAC_CH_SRC_ADDR, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i64 %56, i64 %61)
  %63 = load i64, i64* %11, align 8
  %64 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %3, align 8
  %65 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @UNIPHIER_MDMAC_CH_DEST_ADDR, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i64 %63, i64 %68)
  %70 = load i64, i64* %12, align 8
  %71 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %3, align 8
  %72 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @UNIPHIER_MDMAC_CH_SIZE, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i64 %70, i64 %75)
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %3, align 8
  %79 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @UNIPHIER_MDMAC_CH_IRQ_REQ, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i64 %77, i64 %82)
  %84 = load i64, i64* %7, align 8
  %85 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %3, align 8
  %86 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @UNIPHIER_MDMAC_CH_IRQ_EN, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @writel(i64 %84, i64 %89)
  %91 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %3, align 8
  %92 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @BIT(i32 %93)
  %95 = load %struct.uniphier_mdmac_device*, %struct.uniphier_mdmac_device** %5, align 8
  %96 = getelementptr inbounds %struct.uniphier_mdmac_device, %struct.uniphier_mdmac_device* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @UNIPHIER_MDMAC_CMD, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i64 %94, i64 %99)
  ret void
}

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i64 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
