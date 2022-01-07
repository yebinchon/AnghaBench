; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_s3c24xx-dma.c_s3c24xx_dma_set_runtime_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_s3c24xx-dma.c_s3c24xx_dma_set_runtime_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_slave_config = type { i64, i64 }
%struct.s3c24xx_dma_chan = type { %struct.TYPE_2__, %struct.dma_slave_config, i32 }
%struct.TYPE_2__ = type { i32 }

@DMA_SLAVE_BUSWIDTH_8_BYTES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, %struct.dma_slave_config*)* @s3c24xx_dma_set_runtime_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_dma_set_runtime_config(%struct.dma_chan* %0, %struct.dma_slave_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca %struct.dma_slave_config*, align 8
  %6 = alloca %struct.s3c24xx_dma_chan*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store %struct.dma_slave_config* %1, %struct.dma_slave_config** %5, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %10 = call %struct.s3c24xx_dma_chan* @to_s3c24xx_dma_chan(%struct.dma_chan* %9)
  store %struct.s3c24xx_dma_chan* %10, %struct.s3c24xx_dma_chan** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %12 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DMA_SLAVE_BUSWIDTH_8_BYTES, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %18 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DMA_SLAVE_BUSWIDTH_8_BYTES, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16, %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %51

25:                                               ; preds = %16
  %26 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %6, align 8
  %27 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %6, align 8
  %32 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %44

38:                                               ; preds = %25
  %39 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %6, align 8
  %40 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %39, i32 0, i32 1
  %41 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %42 = bitcast %struct.dma_slave_config* %40 to i8*
  %43 = bitcast %struct.dma_slave_config* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 16, i1 false)
  br label %44

44:                                               ; preds = %38, %35
  %45 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %6, align 8
  %46 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %44, %22
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.s3c24xx_dma_chan* @to_s3c24xx_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
