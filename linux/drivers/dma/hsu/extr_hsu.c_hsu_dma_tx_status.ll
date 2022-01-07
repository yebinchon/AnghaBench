; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/hsu/extr_hsu.c_hsu_dma_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/hsu/extr_hsu.c_hsu_dma_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i32 }
%struct.hsu_dma_chan = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.virt_dma_desc = type { i32 }
%struct.TYPE_10__ = type { i64 }

@DMA_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i64, %struct.dma_tx_state*)* @hsu_dma_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsu_dma_tx_status(%struct.dma_chan* %0, i64 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dma_tx_state*, align 8
  %8 = alloca %struct.hsu_dma_chan*, align 8
  %9 = alloca %struct.virt_dma_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %7, align 8
  %13 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %14 = call %struct.hsu_dma_chan* @to_hsu_dma_chan(%struct.dma_chan* %13)
  store %struct.hsu_dma_chan* %14, %struct.hsu_dma_chan** %8, align 8
  %15 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %18 = call i32 @dma_cookie_status(%struct.dma_chan* %15, i64 %16, %struct.dma_tx_state* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @DMA_COMPLETE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %78

24:                                               ; preds = %3
  %25 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %8, align 8
  %26 = getelementptr inbounds %struct.hsu_dma_chan, %struct.hsu_dma_chan* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %12, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %8, align 8
  %31 = getelementptr inbounds %struct.hsu_dma_chan, %struct.hsu_dma_chan* %30, i32 0, i32 0
  %32 = load i64, i64* %6, align 8
  %33 = call %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_9__* %31, i64 %32)
  store %struct.virt_dma_desc* %33, %struct.virt_dma_desc** %9, align 8
  %34 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %8, align 8
  %35 = getelementptr inbounds %struct.hsu_dma_chan, %struct.hsu_dma_chan* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = icmp ne %struct.TYPE_8__* %36, null
  br i1 %37, label %38, label %59

38:                                               ; preds = %24
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %8, align 8
  %41 = getelementptr inbounds %struct.hsu_dma_chan, %struct.hsu_dma_chan* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %39, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %38
  %49 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %8, align 8
  %50 = call i64 @hsu_dma_active_desc_size(%struct.hsu_dma_chan* %49)
  store i64 %50, i64* %11, align 8
  %51 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @dma_set_residue(%struct.dma_tx_state* %51, i64 %52)
  %54 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %8, align 8
  %55 = getelementptr inbounds %struct.hsu_dma_chan, %struct.hsu_dma_chan* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %10, align 4
  br label %71

59:                                               ; preds = %38, %24
  %60 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %9, align 8
  %61 = icmp ne %struct.virt_dma_desc* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %9, align 8
  %64 = call %struct.TYPE_10__* @to_hsu_dma_desc(%struct.virt_dma_desc* %63)
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %11, align 8
  %67 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @dma_set_residue(%struct.dma_tx_state* %67, i64 %68)
  br label %70

70:                                               ; preds = %62, %59
  br label %71

71:                                               ; preds = %70, %48
  %72 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %8, align 8
  %73 = getelementptr inbounds %struct.hsu_dma_chan, %struct.hsu_dma_chan* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64, i64* %12, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %71, %22
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.hsu_dma_chan* @to_hsu_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i64, %struct.dma_tx_state*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @hsu_dma_active_desc_size(%struct.hsu_dma_chan*) #1

declare dso_local i32 @dma_set_residue(%struct.dma_tx_state*, i64) #1

declare dso_local %struct.TYPE_10__* @to_hsu_dma_desc(%struct.virt_dma_desc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
