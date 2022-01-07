; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_assign_channel_eventq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_assign_channel_eventq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edma_chan = type { i32, %struct.edma_cc* }
%struct.edma_cc = type { i32, i32 }

@EVENTQ_DEFAULT = common dso_local global i32 0, align 4
@EDMA_DMAQNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edma_chan*, i32)* @edma_assign_channel_eventq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edma_assign_channel_eventq(%struct.edma_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.edma_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.edma_cc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.edma_chan* %0, %struct.edma_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %9 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %8, i32 0, i32 1
  %10 = load %struct.edma_cc*, %struct.edma_cc** %9, align 8
  store %struct.edma_cc* %10, %struct.edma_cc** %5, align 8
  %11 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %12 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @EDMA_CHAN_SLOT(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 7
  %17 = mul nsw i32 %16, 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @EVENTQ_DEFAULT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.edma_cc*, %struct.edma_cc** %5, align 8
  %23 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %21, %2
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.edma_cc*, %struct.edma_cc** %5, align 8
  %28 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp uge i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %46

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 7
  store i32 %34, i32* %4, align 4
  %35 = load %struct.edma_cc*, %struct.edma_cc** %5, align 8
  %36 = load i32, i32* @EDMA_DMAQNUM, align 4
  %37 = load i32, i32* %6, align 4
  %38 = ashr i32 %37, 3
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 7, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %7, align 4
  %44 = shl i32 %42, %43
  %45 = call i32 @edma_modify_array(%struct.edma_cc* %35, i32 %36, i32 %38, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %32, %31
  ret void
}

declare dso_local i32 @EDMA_CHAN_SLOT(i32) #1

declare dso_local i32 @edma_modify_array(%struct.edma_cc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
