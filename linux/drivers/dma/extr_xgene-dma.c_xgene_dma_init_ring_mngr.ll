; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_init_ring_mngr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_init_ring_mngr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_dma = type { i64, i32 }

@XGENE_DMA_RING_CLKEN = common dso_local global i64 0, align 8
@XGENE_DMA_RING_SRST = common dso_local global i64 0, align 8
@XGENE_DMA_RING_MEM_RAM_SHUTDOWN = common dso_local global i64 0, align 8
@XGENE_DMA_RING_BLK_MEM_RDY = common dso_local global i64 0, align 8
@XGENE_DMA_RING_BLK_MEM_RDY_VAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Failed to release ring mngr memory from shutdown\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@XGENE_DMA_RING_THRESLD0_SET1_VAL = common dso_local global i32 0, align 4
@XGENE_DMA_RING_THRESLD0_SET1 = common dso_local global i64 0, align 8
@XGENE_DMA_RING_THRESLD1_SET1_VAL = common dso_local global i32 0, align 4
@XGENE_DMA_RING_THRESLD1_SET1 = common dso_local global i64 0, align 8
@XGENE_DMA_RING_HYSTERESIS_VAL = common dso_local global i32 0, align 4
@XGENE_DMA_RING_HYSTERESIS = common dso_local global i64 0, align 8
@XGENE_DMA_RING_ENABLE = common dso_local global i32 0, align 4
@XGENE_DMA_RING_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_dma*)* @xgene_dma_init_ring_mngr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_dma_init_ring_mngr(%struct.xgene_dma* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgene_dma*, align 8
  store %struct.xgene_dma* %0, %struct.xgene_dma** %3, align 8
  %4 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %5 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @XGENE_DMA_RING_CLKEN, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i64 @ioread32(i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %13 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @XGENE_DMA_RING_SRST, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i64 @ioread32(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %90

20:                                               ; preds = %11, %1
  %21 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %22 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @XGENE_DMA_RING_CLKEN, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @iowrite32(i32 3, i64 %25)
  %27 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %28 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @XGENE_DMA_RING_SRST, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @iowrite32(i32 0, i64 %31)
  %33 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %34 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @XGENE_DMA_RING_MEM_RAM_SHUTDOWN, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @iowrite32(i32 0, i64 %37)
  %39 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %40 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @XGENE_DMA_RING_MEM_RAM_SHUTDOWN, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i64 @ioread32(i64 %43)
  %45 = call i32 @usleep_range(i32 1000, i32 1100)
  %46 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %47 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @XGENE_DMA_RING_BLK_MEM_RDY, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i64 @ioread32(i64 %50)
  %52 = load i64, i64* @XGENE_DMA_RING_BLK_MEM_RDY_VAL, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %20
  %55 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %56 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %90

61:                                               ; preds = %20
  %62 = load i32, i32* @XGENE_DMA_RING_THRESLD0_SET1_VAL, align 4
  %63 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %64 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @XGENE_DMA_RING_THRESLD0_SET1, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @iowrite32(i32 %62, i64 %67)
  %69 = load i32, i32* @XGENE_DMA_RING_THRESLD1_SET1_VAL, align 4
  %70 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %71 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @XGENE_DMA_RING_THRESLD1_SET1, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @iowrite32(i32 %69, i64 %74)
  %76 = load i32, i32* @XGENE_DMA_RING_HYSTERESIS_VAL, align 4
  %77 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %78 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @XGENE_DMA_RING_HYSTERESIS, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @iowrite32(i32 %76, i64 %81)
  %83 = load i32, i32* @XGENE_DMA_RING_ENABLE, align 4
  %84 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %85 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @XGENE_DMA_RING_CONFIG, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @iowrite32(i32 %83, i64 %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %61, %54, %19
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i64 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
