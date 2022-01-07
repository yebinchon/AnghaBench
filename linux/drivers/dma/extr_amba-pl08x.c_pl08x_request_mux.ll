; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_request_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_request_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_dma_chan = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pl08x_platform_data* }
%struct.pl08x_platform_data = type { i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl08x_dma_chan*)* @pl08x_request_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl08x_request_mux(%struct.pl08x_dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pl08x_dma_chan*, align 8
  %4 = alloca %struct.pl08x_platform_data*, align 8
  %5 = alloca i32, align 4
  store %struct.pl08x_dma_chan* %0, %struct.pl08x_dma_chan** %3, align 8
  %6 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %3, align 8
  %7 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.pl08x_platform_data*, %struct.pl08x_platform_data** %9, align 8
  store %struct.pl08x_platform_data* %10, %struct.pl08x_platform_data** %4, align 8
  %11 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %3, align 8
  %12 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %12, align 8
  %15 = icmp eq i64 %13, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %1
  %17 = load %struct.pl08x_platform_data*, %struct.pl08x_platform_data** %4, align 8
  %18 = getelementptr inbounds %struct.pl08x_platform_data, %struct.pl08x_platform_data* %17, i32 0, i32 0
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = icmp ne i32 (i32)* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = load %struct.pl08x_platform_data*, %struct.pl08x_platform_data** %4, align 8
  %23 = getelementptr inbounds %struct.pl08x_platform_data, %struct.pl08x_platform_data* %22, i32 0, i32 0
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %3, align 8
  %26 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 %24(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %3, align 8
  %33 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %40

35:                                               ; preds = %21
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %3, align 8
  %38 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %35, %16, %1
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %31
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
