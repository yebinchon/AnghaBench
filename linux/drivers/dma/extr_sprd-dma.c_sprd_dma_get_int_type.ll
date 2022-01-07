; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sprd-dma.c_sprd_dma_get_int_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sprd-dma.c_sprd_dma_get_int_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_dma_chn = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sprd_dma_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SPRD_DMA_CHN_INTC = common dso_local global i64 0, align 8
@SPRD_DMA_CHN_INT_STS = common dso_local global i32 0, align 4
@SPRD_DMA_CFGERR_INT = common dso_local global i32 0, align 4
@SPRD_DMA_LIST_INT = common dso_local global i32 0, align 4
@SPRD_DMA_TRANS_INT = common dso_local global i32 0, align 4
@SPRD_DMA_BLK_INT = common dso_local global i32 0, align 4
@SPRD_DMA_FRAG_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"incorrect dma interrupt type\0A\00", align 1
@SPRD_DMA_NO_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sprd_dma_chn*)* @sprd_dma_get_int_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_dma_get_int_type(%struct.sprd_dma_chn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sprd_dma_chn*, align 8
  %4 = alloca %struct.sprd_dma_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.sprd_dma_chn* %0, %struct.sprd_dma_chn** %3, align 8
  %6 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %3, align 8
  %7 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = call %struct.sprd_dma_dev* @to_sprd_dma_dev(i32* %8)
  store %struct.sprd_dma_dev* %9, %struct.sprd_dma_dev** %4, align 8
  %10 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %3, align 8
  %11 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SPRD_DMA_CHN_INTC, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  %16 = load i32, i32* @SPRD_DMA_CHN_INT_STS, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %29 [
    i32 131, label %19
    i32 129, label %21
    i32 128, label %23
    i32 132, label %25
    i32 130, label %27
  ]

19:                                               ; preds = %1
  %20 = load i32, i32* @SPRD_DMA_CFGERR_INT, align 4
  store i32 %20, i32* %2, align 4
  br label %36

21:                                               ; preds = %1
  %22 = load i32, i32* @SPRD_DMA_LIST_INT, align 4
  store i32 %22, i32* %2, align 4
  br label %36

23:                                               ; preds = %1
  %24 = load i32, i32* @SPRD_DMA_TRANS_INT, align 4
  store i32 %24, i32* %2, align 4
  br label %36

25:                                               ; preds = %1
  %26 = load i32, i32* @SPRD_DMA_BLK_INT, align 4
  store i32 %26, i32* %2, align 4
  br label %36

27:                                               ; preds = %1
  %28 = load i32, i32* @SPRD_DMA_FRAG_INT, align 4
  store i32 %28, i32* %2, align 4
  br label %36

29:                                               ; preds = %1
  %30 = load %struct.sprd_dma_dev*, %struct.sprd_dma_dev** %4, align 8
  %31 = getelementptr inbounds %struct.sprd_dma_dev, %struct.sprd_dma_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_warn(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @SPRD_DMA_NO_INT, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %29, %27, %25, %23, %21, %19
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.sprd_dma_dev* @to_sprd_dma_dev(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
