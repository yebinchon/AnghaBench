; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_request_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_request_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_i2c_priv = type { %struct.dma_chan*, %struct.dma_chan*, %struct.TYPE_2__* }
%struct.dma_chan = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.i2c_msg = type { i32 }
%struct.device = type { i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@ICRXTX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_i2c_priv*, %struct.i2c_msg*)* @rcar_i2c_request_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_i2c_request_dma(%struct.rcar_i2c_priv* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca %struct.rcar_i2c_priv*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca i32, align 4
  store %struct.rcar_i2c_priv* %0, %struct.rcar_i2c_priv** %3, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %4, align 8
  %9 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %10 = call %struct.device* @rcar_i2c_priv_to_dev(%struct.rcar_i2c_priv* %9)
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @I2C_M_RD, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %20 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %19, i32 0, i32 1
  %21 = load %struct.dma_chan*, %struct.dma_chan** %20, align 8
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %24 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %23, i32 0, i32 0
  %25 = load %struct.dma_chan*, %struct.dma_chan** %24, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi %struct.dma_chan* [ %21, %18 ], [ %25, %22 ]
  store %struct.dma_chan* %27, %struct.dma_chan** %7, align 8
  %28 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %29 = call i32 @PTR_ERR(%struct.dma_chan* %28)
  %30 = load i32, i32* @EPROBE_DEFER, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %63

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %8, align 4
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %46 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ICRXTX, align 8
  %51 = add nsw i64 %49, %50
  %52 = call %struct.dma_chan* @rcar_i2c_request_dma_chan(%struct.device* %43, i32 %44, i64 %51)
  store %struct.dma_chan* %52, %struct.dma_chan** %7, align 8
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %41
  %56 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %57 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %58 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %57, i32 0, i32 1
  store %struct.dma_chan* %56, %struct.dma_chan** %58, align 8
  br label %63

59:                                               ; preds = %41
  %60 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %61 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %62 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %61, i32 0, i32 0
  store %struct.dma_chan* %60, %struct.dma_chan** %62, align 8
  br label %63

63:                                               ; preds = %33, %59, %55
  ret void
}

declare dso_local %struct.device* @rcar_i2c_priv_to_dev(%struct.rcar_i2c_priv*) #1

declare dso_local i32 @PTR_ERR(%struct.dma_chan*) #1

declare dso_local %struct.dma_chan* @rcar_i2c_request_dma_chan(%struct.device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
