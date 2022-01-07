; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sa11x0-dma.c_sa11x0_dma_init_dmadev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sa11x0-dma.c_sa11x0_dma_init_dmadev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.dma_device = type { i32, i32, i32, i32, i32, i32, i32, %struct.device*, i32 }
%struct.device = type { i32 }
%struct.sa11x0_dma_chan = type { %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@sa11x0_dma_free_chan_resources = common dso_local global i32 0, align 4
@sa11x0_dma_device_config = common dso_local global i32 0, align 4
@sa11x0_dma_device_pause = common dso_local global i32 0, align 4
@sa11x0_dma_device_resume = common dso_local global i32 0, align 4
@sa11x0_dma_device_terminate_all = common dso_local global i32 0, align 4
@sa11x0_dma_tx_status = common dso_local global i32 0, align 4
@sa11x0_dma_issue_pending = common dso_local global i32 0, align 4
@chan_desc = common dso_local global %struct.TYPE_5__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no memory for channel %u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DMA_IN_PROGRESS = common dso_local global i32 0, align 4
@sa11x0_dma_free_desc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_device*, %struct.device*)* @sa11x0_dma_init_dmadev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa11x0_dma_init_dmadev(%struct.dma_device* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sa11x0_dma_chan*, align 8
  store %struct.dma_device* %0, %struct.dma_device** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %9 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %8, i32 0, i32 8
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %13 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %12, i32 0, i32 7
  store %struct.device* %11, %struct.device** %13, align 8
  %14 = load i32, i32* @sa11x0_dma_free_chan_resources, align 4
  %15 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %16 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @sa11x0_dma_device_config, align 4
  %18 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %19 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @sa11x0_dma_device_pause, align 4
  %21 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %22 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @sa11x0_dma_device_resume, align 4
  %24 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %25 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @sa11x0_dma_device_terminate_all, align 4
  %27 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %28 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @sa11x0_dma_tx_status, align 4
  %30 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %31 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @sa11x0_dma_issue_pending, align 4
  %33 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %34 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %82, %2
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @chan_desc, align 8
  %38 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %37)
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %40, label %85

40:                                               ; preds = %35
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.sa11x0_dma_chan* @kzalloc(i32 20, i32 %41)
  store %struct.sa11x0_dma_chan* %42, %struct.sa11x0_dma_chan** %7, align 8
  %43 = load %struct.sa11x0_dma_chan*, %struct.sa11x0_dma_chan** %7, align 8
  %44 = icmp ne %struct.sa11x0_dma_chan* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %88

51:                                               ; preds = %40
  %52 = load i32, i32* @DMA_IN_PROGRESS, align 4
  %53 = load %struct.sa11x0_dma_chan*, %struct.sa11x0_dma_chan** %7, align 8
  %54 = getelementptr inbounds %struct.sa11x0_dma_chan, %struct.sa11x0_dma_chan* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @chan_desc, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sa11x0_dma_chan*, %struct.sa11x0_dma_chan** %7, align 8
  %62 = getelementptr inbounds %struct.sa11x0_dma_chan, %struct.sa11x0_dma_chan* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @chan_desc, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sa11x0_dma_chan*, %struct.sa11x0_dma_chan** %7, align 8
  %70 = getelementptr inbounds %struct.sa11x0_dma_chan, %struct.sa11x0_dma_chan* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.sa11x0_dma_chan*, %struct.sa11x0_dma_chan** %7, align 8
  %72 = getelementptr inbounds %struct.sa11x0_dma_chan, %struct.sa11x0_dma_chan* %71, i32 0, i32 1
  %73 = call i32 @INIT_LIST_HEAD(i32* %72)
  %74 = load i32, i32* @sa11x0_dma_free_desc, align 4
  %75 = load %struct.sa11x0_dma_chan*, %struct.sa11x0_dma_chan** %7, align 8
  %76 = getelementptr inbounds %struct.sa11x0_dma_chan, %struct.sa11x0_dma_chan* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  %78 = load %struct.sa11x0_dma_chan*, %struct.sa11x0_dma_chan** %7, align 8
  %79 = getelementptr inbounds %struct.sa11x0_dma_chan, %struct.sa11x0_dma_chan* %78, i32 0, i32 0
  %80 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %81 = call i32 @vchan_init(%struct.TYPE_4__* %79, %struct.dma_device* %80)
  br label %82

82:                                               ; preds = %51
  %83 = load i32, i32* %6, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %35

85:                                               ; preds = %35
  %86 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %87 = call i32 @dma_async_device_register(%struct.dma_device* %86)
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %85, %45
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local %struct.sa11x0_dma_chan* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @vchan_init(%struct.TYPE_4__*, %struct.dma_device*) #1

declare dso_local i32 @dma_async_device_register(%struct.dma_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
