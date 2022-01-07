; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_cleanup_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_cleanup_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_i2c_priv = type { i64, i32, i32 }

@DMA_NONE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_i2c_priv*)* @rcar_i2c_cleanup_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_i2c_cleanup_dma(%struct.rcar_i2c_priv* %0) #0 {
  %2 = alloca %struct.rcar_i2c_priv*, align 8
  store %struct.rcar_i2c_priv* %0, %struct.rcar_i2c_priv** %2, align 8
  %3 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %4 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @DMA_NONE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %36

9:                                                ; preds = %1
  %10 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %11 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %17 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dmaengine_terminate_all(i32 %18)
  br label %32

20:                                               ; preds = %9
  %21 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %22 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DMA_TO_DEVICE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %28 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dmaengine_terminate_all(i32 %29)
  br label %31

31:                                               ; preds = %26, %20
  br label %32

32:                                               ; preds = %31, %15
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %35 = call i32 @rcar_i2c_dma_unmap(%struct.rcar_i2c_priv* %34)
  br label %36

36:                                               ; preds = %33, %8
  ret void
}

declare dso_local i32 @dmaengine_terminate_all(i32) #1

declare dso_local i32 @rcar_i2c_dma_unmap(%struct.rcar_i2c_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
