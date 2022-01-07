; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_alloc_dma_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_alloc_dma_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_image_convert_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ipu_image_convert_dma_buf = type { i32, i32, i32 }

@GFP_DMA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to alloc dma buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipu_image_convert_priv*, %struct.ipu_image_convert_dma_buf*, i32)* @alloc_dma_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_dma_buf(%struct.ipu_image_convert_priv* %0, %struct.ipu_image_convert_dma_buf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipu_image_convert_priv*, align 8
  %6 = alloca %struct.ipu_image_convert_dma_buf*, align 8
  %7 = alloca i32, align 4
  store %struct.ipu_image_convert_priv* %0, %struct.ipu_image_convert_priv** %5, align 8
  store %struct.ipu_image_convert_dma_buf* %1, %struct.ipu_image_convert_dma_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @PAGE_ALIGN(i32 %8)
  %10 = load %struct.ipu_image_convert_dma_buf*, %struct.ipu_image_convert_dma_buf** %6, align 8
  %11 = getelementptr inbounds %struct.ipu_image_convert_dma_buf, %struct.ipu_image_convert_dma_buf* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %5, align 8
  %13 = getelementptr inbounds %struct.ipu_image_convert_priv, %struct.ipu_image_convert_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ipu_image_convert_dma_buf*, %struct.ipu_image_convert_dma_buf** %6, align 8
  %18 = getelementptr inbounds %struct.ipu_image_convert_dma_buf, %struct.ipu_image_convert_dma_buf* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ipu_image_convert_dma_buf*, %struct.ipu_image_convert_dma_buf** %6, align 8
  %21 = getelementptr inbounds %struct.ipu_image_convert_dma_buf, %struct.ipu_image_convert_dma_buf* %20, i32 0, i32 1
  %22 = load i32, i32* @GFP_DMA, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @dma_alloc_coherent(i32 %16, i32 %19, i32* %21, i32 %24)
  %26 = load %struct.ipu_image_convert_dma_buf*, %struct.ipu_image_convert_dma_buf** %6, align 8
  %27 = getelementptr inbounds %struct.ipu_image_convert_dma_buf, %struct.ipu_image_convert_dma_buf* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ipu_image_convert_dma_buf*, %struct.ipu_image_convert_dma_buf** %6, align 8
  %29 = getelementptr inbounds %struct.ipu_image_convert_dma_buf, %struct.ipu_image_convert_dma_buf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %3
  %33 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %5, align 8
  %34 = getelementptr inbounds %struct.ipu_image_convert_priv, %struct.ipu_image_convert_priv* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %42

41:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %32
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
