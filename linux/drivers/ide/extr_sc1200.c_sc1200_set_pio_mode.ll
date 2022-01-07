; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_sc1200.c_sc1200_set_pio_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_sc1200.c_sc1200_set_pio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_12__*, i32)* }
%struct.TYPE_12__ = type { i32, i32, i32 }

@XFER_PIO_0 = common dso_local global i32 0, align 4
@XFER_UDMA_0 = common dso_local global i32 0, align 4
@XFER_UDMA_1 = common dso_local global i32 0, align 4
@XFER_UDMA_2 = common dso_local global i32 0, align 4
@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@XFER_MW_DMA_1 = common dso_local global i32 0, align 4
@XFER_MW_DMA_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"SC1200: %s: changing (U)DMA mode\0A\00", align 1
@IDE_DFLAG_USING_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_12__*)* @sc1200_set_pio_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc1200_set_pio_mode(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  store i32 -1, i32* %5, align 4
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @XFER_PIO_0, align 4
  %11 = sub nsw i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %25 [
    i32 200, label %13
    i32 201, label %15
    i32 202, label %17
    i32 100, label %19
    i32 101, label %21
    i32 102, label %23
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @XFER_UDMA_0, align 4
  store i32 %14, i32* %5, align 4
  br label %25

15:                                               ; preds = %2
  %16 = load i32, i32* @XFER_UDMA_1, align 4
  store i32 %16, i32* %5, align 4
  br label %25

17:                                               ; preds = %2
  %18 = load i32, i32* @XFER_UDMA_2, align 4
  store i32 %18, i32* %5, align 4
  br label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @XFER_MW_DMA_0, align 4
  store i32 %20, i32* %5, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @XFER_MW_DMA_1, align 4
  store i32 %22, i32* %5, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @XFER_MW_DMA_2, align 4
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %2, %23, %21, %19, %17, %15, %13
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %55

28:                                               ; preds = %25
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = call i32 @ide_dma_off_quietly(%struct.TYPE_12__* %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @ide_set_dma_mode(%struct.TYPE_12__* %35, i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %28
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IDE_DFLAG_USING_DMA, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %50, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = call i32 %51(%struct.TYPE_12__* %52, i32 1)
  br label %54

54:                                               ; preds = %46, %39, %28
  br label %59

55:                                               ; preds = %25
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @sc1200_tunepio(%struct.TYPE_12__* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %54
  ret void
}

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @ide_dma_off_quietly(%struct.TYPE_12__*) #1

declare dso_local i64 @ide_set_dma_mode(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @sc1200_tunepio(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
