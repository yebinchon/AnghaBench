; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.st_fdma_chan = type { %struct.TYPE_6__, i32*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@head = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"terminate chan:%d\0A\00", align 1
@FDMA_CMD_SET_OFST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @st_fdma_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_fdma_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.st_fdma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %7 = load i32, i32* @head, align 4
  %8 = call i32 @LIST_HEAD(i32 %7)
  %9 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %10 = call %struct.st_fdma_chan* @to_st_fdma_chan(%struct.dma_chan* %9)
  store %struct.st_fdma_chan* %10, %struct.st_fdma_chan** %4, align 8
  %11 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %12 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @FDMA_CMD_PAUSE(i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %19 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %18, i32 0, i32 2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %26 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %31 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* @FDMA_CMD_SET_OFST, align 4
  %35 = call i32 @fdma_write(%struct.TYPE_7__* %32, i64 %33, i32 %34)
  %36 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %37 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %39 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %38, i32 0, i32 0
  %40 = call i32 @vchan_get_all_descriptors(%struct.TYPE_6__* %39, i32* @head)
  %41 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %42 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %47 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %46, i32 0, i32 0
  %48 = call i32 @vchan_dma_desc_free_list(%struct.TYPE_6__* %47, i32* @head)
  ret i32 0
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local %struct.st_fdma_chan* @to_st_fdma_chan(%struct.dma_chan*) #1

declare dso_local i64 @FDMA_CMD_PAUSE(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @fdma_write(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i32 @vchan_get_all_descriptors(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vchan_dma_desc_free_list(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
