; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.st_fdma_chan = type { %struct.TYPE_5__, i64, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"resume chan:%d\0A\00", align 1
@FDMA_CH_CMD_OFST = common dso_local global i32 0, align 4
@FDMA_CH_CMD_DATA_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @st_fdma_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_fdma_resume(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.st_fdma_chan*, align 8
  %6 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %8 = call %struct.st_fdma_chan* @to_st_fdma_chan(%struct.dma_chan* %7)
  store %struct.st_fdma_chan* %8, %struct.st_fdma_chan** %5, align 8
  %9 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %5, align 8
  %10 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %5, align 8
  %15 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %5, align 8
  %22 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %5, align 8
  %27 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %1
  %31 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %5, align 8
  %32 = load i32, i32* @FDMA_CH_CMD_OFST, align 4
  %33 = call i64 @fchan_read(%struct.st_fdma_chan* %31, i32 %32)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* @FDMA_CH_CMD_DATA_MASK, align 8
  %35 = load i64, i64* %4, align 8
  %36 = and i64 %35, %34
  store i64 %36, i64* %4, align 8
  %37 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %5, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load i32, i32* @FDMA_CH_CMD_OFST, align 4
  %40 = call i32 @fchan_write(%struct.st_fdma_chan* %37, i64 %38, i32 %39)
  br label %41

41:                                               ; preds = %30, %1
  %42 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %5, align 8
  %43 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  ret i32 0
}

declare dso_local %struct.st_fdma_chan* @to_st_fdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @fchan_read(%struct.st_fdma_chan*, i32) #1

declare dso_local i32 @fchan_write(%struct.st_fdma_chan*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
