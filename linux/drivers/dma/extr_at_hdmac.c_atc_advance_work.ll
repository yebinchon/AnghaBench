; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_at_hdmac.c_atc_advance_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_at_hdmac.c_atc_advance_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at_dma_chan = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"advance_work\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at_dma_chan*)* @atc_advance_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atc_advance_work(%struct.at_dma_chan* %0) #0 {
  %2 = alloca %struct.at_dma_chan*, align 8
  store %struct.at_dma_chan* %0, %struct.at_dma_chan** %2, align 8
  %3 = load %struct.at_dma_chan*, %struct.at_dma_chan** %2, align 8
  %4 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %3, i32 0, i32 1
  %5 = call i32 @chan2dev(i32* %4)
  %6 = call i32 @dev_vdbg(i32 %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.at_dma_chan*, %struct.at_dma_chan** %2, align 8
  %8 = call i64 @atc_chan_is_enabled(%struct.at_dma_chan* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.at_dma_chan*, %struct.at_dma_chan** %2, align 8
  %13 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %12, i32 0, i32 0
  %14 = call i64 @list_empty(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load %struct.at_dma_chan*, %struct.at_dma_chan** %2, align 8
  %18 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %17, i32 0, i32 0
  %19 = call i64 @list_is_singular(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16, %11
  %22 = load %struct.at_dma_chan*, %struct.at_dma_chan** %2, align 8
  %23 = call i32 @atc_complete_all(%struct.at_dma_chan* %22)
  br label %33

24:                                               ; preds = %16
  %25 = load %struct.at_dma_chan*, %struct.at_dma_chan** %2, align 8
  %26 = load %struct.at_dma_chan*, %struct.at_dma_chan** %2, align 8
  %27 = call i32 @atc_first_active(%struct.at_dma_chan* %26)
  %28 = call i32 @atc_chain_complete(%struct.at_dma_chan* %25, i32 %27)
  %29 = load %struct.at_dma_chan*, %struct.at_dma_chan** %2, align 8
  %30 = load %struct.at_dma_chan*, %struct.at_dma_chan** %2, align 8
  %31 = call i32 @atc_first_active(%struct.at_dma_chan* %30)
  %32 = call i32 @atc_dostart(%struct.at_dma_chan* %29, i32 %31)
  br label %33

33:                                               ; preds = %10, %24, %21
  ret void
}

declare dso_local i32 @dev_vdbg(i32, i8*) #1

declare dso_local i32 @chan2dev(i32*) #1

declare dso_local i64 @atc_chan_is_enabled(%struct.at_dma_chan*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @list_is_singular(i32*) #1

declare dso_local i32 @atc_complete_all(%struct.at_dma_chan*) #1

declare dso_local i32 @atc_chain_complete(%struct.at_dma_chan*, i32) #1

declare dso_local i32 @atc_first_active(%struct.at_dma_chan*) #1

declare dso_local i32 @atc_dostart(%struct.at_dma_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
