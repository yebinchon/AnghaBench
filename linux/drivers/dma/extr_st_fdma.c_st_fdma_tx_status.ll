; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i8* }
%struct.st_fdma_chan = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.virt_dma_desc = type { i32 }

@DMA_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i64, %struct.dma_tx_state*)* @st_fdma_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_fdma_tx_status(%struct.dma_chan* %0, i64 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dma_tx_state*, align 8
  %8 = alloca %struct.st_fdma_chan*, align 8
  %9 = alloca %struct.virt_dma_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %7, align 8
  %12 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %13 = call %struct.st_fdma_chan* @to_st_fdma_chan(%struct.dma_chan* %12)
  store %struct.st_fdma_chan* %13, %struct.st_fdma_chan** %8, align 8
  %14 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %17 = call i32 @dma_cookie_status(%struct.dma_chan* %14, i64 %15, %struct.dma_tx_state* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @DMA_COMPLETE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %23 = icmp ne %struct.dma_tx_state* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21, %3
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %76

26:                                               ; preds = %21
  %27 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %8, align 8
  %28 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %8, align 8
  %33 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %32, i32 0, i32 0
  %34 = load i64, i64* %6, align 8
  %35 = call %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_8__* %33, i64 %34)
  store %struct.virt_dma_desc* %35, %struct.virt_dma_desc** %9, align 8
  %36 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %8, align 8
  %37 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = icmp ne %struct.TYPE_7__* %38, null
  br i1 %39, label %40, label %56

40:                                               ; preds = %26
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %8, align 8
  %43 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %41, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %40
  %51 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %8, align 8
  %52 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %9, align 8
  %53 = call i8* @st_fdma_desc_residue(%struct.st_fdma_chan* %51, %struct.virt_dma_desc* %52, i32 1)
  %54 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %55 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  br label %69

56:                                               ; preds = %40, %26
  %57 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %9, align 8
  %58 = icmp ne %struct.virt_dma_desc* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %8, align 8
  %61 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %9, align 8
  %62 = call i8* @st_fdma_desc_residue(%struct.st_fdma_chan* %60, %struct.virt_dma_desc* %61, i32 0)
  %63 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %64 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  br label %68

65:                                               ; preds = %56
  %66 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %67 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %66, i32 0, i32 0
  store i8* null, i8** %67, align 8
  br label %68

68:                                               ; preds = %65, %59
  br label %69

69:                                               ; preds = %68, %50
  %70 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %8, align 8
  %71 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %69, %24
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.st_fdma_chan* @to_st_fdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i64, %struct.dma_tx_state*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_8__*, i64) #1

declare dso_local i8* @st_fdma_desc_residue(%struct.st_fdma_chan*, %struct.virt_dma_desc*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
