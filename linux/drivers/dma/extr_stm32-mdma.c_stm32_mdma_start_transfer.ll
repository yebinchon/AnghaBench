; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_start_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_start_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_mdma_chan = type { i32, i32, %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.stm32_mdma_hwdesc* }
%struct.stm32_mdma_hwdesc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stm32_mdma_device = type { i32 }
%struct.virt_dma_desc = type { i32 }

@STM32_MDMA_CCR_EN = common dso_local global i64 0, align 8
@STM32_MDMA_CTCR_SWRM = common dso_local global i32 0, align 4
@STM32_MDMA_CCR_SWRQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"vchan %pK: started\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_mdma_chan*)* @stm32_mdma_start_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_mdma_start_transfer(%struct.stm32_mdma_chan* %0) #0 {
  %2 = alloca %struct.stm32_mdma_chan*, align 8
  %3 = alloca %struct.stm32_mdma_device*, align 8
  %4 = alloca %struct.virt_dma_desc*, align 8
  %5 = alloca %struct.stm32_mdma_hwdesc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.stm32_mdma_chan* %0, %struct.stm32_mdma_chan** %2, align 8
  %9 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %10 = call %struct.stm32_mdma_device* @stm32_mdma_get_dev(%struct.stm32_mdma_chan* %9)
  store %struct.stm32_mdma_device* %10, %struct.stm32_mdma_device** %3, align 8
  %11 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %12 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %15 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %14, i32 0, i32 1
  %16 = call %struct.virt_dma_desc* @vchan_next_desc(i32* %15)
  store %struct.virt_dma_desc* %16, %struct.virt_dma_desc** %4, align 8
  %17 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %18 = icmp ne %struct.virt_dma_desc* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %21 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %20, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %21, align 8
  br label %150

22:                                               ; preds = %1
  %23 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %24 = call %struct.TYPE_4__* @to_stm32_mdma_desc(%struct.virt_dma_desc* %23)
  %25 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %26 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %25, i32 0, i32 2
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %26, align 8
  %27 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %28 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %33, align 8
  store %struct.stm32_mdma_hwdesc* %34, %struct.stm32_mdma_hwdesc** %5, align 8
  %35 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %36 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %3, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @STM32_MDMA_CCR(i64 %38)
  %40 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %41 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @stm32_mdma_write(%struct.stm32_mdma_device* %37, i64 %39, i32 %44)
  %46 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %3, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @STM32_MDMA_CTCR(i64 %47)
  %49 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %5, align 8
  %50 = getelementptr inbounds %struct.stm32_mdma_hwdesc, %struct.stm32_mdma_hwdesc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @stm32_mdma_write(%struct.stm32_mdma_device* %46, i64 %48, i32 %51)
  %53 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %3, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i64 @STM32_MDMA_CBNDTR(i64 %54)
  %56 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %5, align 8
  %57 = getelementptr inbounds %struct.stm32_mdma_hwdesc, %struct.stm32_mdma_hwdesc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @stm32_mdma_write(%struct.stm32_mdma_device* %53, i64 %55, i32 %58)
  %60 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %3, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i64 @STM32_MDMA_CSAR(i64 %61)
  %63 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %5, align 8
  %64 = getelementptr inbounds %struct.stm32_mdma_hwdesc, %struct.stm32_mdma_hwdesc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @stm32_mdma_write(%struct.stm32_mdma_device* %60, i64 %62, i32 %65)
  %67 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %3, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i64 @STM32_MDMA_CDAR(i64 %68)
  %70 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %5, align 8
  %71 = getelementptr inbounds %struct.stm32_mdma_hwdesc, %struct.stm32_mdma_hwdesc* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @stm32_mdma_write(%struct.stm32_mdma_device* %67, i64 %69, i32 %72)
  %74 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %3, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i64 @STM32_MDMA_CBRUR(i64 %75)
  %77 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %5, align 8
  %78 = getelementptr inbounds %struct.stm32_mdma_hwdesc, %struct.stm32_mdma_hwdesc* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @stm32_mdma_write(%struct.stm32_mdma_device* %74, i64 %76, i32 %79)
  %81 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %3, align 8
  %82 = load i64, i64* %6, align 8
  %83 = call i64 @STM32_MDMA_CLAR(i64 %82)
  %84 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %5, align 8
  %85 = getelementptr inbounds %struct.stm32_mdma_hwdesc, %struct.stm32_mdma_hwdesc* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @stm32_mdma_write(%struct.stm32_mdma_device* %81, i64 %83, i32 %86)
  %88 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %3, align 8
  %89 = load i64, i64* %6, align 8
  %90 = call i64 @STM32_MDMA_CTBR(i64 %89)
  %91 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %5, align 8
  %92 = getelementptr inbounds %struct.stm32_mdma_hwdesc, %struct.stm32_mdma_hwdesc* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @stm32_mdma_write(%struct.stm32_mdma_device* %88, i64 %90, i32 %93)
  %95 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %3, align 8
  %96 = load i64, i64* %6, align 8
  %97 = call i64 @STM32_MDMA_CMAR(i64 %96)
  %98 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %5, align 8
  %99 = getelementptr inbounds %struct.stm32_mdma_hwdesc, %struct.stm32_mdma_hwdesc* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @stm32_mdma_write(%struct.stm32_mdma_device* %95, i64 %97, i32 %100)
  %102 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %3, align 8
  %103 = load i64, i64* %6, align 8
  %104 = call i64 @STM32_MDMA_CMDR(i64 %103)
  %105 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %5, align 8
  %106 = getelementptr inbounds %struct.stm32_mdma_hwdesc, %struct.stm32_mdma_hwdesc* %105, i32 0, i32 8
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @stm32_mdma_write(%struct.stm32_mdma_device* %102, i64 %104, i32 %107)
  %109 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %3, align 8
  %110 = load i64, i64* %6, align 8
  %111 = call i32 @STM32_MDMA_CISR(i64 %110)
  %112 = call i64 @stm32_mdma_read(%struct.stm32_mdma_device* %109, i32 %111)
  store i64 %112, i64* %7, align 8
  %113 = load i64, i64* %7, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %22
  %116 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %3, align 8
  %117 = load i64, i64* %6, align 8
  %118 = call i64 @STM32_MDMA_CIFCR(i64 %117)
  %119 = load i64, i64* %7, align 8
  %120 = call i32 @stm32_mdma_set_bits(%struct.stm32_mdma_device* %116, i64 %118, i64 %119)
  br label %121

121:                                              ; preds = %115, %22
  %122 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %123 = call i32 @stm32_mdma_dump_reg(%struct.stm32_mdma_chan* %122)
  %124 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %3, align 8
  %125 = load i64, i64* %6, align 8
  %126 = call i64 @STM32_MDMA_CCR(i64 %125)
  %127 = load i64, i64* @STM32_MDMA_CCR_EN, align 8
  %128 = call i32 @stm32_mdma_set_bits(%struct.stm32_mdma_device* %124, i64 %126, i64 %127)
  %129 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %5, align 8
  %130 = getelementptr inbounds %struct.stm32_mdma_hwdesc, %struct.stm32_mdma_hwdesc* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @STM32_MDMA_CTCR_SWRM, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %121
  %136 = load i64, i64* %6, align 8
  %137 = call i64 @STM32_MDMA_CCR(i64 %136)
  store i64 %137, i64* %8, align 8
  %138 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %3, align 8
  %139 = load i64, i64* %8, align 8
  %140 = load i64, i64* @STM32_MDMA_CCR_SWRQ, align 8
  %141 = call i32 @stm32_mdma_set_bits(%struct.stm32_mdma_device* %138, i64 %139, i64 %140)
  br label %142

142:                                              ; preds = %135, %121
  %143 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %144 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %143, i32 0, i32 0
  store i32 1, i32* %144, align 8
  %145 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %146 = call i32 @chan2dev(%struct.stm32_mdma_chan* %145)
  %147 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %148 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %147, i32 0, i32 1
  %149 = call i32 @dev_dbg(i32 %146, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %148)
  br label %150

150:                                              ; preds = %142, %19
  ret void
}

declare dso_local %struct.stm32_mdma_device* @stm32_mdma_get_dev(%struct.stm32_mdma_chan*) #1

declare dso_local %struct.virt_dma_desc* @vchan_next_desc(i32*) #1

declare dso_local %struct.TYPE_4__* @to_stm32_mdma_desc(%struct.virt_dma_desc*) #1

declare dso_local i32 @stm32_mdma_write(%struct.stm32_mdma_device*, i64, i32) #1

declare dso_local i64 @STM32_MDMA_CCR(i64) #1

declare dso_local i64 @STM32_MDMA_CTCR(i64) #1

declare dso_local i64 @STM32_MDMA_CBNDTR(i64) #1

declare dso_local i64 @STM32_MDMA_CSAR(i64) #1

declare dso_local i64 @STM32_MDMA_CDAR(i64) #1

declare dso_local i64 @STM32_MDMA_CBRUR(i64) #1

declare dso_local i64 @STM32_MDMA_CLAR(i64) #1

declare dso_local i64 @STM32_MDMA_CTBR(i64) #1

declare dso_local i64 @STM32_MDMA_CMAR(i64) #1

declare dso_local i64 @STM32_MDMA_CMDR(i64) #1

declare dso_local i64 @stm32_mdma_read(%struct.stm32_mdma_device*, i32) #1

declare dso_local i32 @STM32_MDMA_CISR(i64) #1

declare dso_local i32 @stm32_mdma_set_bits(%struct.stm32_mdma_device*, i64, i64) #1

declare dso_local i64 @STM32_MDMA_CIFCR(i64) #1

declare dso_local i32 @stm32_mdma_dump_reg(%struct.stm32_mdma_chan*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32*) #1

declare dso_local i32 @chan2dev(%struct.stm32_mdma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
