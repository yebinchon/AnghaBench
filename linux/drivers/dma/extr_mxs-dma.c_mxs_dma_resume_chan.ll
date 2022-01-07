; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mxs-dma.c_mxs_dma_resume_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mxs-dma.c_mxs_dma_resume_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mxs_dma_chan = type { i32, %struct.TYPE_2__, %struct.mxs_dma_engine* }
%struct.TYPE_2__ = type { i32 }
%struct.mxs_dma_engine = type { i64 }

@HW_APBHX_CTRL0 = common dso_local global i64 0, align 8
@STMP_OFFSET_REG_CLR = common dso_local global i64 0, align 8
@HW_APBHX_CHANNEL_CTRL = common dso_local global i64 0, align 8
@DMA_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @mxs_dma_resume_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_dma_resume_chan(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.mxs_dma_chan*, align 8
  %4 = alloca %struct.mxs_dma_engine*, align 8
  %5 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = call %struct.mxs_dma_chan* @to_mxs_dma_chan(%struct.dma_chan* %6)
  store %struct.mxs_dma_chan* %7, %struct.mxs_dma_chan** %3, align 8
  %8 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %3, align 8
  %9 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %8, i32 0, i32 2
  %10 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %9, align 8
  store %struct.mxs_dma_engine* %10, %struct.mxs_dma_engine** %4, align 8
  %11 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %3, align 8
  %12 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %4, align 8
  %16 = call i64 @dma_is_apbh(%struct.mxs_dma_engine* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %1
  %19 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %4, align 8
  %20 = call i64 @apbh_is_old(%struct.mxs_dma_engine* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 1, %23
  %25 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %4, align 8
  %26 = getelementptr inbounds %struct.mxs_dma_engine, %struct.mxs_dma_engine* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @HW_APBHX_CTRL0, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %24, i64 %31)
  br label %44

33:                                               ; preds = %18, %1
  %34 = load i32, i32* %5, align 4
  %35 = shl i32 1, %34
  %36 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %4, align 8
  %37 = getelementptr inbounds %struct.mxs_dma_engine, %struct.mxs_dma_engine* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HW_APBHX_CHANNEL_CTRL, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %35, i64 %42)
  br label %44

44:                                               ; preds = %33, %22
  %45 = load i32, i32* @DMA_IN_PROGRESS, align 4
  %46 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %3, align 8
  %47 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  ret i32 0
}

declare dso_local %struct.mxs_dma_chan* @to_mxs_dma_chan(%struct.dma_chan*) #1

declare dso_local i64 @dma_is_apbh(%struct.mxs_dma_engine*) #1

declare dso_local i64 @apbh_is_old(%struct.mxs_dma_engine*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
