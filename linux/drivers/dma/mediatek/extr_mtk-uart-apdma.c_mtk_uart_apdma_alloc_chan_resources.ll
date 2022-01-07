; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-uart-apdma.c_mtk_uart_apdma_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-uart-apdma.c_mtk_uart_apdma_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mtk_uart_apdmadev = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mtk_chan = type { i32, i64 }

@VFF_ADDR = common dso_local global i32 0, align 4
@VFF_THRE = common dso_local global i32 0, align 4
@VFF_LEN = common dso_local global i32 0, align 4
@VFF_RST = common dso_local global i32 0, align 4
@VFF_WARM_RST_B = common dso_local global i32 0, align 4
@readl = common dso_local global i32 0, align 4
@VFF_EN = common dso_local global i64 0, align 8
@mtk_uart_apdma_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_NONE = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Can't request dma IRQ\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VFF_4G_SUPPORT = common dso_local global i32 0, align 4
@VFF_4G_SUPPORT_CLR_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @mtk_uart_apdma_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_uart_apdma_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.mtk_uart_apdmadev*, align 8
  %5 = alloca %struct.mtk_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %8 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %9 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = call %struct.mtk_uart_apdmadev* @to_mtk_uart_apdma_dev(%struct.TYPE_4__* %10)
  store %struct.mtk_uart_apdmadev* %11, %struct.mtk_uart_apdmadev** %4, align 8
  %12 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %13 = call %struct.mtk_chan* @to_mtk_uart_apdma_chan(%struct.dma_chan* %12)
  store %struct.mtk_chan* %13, %struct.mtk_chan** %5, align 8
  %14 = load %struct.mtk_uart_apdmadev*, %struct.mtk_uart_apdmadev** %4, align 8
  %15 = getelementptr inbounds %struct.mtk_uart_apdmadev, %struct.mtk_uart_apdmadev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @pm_runtime_get_sync(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %23 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pm_runtime_put_noidle(i32 %26)
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %91

29:                                               ; preds = %1
  %30 = load %struct.mtk_chan*, %struct.mtk_chan** %5, align 8
  %31 = load i32, i32* @VFF_ADDR, align 4
  %32 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %30, i32 %31, i32 0)
  %33 = load %struct.mtk_chan*, %struct.mtk_chan** %5, align 8
  %34 = load i32, i32* @VFF_THRE, align 4
  %35 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %33, i32 %34, i32 0)
  %36 = load %struct.mtk_chan*, %struct.mtk_chan** %5, align 8
  %37 = load i32, i32* @VFF_LEN, align 4
  %38 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %36, i32 %37, i32 0)
  %39 = load %struct.mtk_chan*, %struct.mtk_chan** %5, align 8
  %40 = load i32, i32* @VFF_RST, align 4
  %41 = load i32, i32* @VFF_WARM_RST_B, align 4
  %42 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %39, i32 %40, i32 %41)
  %43 = load i32, i32* @readl, align 4
  %44 = load %struct.mtk_chan*, %struct.mtk_chan** %5, align 8
  %45 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VFF_EN, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @readx_poll_timeout(i32 %43, i64 %48, i32 %49, i32 %53, i32 10, i32 100)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %29
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %91

59:                                               ; preds = %29
  %60 = load %struct.mtk_chan*, %struct.mtk_chan** %5, align 8
  %61 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @mtk_uart_apdma_irq_handler, align 4
  %64 = load i32, i32* @IRQF_TRIGGER_NONE, align 4
  %65 = load i32, i32* @KBUILD_MODNAME, align 4
  %66 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %67 = call i32 @request_irq(i32 %62, i32 %63, i32 %64, i32 %65, %struct.dma_chan* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %59
  %71 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %72 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %91

79:                                               ; preds = %59
  %80 = load %struct.mtk_uart_apdmadev*, %struct.mtk_uart_apdmadev** %4, align 8
  %81 = getelementptr inbounds %struct.mtk_uart_apdmadev, %struct.mtk_uart_apdmadev* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.mtk_chan*, %struct.mtk_chan** %5, align 8
  %86 = load i32, i32* @VFF_4G_SUPPORT, align 4
  %87 = load i32, i32* @VFF_4G_SUPPORT_CLR_B, align 4
  %88 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %79
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %70, %57, %21
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.mtk_uart_apdmadev* @to_mtk_uart_apdma_dev(%struct.TYPE_4__*) #1

declare dso_local %struct.mtk_chan* @to_mtk_uart_apdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @mtk_uart_apdma_write(%struct.mtk_chan*, i32, i32) #1

declare dso_local i32 @readx_poll_timeout(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
