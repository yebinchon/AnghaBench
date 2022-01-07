; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mxs-dma.c_mxs_dma_enable_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mxs-dma.c_mxs_dma_enable_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mxs_dma_chan = type { i32, i32, i32, %struct.TYPE_2__, %struct.mxs_dma_engine* }
%struct.TYPE_2__ = type { i32 }
%struct.mxs_dma_engine = type { i64 }

@MXS_DMA_USE_SEMAPHORE = common dso_local global i32 0, align 4
@MXS_DMA_SG_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @mxs_dma_enable_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_dma_enable_chan(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.mxs_dma_chan*, align 8
  %4 = alloca %struct.mxs_dma_engine*, align 8
  %5 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = call %struct.mxs_dma_chan* @to_mxs_dma_chan(%struct.dma_chan* %6)
  store %struct.mxs_dma_chan* %7, %struct.mxs_dma_chan** %3, align 8
  %8 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %3, align 8
  %9 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %8, i32 0, i32 4
  %10 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %9, align 8
  store %struct.mxs_dma_engine* %10, %struct.mxs_dma_engine** %4, align 8
  %11 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %3, align 8
  %12 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %3, align 8
  %16 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %4, align 8
  %19 = getelementptr inbounds %struct.mxs_dma_engine, %struct.mxs_dma_engine* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @HW_APBHX_CHn_NXTCMDAR(%struct.mxs_dma_engine* %21, i32 %22)
  %24 = add nsw i64 %20, %23
  %25 = call i32 @writel(i32 %17, i64 %24)
  %26 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %3, align 8
  %27 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MXS_DMA_USE_SEMAPHORE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %1
  %33 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %3, align 8
  %34 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MXS_DMA_SG_LOOP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %4, align 8
  %41 = getelementptr inbounds %struct.mxs_dma_engine, %struct.mxs_dma_engine* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @HW_APBHX_CHn_SEMA(%struct.mxs_dma_engine* %43, i32 %44)
  %46 = add nsw i64 %42, %45
  %47 = call i32 @writel(i32 2, i64 %46)
  br label %57

48:                                               ; preds = %32, %1
  %49 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %4, align 8
  %50 = getelementptr inbounds %struct.mxs_dma_engine, %struct.mxs_dma_engine* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @HW_APBHX_CHn_SEMA(%struct.mxs_dma_engine* %52, i32 %53)
  %55 = add nsw i64 %51, %54
  %56 = call i32 @writel(i32 1, i64 %55)
  br label %57

57:                                               ; preds = %48, %39
  %58 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %3, align 8
  %59 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %58, i32 0, i32 2
  store i32 0, i32* %59, align 8
  ret void
}

declare dso_local %struct.mxs_dma_chan* @to_mxs_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @HW_APBHX_CHn_NXTCMDAR(%struct.mxs_dma_engine*, i32) #1

declare dso_local i64 @HW_APBHX_CHn_SEMA(%struct.mxs_dma_engine*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
