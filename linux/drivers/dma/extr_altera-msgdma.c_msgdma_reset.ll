; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_altera-msgdma.c_msgdma_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_altera-msgdma.c_msgdma_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msgdma_device = type { i32, i64, i32 }

@MSGDMA_CSR_STAT_MASK = common dso_local global i32 0, align 4
@MSGDMA_CSR_STATUS = common dso_local global i64 0, align 8
@MSGDMA_CSR_CTL_RESET = common dso_local global i32 0, align 4
@MSGDMA_CSR_CONTROL = common dso_local global i64 0, align 8
@MSGDMA_CSR_STAT_RESETTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"DMA channel did not reset\0A\00", align 1
@MSGDMA_CSR_CTL_STOP_ON_ERR = common dso_local global i32 0, align 4
@MSGDMA_CSR_CTL_STOP_ON_EARLY = common dso_local global i32 0, align 4
@MSGDMA_CSR_CTL_GLOBAL_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msgdma_device*)* @msgdma_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msgdma_reset(%struct.msgdma_device* %0) #0 {
  %2 = alloca %struct.msgdma_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.msgdma_device* %0, %struct.msgdma_device** %2, align 8
  %5 = load i32, i32* @MSGDMA_CSR_STAT_MASK, align 4
  %6 = load %struct.msgdma_device*, %struct.msgdma_device** %2, align 8
  %7 = getelementptr inbounds %struct.msgdma_device, %struct.msgdma_device* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MSGDMA_CSR_STATUS, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @iowrite32(i32 %5, i64 %10)
  %12 = load i32, i32* @MSGDMA_CSR_CTL_RESET, align 4
  %13 = load %struct.msgdma_device*, %struct.msgdma_device** %2, align 8
  %14 = getelementptr inbounds %struct.msgdma_device, %struct.msgdma_device* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MSGDMA_CSR_CONTROL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @iowrite32(i32 %12, i64 %17)
  %19 = load %struct.msgdma_device*, %struct.msgdma_device** %2, align 8
  %20 = getelementptr inbounds %struct.msgdma_device, %struct.msgdma_device* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MSGDMA_CSR_STATUS, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @MSGDMA_CSR_STAT_RESETTING, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @readl_poll_timeout(i64 %23, i32 %24, i32 %29, i32 1, i32 10000)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load %struct.msgdma_device*, %struct.msgdma_device** %2, align 8
  %35 = getelementptr inbounds %struct.msgdma_device, %struct.msgdma_device* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %33, %1
  %39 = load i32, i32* @MSGDMA_CSR_STAT_MASK, align 4
  %40 = load %struct.msgdma_device*, %struct.msgdma_device** %2, align 8
  %41 = getelementptr inbounds %struct.msgdma_device, %struct.msgdma_device* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MSGDMA_CSR_STATUS, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @iowrite32(i32 %39, i64 %44)
  %46 = load i32, i32* @MSGDMA_CSR_CTL_STOP_ON_ERR, align 4
  %47 = load i32, i32* @MSGDMA_CSR_CTL_STOP_ON_EARLY, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @MSGDMA_CSR_CTL_GLOBAL_INTR, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.msgdma_device*, %struct.msgdma_device** %2, align 8
  %52 = getelementptr inbounds %struct.msgdma_device, %struct.msgdma_device* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MSGDMA_CSR_CONTROL, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @iowrite32(i32 %50, i64 %55)
  %57 = load %struct.msgdma_device*, %struct.msgdma_device** %2, align 8
  %58 = getelementptr inbounds %struct.msgdma_device, %struct.msgdma_device* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
