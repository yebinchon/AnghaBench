; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dmamux.c_stm32_dmamux_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dmamux.c_stm32_dmamux_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.stm32_dmamux_data = type { i32, i32, i32 }
%struct.stm32_dmamux = type { i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Unmapping DMAMUX(%u) to DMA%u(%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i8*)* @stm32_dmamux_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_dmamux_free(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stm32_dmamux_data*, align 8
  %6 = alloca %struct.stm32_dmamux*, align 8
  %7 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.stm32_dmamux_data* @dev_get_drvdata(%struct.device* %8)
  store %struct.stm32_dmamux_data* %9, %struct.stm32_dmamux_data** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.stm32_dmamux*
  store %struct.stm32_dmamux* %11, %struct.stm32_dmamux** %6, align 8
  %12 = load %struct.stm32_dmamux_data*, %struct.stm32_dmamux_data** %5, align 8
  %13 = getelementptr inbounds %struct.stm32_dmamux_data, %struct.stm32_dmamux_data* %12, i32 0, i32 0
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.stm32_dmamux_data*, %struct.stm32_dmamux_data** %5, align 8
  %17 = getelementptr inbounds %struct.stm32_dmamux_data, %struct.stm32_dmamux_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.stm32_dmamux*, %struct.stm32_dmamux** %6, align 8
  %20 = getelementptr inbounds %struct.stm32_dmamux, %struct.stm32_dmamux* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @STM32_DMAMUX_CCR(i32 %21)
  %23 = call i32 @stm32_dmamux_write(i32 %18, i32 %22, i32 0)
  %24 = load %struct.stm32_dmamux*, %struct.stm32_dmamux** %6, align 8
  %25 = getelementptr inbounds %struct.stm32_dmamux, %struct.stm32_dmamux* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.stm32_dmamux_data*, %struct.stm32_dmamux_data** %5, align 8
  %28 = getelementptr inbounds %struct.stm32_dmamux_data, %struct.stm32_dmamux_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clear_bit(i32 %26, i32 %29)
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = call i32 @pm_runtime_put_sync(%struct.device* %31)
  %33 = load %struct.stm32_dmamux_data*, %struct.stm32_dmamux_data** %5, align 8
  %34 = getelementptr inbounds %struct.stm32_dmamux_data, %struct.stm32_dmamux_data* %33, i32 0, i32 0
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = load %struct.stm32_dmamux*, %struct.stm32_dmamux** %6, align 8
  %39 = getelementptr inbounds %struct.stm32_dmamux, %struct.stm32_dmamux* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.stm32_dmamux*, %struct.stm32_dmamux** %6, align 8
  %42 = getelementptr inbounds %struct.stm32_dmamux, %struct.stm32_dmamux* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.stm32_dmamux*, %struct.stm32_dmamux** %6, align 8
  %45 = getelementptr inbounds %struct.stm32_dmamux, %struct.stm32_dmamux* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_dbg(%struct.device* %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43, i32 %46)
  %48 = load %struct.stm32_dmamux*, %struct.stm32_dmamux** %6, align 8
  %49 = call i32 @kfree(%struct.stm32_dmamux* %48)
  ret void
}

declare dso_local %struct.stm32_dmamux_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @stm32_dmamux_write(i32, i32, i32) #1

declare dso_local i32 @STM32_DMAMUX_CCR(i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.stm32_dmamux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
