; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mxs-dma.c_mxs_dma_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mxs-dma.c_mxs_dma_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32, i32, i32 }
%struct.dma_tx_state = type { i32 }
%struct.mxs_dma_chan = type { i64, i32, i32, %struct.mxs_dma_ccw*, %struct.mxs_dma_engine* }
%struct.mxs_dma_ccw = type { i64, i64 }
%struct.mxs_dma_engine = type { i64 }

@DMA_IN_PROGRESS = common dso_local global i64 0, align 8
@MXS_DMA_SG_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i32, %struct.dma_tx_state*)* @mxs_dma_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_dma_tx_status(%struct.dma_chan* %0, i32 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_tx_state*, align 8
  %7 = alloca %struct.mxs_dma_chan*, align 8
  %8 = alloca %struct.mxs_dma_engine*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mxs_dma_ccw*, align 8
  %11 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %6, align 8
  %12 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %13 = call %struct.mxs_dma_chan* @to_mxs_dma_chan(%struct.dma_chan* %12)
  store %struct.mxs_dma_chan* %13, %struct.mxs_dma_chan** %7, align 8
  %14 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %7, align 8
  %15 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %14, i32 0, i32 4
  %16 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %15, align 8
  store %struct.mxs_dma_engine* %16, %struct.mxs_dma_engine** %8, align 8
  store i64 0, i64* %9, align 8
  %17 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %7, align 8
  %18 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DMA_IN_PROGRESS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %3
  %23 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %7, align 8
  %24 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MXS_DMA_SG_LOOP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %22
  %30 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %7, align 8
  %31 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %30, i32 0, i32 3
  %32 = load %struct.mxs_dma_ccw*, %struct.mxs_dma_ccw** %31, align 8
  %33 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %7, align 8
  %34 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.mxs_dma_ccw, %struct.mxs_dma_ccw* %32, i64 %37
  store %struct.mxs_dma_ccw* %38, %struct.mxs_dma_ccw** %10, align 8
  %39 = load %struct.mxs_dma_ccw*, %struct.mxs_dma_ccw** %10, align 8
  %40 = getelementptr inbounds %struct.mxs_dma_ccw, %struct.mxs_dma_ccw* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.mxs_dma_ccw*, %struct.mxs_dma_ccw** %10, align 8
  %43 = getelementptr inbounds %struct.mxs_dma_ccw, %struct.mxs_dma_ccw* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  store i64 %45, i64* %9, align 8
  %46 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %8, align 8
  %47 = getelementptr inbounds %struct.mxs_dma_engine, %struct.mxs_dma_engine* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %8, align 8
  %50 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %51 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @HW_APBHX_CHn_BAR(%struct.mxs_dma_engine* %49, i32 %52)
  %54 = add nsw i64 %48, %53
  %55 = call i64 @readl(i64 %54)
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %9, align 8
  %58 = sub nsw i64 %57, %56
  store i64 %58, i64* %9, align 8
  br label %59

59:                                               ; preds = %29, %22, %3
  %60 = load %struct.dma_tx_state*, %struct.dma_tx_state** %6, align 8
  %61 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %62 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %65 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @dma_set_tx_state(%struct.dma_tx_state* %60, i32 %63, i32 %66, i64 %67)
  %69 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %7, align 8
  %70 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  ret i32 %72
}

declare dso_local %struct.mxs_dma_chan* @to_mxs_dma_chan(%struct.dma_chan*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @HW_APBHX_CHn_BAR(%struct.mxs_dma_engine*, i32) #1

declare dso_local i32 @dma_set_tx_state(%struct.dma_tx_state*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
