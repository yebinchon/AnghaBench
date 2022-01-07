; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pch_dma.c_pdc_dostart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pch_dma.c_pdc_dostart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_dma_chan = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.pch_dma_desc = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"BUG: Attempt to start non-idle channel\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"chan %d -> dev_addr: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"chan %d -> mem_addr: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"chan %d -> size: %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"chan %d -> next: %x\0A\00", align 1
@DEV_ADDR = common dso_local global i32 0, align 4
@MEM_ADDR = common dso_local global i32 0, align 4
@SIZE = common dso_local global i32 0, align 4
@NEXT = common dso_local global i32 0, align 4
@DMA_CTL0_ONESHOT = common dso_local global i32 0, align 4
@DMA_CTL0_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_dma_chan*, %struct.pch_dma_desc*)* @pdc_dostart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdc_dostart(%struct.pch_dma_chan* %0, %struct.pch_dma_desc* %1) #0 {
  %3 = alloca %struct.pch_dma_chan*, align 8
  %4 = alloca %struct.pch_dma_desc*, align 8
  store %struct.pch_dma_chan* %0, %struct.pch_dma_chan** %3, align 8
  store %struct.pch_dma_desc* %1, %struct.pch_dma_desc** %4, align 8
  %5 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %6 = call i32 @pdc_is_idle(%struct.pch_dma_chan* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %9, i32 0, i32 0
  %11 = call i32 @chan2dev(%struct.TYPE_7__* %10)
  %12 = call i32 @dev_err(i32 %11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %111

13:                                               ; preds = %2
  %14 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %15 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %14, i32 0, i32 0
  %16 = call i32 @chan2dev(%struct.TYPE_7__* %15)
  %17 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %18 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pch_dma_desc*, %struct.pch_dma_desc** %4, align 8
  %22 = getelementptr inbounds %struct.pch_dma_desc, %struct.pch_dma_desc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %24)
  %26 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %27 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %26, i32 0, i32 0
  %28 = call i32 @chan2dev(%struct.TYPE_7__* %27)
  %29 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %30 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pch_dma_desc*, %struct.pch_dma_desc** %4, align 8
  %34 = getelementptr inbounds %struct.pch_dma_desc, %struct.pch_dma_desc* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %32, i32 %36)
  %38 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %39 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %38, i32 0, i32 0
  %40 = call i32 @chan2dev(%struct.TYPE_7__* %39)
  %41 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %42 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.pch_dma_desc*, %struct.pch_dma_desc** %4, align 8
  %46 = getelementptr inbounds %struct.pch_dma_desc, %struct.pch_dma_desc* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %44, i32 %48)
  %50 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %51 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %50, i32 0, i32 0
  %52 = call i32 @chan2dev(%struct.TYPE_7__* %51)
  %53 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %54 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.pch_dma_desc*, %struct.pch_dma_desc** %4, align 8
  %58 = getelementptr inbounds %struct.pch_dma_desc, %struct.pch_dma_desc* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %56, i32 %60)
  %62 = load %struct.pch_dma_desc*, %struct.pch_dma_desc** %4, align 8
  %63 = getelementptr inbounds %struct.pch_dma_desc, %struct.pch_dma_desc* %62, i32 0, i32 2
  %64 = call i64 @list_empty(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %99

66:                                               ; preds = %13
  %67 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %68 = load i32, i32* @DEV_ADDR, align 4
  %69 = load %struct.pch_dma_desc*, %struct.pch_dma_desc** %4, align 8
  %70 = getelementptr inbounds %struct.pch_dma_desc, %struct.pch_dma_desc* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @channel_writel(%struct.pch_dma_chan* %67, i32 %68, i32 %72)
  %74 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %75 = load i32, i32* @MEM_ADDR, align 4
  %76 = load %struct.pch_dma_desc*, %struct.pch_dma_desc** %4, align 8
  %77 = getelementptr inbounds %struct.pch_dma_desc, %struct.pch_dma_desc* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @channel_writel(%struct.pch_dma_chan* %74, i32 %75, i32 %79)
  %81 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %82 = load i32, i32* @SIZE, align 4
  %83 = load %struct.pch_dma_desc*, %struct.pch_dma_desc** %4, align 8
  %84 = getelementptr inbounds %struct.pch_dma_desc, %struct.pch_dma_desc* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @channel_writel(%struct.pch_dma_chan* %81, i32 %82, i32 %86)
  %88 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %89 = load i32, i32* @NEXT, align 4
  %90 = load %struct.pch_dma_desc*, %struct.pch_dma_desc** %4, align 8
  %91 = getelementptr inbounds %struct.pch_dma_desc, %struct.pch_dma_desc* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @channel_writel(%struct.pch_dma_chan* %88, i32 %89, i32 %93)
  %95 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %96 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %95, i32 0, i32 0
  %97 = load i32, i32* @DMA_CTL0_ONESHOT, align 4
  %98 = call i32 @pdc_set_mode(%struct.TYPE_7__* %96, i32 %97)
  br label %111

99:                                               ; preds = %13
  %100 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %101 = load i32, i32* @NEXT, align 4
  %102 = load %struct.pch_dma_desc*, %struct.pch_dma_desc** %4, align 8
  %103 = getelementptr inbounds %struct.pch_dma_desc, %struct.pch_dma_desc* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @channel_writel(%struct.pch_dma_chan* %100, i32 %101, i32 %105)
  %107 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %108 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %107, i32 0, i32 0
  %109 = load i32, i32* @DMA_CTL0_SG, align 4
  %110 = call i32 @pdc_set_mode(%struct.TYPE_7__* %108, i32 %109)
  br label %111

111:                                              ; preds = %8, %99, %66
  ret void
}

declare dso_local i32 @pdc_is_idle(%struct.pch_dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @chan2dev(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @channel_writel(%struct.pch_dma_chan*, i32, i32) #1

declare dso_local i32 @pdc_set_mode(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
