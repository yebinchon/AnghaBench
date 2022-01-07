; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_xfer_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_xfer_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_fdma_chan = type { %struct.TYPE_13__, %struct.TYPE_11__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.virt_dma_desc = type { i32 }

@FDMA_CH_CMD_STA_START = common dso_local global i64 0, align 8
@FDMA_CNTN_OFST = common dso_local global i32 0, align 4
@FDMA_CH_CMD_OFST = common dso_local global i32 0, align 4
@FDMA_CMD_SET_OFST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"start chan:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_fdma_chan*)* @st_fdma_xfer_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_fdma_xfer_desc(%struct.st_fdma_chan* %0) #0 {
  %2 = alloca %struct.st_fdma_chan*, align 8
  %3 = alloca %struct.virt_dma_desc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.st_fdma_chan* %0, %struct.st_fdma_chan** %2, align 8
  %7 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %2, align 8
  %8 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %7, i32 0, i32 0
  %9 = call %struct.virt_dma_desc* @vchan_next_desc(%struct.TYPE_13__* %8)
  store %struct.virt_dma_desc* %9, %struct.virt_dma_desc** %3, align 8
  %10 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %3, align 8
  %11 = icmp ne %struct.virt_dma_desc* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %74

13:                                               ; preds = %1
  %14 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %3, align 8
  %15 = call %struct.TYPE_14__* @to_st_fdma_desc(%struct.virt_dma_desc* %14)
  %16 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %2, align 8
  %17 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %16, i32 0, i32 2
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %17, align 8
  %18 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %2, align 8
  %19 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %18, i32 0, i32 2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %4, align 8
  %28 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %2, align 8
  %29 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @FDMA_CMD_START(i32 %32)
  store i64 %33, i64* %6, align 8
  %34 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %2, align 8
  %35 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %34, i32 0, i32 2
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FDMA_CH_CMD_STA_START, align 8
  %43 = or i64 %41, %42
  store i64 %43, i64* %5, align 8
  %44 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %2, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load i32, i32* @FDMA_CNTN_OFST, align 4
  %47 = call i32 @fnode_write(%struct.st_fdma_chan* %44, i64 %45, i32 %46)
  %48 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %2, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load i32, i32* @FDMA_CH_CMD_OFST, align 4
  %51 = call i32 @fchan_write(%struct.st_fdma_chan* %48, i64 %49, i32 %50)
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %2, align 8
  %54 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %53, i32 0, i32 1
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @FDMA_CMD_SET_OFST, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i64 %52, i64 %61)
  %63 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %2, align 8
  %64 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %63, i32 0, i32 1
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %2, align 8
  %69 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dev_dbg(i32 %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.virt_dma_desc* @vchan_next_desc(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_14__* @to_st_fdma_desc(%struct.virt_dma_desc*) #1

declare dso_local i64 @FDMA_CMD_START(i32) #1

declare dso_local i32 @fnode_write(%struct.st_fdma_chan*, i64, i32) #1

declare dso_local i32 @fchan_write(%struct.st_fdma_chan*, i64, i32) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
