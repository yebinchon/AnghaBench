; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_release_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_release_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_dma_chan = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pl08x_platform_data* }
%struct.pl08x_platform_data = type { i32 (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pl08x_dma_chan*)* @pl08x_release_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl08x_release_mux(%struct.pl08x_dma_chan* %0) #0 {
  %2 = alloca %struct.pl08x_dma_chan*, align 8
  %3 = alloca %struct.pl08x_platform_data*, align 8
  store %struct.pl08x_dma_chan* %0, %struct.pl08x_dma_chan** %2, align 8
  %4 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %5 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %4, i32 0, i32 3
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.pl08x_platform_data*, %struct.pl08x_platform_data** %7, align 8
  store %struct.pl08x_platform_data* %8, %struct.pl08x_platform_data** %3, align 8
  %9 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %10 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %1
  %14 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %15 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %21 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %13
  %26 = load %struct.pl08x_platform_data*, %struct.pl08x_platform_data** %3, align 8
  %27 = getelementptr inbounds %struct.pl08x_platform_data, %struct.pl08x_platform_data* %26, i32 0, i32 0
  %28 = load i32 (i32, i32)*, i32 (i32, i32)** %27, align 8
  %29 = icmp ne i32 (i32, i32)* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load %struct.pl08x_platform_data*, %struct.pl08x_platform_data** %3, align 8
  %32 = getelementptr inbounds %struct.pl08x_platform_data, %struct.pl08x_platform_data* %31, i32 0, i32 0
  %33 = load i32 (i32, i32)*, i32 (i32, i32)** %32, align 8
  %34 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %35 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %38 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 %33(i32 %36, i32 %39)
  %41 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %42 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %41, i32 0, i32 0
  store i32 -1, i32* %42, align 8
  br label %43

43:                                               ; preds = %30, %25, %13
  br label %44

44:                                               ; preds = %43, %1
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
