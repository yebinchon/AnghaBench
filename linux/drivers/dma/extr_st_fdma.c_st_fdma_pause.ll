; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.st_fdma_chan = type { %struct.TYPE_5__, %struct.TYPE_6__*, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"pause chan:%d\0A\00", align 1
@FDMA_CMD_SET_OFST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @st_fdma_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_fdma_pause(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.st_fdma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %8 = call %struct.st_fdma_chan* @to_st_fdma_chan(%struct.dma_chan* %7)
  store %struct.st_fdma_chan* %8, %struct.st_fdma_chan** %4, align 8
  %9 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %10 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @FDMA_CMD_PAUSE(i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %17 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %24 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %29 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %1
  %33 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %34 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* @FDMA_CMD_SET_OFST, align 4
  %38 = call i32 @fdma_write(%struct.TYPE_6__* %35, i64 %36, i32 %37)
  br label %39

39:                                               ; preds = %32, %1
  %40 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %41 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  ret i32 0
}

declare dso_local %struct.st_fdma_chan* @to_st_fdma_chan(%struct.dma_chan*) #1

declare dso_local i64 @FDMA_CMD_PAUSE(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @fdma_write(%struct.TYPE_6__*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
