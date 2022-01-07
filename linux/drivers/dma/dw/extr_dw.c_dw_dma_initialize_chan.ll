; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_dw.c_dw_dma_initialize_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_dw.c_dw_dma_initialize_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_dma_chan = type { %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dw_dma = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DWC_CFGH_FIFO_MODE = common dso_local global i32 0, align 4
@DWC_CFGL_HS_DST_POL = common dso_local global i32 0, align 4
@DWC_CFGL_HS_SRC_POL = common dso_local global i32 0, align 4
@CFG_LO = common dso_local global i32 0, align 4
@CFG_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_dma_chan*)* @dw_dma_initialize_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_dma_initialize_chan(%struct.dw_dma_chan* %0) #0 {
  %2 = alloca %struct.dw_dma_chan*, align 8
  %3 = alloca %struct.dw_dma*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dw_dma_chan* %0, %struct.dw_dma_chan** %2, align 8
  %7 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %8 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.dw_dma* @to_dw_dma(i32 %10)
  store %struct.dw_dma* %11, %struct.dw_dma** %3, align 8
  %12 = load i32, i32* @DWC_CFGH_FIFO_MODE, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %14 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @DWC_CFGL_CH_PRIOR(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %18 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %22 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @DWC_CFGH_DST_PER(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %29 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @DWC_CFGH_SRC_PER(i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load %struct.dw_dma*, %struct.dw_dma** %3, align 8
  %36 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @DWC_CFGH_PROTCTL(i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %1
  %46 = load i32, i32* @DWC_CFGL_HS_DST_POL, align 4
  %47 = load i32, i32* @DWC_CFGL_HS_SRC_POL, align 4
  %48 = or i32 %46, %47
  br label %50

49:                                               ; preds = %1
  br label %50

50:                                               ; preds = %49, %45
  %51 = phi i32 [ %48, %45 ], [ 0, %49 ]
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %55 = load i32, i32* @CFG_LO, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @channel_writel(%struct.dw_dma_chan* %54, i32 %55, i32 %56)
  %58 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %59 = load i32, i32* @CFG_HI, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @channel_writel(%struct.dw_dma_chan* %58, i32 %59, i32 %60)
  ret void
}

declare dso_local %struct.dw_dma* @to_dw_dma(i32) #1

declare dso_local i32 @DWC_CFGL_CH_PRIOR(i32) #1

declare dso_local i32 @DWC_CFGH_DST_PER(i32) #1

declare dso_local i32 @DWC_CFGH_SRC_PER(i32) #1

declare dso_local i32 @DWC_CFGH_PROTCTL(i32) #1

declare dso_local i32 @channel_writel(%struct.dw_dma_chan*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
