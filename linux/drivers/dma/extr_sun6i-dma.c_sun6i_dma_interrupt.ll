; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_dma_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_dma_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_dma_dev = type { i32, i32, i32, %struct.sun6i_pchan*, i64, %struct.TYPE_4__ }
%struct.sun6i_pchan = type { %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.sun6i_vchan* }
%struct.TYPE_5__ = type { i32 }
%struct.sun6i_vchan = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@DMA_IRQ_CHAN_NR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"DMA irq status %s: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@DMA_IRQ_CHAN_WIDTH = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sun6i_dma_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_dma_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sun6i_dma_dev*, align 8
  %6 = alloca %struct.sun6i_vchan*, align 8
  %7 = alloca %struct.sun6i_pchan*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.sun6i_dma_dev*
  store %struct.sun6i_dma_dev* %13, %struct.sun6i_dma_dev** %5, align 8
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %130, %2
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %18 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DMA_IRQ_CHAN_NR, align 4
  %21 = sdiv i32 %19, %20
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %133

23:                                               ; preds = %15
  %24 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %25 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @DMA_IRQ_STAT(i32 %27)
  %29 = add nsw i64 %26, %28
  %30 = call i32 @readl(i64 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %130

34:                                               ; preds = %23
  %35 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %36 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %47 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @DMA_IRQ_STAT(i32 %49)
  %51 = add nsw i64 %48, %50
  %52 = call i32 @writel(i32 %45, i64 %51)
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %116, %34
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @DMA_IRQ_CHAN_NR, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i1 [ false, %53 ], [ %59, %57 ]
  br i1 %61, label %62, label %119

62:                                               ; preds = %60
  %63 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %64 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %63, i32 0, i32 3
  %65 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %65, i64 %67
  store %struct.sun6i_pchan* %68, %struct.sun6i_pchan** %7, align 8
  %69 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %7, align 8
  %70 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %69, i32 0, i32 2
  %71 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %70, align 8
  store %struct.sun6i_vchan* %71, %struct.sun6i_vchan** %6, align 8
  %72 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %6, align 8
  %73 = icmp ne %struct.sun6i_vchan* %72, null
  br i1 %73, label %74, label %112

74:                                               ; preds = %62
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %6, align 8
  %77 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %75, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %112

81:                                               ; preds = %74
  %82 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %6, align 8
  %83 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %7, align 8
  %88 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = call i32 @vchan_cyclic_callback(i32* %90)
  br label %111

92:                                               ; preds = %81
  %93 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %6, align 8
  %94 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = call i32 @spin_lock(i32* %95)
  %97 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %7, align 8
  %98 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = call i32 @vchan_cookie_complete(i32* %100)
  %102 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %7, align 8
  %103 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %7, align 8
  %106 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %105, i32 0, i32 1
  store %struct.TYPE_5__* %104, %struct.TYPE_5__** %106, align 8
  %107 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %6, align 8
  %108 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = call i32 @spin_unlock(i32* %109)
  br label %111

111:                                              ; preds = %92, %86
  br label %112

112:                                              ; preds = %111, %74, %62
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @DMA_IRQ_CHAN_WIDTH, align 4
  %115 = ashr i32 %113, %114
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %53

119:                                              ; preds = %60
  %120 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %121 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %120, i32 0, i32 2
  %122 = call i32 @atomic_read(i32* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %119
  %125 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %126 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %125, i32 0, i32 1
  %127 = call i32 @tasklet_schedule(i32* %126)
  br label %128

128:                                              ; preds = %124, %119
  %129 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %129, i32* %10, align 4
  br label %130

130:                                              ; preds = %128, %33
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %15

133:                                              ; preds = %15
  %134 = load i32, i32* %10, align 4
  ret i32 %134
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @DMA_IRQ_STAT(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @vchan_cyclic_callback(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @vchan_cookie_complete(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
