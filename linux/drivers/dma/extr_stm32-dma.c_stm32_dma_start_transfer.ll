; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_start_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_start_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dma_chan = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, %struct.stm32_dma_sg_req* }
%struct.stm32_dma_sg_req = type { %struct.stm32_dma_chan_reg }
%struct.stm32_dma_chan_reg = type { i32, i32, i32, i32, i32, i32 }
%struct.stm32_dma_device = type { i32 }
%struct.virt_dma_desc = type { i32 }

@STM32_DMA_SCR_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"vchan %pK: started\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_dma_chan*)* @stm32_dma_start_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_dma_start_transfer(%struct.stm32_dma_chan* %0) #0 {
  %2 = alloca %struct.stm32_dma_chan*, align 8
  %3 = alloca %struct.stm32_dma_device*, align 8
  %4 = alloca %struct.virt_dma_desc*, align 8
  %5 = alloca %struct.stm32_dma_sg_req*, align 8
  %6 = alloca %struct.stm32_dma_chan_reg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.stm32_dma_chan* %0, %struct.stm32_dma_chan** %2, align 8
  %9 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %10 = call %struct.stm32_dma_device* @stm32_dma_get_dev(%struct.stm32_dma_chan* %9)
  store %struct.stm32_dma_device* %10, %struct.stm32_dma_device** %3, align 8
  %11 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %12 = call i32 @stm32_dma_disable_chan(%struct.stm32_dma_chan* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %160

16:                                               ; preds = %1
  %17 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %18 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %16
  %22 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %23 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %22, i32 0, i32 2
  %24 = call %struct.virt_dma_desc* @vchan_next_desc(i32* %23)
  store %struct.virt_dma_desc* %24, %struct.virt_dma_desc** %4, align 8
  %25 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %26 = icmp ne %struct.virt_dma_desc* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %160

28:                                               ; preds = %21
  %29 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %30 = call %struct.TYPE_2__* @to_stm32_dma_desc(%struct.virt_dma_desc* %29)
  %31 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %32 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %31, i32 0, i32 4
  store %struct.TYPE_2__* %30, %struct.TYPE_2__** %32, align 8
  %33 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %34 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %28, %16
  %36 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %37 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %40 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %39, i32 0, i32 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %38, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %47 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %35
  %49 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %50 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %49, i32 0, i32 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load %struct.stm32_dma_sg_req*, %struct.stm32_dma_sg_req** %52, align 8
  %54 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %55 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.stm32_dma_sg_req, %struct.stm32_dma_sg_req* %53, i64 %56
  store %struct.stm32_dma_sg_req* %57, %struct.stm32_dma_sg_req** %5, align 8
  %58 = load %struct.stm32_dma_sg_req*, %struct.stm32_dma_sg_req** %5, align 8
  %59 = getelementptr inbounds %struct.stm32_dma_sg_req, %struct.stm32_dma_sg_req* %58, i32 0, i32 0
  store %struct.stm32_dma_chan_reg* %59, %struct.stm32_dma_chan_reg** %6, align 8
  %60 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %3, align 8
  %61 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %62 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @STM32_DMA_SCR(i32 %63)
  %65 = load %struct.stm32_dma_chan_reg*, %struct.stm32_dma_chan_reg** %6, align 8
  %66 = getelementptr inbounds %struct.stm32_dma_chan_reg, %struct.stm32_dma_chan_reg* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @stm32_dma_write(%struct.stm32_dma_device* %60, i32 %64, i32 %67)
  %69 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %3, align 8
  %70 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %71 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @STM32_DMA_SPAR(i32 %72)
  %74 = load %struct.stm32_dma_chan_reg*, %struct.stm32_dma_chan_reg** %6, align 8
  %75 = getelementptr inbounds %struct.stm32_dma_chan_reg, %struct.stm32_dma_chan_reg* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @stm32_dma_write(%struct.stm32_dma_device* %69, i32 %73, i32 %76)
  %78 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %3, align 8
  %79 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %80 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @STM32_DMA_SM0AR(i32 %81)
  %83 = load %struct.stm32_dma_chan_reg*, %struct.stm32_dma_chan_reg** %6, align 8
  %84 = getelementptr inbounds %struct.stm32_dma_chan_reg, %struct.stm32_dma_chan_reg* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @stm32_dma_write(%struct.stm32_dma_device* %78, i32 %82, i32 %85)
  %87 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %3, align 8
  %88 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %89 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @STM32_DMA_SFCR(i32 %90)
  %92 = load %struct.stm32_dma_chan_reg*, %struct.stm32_dma_chan_reg** %6, align 8
  %93 = getelementptr inbounds %struct.stm32_dma_chan_reg, %struct.stm32_dma_chan_reg* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @stm32_dma_write(%struct.stm32_dma_device* %87, i32 %91, i32 %94)
  %96 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %3, align 8
  %97 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %98 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @STM32_DMA_SM1AR(i32 %99)
  %101 = load %struct.stm32_dma_chan_reg*, %struct.stm32_dma_chan_reg** %6, align 8
  %102 = getelementptr inbounds %struct.stm32_dma_chan_reg, %struct.stm32_dma_chan_reg* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @stm32_dma_write(%struct.stm32_dma_device* %96, i32 %100, i32 %103)
  %105 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %3, align 8
  %106 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %107 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @STM32_DMA_SNDTR(i32 %108)
  %110 = load %struct.stm32_dma_chan_reg*, %struct.stm32_dma_chan_reg** %6, align 8
  %111 = getelementptr inbounds %struct.stm32_dma_chan_reg, %struct.stm32_dma_chan_reg* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @stm32_dma_write(%struct.stm32_dma_device* %105, i32 %109, i32 %112)
  %114 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %115 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %115, align 8
  %118 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %119 = call i64 @stm32_dma_irq_status(%struct.stm32_dma_chan* %118)
  store i64 %119, i64* %7, align 8
  %120 = load i64, i64* %7, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %48
  %123 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %124 = load i64, i64* %7, align 8
  %125 = call i32 @stm32_dma_irq_clear(%struct.stm32_dma_chan* %123, i64 %124)
  br label %126

126:                                              ; preds = %122, %48
  %127 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %128 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %127, i32 0, i32 4
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %135 = call i32 @stm32_dma_configure_next_sg(%struct.stm32_dma_chan* %134)
  br label %136

136:                                              ; preds = %133, %126
  %137 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %138 = call i32 @stm32_dma_dump_reg(%struct.stm32_dma_chan* %137)
  %139 = load i32, i32* @STM32_DMA_SCR_EN, align 4
  %140 = load %struct.stm32_dma_chan_reg*, %struct.stm32_dma_chan_reg** %6, align 8
  %141 = getelementptr inbounds %struct.stm32_dma_chan_reg, %struct.stm32_dma_chan_reg* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %3, align 8
  %145 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %146 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @STM32_DMA_SCR(i32 %147)
  %149 = load %struct.stm32_dma_chan_reg*, %struct.stm32_dma_chan_reg** %6, align 8
  %150 = getelementptr inbounds %struct.stm32_dma_chan_reg, %struct.stm32_dma_chan_reg* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @stm32_dma_write(%struct.stm32_dma_device* %144, i32 %148, i32 %151)
  %153 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %154 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %153, i32 0, i32 1
  store i32 1, i32* %154, align 8
  %155 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %156 = call i32 @chan2dev(%struct.stm32_dma_chan* %155)
  %157 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %158 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %157, i32 0, i32 2
  %159 = call i32 @dev_dbg(i32 %156, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %158)
  br label %160

160:                                              ; preds = %136, %27, %15
  ret void
}

declare dso_local %struct.stm32_dma_device* @stm32_dma_get_dev(%struct.stm32_dma_chan*) #1

declare dso_local i32 @stm32_dma_disable_chan(%struct.stm32_dma_chan*) #1

declare dso_local %struct.virt_dma_desc* @vchan_next_desc(i32*) #1

declare dso_local %struct.TYPE_2__* @to_stm32_dma_desc(%struct.virt_dma_desc*) #1

declare dso_local i32 @stm32_dma_write(%struct.stm32_dma_device*, i32, i32) #1

declare dso_local i32 @STM32_DMA_SCR(i32) #1

declare dso_local i32 @STM32_DMA_SPAR(i32) #1

declare dso_local i32 @STM32_DMA_SM0AR(i32) #1

declare dso_local i32 @STM32_DMA_SFCR(i32) #1

declare dso_local i32 @STM32_DMA_SM1AR(i32) #1

declare dso_local i32 @STM32_DMA_SNDTR(i32) #1

declare dso_local i64 @stm32_dma_irq_status(%struct.stm32_dma_chan*) #1

declare dso_local i32 @stm32_dma_irq_clear(%struct.stm32_dma_chan*, i64) #1

declare dso_local i32 @stm32_dma_configure_next_sg(%struct.stm32_dma_chan*) #1

declare dso_local i32 @stm32_dma_dump_reg(%struct.stm32_dma_chan*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32*) #1

declare dso_local i32 @chan2dev(%struct.stm32_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
