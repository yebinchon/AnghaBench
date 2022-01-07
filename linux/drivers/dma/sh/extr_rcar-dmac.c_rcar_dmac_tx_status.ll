; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i32 }
%struct.rcar_dmac_chan = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@DMA_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i32, %struct.dma_tx_state*)* @rcar_dmac_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_dmac_tx_status(%struct.dma_chan* %0, i32 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_tx_state*, align 8
  %8 = alloca %struct.rcar_dmac_chan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %7, align 8
  %13 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %14 = call %struct.rcar_dmac_chan* @to_rcar_dmac_chan(%struct.dma_chan* %13)
  store %struct.rcar_dmac_chan* %14, %struct.rcar_dmac_chan** %8, align 8
  %15 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %18 = call i32 @dma_cookie_status(%struct.dma_chan* %15, i32 %16, %struct.dma_tx_state* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @DMA_COMPLETE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %24 = icmp ne %struct.dma_tx_state* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22, %3
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %66

27:                                               ; preds = %22
  %28 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %8, align 8
  %29 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %28, i32 0, i32 0
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @rcar_dmac_chan_get_residue(%struct.rcar_dmac_chan* %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %8, align 8
  %36 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = icmp ne %struct.TYPE_3__* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %27
  %41 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %8, align 8
  %42 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  br label %48

47:                                               ; preds = %27
  br label %48

48:                                               ; preds = %47, %40
  %49 = phi i32 [ %46, %40 ], [ 0, %47 ]
  store i32 %49, i32* %12, align 4
  %50 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %8, align 8
  %51 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %50, i32 0, i32 0
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @DMA_COMPLETE, align 4
  store i32 %60, i32* %4, align 4
  br label %66

61:                                               ; preds = %56, %48
  %62 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @dma_set_residue(%struct.dma_tx_state* %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %59, %25
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.rcar_dmac_chan* @to_rcar_dmac_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i32, %struct.dma_tx_state*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rcar_dmac_chan_get_residue(%struct.rcar_dmac_chan*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_set_residue(%struct.dma_tx_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
