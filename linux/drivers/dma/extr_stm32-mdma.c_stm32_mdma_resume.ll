; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.stm32_mdma_chan = type { i64, %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.stm32_mdma_hwdesc* }
%struct.stm32_mdma_hwdesc = type { i32 }
%struct.stm32_mdma_device = type { i32 }

@STM32_MDMA_CCR_EN = common dso_local global i64 0, align 8
@STM32_MDMA_CTCR_SWRM = common dso_local global i32 0, align 4
@STM32_MDMA_CCR_SWRQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"vchan %pK: resume\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @stm32_mdma_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_mdma_resume(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.stm32_mdma_chan*, align 8
  %4 = alloca %struct.stm32_mdma_device*, align 8
  %5 = alloca %struct.stm32_mdma_hwdesc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %10 = call %struct.stm32_mdma_chan* @to_stm32_mdma_chan(%struct.dma_chan* %9)
  store %struct.stm32_mdma_chan* %10, %struct.stm32_mdma_chan** %3, align 8
  %11 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %12 = call %struct.stm32_mdma_device* @stm32_mdma_get_dev(%struct.stm32_mdma_chan* %11)
  store %struct.stm32_mdma_device* %12, %struct.stm32_mdma_device** %4, align 8
  %13 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %14 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %13, i32 0, i32 3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %19 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %22, align 8
  store %struct.stm32_mdma_hwdesc* %23, %struct.stm32_mdma_hwdesc** %5, align 8
  %24 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %25 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %4, align 8
  %30 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %31 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @STM32_MDMA_CCR(i32 %32)
  %34 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %35 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %34, i32 0, i32 3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @stm32_mdma_write(%struct.stm32_mdma_device* %29, i64 %33, i32 %38)
  %40 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %4, align 8
  %41 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %42 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @STM32_MDMA_CISR(i32 %43)
  %45 = call i64 @stm32_mdma_read(%struct.stm32_mdma_device* %40, i32 %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %1
  %49 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %4, align 8
  %50 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %51 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @STM32_MDMA_CIFCR(i32 %52)
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @stm32_mdma_set_bits(%struct.stm32_mdma_device* %49, i64 %53, i64 %54)
  br label %56

56:                                               ; preds = %48, %1
  %57 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %58 = call i32 @stm32_mdma_dump_reg(%struct.stm32_mdma_chan* %57)
  %59 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %60 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @STM32_MDMA_CCR(i32 %61)
  store i64 %62, i64* %8, align 8
  %63 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %4, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @STM32_MDMA_CCR_EN, align 8
  %66 = call i32 @stm32_mdma_set_bits(%struct.stm32_mdma_device* %63, i64 %64, i64 %65)
  %67 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %5, align 8
  %68 = getelementptr inbounds %struct.stm32_mdma_hwdesc, %struct.stm32_mdma_hwdesc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @STM32_MDMA_CTCR_SWRM, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %56
  %74 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %4, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* @STM32_MDMA_CCR_SWRQ, align 8
  %77 = call i32 @stm32_mdma_set_bits(%struct.stm32_mdma_device* %74, i64 %75, i64 %76)
  br label %78

78:                                               ; preds = %73, %56
  %79 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %80 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %85 = call i32 @chan2dev(%struct.stm32_mdma_chan* %84)
  %86 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %87 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %86, i32 0, i32 1
  %88 = call i32 @dev_dbg(i32 %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %87)
  ret i32 0
}

declare dso_local %struct.stm32_mdma_chan* @to_stm32_mdma_chan(%struct.dma_chan*) #1

declare dso_local %struct.stm32_mdma_device* @stm32_mdma_get_dev(%struct.stm32_mdma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @stm32_mdma_write(%struct.stm32_mdma_device*, i64, i32) #1

declare dso_local i64 @STM32_MDMA_CCR(i32) #1

declare dso_local i64 @stm32_mdma_read(%struct.stm32_mdma_device*, i32) #1

declare dso_local i32 @STM32_MDMA_CISR(i32) #1

declare dso_local i32 @stm32_mdma_set_bits(%struct.stm32_mdma_device*, i64, i64) #1

declare dso_local i64 @STM32_MDMA_CIFCR(i32) #1

declare dso_local i32 @stm32_mdma_dump_reg(%struct.stm32_mdma_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @chan2dev(%struct.stm32_mdma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
