; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_dma_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_dma_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i32 }
%struct.sun6i_vchan = type { %struct.TYPE_2__, %struct.sun6i_pchan* }
%struct.TYPE_2__ = type { i32 }
%struct.sun6i_pchan = type { i32 }
%struct.sun6i_dma_lli = type { i64, %struct.sun6i_dma_lli* }
%struct.virt_dma_desc = type { i32 }
%struct.sun6i_desc = type { %struct.sun6i_dma_lli* }

@DMA_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i32, %struct.dma_tx_state*)* @sun6i_dma_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_dma_tx_status(%struct.dma_chan* %0, i32 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_tx_state*, align 8
  %8 = alloca %struct.sun6i_vchan*, align 8
  %9 = alloca %struct.sun6i_pchan*, align 8
  %10 = alloca %struct.sun6i_dma_lli*, align 8
  %11 = alloca %struct.virt_dma_desc*, align 8
  %12 = alloca %struct.sun6i_desc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %7, align 8
  %16 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %17 = call %struct.sun6i_vchan* @to_sun6i_vchan(%struct.dma_chan* %16)
  store %struct.sun6i_vchan* %17, %struct.sun6i_vchan** %8, align 8
  %18 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %8, align 8
  %19 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %18, i32 0, i32 1
  %20 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %19, align 8
  store %struct.sun6i_pchan* %20, %struct.sun6i_pchan** %9, align 8
  store i64 0, i64* %15, align 8
  %21 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %24 = call i32 @dma_cookie_status(%struct.dma_chan* %21, i32 %22, %struct.dma_tx_state* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @DMA_COMPLETE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %30 = icmp ne %struct.dma_tx_state* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28, %3
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %4, align 4
  br label %89

33:                                               ; preds = %28
  %34 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %8, align 8
  %35 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %14, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %8, align 8
  %40 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %39, i32 0, i32 0
  %41 = load i32, i32* %6, align 4
  %42 = call %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_2__* %40, i32 %41)
  store %struct.virt_dma_desc* %42, %struct.virt_dma_desc** %11, align 8
  %43 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %11, align 8
  %44 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %43, i32 0, i32 0
  %45 = call %struct.sun6i_desc* @to_sun6i_desc(i32* %44)
  store %struct.sun6i_desc* %45, %struct.sun6i_desc** %12, align 8
  %46 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %11, align 8
  %47 = icmp ne %struct.virt_dma_desc* %46, null
  br i1 %47, label %48, label %66

48:                                               ; preds = %33
  %49 = load %struct.sun6i_desc*, %struct.sun6i_desc** %12, align 8
  %50 = getelementptr inbounds %struct.sun6i_desc, %struct.sun6i_desc* %49, i32 0, i32 0
  %51 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %50, align 8
  store %struct.sun6i_dma_lli* %51, %struct.sun6i_dma_lli** %10, align 8
  br label %52

52:                                               ; preds = %61, %48
  %53 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %10, align 8
  %54 = icmp ne %struct.sun6i_dma_lli* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %10, align 8
  %57 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %15, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %15, align 8
  br label %61

61:                                               ; preds = %55
  %62 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %10, align 8
  %63 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %62, i32 0, i32 1
  %64 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %63, align 8
  store %struct.sun6i_dma_lli* %64, %struct.sun6i_dma_lli** %10, align 8
  br label %52

65:                                               ; preds = %52
  br label %79

66:                                               ; preds = %33
  %67 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %9, align 8
  %68 = icmp ne %struct.sun6i_pchan* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %9, align 8
  %71 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69, %66
  store i64 0, i64* %15, align 8
  br label %78

75:                                               ; preds = %69
  %76 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %9, align 8
  %77 = call i64 @sun6i_get_chan_size(%struct.sun6i_pchan* %76)
  store i64 %77, i64* %15, align 8
  br label %78

78:                                               ; preds = %75, %74
  br label %79

79:                                               ; preds = %78, %65
  %80 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %8, align 8
  %81 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %14, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  %85 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %86 = load i64, i64* %15, align 8
  %87 = call i32 @dma_set_residue(%struct.dma_tx_state* %85, i64 %86)
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %79, %31
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.sun6i_vchan* @to_sun6i_vchan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i32, %struct.dma_tx_state*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_2__*, i32) #1

declare dso_local %struct.sun6i_desc* @to_sun6i_desc(i32*) #1

declare dso_local i64 @sun6i_get_chan_size(%struct.sun6i_pchan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_set_residue(%struct.dma_tx_state*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
