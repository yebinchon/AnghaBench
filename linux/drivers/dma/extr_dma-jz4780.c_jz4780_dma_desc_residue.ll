; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_desc_residue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_desc_residue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_dma_chan = type { i32, i32 }
%struct.jz4780_dma_desc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.jz4780_dma_dev = type { i32 }

@JZ_DMA_REG_DTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.jz4780_dma_chan*, %struct.jz4780_dma_desc*, i32)* @jz4780_dma_desc_residue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @jz4780_dma_desc_residue(%struct.jz4780_dma_chan* %0, %struct.jz4780_dma_desc* %1, i32 %2) #0 {
  %4 = alloca %struct.jz4780_dma_chan*, align 8
  %5 = alloca %struct.jz4780_dma_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.jz4780_dma_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.jz4780_dma_chan* %0, %struct.jz4780_dma_chan** %4, align 8
  store %struct.jz4780_dma_desc* %1, %struct.jz4780_dma_desc** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %4, align 8
  %11 = call %struct.jz4780_dma_dev* @jz4780_dma_chan_parent(%struct.jz4780_dma_chan* %10)
  store %struct.jz4780_dma_dev* %11, %struct.jz4780_dma_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %9, align 4
  br label %13

13:                                               ; preds = %32, %3
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %5, align 8
  %16 = getelementptr inbounds %struct.jz4780_dma_desc, %struct.jz4780_dma_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %5, align 8
  %21 = getelementptr inbounds %struct.jz4780_dma_desc, %struct.jz4780_dma_desc* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @GENMASK(i32 23, i32 0)
  %29 = and i32 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = add i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %9, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %13

35:                                               ; preds = %13
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %7, align 8
  %40 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %4, align 8
  %41 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @JZ_DMA_REG_DTC, align 4
  %44 = call i64 @jz4780_dma_chn_readl(%struct.jz4780_dma_dev* %39, i32 %42, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %38, %35
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %4, align 8
  %52 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %50, %53
  %55 = zext i32 %54 to i64
  ret i64 %55
}

declare dso_local %struct.jz4780_dma_dev* @jz4780_dma_chan_parent(%struct.jz4780_dma_chan*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i64 @jz4780_dma_chn_readl(%struct.jz4780_dma_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
