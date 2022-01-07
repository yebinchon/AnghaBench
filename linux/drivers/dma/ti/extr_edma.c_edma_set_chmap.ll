; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_set_chmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_set_chmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edma_chan = type { i32, %struct.edma_cc* }
%struct.edma_cc = type { i64 }

@EDMA_DCHMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edma_chan*, i32)* @edma_set_chmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edma_set_chmap(%struct.edma_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.edma_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.edma_cc*, align 8
  %6 = alloca i32, align 4
  store %struct.edma_chan* %0, %struct.edma_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %7, i32 0, i32 1
  %9 = load %struct.edma_cc*, %struct.edma_cc** %8, align 8
  store %struct.edma_cc* %9, %struct.edma_cc** %5, align 8
  %10 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %11 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @EDMA_CHAN_SLOT(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.edma_cc*, %struct.edma_cc** %5, align 8
  %15 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @EDMA_CHAN_SLOT(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.edma_cc*, %struct.edma_cc** %5, align 8
  %22 = load i32, i32* @EDMA_DCHMAP, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = shl i32 %24, 5
  %26 = call i32 @edma_write_array(%struct.edma_cc* %21, i32 %22, i32 %23, i32 %25)
  br label %27

27:                                               ; preds = %18, %2
  ret void
}

declare dso_local i32 @EDMA_CHAN_SLOT(i32) #1

declare dso_local i32 @edma_write_array(%struct.edma_cc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
