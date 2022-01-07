; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dmatest.c_dmatest_match_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dmatest.c_dmatest_match_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmatest_params = type { i8* }
%struct.dma_chan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmatest_params*, %struct.dma_chan*)* @dmatest_match_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmatest_match_channel(%struct.dmatest_params* %0, %struct.dma_chan* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmatest_params*, align 8
  %5 = alloca %struct.dma_chan*, align 8
  store %struct.dmatest_params* %0, %struct.dmatest_params** %4, align 8
  store %struct.dma_chan* %1, %struct.dma_chan** %5, align 8
  %6 = load %struct.dmatest_params*, %struct.dmatest_params** %4, align 8
  %7 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %23

14:                                               ; preds = %2
  %15 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %16 = call i32 @dma_chan_name(%struct.dma_chan* %15)
  %17 = load %struct.dmatest_params*, %struct.dmatest_params** %4, align 8
  %18 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strcmp(i32 %16, i8* %19)
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %14, %13
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @dma_chan_name(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
