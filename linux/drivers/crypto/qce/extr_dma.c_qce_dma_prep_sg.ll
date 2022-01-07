; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_dma.c_qce_dma_prep_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_dma.c_qce_dma_prep_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.scatterlist = type { i32 }
%struct.dma_async_tx_descriptor = type { i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, %struct.scatterlist*, i32, i64, i32, i32, i8*)* @qce_dma_prep_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qce_dma_prep_sg(%struct.dma_chan* %0, %struct.scatterlist* %1, i32 %2, i64 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.dma_chan*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.dma_async_tx_descriptor*, align 8
  %17 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %9, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %18 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %19 = icmp ne %struct.scatterlist* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %7
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20, %7
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %49

26:                                               ; preds = %20
  %27 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %28 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i64, i64* %12, align 8
  %32 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan* %27, %struct.scatterlist* %28, i32 %29, i32 %30, i64 %31)
  store %struct.dma_async_tx_descriptor* %32, %struct.dma_async_tx_descriptor** %16, align 8
  %33 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %16, align 8
  %34 = icmp ne %struct.dma_async_tx_descriptor* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %49

38:                                               ; preds = %26
  %39 = load i32, i32* %14, align 4
  %40 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %16, align 8
  %41 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %16, align 8
  %44 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %16, align 8
  %46 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %45)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = call i32 @dma_submit_error(i32 %47)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %38, %35, %23
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan*, %struct.scatterlist*, i32, i32, i64) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_submit_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
