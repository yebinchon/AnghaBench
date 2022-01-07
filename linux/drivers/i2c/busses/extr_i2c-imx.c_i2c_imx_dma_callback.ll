; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx.c_i2c_imx_dma_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx.c_i2c_imx_dma_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_i2c_struct = type { %struct.imx_i2c_dma* }
%struct.imx_i2c_dma = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @i2c_imx_dma_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_imx_dma_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.imx_i2c_struct*, align 8
  %4 = alloca %struct.imx_i2c_dma*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.imx_i2c_struct*
  store %struct.imx_i2c_struct* %6, %struct.imx_i2c_struct** %3, align 8
  %7 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %3, align 8
  %8 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %7, i32 0, i32 0
  %9 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %8, align 8
  store %struct.imx_i2c_dma* %9, %struct.imx_i2c_dma** %4, align 8
  %10 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %4, align 8
  %11 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %4, align 8
  %18 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %4, align 8
  %21 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %4, align 8
  %24 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dma_unmap_single(i32 %16, i32 %19, i32 %22, i32 %25)
  %27 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %4, align 8
  %28 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %27, i32 0, i32 0
  %29 = call i32 @complete(i32* %28)
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
