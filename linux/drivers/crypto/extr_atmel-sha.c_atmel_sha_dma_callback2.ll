; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_dma_callback2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_dma_callback2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { i32, i32, i32, %struct.atmel_sha_dma }
%struct.atmel_sha_dma = type { i32, i32, %struct.scatterlist*, i32 }
%struct.scatterlist = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @atmel_sha_dma_callback2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_sha_dma_callback2(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.atmel_sha_dev*, align 8
  %4 = alloca %struct.atmel_sha_dma*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.atmel_sha_dev*
  store %struct.atmel_sha_dev* %8, %struct.atmel_sha_dev** %3, align 8
  %9 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %10 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %9, i32 0, i32 3
  store %struct.atmel_sha_dma* %10, %struct.atmel_sha_dma** %4, align 8
  %11 = load %struct.atmel_sha_dma*, %struct.atmel_sha_dma** %4, align 8
  %12 = getelementptr inbounds %struct.atmel_sha_dma, %struct.atmel_sha_dma* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @dmaengine_terminate_all(i32 %13)
  %15 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %16 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.atmel_sha_dma*, %struct.atmel_sha_dma** %4, align 8
  %19 = getelementptr inbounds %struct.atmel_sha_dma, %struct.atmel_sha_dma* %18, i32 0, i32 2
  %20 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %21 = load %struct.atmel_sha_dma*, %struct.atmel_sha_dma** %4, align 8
  %22 = getelementptr inbounds %struct.atmel_sha_dma, %struct.atmel_sha_dma* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DMA_TO_DEVICE, align 4
  %25 = call i32 @dma_unmap_sg(i32 %17, %struct.scatterlist* %20, i32 %23, i32 %24)
  %26 = load %struct.atmel_sha_dma*, %struct.atmel_sha_dma** %4, align 8
  %27 = getelementptr inbounds %struct.atmel_sha_dma, %struct.atmel_sha_dma* %26, i32 0, i32 2
  %28 = load %struct.scatterlist*, %struct.scatterlist** %27, align 8
  store %struct.scatterlist* %28, %struct.scatterlist** %5, align 8
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %39, %1
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.atmel_sha_dma*, %struct.atmel_sha_dma** %4, align 8
  %32 = getelementptr inbounds %struct.atmel_sha_dma, %struct.atmel_sha_dma* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %38 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %37)
  store %struct.scatterlist* %38, %struct.scatterlist** %5, align 8
  br label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %29

42:                                               ; preds = %29
  %43 = load %struct.atmel_sha_dma*, %struct.atmel_sha_dma** %4, align 8
  %44 = getelementptr inbounds %struct.atmel_sha_dma, %struct.atmel_sha_dma* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %47 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %49 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %51 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %52 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @atmel_sha_wait_for_data_ready(%struct.atmel_sha_dev* %50, i32 %53)
  ret void
}

declare dso_local i32 @dmaengine_terminate_all(i32) #1

declare dso_local i32 @dma_unmap_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @atmel_sha_wait_for_data_ready(%struct.atmel_sha_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
