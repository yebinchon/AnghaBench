; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_free_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_free_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.edma_chan = type { i32*, i32, i32, i32, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.device* }
%struct.device = type { i32 }

@EDMA_MAX_SLOTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Free eDMA channel %d for virt channel %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @edma_free_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edma_free_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.edma_chan*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = call %struct.edma_chan* @to_edma_chan(%struct.dma_chan* %6)
  store %struct.edma_chan* %7, %struct.edma_chan** %3, align 8
  %8 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %9 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %8, i32 0, i32 5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %14 = call i32 @edma_stop(%struct.edma_chan* %13)
  %15 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %16 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %15, i32 0, i32 6
  %17 = call i32 @vchan_free_chan_resources(i32* %16)
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %50, %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @EDMA_MAX_SLOTS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %18
  %23 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %24 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %22
  %32 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %33 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %32, i32 0, i32 5
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %36 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @edma_free_slot(%struct.TYPE_2__* %34, i32 %41)
  %43 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %44 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 -1, i32* %48, align 4
  br label %49

49:                                               ; preds = %31, %22
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %18

53:                                               ; preds = %18
  %54 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %55 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %56 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %55, i32 0, i32 5
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @edma_set_chmap(%struct.edma_chan* %54, i32 %59)
  %61 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %62 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %53
  %66 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %67 = call i32 @edma_free_channel(%struct.edma_chan* %66)
  %68 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %69 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %68, i32 0, i32 1
  store i32 0, i32* %69, align 8
  br label %70

70:                                               ; preds = %65, %53
  %71 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %72 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %71, i32 0, i32 4
  store i32* null, i32** %72, align 8
  %73 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %74 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %73, i32 0, i32 2
  store i32 0, i32* %74, align 4
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %77 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @EDMA_CHAN_SLOT(i32 %78)
  %80 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %81 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_dbg(%struct.device* %75, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %82)
  ret void
}

declare dso_local %struct.edma_chan* @to_edma_chan(%struct.dma_chan*) #1

declare dso_local i32 @edma_stop(%struct.edma_chan*) #1

declare dso_local i32 @vchan_free_chan_resources(i32*) #1

declare dso_local i32 @edma_free_slot(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @edma_set_chmap(%struct.edma_chan*, i32) #1

declare dso_local i32 @edma_free_channel(%struct.edma_chan*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @EDMA_CHAN_SLOT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
