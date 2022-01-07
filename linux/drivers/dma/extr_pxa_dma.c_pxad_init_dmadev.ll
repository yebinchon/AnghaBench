; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pxa_dma.c_pxad_init_dmadev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pxa_dma.c_pxad_init_dmadev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.pxad_device = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pxad_chan = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@pxad_alloc_chan_resources = common dso_local global i32 0, align 4
@pxad_free_chan_resources = common dso_local global i32 0, align 4
@pxad_tx_status = common dso_local global i32 0, align 4
@pxad_issue_pending = common dso_local global i32 0, align 4
@pxad_config = common dso_local global i32 0, align 4
@pxad_synchronize = common dso_local global i32 0, align 4
@pxad_terminate_all = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@PXAD_PRIO_LOWEST = common dso_local global i32 0, align 4
@pxad_free_desc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.pxad_device*, i32, i32)* @pxad_init_dmadev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxad_init_dmadev(%struct.platform_device* %0, %struct.pxad_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.pxad_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pxad_chan*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %6, align 8
  store %struct.pxad_device* %1, %struct.pxad_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.pxad_device*, %struct.pxad_device** %7, align 8
  %15 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.pxad_device*, %struct.pxad_device** %7, align 8
  %18 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.pxad_device*, %struct.pxad_device** %7, align 8
  %20 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 7
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load i32, i32* @pxad_alloc_chan_resources, align 4
  %24 = load %struct.pxad_device*, %struct.pxad_device** %7, align 8
  %25 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 6
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @pxad_free_chan_resources, align 4
  %28 = load %struct.pxad_device*, %struct.pxad_device** %7, align 8
  %29 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 5
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @pxad_tx_status, align 4
  %32 = load %struct.pxad_device*, %struct.pxad_device** %7, align 8
  %33 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 4
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @pxad_issue_pending, align 4
  %36 = load %struct.pxad_device*, %struct.pxad_device** %7, align 8
  %37 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @pxad_config, align 4
  %40 = load %struct.pxad_device*, %struct.pxad_device** %7, align 8
  %41 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @pxad_synchronize, align 4
  %44 = load %struct.pxad_device*, %struct.pxad_device** %7, align 8
  %45 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @pxad_terminate_all, align 4
  %48 = load %struct.pxad_device*, %struct.pxad_device** %7, align 8
  %49 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %4
  %57 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @dma_set_mask(%struct.TYPE_8__* %58, i64 %62)
  br label %69

64:                                               ; preds = %4
  %65 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = call i64 @DMA_BIT_MASK(i32 32)
  %68 = call i32 @dma_set_mask(%struct.TYPE_8__* %66, i64 %67)
  br label %69

69:                                               ; preds = %64, %56
  %70 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %71 = load %struct.pxad_device*, %struct.pxad_device** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @pxad_init_phys(%struct.platform_device* %70, %struct.pxad_device* %71, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %5, align 4
  br label %119

78:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  br label %79

79:                                               ; preds = %112, %78
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %115

83:                                               ; preds = %79
  %84 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call %struct.pxad_chan* @devm_kzalloc(%struct.TYPE_8__* %85, i32 16, i32 %86)
  store %struct.pxad_chan* %87, %struct.pxad_chan** %12, align 8
  %88 = load %struct.pxad_chan*, %struct.pxad_chan** %12, align 8
  %89 = icmp ne %struct.pxad_chan* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %83
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %119

93:                                               ; preds = %83
  %94 = load i32, i32* @U32_MAX, align 4
  %95 = load %struct.pxad_chan*, %struct.pxad_chan** %12, align 8
  %96 = getelementptr inbounds %struct.pxad_chan, %struct.pxad_chan* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @PXAD_PRIO_LOWEST, align 4
  %98 = load %struct.pxad_chan*, %struct.pxad_chan** %12, align 8
  %99 = getelementptr inbounds %struct.pxad_chan, %struct.pxad_chan* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @pxad_free_desc, align 4
  %101 = load %struct.pxad_chan*, %struct.pxad_chan** %12, align 8
  %102 = getelementptr inbounds %struct.pxad_chan, %struct.pxad_chan* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  %104 = load %struct.pxad_chan*, %struct.pxad_chan** %12, align 8
  %105 = getelementptr inbounds %struct.pxad_chan, %struct.pxad_chan* %104, i32 0, i32 1
  %106 = load %struct.pxad_device*, %struct.pxad_device** %7, align 8
  %107 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %106, i32 0, i32 2
  %108 = call i32 @vchan_init(%struct.TYPE_6__* %105, %struct.TYPE_7__* %107)
  %109 = load %struct.pxad_chan*, %struct.pxad_chan** %12, align 8
  %110 = getelementptr inbounds %struct.pxad_chan, %struct.pxad_chan* %109, i32 0, i32 0
  %111 = call i32 @init_waitqueue_head(i32* %110)
  br label %112

112:                                              ; preds = %93
  %113 = load i32, i32* %11, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %79

115:                                              ; preds = %79
  %116 = load %struct.pxad_device*, %struct.pxad_device** %7, align 8
  %117 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %116, i32 0, i32 2
  %118 = call i32 @dmaenginem_async_device_register(%struct.TYPE_7__* %117)
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %115, %90, %76
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dma_set_mask(%struct.TYPE_8__*, i64) #1

declare dso_local i64 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pxad_init_phys(%struct.platform_device*, %struct.pxad_device*, i32) #1

declare dso_local %struct.pxad_chan* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @vchan_init(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @dmaenginem_async_device_register(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
