; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_ch_sta_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_ch_sta_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_fdma_chan = type { i32, %struct.st_fdma_dev*, %struct.TYPE_4__ }
%struct.st_fdma_dev = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FDMA_CH_CMD_OFST = common dso_local global i32 0, align 4
@FDMA_CH_CMD_ERR_MASK = common dso_local global i64 0, align 8
@FDMA_CH_CMD_STA_MASK = common dso_local global i64 0, align 8
@FDMA_INT_STA_ERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"chan:%d, error:%ld\0A\00", align 1
@DMA_ERROR = common dso_local global i32 0, align 4
@DMA_PAUSED = common dso_local global i32 0, align 4
@DMA_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_fdma_chan*, i64)* @st_fdma_ch_sta_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_fdma_ch_sta_update(%struct.st_fdma_chan* %0, i64 %1) #0 {
  %3 = alloca %struct.st_fdma_chan*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.st_fdma_dev*, align 8
  store %struct.st_fdma_chan* %0, %struct.st_fdma_chan** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %3, align 8
  %15 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %14, i32 0, i32 1
  %16 = load %struct.st_fdma_dev*, %struct.st_fdma_dev** %15, align 8
  store %struct.st_fdma_dev* %16, %struct.st_fdma_dev** %8, align 8
  %17 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %3, align 8
  %18 = load i32, i32* @FDMA_CH_CMD_OFST, align 4
  %19 = call i64 @fchan_read(%struct.st_fdma_chan* %17, i32 %18)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @FDMA_CH_CMD_ERR_MASK, align 8
  %22 = and i64 %20, %21
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* @FDMA_CH_CMD_STA_MASK, align 8
  %24 = load i64, i64* %5, align 8
  %25 = and i64 %24, %23
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @FDMA_INT_STA_ERR, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %2
  %31 = load %struct.st_fdma_dev*, %struct.st_fdma_dev** %8, align 8
  %32 = getelementptr inbounds %struct.st_fdma_dev, %struct.st_fdma_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @dev_warn(i32 %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %34, i64 %35)
  %37 = load i32, i32* @DMA_ERROR, align 4
  %38 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %3, align 8
  %39 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %50

40:                                               ; preds = %2
  %41 = load i64, i64* %5, align 8
  switch i64 %41, label %50 [
    i64 129, label %42
    i64 128, label %46
  ]

42:                                               ; preds = %40
  %43 = load i32, i32* @DMA_PAUSED, align 4
  %44 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %3, align 8
  %45 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %50

46:                                               ; preds = %40
  %47 = load i32, i32* @DMA_IN_PROGRESS, align 4
  %48 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %3, align 8
  %49 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %30, %40, %46, %42
  ret void
}

declare dso_local i64 @fchan_read(%struct.st_fdma_chan*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
