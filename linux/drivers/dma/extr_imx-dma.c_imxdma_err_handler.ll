; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-dma.c_imxdma_err_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-dma.c_imxdma_err_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxdma_engine = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DMA_DISR = common dso_local global i32 0, align 4
@DMA_DBTOSR = common dso_local global i32 0, align 4
@DMA_DRTOSR = common dso_local global i32 0, align 4
@DMA_DSESR = common dso_local global i32 0, align 4
@DMA_DBOSR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IMX_DMA_CHANNELS = common dso_local global i32 0, align 4
@IMX_DMA_ERR_BURST = common dso_local global i32 0, align 4
@IMX_DMA_ERR_REQUEST = common dso_local global i32 0, align 4
@IMX_DMA_ERR_TRANSFER = common dso_local global i32 0, align 4
@IMX_DMA_ERR_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"DMA timeout on channel %d -%s%s%s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" burst\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" request\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" transfer\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @imxdma_err_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imxdma_err_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.imxdma_engine*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.imxdma_engine*
  store %struct.imxdma_engine* %12, %struct.imxdma_engine** %6, align 8
  %13 = load %struct.imxdma_engine*, %struct.imxdma_engine** %6, align 8
  %14 = load i32, i32* @DMA_DISR, align 4
  %15 = call i32 @imx_dmav1_readl(%struct.imxdma_engine* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.imxdma_engine*, %struct.imxdma_engine** %6, align 8
  %17 = load i32, i32* @DMA_DBTOSR, align 4
  %18 = call i32 @imx_dmav1_readl(%struct.imxdma_engine* %16, i32 %17)
  %19 = load %struct.imxdma_engine*, %struct.imxdma_engine** %6, align 8
  %20 = load i32, i32* @DMA_DRTOSR, align 4
  %21 = call i32 @imx_dmav1_readl(%struct.imxdma_engine* %19, i32 %20)
  %22 = or i32 %18, %21
  %23 = load %struct.imxdma_engine*, %struct.imxdma_engine** %6, align 8
  %24 = load i32, i32* @DMA_DSESR, align 4
  %25 = call i32 @imx_dmav1_readl(%struct.imxdma_engine* %23, i32 %24)
  %26 = or i32 %22, %25
  %27 = load %struct.imxdma_engine*, %struct.imxdma_engine** %6, align 8
  %28 = load i32, i32* @DMA_DBOSR, align 4
  %29 = call i32 @imx_dmav1_readl(%struct.imxdma_engine* %27, i32 %28)
  %30 = or i32 %26, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %34, i32* %3, align 4
  br label %164

35:                                               ; preds = %2
  %36 = load %struct.imxdma_engine*, %struct.imxdma_engine** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @DMA_DISR, align 4
  %41 = call i32 @imx_dmav1_writel(%struct.imxdma_engine* %36, i32 %39, i32 %40)
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %159, %35
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @IMX_DMA_CHANNELS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %162

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  br label %159

53:                                               ; preds = %46
  store i32 0, i32* %10, align 4
  %54 = load %struct.imxdma_engine*, %struct.imxdma_engine** %6, align 8
  %55 = load i32, i32* @DMA_DBTOSR, align 4
  %56 = call i32 @imx_dmav1_readl(%struct.imxdma_engine* %54, i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = shl i32 1, %57
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load %struct.imxdma_engine*, %struct.imxdma_engine** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = shl i32 1, %63
  %65 = load i32, i32* @DMA_DBTOSR, align 4
  %66 = call i32 @imx_dmav1_writel(%struct.imxdma_engine* %62, i32 %64, i32 %65)
  %67 = load i32, i32* @IMX_DMA_ERR_BURST, align 4
  %68 = load i32, i32* %10, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %61, %53
  %71 = load %struct.imxdma_engine*, %struct.imxdma_engine** %6, align 8
  %72 = load i32, i32* @DMA_DRTOSR, align 4
  %73 = call i32 @imx_dmav1_readl(%struct.imxdma_engine* %71, i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = shl i32 1, %74
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %70
  %79 = load %struct.imxdma_engine*, %struct.imxdma_engine** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = shl i32 1, %80
  %82 = load i32, i32* @DMA_DRTOSR, align 4
  %83 = call i32 @imx_dmav1_writel(%struct.imxdma_engine* %79, i32 %81, i32 %82)
  %84 = load i32, i32* @IMX_DMA_ERR_REQUEST, align 4
  %85 = load i32, i32* %10, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %78, %70
  %88 = load %struct.imxdma_engine*, %struct.imxdma_engine** %6, align 8
  %89 = load i32, i32* @DMA_DSESR, align 4
  %90 = call i32 @imx_dmav1_readl(%struct.imxdma_engine* %88, i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = shl i32 1, %91
  %93 = and i32 %90, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %87
  %96 = load %struct.imxdma_engine*, %struct.imxdma_engine** %6, align 8
  %97 = load i32, i32* %8, align 4
  %98 = shl i32 1, %97
  %99 = load i32, i32* @DMA_DSESR, align 4
  %100 = call i32 @imx_dmav1_writel(%struct.imxdma_engine* %96, i32 %98, i32 %99)
  %101 = load i32, i32* @IMX_DMA_ERR_TRANSFER, align 4
  %102 = load i32, i32* %10, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %95, %87
  %105 = load %struct.imxdma_engine*, %struct.imxdma_engine** %6, align 8
  %106 = load i32, i32* @DMA_DBOSR, align 4
  %107 = call i32 @imx_dmav1_readl(%struct.imxdma_engine* %105, i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = shl i32 1, %108
  %110 = and i32 %107, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %104
  %113 = load %struct.imxdma_engine*, %struct.imxdma_engine** %6, align 8
  %114 = load i32, i32* %8, align 4
  %115 = shl i32 1, %114
  %116 = load i32, i32* @DMA_DBOSR, align 4
  %117 = call i32 @imx_dmav1_writel(%struct.imxdma_engine* %113, i32 %115, i32 %116)
  %118 = load i32, i32* @IMX_DMA_ERR_BUFFER, align 4
  %119 = load i32, i32* %10, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %112, %104
  %122 = load %struct.imxdma_engine*, %struct.imxdma_engine** %6, align 8
  %123 = getelementptr inbounds %struct.imxdma_engine, %struct.imxdma_engine* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = call i32 @tasklet_schedule(i32* %128)
  %130 = load %struct.imxdma_engine*, %struct.imxdma_engine** %6, align 8
  %131 = getelementptr inbounds %struct.imxdma_engine, %struct.imxdma_engine* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @IMX_DMA_ERR_BURST, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @IMX_DMA_ERR_REQUEST, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @IMX_DMA_ERR_TRANSFER, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* @IMX_DMA_ERR_BUFFER, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %158 = call i32 @dev_warn(i32 %132, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %133, i8* %139, i8* %145, i8* %151, i8* %157)
  br label %159

159:                                              ; preds = %121, %52
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %8, align 4
  br label %42

162:                                              ; preds = %42
  %163 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %162, %33
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @imx_dmav1_readl(%struct.imxdma_engine*, i32) #1

declare dso_local i32 @imx_dmav1_writel(%struct.imxdma_engine*, i32, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
