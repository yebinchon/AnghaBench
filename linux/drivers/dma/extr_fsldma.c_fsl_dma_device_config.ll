; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_fsl_dma_device_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_fsl_dma_device_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_slave_config = type { i64, i32, i32, i32, i32 }
%struct.fsldma_chan = type { i32 (%struct.fsldma_chan*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, %struct.dma_slave_config*)* @fsl_dma_device_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_dma_device_config(%struct.dma_chan* %0, %struct.dma_slave_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca %struct.dma_slave_config*, align 8
  %6 = alloca %struct.fsldma_chan*, align 8
  %7 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store %struct.dma_slave_config* %1, %struct.dma_slave_config** %5, align 8
  %8 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %9 = icmp ne %struct.dma_chan* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %52

13:                                               ; preds = %2
  %14 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %15 = call %struct.fsldma_chan* @to_fsl_chan(%struct.dma_chan* %14)
  store %struct.fsldma_chan* %15, %struct.fsldma_chan** %6, align 8
  %16 = load %struct.fsldma_chan*, %struct.fsldma_chan** %6, align 8
  %17 = getelementptr inbounds %struct.fsldma_chan, %struct.fsldma_chan* %16, i32 0, i32 0
  %18 = load i32 (%struct.fsldma_chan*, i32)*, i32 (%struct.fsldma_chan*, i32)** %17, align 8
  %19 = icmp ne i32 (%struct.fsldma_chan*, i32)* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %52

23:                                               ; preds = %13
  %24 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %25 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %31 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %34 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  store i32 %36, i32* %7, align 4
  br label %45

37:                                               ; preds = %23
  %38 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %39 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %42 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %37, %29
  %46 = load %struct.fsldma_chan*, %struct.fsldma_chan** %6, align 8
  %47 = getelementptr inbounds %struct.fsldma_chan, %struct.fsldma_chan* %46, i32 0, i32 0
  %48 = load i32 (%struct.fsldma_chan*, i32)*, i32 (%struct.fsldma_chan*, i32)** %47, align 8
  %49 = load %struct.fsldma_chan*, %struct.fsldma_chan** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 %48(%struct.fsldma_chan* %49, i32 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %45, %20, %10
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.fsldma_chan* @to_fsl_chan(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
