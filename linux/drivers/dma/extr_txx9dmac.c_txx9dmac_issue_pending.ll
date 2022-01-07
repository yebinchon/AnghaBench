; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_txx9dmac.c_txx9dmac_issue_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_txx9dmac.c_txx9dmac_issue_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.txx9dmac_chan = type { i32, i32, i32 }
%struct.txx9dmac_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @txx9dmac_issue_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txx9dmac_issue_pending(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.txx9dmac_chan*, align 8
  %4 = alloca %struct.txx9dmac_desc*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.txx9dmac_chan* @to_txx9dmac_chan(%struct.dma_chan* %5)
  store %struct.txx9dmac_chan* %6, %struct.txx9dmac_chan** %3, align 8
  %7 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %8 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %11 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %10, i32 0, i32 1
  %12 = call i64 @list_empty(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %16 = call i32 @txx9dmac_scan_descriptors(%struct.txx9dmac_chan* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %19 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %18, i32 0, i32 2
  %20 = call i64 @list_empty(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %60, label %22

22:                                               ; preds = %17
  %23 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %24 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %23, i32 0, i32 1
  %25 = call i64 @list_empty(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %29 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %30 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %29, i32 0, i32 1
  %31 = call i32 @txx9dmac_dequeue(%struct.txx9dmac_chan* %28, i32* %30)
  %32 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %33 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %34 = call i32 @txx9dmac_first_active(%struct.txx9dmac_chan* %33)
  %35 = call i32 @txx9dmac_dostart(%struct.txx9dmac_chan* %32, i32 %34)
  br label %59

36:                                               ; preds = %22
  %37 = call i64 (...) @txx9_dma_have_SMPCHN()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  %40 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %41 = call %struct.txx9dmac_desc* @txx9dmac_last_active(%struct.txx9dmac_chan* %40)
  store %struct.txx9dmac_desc* %41, %struct.txx9dmac_desc** %4, align 8
  %42 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %43 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %51 = call i64 @txx9dmac_chan_INTENT(%struct.txx9dmac_chan* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49, %39
  %54 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %55 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %56 = call i32 @txx9dmac_chain_dynamic(%struct.txx9dmac_chan* %54, %struct.txx9dmac_desc* %55)
  br label %57

57:                                               ; preds = %53, %49
  br label %58

58:                                               ; preds = %57, %36
  br label %59

59:                                               ; preds = %58, %27
  br label %60

60:                                               ; preds = %59, %17
  %61 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %62 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock_bh(i32* %62)
  ret void
}

declare dso_local %struct.txx9dmac_chan* @to_txx9dmac_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @txx9dmac_scan_descriptors(%struct.txx9dmac_chan*) #1

declare dso_local i32 @txx9dmac_dequeue(%struct.txx9dmac_chan*, i32*) #1

declare dso_local i32 @txx9dmac_dostart(%struct.txx9dmac_chan*, i32) #1

declare dso_local i32 @txx9dmac_first_active(%struct.txx9dmac_chan*) #1

declare dso_local i64 @txx9_dma_have_SMPCHN(...) #1

declare dso_local %struct.txx9dmac_desc* @txx9dmac_last_active(%struct.txx9dmac_chan*) #1

declare dso_local i64 @txx9dmac_chan_INTENT(%struct.txx9dmac_chan*) #1

declare dso_local i32 @txx9dmac_chain_dynamic(%struct.txx9dmac_chan*, %struct.txx9dmac_desc*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
