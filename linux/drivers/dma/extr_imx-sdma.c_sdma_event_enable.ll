; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_event_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_event_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_channel = type { i32, %struct.sdma_engine* }
%struct.sdma_engine = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdma_channel*, i32)* @sdma_event_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_event_enable(%struct.sdma_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.sdma_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdma_engine*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.sdma_channel* %0, %struct.sdma_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %10 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %9, i32 0, i32 1
  %11 = load %struct.sdma_engine*, %struct.sdma_engine** %10, align 8
  store %struct.sdma_engine* %11, %struct.sdma_engine** %5, align 8
  %12 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %13 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @chnenbl_ofs(%struct.sdma_engine* %15, i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %19 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i64 @readl_relaxed(i64 %22)
  store i64 %23, i64* %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @__set_bit(i32 %24, i64* %7)
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %28 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel_relaxed(i64 %26, i64 %31)
  ret void
}

declare dso_local i64 @chnenbl_ofs(%struct.sdma_engine*, i32) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
