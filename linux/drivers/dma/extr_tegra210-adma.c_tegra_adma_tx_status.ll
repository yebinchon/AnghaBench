; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra210-adma.c_tegra_adma_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra210-adma.c_tegra_adma_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i32 }
%struct.tegra_adma_chan = type { %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.tegra_adma_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.virt_dma_desc = type { i32 }

@DMA_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i64, %struct.dma_tx_state*)* @tegra_adma_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_adma_tx_status(%struct.dma_chan* %0, i64 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dma_tx_state*, align 8
  %8 = alloca %struct.tegra_adma_chan*, align 8
  %9 = alloca %struct.tegra_adma_desc*, align 8
  %10 = alloca %struct.virt_dma_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %7, align 8
  %14 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %15 = call %struct.tegra_adma_chan* @to_tegra_adma_chan(%struct.dma_chan* %14)
  store %struct.tegra_adma_chan* %15, %struct.tegra_adma_chan** %8, align 8
  %16 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %19 = call i32 @dma_cookie_status(%struct.dma_chan* %16, i64 %17, %struct.dma_tx_state* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @DMA_COMPLETE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %25 = icmp ne %struct.dma_tx_state* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23, %3
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %4, align 4
  br label %78

28:                                               ; preds = %23
  %29 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %8, align 8
  %30 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %8, align 8
  %35 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %34, i32 0, i32 0
  %36 = load i64, i64* %6, align 8
  %37 = call %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_10__* %35, i64 %36)
  store %struct.virt_dma_desc* %37, %struct.virt_dma_desc** %10, align 8
  %38 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %10, align 8
  %39 = icmp ne %struct.virt_dma_desc* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %28
  %41 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %10, align 8
  %42 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %41, i32 0, i32 0
  %43 = call %struct.tegra_adma_desc* @to_tegra_adma_desc(i32* %42)
  store %struct.tegra_adma_desc* %43, %struct.tegra_adma_desc** %9, align 8
  %44 = load %struct.tegra_adma_desc*, %struct.tegra_adma_desc** %9, align 8
  %45 = getelementptr inbounds %struct.tegra_adma_desc, %struct.tegra_adma_desc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %13, align 4
  br label %68

48:                                               ; preds = %28
  %49 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %8, align 8
  %50 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %49, i32 0, i32 1
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = icmp ne %struct.TYPE_9__* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %8, align 8
  %55 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %54, i32 0, i32 1
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %8, align 8
  %65 = call i32 @tegra_adma_get_residue(%struct.tegra_adma_chan* %64)
  store i32 %65, i32* %13, align 4
  br label %67

66:                                               ; preds = %53, %48
  store i32 0, i32* %13, align 4
  br label %67

67:                                               ; preds = %66, %63
  br label %68

68:                                               ; preds = %67, %40
  %69 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %8, align 8
  %70 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i64, i64* %12, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  %74 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @dma_set_residue(%struct.dma_tx_state* %74, i32 %75)
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %68, %26
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.tegra_adma_chan* @to_tegra_adma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i64, %struct.dma_tx_state*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_10__*, i64) #1

declare dso_local %struct.tegra_adma_desc* @to_tegra_adma_desc(i32*) #1

declare dso_local i32 @tegra_adma_get_residue(%struct.tegra_adma_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_set_residue(%struct.dma_tx_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
