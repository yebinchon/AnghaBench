; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_fdma_dev = type { %struct.st_fdma_chan* }
%struct.st_fdma_chan = type { %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@FDMA_INT_STA_OFST = common dso_local global i32 0, align 4
@FDMA_INT_STA_CH = common dso_local global i64 0, align 8
@FDMA_INT_STA_ERR = common dso_local global i64 0, align 8
@DMA_COMPLETE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@FDMA_INT_CLR_OFST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @st_fdma_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_fdma_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.st_fdma_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.st_fdma_chan*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.st_fdma_dev*
  store %struct.st_fdma_dev* %11, %struct.st_fdma_dev** %5, align 8
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.st_fdma_dev*, %struct.st_fdma_dev** %5, align 8
  %14 = getelementptr inbounds %struct.st_fdma_dev, %struct.st_fdma_dev* %13, i32 0, i32 0
  %15 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %14, align 8
  %16 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %15, i64 0
  store %struct.st_fdma_chan* %16, %struct.st_fdma_chan** %7, align 8
  %17 = load %struct.st_fdma_dev*, %struct.st_fdma_dev** %5, align 8
  %18 = load i32, i32* @FDMA_INT_STA_OFST, align 4
  %19 = call i64 @fdma_read(%struct.st_fdma_dev* %17, i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  store i64 %20, i64* %9, align 8
  br label %21

21:                                               ; preds = %89, %2
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %94

24:                                               ; preds = %21
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @FDMA_INT_STA_CH, align 8
  %27 = load i64, i64* @FDMA_INT_STA_ERR, align 8
  %28 = or i64 %26, %27
  %29 = and i64 %25, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %89

32:                                               ; preds = %24
  %33 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %7, align 8
  %34 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @st_fdma_ch_sta_update(%struct.st_fdma_chan* %37, i64 %38)
  %40 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %7, align 8
  %41 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = icmp ne %struct.TYPE_5__* %42, null
  br i1 %43, label %44, label %83

44:                                               ; preds = %32
  %45 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %7, align 8
  %46 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %44
  %52 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %7, align 8
  %53 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = call i32 @list_del(i32* %56)
  %58 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %7, align 8
  %59 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = call i32 @vchan_cookie_complete(%struct.TYPE_7__* %61)
  %63 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %7, align 8
  %64 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %63, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %64, align 8
  %65 = load i32, i32* @DMA_COMPLETE, align 4
  %66 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %7, align 8
  %67 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  br label %74

68:                                               ; preds = %44
  %69 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %7, align 8
  %70 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = call i32 @vchan_cyclic_callback(%struct.TYPE_7__* %72)
  br label %74

74:                                               ; preds = %68, %51
  %75 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %7, align 8
  %76 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = icmp ne %struct.TYPE_5__* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %7, align 8
  %81 = call i32 @st_fdma_xfer_desc(%struct.st_fdma_chan* %80)
  br label %82

82:                                               ; preds = %79, %74
  br label %83

83:                                               ; preds = %82, %32
  %84 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %7, align 8
  %85 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock(i32* %86)
  %88 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %83, %31
  %90 = load i64, i64* %8, align 8
  %91 = lshr i64 %90, 2
  store i64 %91, i64* %8, align 8
  %92 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %7, align 8
  %93 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %92, i32 1
  store %struct.st_fdma_chan* %93, %struct.st_fdma_chan** %7, align 8
  br label %21

94:                                               ; preds = %21
  %95 = load %struct.st_fdma_dev*, %struct.st_fdma_dev** %5, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load i32, i32* @FDMA_INT_CLR_OFST, align 4
  %98 = call i32 @fdma_write(%struct.st_fdma_dev* %95, i64 %96, i32 %97)
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i64 @fdma_read(%struct.st_fdma_dev*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @st_fdma_ch_sta_update(%struct.st_fdma_chan*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @vchan_cookie_complete(%struct.TYPE_7__*) #1

declare dso_local i32 @vchan_cyclic_callback(%struct.TYPE_7__*) #1

declare dso_local i32 @st_fdma_xfer_desc(%struct.st_fdma_chan*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fdma_write(%struct.st_fdma_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
