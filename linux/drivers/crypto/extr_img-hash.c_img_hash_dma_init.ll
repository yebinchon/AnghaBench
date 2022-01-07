; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_hash_dev = type { i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Couldn't acquire a slave DMA channel.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@IMG_HASH_DMA_BURST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Couldn't configure DMA slave.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.img_hash_dev*)* @img_hash_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_hash_dma_init(%struct.img_hash_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.img_hash_dev*, align 8
  %4 = alloca %struct.dma_slave_config, align 4
  %5 = alloca i32, align 4
  store %struct.img_hash_dev* %0, %struct.img_hash_dev** %3, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %9 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dma_request_slave_channel(i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %13 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %15 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %20 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %54

25:                                               ; preds = %1
  %26 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %27 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %4, i32 0, i32 4
  store i32 %26, i32* %27, align 4
  %28 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %29 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %4, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  %33 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %4, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @IMG_HASH_DMA_BURST, align 4
  %35 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %4, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %4, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %38 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dmaengine_slave_config(i32 %39, %struct.dma_slave_config* %4)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %25
  %44 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %45 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %49 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dma_release_channel(i32 %50)
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %54

53:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %43, %18
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @dma_request_slave_channel(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dmaengine_slave_config(i32, %struct.dma_slave_config*) #1

declare dso_local i32 @dma_release_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
