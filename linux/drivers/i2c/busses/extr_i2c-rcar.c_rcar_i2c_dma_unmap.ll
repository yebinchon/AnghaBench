; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_dma_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_dma_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_i2c_priv = type { i64, i64, i32, i32, %struct.dma_chan*, %struct.dma_chan* }
%struct.dma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@I2C_RCAR_GEN3 = common dso_local global i64 0, align 8
@ID_P_NO_RXDMA = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i64 0, align 8
@ICDMAER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_i2c_priv*)* @rcar_i2c_dma_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_i2c_dma_unmap(%struct.rcar_i2c_priv* %0) #0 {
  %2 = alloca %struct.rcar_i2c_priv*, align 8
  %3 = alloca %struct.dma_chan*, align 8
  store %struct.rcar_i2c_priv* %0, %struct.rcar_i2c_priv** %2, align 8
  %4 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %5 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %11 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %10, i32 0, i32 5
  %12 = load %struct.dma_chan*, %struct.dma_chan** %11, align 8
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %15 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %14, i32 0, i32 4
  %16 = load %struct.dma_chan*, %struct.dma_chan** %15, align 8
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi %struct.dma_chan* [ %12, %9 ], [ %16, %13 ]
  store %struct.dma_chan* %18, %struct.dma_chan** %3, align 8
  %19 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %20 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %25 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %24, i32 0, i32 3
  %26 = call i32 @sg_dma_address(i32* %25)
  %27 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %28 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %27, i32 0, i32 3
  %29 = call i32 @sg_dma_len(i32* %28)
  %30 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %31 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @dma_unmap_single(i32 %23, i32 %26, i32 %29, i64 %32)
  %34 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %35 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @I2C_RCAR_GEN3, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %17
  %40 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %41 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32, i32* @ID_P_NO_RXDMA, align 4
  %47 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %48 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %39, %17
  %52 = load i64, i64* @DMA_NONE, align 8
  %53 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %54 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %56 = load i32, i32* @ICDMAER, align 4
  %57 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %55, i32 %56, i32 0)
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i64) #1

declare dso_local i32 @sg_dma_address(i32*) #1

declare dso_local i32 @sg_dma_len(i32*) #1

declare dso_local i32 @rcar_i2c_write(%struct.rcar_i2c_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
