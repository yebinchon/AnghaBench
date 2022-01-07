; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_dump_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_dump_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_mdma_chan = type { i32 }
%struct.stm32_mdma_device = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"CCR:     0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"CTCR:    0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"CBNDTR:  0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"CSAR:    0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"CDAR:    0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"CBRUR:   0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"CLAR:    0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"CTBR:    0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"CMAR:    0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"CMDR:    0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_mdma_chan*)* @stm32_mdma_dump_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_mdma_dump_reg(%struct.stm32_mdma_chan* %0) #0 {
  %2 = alloca %struct.stm32_mdma_chan*, align 8
  %3 = alloca %struct.stm32_mdma_device*, align 8
  store %struct.stm32_mdma_chan* %0, %struct.stm32_mdma_chan** %2, align 8
  %4 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %5 = call %struct.stm32_mdma_device* @stm32_mdma_get_dev(%struct.stm32_mdma_chan* %4)
  store %struct.stm32_mdma_device* %5, %struct.stm32_mdma_device** %3, align 8
  %6 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %7 = call i32 @chan2dev(%struct.stm32_mdma_chan* %6)
  %8 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %3, align 8
  %9 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %10 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @STM32_MDMA_CCR(i32 %11)
  %13 = call i32 @stm32_mdma_read(%struct.stm32_mdma_device* %8, i32 %12)
  %14 = call i32 @dev_dbg(i32 %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %16 = call i32 @chan2dev(%struct.stm32_mdma_chan* %15)
  %17 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %3, align 8
  %18 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %19 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @STM32_MDMA_CTCR(i32 %20)
  %22 = call i32 @stm32_mdma_read(%struct.stm32_mdma_device* %17, i32 %21)
  %23 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %25 = call i32 @chan2dev(%struct.stm32_mdma_chan* %24)
  %26 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %3, align 8
  %27 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %28 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @STM32_MDMA_CBNDTR(i32 %29)
  %31 = call i32 @stm32_mdma_read(%struct.stm32_mdma_device* %26, i32 %30)
  %32 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %34 = call i32 @chan2dev(%struct.stm32_mdma_chan* %33)
  %35 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %3, align 8
  %36 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %37 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @STM32_MDMA_CSAR(i32 %38)
  %40 = call i32 @stm32_mdma_read(%struct.stm32_mdma_device* %35, i32 %39)
  %41 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %43 = call i32 @chan2dev(%struct.stm32_mdma_chan* %42)
  %44 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %3, align 8
  %45 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %46 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @STM32_MDMA_CDAR(i32 %47)
  %49 = call i32 @stm32_mdma_read(%struct.stm32_mdma_device* %44, i32 %48)
  %50 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %52 = call i32 @chan2dev(%struct.stm32_mdma_chan* %51)
  %53 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %3, align 8
  %54 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %55 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @STM32_MDMA_CBRUR(i32 %56)
  %58 = call i32 @stm32_mdma_read(%struct.stm32_mdma_device* %53, i32 %57)
  %59 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %58)
  %60 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %61 = call i32 @chan2dev(%struct.stm32_mdma_chan* %60)
  %62 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %3, align 8
  %63 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %64 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @STM32_MDMA_CLAR(i32 %65)
  %67 = call i32 @stm32_mdma_read(%struct.stm32_mdma_device* %62, i32 %66)
  %68 = call i32 @dev_dbg(i32 %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %67)
  %69 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %70 = call i32 @chan2dev(%struct.stm32_mdma_chan* %69)
  %71 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %3, align 8
  %72 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %73 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @STM32_MDMA_CTBR(i32 %74)
  %76 = call i32 @stm32_mdma_read(%struct.stm32_mdma_device* %71, i32 %75)
  %77 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %76)
  %78 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %79 = call i32 @chan2dev(%struct.stm32_mdma_chan* %78)
  %80 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %3, align 8
  %81 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %82 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @STM32_MDMA_CMAR(i32 %83)
  %85 = call i32 @stm32_mdma_read(%struct.stm32_mdma_device* %80, i32 %84)
  %86 = call i32 @dev_dbg(i32 %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %85)
  %87 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %88 = call i32 @chan2dev(%struct.stm32_mdma_chan* %87)
  %89 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %3, align 8
  %90 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %2, align 8
  %91 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @STM32_MDMA_CMDR(i32 %92)
  %94 = call i32 @stm32_mdma_read(%struct.stm32_mdma_device* %89, i32 %93)
  %95 = call i32 @dev_dbg(i32 %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %94)
  ret void
}

declare dso_local %struct.stm32_mdma_device* @stm32_mdma_get_dev(%struct.stm32_mdma_chan*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @chan2dev(%struct.stm32_mdma_chan*) #1

declare dso_local i32 @stm32_mdma_read(%struct.stm32_mdma_device*, i32) #1

declare dso_local i32 @STM32_MDMA_CCR(i32) #1

declare dso_local i32 @STM32_MDMA_CTCR(i32) #1

declare dso_local i32 @STM32_MDMA_CBNDTR(i32) #1

declare dso_local i32 @STM32_MDMA_CSAR(i32) #1

declare dso_local i32 @STM32_MDMA_CDAR(i32) #1

declare dso_local i32 @STM32_MDMA_CBRUR(i32) #1

declare dso_local i32 @STM32_MDMA_CLAR(i32) #1

declare dso_local i32 @STM32_MDMA_CTBR(i32) #1

declare dso_local i32 @STM32_MDMA_CMAR(i32) #1

declare dso_local i32 @STM32_MDMA_CMDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
