; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_idma32.c_idma32_fifo_partition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_idma32.c_idma32_fifo_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_dma = type { i32 }

@IDMA32C_FP_UPDATE = common dso_local global i32 0, align 4
@FIFO_PARTITION1 = common dso_local global i32 0, align 4
@FIFO_PARTITION0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_dma*)* @idma32_fifo_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idma32_fifo_partition(%struct.dw_dma* %0) #0 {
  %2 = alloca %struct.dw_dma*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dw_dma* %0, %struct.dw_dma** %2, align 8
  %5 = call i32 @IDMA32C_FP_PSIZE_CH0(i32 64)
  %6 = call i32 @IDMA32C_FP_PSIZE_CH1(i32 64)
  %7 = or i32 %5, %6
  %8 = load i32, i32* @IDMA32C_FP_UPDATE, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = shl i32 %10, 0
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = shl i32 %14, 32
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load %struct.dw_dma*, %struct.dw_dma** %2, align 8
  %19 = load i32, i32* @FIFO_PARTITION1, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @idma32_writeq(%struct.dw_dma* %18, i32 %19, i32 %20)
  %22 = load %struct.dw_dma*, %struct.dw_dma** %2, align 8
  %23 = load i32, i32* @FIFO_PARTITION0, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @idma32_writeq(%struct.dw_dma* %22, i32 %23, i32 %24)
  ret void
}

declare dso_local i32 @IDMA32C_FP_PSIZE_CH0(i32) #1

declare dso_local i32 @IDMA32C_FP_PSIZE_CH1(i32) #1

declare dso_local i32 @idma32_writeq(%struct.dw_dma*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
