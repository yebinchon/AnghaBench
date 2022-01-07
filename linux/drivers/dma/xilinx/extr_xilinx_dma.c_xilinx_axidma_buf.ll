; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_axidma_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_axidma_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilinx_dma_chan = type { i64 }
%struct.xilinx_axidma_desc_hw = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xilinx_dma_chan*, %struct.xilinx_axidma_desc_hw*, i64, i64, i64)* @xilinx_axidma_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xilinx_axidma_buf(%struct.xilinx_dma_chan* %0, %struct.xilinx_axidma_desc_hw* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.xilinx_dma_chan*, align 8
  %7 = alloca %struct.xilinx_axidma_desc_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.xilinx_dma_chan* %0, %struct.xilinx_dma_chan** %6, align 8
  store %struct.xilinx_axidma_desc_hw* %1, %struct.xilinx_axidma_desc_hw** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %12 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %5
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = add i64 %16, %17
  %19 = load i64, i64* %10, align 8
  %20 = add i64 %18, %19
  %21 = call i64 @lower_32_bits(i64 %20)
  %22 = load %struct.xilinx_axidma_desc_hw*, %struct.xilinx_axidma_desc_hw** %7, align 8
  %23 = getelementptr inbounds %struct.xilinx_axidma_desc_hw, %struct.xilinx_axidma_desc_hw* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = add i64 %24, %25
  %27 = load i64, i64* %10, align 8
  %28 = add i64 %26, %27
  %29 = call i32 @upper_32_bits(i64 %28)
  %30 = load %struct.xilinx_axidma_desc_hw*, %struct.xilinx_axidma_desc_hw** %7, align 8
  %31 = getelementptr inbounds %struct.xilinx_axidma_desc_hw, %struct.xilinx_axidma_desc_hw* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  br label %40

32:                                               ; preds = %5
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = add i64 %33, %34
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %35, %36
  %38 = load %struct.xilinx_axidma_desc_hw*, %struct.xilinx_axidma_desc_hw** %7, align 8
  %39 = getelementptr inbounds %struct.xilinx_axidma_desc_hw, %struct.xilinx_axidma_desc_hw* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %32, %15
  ret void
}

declare dso_local i64 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
