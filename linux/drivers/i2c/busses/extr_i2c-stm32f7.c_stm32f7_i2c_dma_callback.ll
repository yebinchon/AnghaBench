; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f7.c_stm32f7_i2c_dma_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f7.c_stm32f7_i2c_dma_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32f7_i2c_dev = type { %struct.stm32_i2c_dma* }
%struct.stm32_i2c_dma = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @stm32f7_i2c_dma_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32f7_i2c_dma_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stm32f7_i2c_dev*, align 8
  %4 = alloca %struct.stm32_i2c_dma*, align 8
  %5 = alloca %struct.device*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.stm32f7_i2c_dev*
  store %struct.stm32f7_i2c_dev* %7, %struct.stm32f7_i2c_dev** %3, align 8
  %8 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %3, align 8
  %9 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %8, i32 0, i32 0
  %10 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %9, align 8
  store %struct.stm32_i2c_dma* %10, %struct.stm32_i2c_dma** %4, align 8
  %11 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %4, align 8
  %12 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %11, i32 0, i32 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %5, align 8
  %18 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %3, align 8
  %19 = call i32 @stm32f7_i2c_disable_dma_req(%struct.stm32f7_i2c_dev* %18)
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %4, align 8
  %22 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %4, align 8
  %25 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %4, align 8
  %28 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dma_unmap_single(%struct.device* %20, i32 %23, i32 %26, i32 %29)
  %31 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %4, align 8
  %32 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %31, i32 0, i32 0
  %33 = call i32 @complete(i32* %32)
  ret void
}

declare dso_local i32 @stm32f7_i2c_disable_dma_req(%struct.stm32f7_i2c_dev*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
