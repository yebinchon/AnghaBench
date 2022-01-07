; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_driver_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_driver_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbus_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mic_dma_device = type { i32 }

@MBUS_DEV_DMA_MIC = common dso_local global i64 0, align 8
@MIC_DMA_CHAN_MIC = common dso_local global i32 0, align 4
@MIC_DMA_CHAN_HOST = common dso_local global i32 0, align 4
@mic_dma_dbg = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"mic_dma_reg\00", align 1
@mic_dma_reg_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbus_device*)* @mic_dma_driver_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mic_dma_driver_probe(%struct.mbus_device* %0) #0 {
  %2 = alloca %struct.mbus_device*, align 8
  %3 = alloca %struct.mic_dma_device*, align 8
  %4 = alloca i32, align 4
  store %struct.mbus_device* %0, %struct.mbus_device** %2, align 8
  %5 = load i64, i64* @MBUS_DEV_DMA_MIC, align 8
  %6 = load %struct.mbus_device*, %struct.mbus_device** %2, align 8
  %7 = getelementptr inbounds %struct.mbus_device, %struct.mbus_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %5, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @MIC_DMA_CHAN_MIC, align 4
  store i32 %12, i32* %4, align 4
  br label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @MIC_DMA_CHAN_HOST, align 4
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = load %struct.mbus_device*, %struct.mbus_device** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.mic_dma_device* @mic_dma_dev_reg(%struct.mbus_device* %16, i32 %17)
  store %struct.mic_dma_device* %18, %struct.mic_dma_device** %3, align 8
  %19 = load %struct.mbus_device*, %struct.mbus_device** %2, align 8
  %20 = getelementptr inbounds %struct.mbus_device, %struct.mbus_device* %19, i32 0, i32 0
  %21 = load %struct.mic_dma_device*, %struct.mic_dma_device** %3, align 8
  %22 = call i32 @dev_set_drvdata(i32* %20, %struct.mic_dma_device* %21)
  %23 = load i64, i64* @mic_dma_dbg, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %15
  %26 = load %struct.mbus_device*, %struct.mbus_device** %2, align 8
  %27 = getelementptr inbounds %struct.mbus_device, %struct.mbus_device* %26, i32 0, i32 0
  %28 = call i32 @dev_name(i32* %27)
  %29 = load i64, i64* @mic_dma_dbg, align 8
  %30 = call i32 @debugfs_create_dir(i32 %28, i64 %29)
  %31 = load %struct.mic_dma_device*, %struct.mic_dma_device** %3, align 8
  %32 = getelementptr inbounds %struct.mic_dma_device, %struct.mic_dma_device* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mic_dma_device*, %struct.mic_dma_device** %3, align 8
  %34 = getelementptr inbounds %struct.mic_dma_device, %struct.mic_dma_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mic_dma_device*, %struct.mic_dma_device** %3, align 8
  %37 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 292, i32 %35, %struct.mic_dma_device* %36, i32* @mic_dma_reg_fops)
  br label %38

38:                                               ; preds = %25, %15
  ret i32 0
}

declare dso_local %struct.mic_dma_device* @mic_dma_dev_reg(%struct.mbus_device*, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.mic_dma_device*) #1

declare dso_local i32 @debugfs_create_dir(i32, i64) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.mic_dma_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
