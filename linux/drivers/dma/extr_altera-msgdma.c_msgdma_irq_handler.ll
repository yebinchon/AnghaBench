; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_altera-msgdma.c_msgdma_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_altera-msgdma.c_msgdma_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msgdma_device = type { i32, i64, i32, i32 }

@MSGDMA_CSR_STATUS = common dso_local global i64 0, align 8
@MSGDMA_CSR_STAT_BUSY = common dso_local global i32 0, align 4
@MSGDMA_CSR_STAT_IRQ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @msgdma_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msgdma_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.msgdma_device*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.msgdma_device*
  store %struct.msgdma_device* %8, %struct.msgdma_device** %5, align 8
  %9 = load %struct.msgdma_device*, %struct.msgdma_device** %5, align 8
  %10 = getelementptr inbounds %struct.msgdma_device, %struct.msgdma_device* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MSGDMA_CSR_STATUS, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @ioread32(i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MSGDMA_CSR_STAT_BUSY, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load %struct.msgdma_device*, %struct.msgdma_device** %5, align 8
  %21 = getelementptr inbounds %struct.msgdma_device, %struct.msgdma_device* %20, i32 0, i32 3
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.msgdma_device*, %struct.msgdma_device** %5, align 8
  %24 = getelementptr inbounds %struct.msgdma_device, %struct.msgdma_device* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.msgdma_device*, %struct.msgdma_device** %5, align 8
  %26 = call i32 @msgdma_start_transfer(%struct.msgdma_device* %25)
  %27 = load %struct.msgdma_device*, %struct.msgdma_device** %5, align 8
  %28 = getelementptr inbounds %struct.msgdma_device, %struct.msgdma_device* %27, i32 0, i32 3
  %29 = call i32 @spin_unlock(i32* %28)
  br label %30

30:                                               ; preds = %19, %2
  %31 = load %struct.msgdma_device*, %struct.msgdma_device** %5, align 8
  %32 = getelementptr inbounds %struct.msgdma_device, %struct.msgdma_device* %31, i32 0, i32 2
  %33 = call i32 @tasklet_schedule(i32* %32)
  %34 = load i32, i32* @MSGDMA_CSR_STAT_IRQ, align 4
  %35 = load %struct.msgdma_device*, %struct.msgdma_device** %5, align 8
  %36 = getelementptr inbounds %struct.msgdma_device, %struct.msgdma_device* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MSGDMA_CSR_STATUS, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @iowrite32(i32 %34, i64 %39)
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %41
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @msgdma_start_transfer(%struct.msgdma_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
