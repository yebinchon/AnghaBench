; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_dw-axi-dmac-platform.c_axi_chan_iowrite64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_dw-axi-dmac-platform.c_axi_chan_iowrite64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axi_dma_chan = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.axi_dma_chan*, i64, i32)* @axi_chan_iowrite64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axi_chan_iowrite64(%struct.axi_dma_chan* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.axi_dma_chan*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.axi_dma_chan* %0, %struct.axi_dma_chan** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @lower_32_bits(i32 %7)
  %9 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %4, align 8
  %10 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @iowrite32(i32 %8, i64 %13)
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @upper_32_bits(i32 %15)
  %17 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %4, align 8
  %18 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = add nsw i64 %19, %20
  %22 = add nsw i64 %21, 4
  %23 = call i32 @iowrite32(i32 %16, i64 %22)
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
