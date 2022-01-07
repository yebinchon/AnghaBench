; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_owl-dma.c_owl_dma_phy_alloc_and_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_owl-dma.c_owl_dma_phy_alloc_and_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.owl_dma_vchan = type { %struct.owl_dma_pchan*, %struct.TYPE_5__ }
%struct.owl_dma_pchan = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.owl_dma = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"allocated pchan %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.owl_dma_vchan*)* @owl_dma_phy_alloc_and_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @owl_dma_phy_alloc_and_start(%struct.owl_dma_vchan* %0) #0 {
  %2 = alloca %struct.owl_dma_vchan*, align 8
  %3 = alloca %struct.owl_dma*, align 8
  %4 = alloca %struct.owl_dma_pchan*, align 8
  store %struct.owl_dma_vchan* %0, %struct.owl_dma_vchan** %2, align 8
  %5 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %2, align 8
  %6 = getelementptr inbounds %struct.owl_dma_vchan, %struct.owl_dma_vchan* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.owl_dma* @to_owl_dma(i32 %9)
  store %struct.owl_dma* %10, %struct.owl_dma** %3, align 8
  %11 = load %struct.owl_dma*, %struct.owl_dma** %3, align 8
  %12 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %2, align 8
  %13 = call %struct.owl_dma_pchan* @owl_dma_get_pchan(%struct.owl_dma* %11, %struct.owl_dma_vchan* %12)
  store %struct.owl_dma_pchan* %13, %struct.owl_dma_pchan** %4, align 8
  %14 = load %struct.owl_dma_pchan*, %struct.owl_dma_pchan** %4, align 8
  %15 = icmp ne %struct.owl_dma_pchan* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %31

17:                                               ; preds = %1
  %18 = load %struct.owl_dma*, %struct.owl_dma** %3, align 8
  %19 = getelementptr inbounds %struct.owl_dma, %struct.owl_dma* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.owl_dma_pchan*, %struct.owl_dma_pchan** %4, align 8
  %23 = getelementptr inbounds %struct.owl_dma_pchan, %struct.owl_dma_pchan* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.owl_dma_pchan*, %struct.owl_dma_pchan** %4, align 8
  %27 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %2, align 8
  %28 = getelementptr inbounds %struct.owl_dma_vchan, %struct.owl_dma_vchan* %27, i32 0, i32 0
  store %struct.owl_dma_pchan* %26, %struct.owl_dma_pchan** %28, align 8
  %29 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %2, align 8
  %30 = call i32 @owl_dma_start_next_txd(%struct.owl_dma_vchan* %29)
  br label %31

31:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.owl_dma* @to_owl_dma(i32) #1

declare dso_local %struct.owl_dma_pchan* @owl_dma_get_pchan(%struct.owl_dma*, %struct.owl_dma_vchan*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @owl_dma_start_next_txd(%struct.owl_dma_vchan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
