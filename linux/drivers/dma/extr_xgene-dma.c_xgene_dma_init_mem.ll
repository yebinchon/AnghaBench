; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_init_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_init_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_dma = type { i32, i64 }

@XGENE_DMA_MEM_RAM_SHUTDOWN = common dso_local global i64 0, align 8
@XGENE_DMA_BLK_MEM_RDY = common dso_local global i64 0, align 8
@XGENE_DMA_BLK_MEM_RDY_VAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Failed to release DMA memory from shutdown\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_dma*)* @xgene_dma_init_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_dma_init_mem(%struct.xgene_dma* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgene_dma*, align 8
  %4 = alloca i32, align 4
  store %struct.xgene_dma* %0, %struct.xgene_dma** %3, align 8
  %5 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %6 = call i32 @xgene_dma_init_ring_mngr(%struct.xgene_dma* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %41

11:                                               ; preds = %1
  %12 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %13 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @XGENE_DMA_MEM_RAM_SHUTDOWN, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @iowrite32(i32 0, i64 %16)
  %18 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %19 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @XGENE_DMA_MEM_RAM_SHUTDOWN, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i64 @ioread32(i64 %22)
  %24 = call i32 @usleep_range(i32 1000, i32 1100)
  %25 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %26 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @XGENE_DMA_BLK_MEM_RDY, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i64 @ioread32(i64 %29)
  %31 = load i64, i64* @XGENE_DMA_BLK_MEM_RDY_VAL, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %11
  %34 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %35 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %33, %9
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @xgene_dma_init_ring_mngr(%struct.xgene_dma*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i64 @ioread32(i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
