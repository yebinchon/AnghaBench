; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mxs-dma.c_mxs_dma_filter_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mxs-dma.c_mxs_dma_filter_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i64 }
%struct.mxs_dma_filter_param = type { i64 }
%struct.mxs_dma_chan = type { i32, %struct.mxs_dma_engine* }
%struct.mxs_dma_engine = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i8*)* @mxs_dma_filter_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_dma_filter_fn(%struct.dma_chan* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mxs_dma_filter_param*, align 8
  %7 = alloca %struct.mxs_dma_chan*, align 8
  %8 = alloca %struct.mxs_dma_engine*, align 8
  %9 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.mxs_dma_filter_param*
  store %struct.mxs_dma_filter_param* %11, %struct.mxs_dma_filter_param** %6, align 8
  %12 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %13 = call %struct.mxs_dma_chan* @to_mxs_dma_chan(%struct.dma_chan* %12)
  store %struct.mxs_dma_chan* %13, %struct.mxs_dma_chan** %7, align 8
  %14 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %7, align 8
  %15 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %14, i32 0, i32 1
  %16 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %15, align 8
  store %struct.mxs_dma_engine* %16, %struct.mxs_dma_engine** %8, align 8
  %17 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %18 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mxs_dma_filter_param*, %struct.mxs_dma_filter_param** %6, align 8
  %21 = getelementptr inbounds %struct.mxs_dma_filter_param, %struct.mxs_dma_filter_param* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

25:                                               ; preds = %2
  %26 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %8, align 8
  %27 = getelementptr inbounds %struct.mxs_dma_engine, %struct.mxs_dma_engine* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mxs_dma_filter_param*, %struct.mxs_dma_filter_param** %6, align 8
  %30 = getelementptr inbounds %struct.mxs_dma_filter_param, %struct.mxs_dma_filter_param* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @platform_get_irq(i32 %28, i64 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %40

36:                                               ; preds = %25
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %7, align 8
  %39 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  store i32 1, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %35, %24
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.mxs_dma_chan* @to_mxs_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @platform_get_irq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
