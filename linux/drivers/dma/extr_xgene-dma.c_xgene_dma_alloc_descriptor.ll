; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_alloc_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_alloc_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_dma_desc_sw = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.xgene_dma_chan = type { i32, i32 }

@GFP_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to allocate LDs\0A\00", align 1
@xgene_dma_tx_submit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"LD %p allocated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xgene_dma_desc_sw* (%struct.xgene_dma_chan*)* @xgene_dma_alloc_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xgene_dma_desc_sw* @xgene_dma_alloc_descriptor(%struct.xgene_dma_chan* %0) #0 {
  %2 = alloca %struct.xgene_dma_desc_sw*, align 8
  %3 = alloca %struct.xgene_dma_chan*, align 8
  %4 = alloca %struct.xgene_dma_desc_sw*, align 8
  %5 = alloca i32, align 4
  store %struct.xgene_dma_chan* %0, %struct.xgene_dma_chan** %3, align 8
  %6 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %7 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GFP_NOWAIT, align 4
  %10 = call %struct.xgene_dma_desc_sw* @dma_pool_zalloc(i32 %8, i32 %9, i32* %5)
  store %struct.xgene_dma_desc_sw* %10, %struct.xgene_dma_desc_sw** %4, align 8
  %11 = load %struct.xgene_dma_desc_sw*, %struct.xgene_dma_desc_sw** %4, align 8
  %12 = icmp ne %struct.xgene_dma_desc_sw* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %15 = call i32 @chan_err(%struct.xgene_dma_chan* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.xgene_dma_desc_sw* null, %struct.xgene_dma_desc_sw** %2, align 8
  br label %37

16:                                               ; preds = %1
  %17 = load %struct.xgene_dma_desc_sw*, %struct.xgene_dma_desc_sw** %4, align 8
  %18 = getelementptr inbounds %struct.xgene_dma_desc_sw, %struct.xgene_dma_desc_sw* %17, i32 0, i32 1
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.xgene_dma_desc_sw*, %struct.xgene_dma_desc_sw** %4, align 8
  %22 = getelementptr inbounds %struct.xgene_dma_desc_sw, %struct.xgene_dma_desc_sw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @xgene_dma_tx_submit, align 4
  %25 = load %struct.xgene_dma_desc_sw*, %struct.xgene_dma_desc_sw** %4, align 8
  %26 = getelementptr inbounds %struct.xgene_dma_desc_sw, %struct.xgene_dma_desc_sw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.xgene_dma_desc_sw*, %struct.xgene_dma_desc_sw** %4, align 8
  %29 = getelementptr inbounds %struct.xgene_dma_desc_sw, %struct.xgene_dma_desc_sw* %28, i32 0, i32 0
  %30 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %31 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %30, i32 0, i32 0
  %32 = call i32 @dma_async_tx_descriptor_init(%struct.TYPE_2__* %29, i32* %31)
  %33 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %34 = load %struct.xgene_dma_desc_sw*, %struct.xgene_dma_desc_sw** %4, align 8
  %35 = call i32 @chan_dbg(%struct.xgene_dma_chan* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.xgene_dma_desc_sw* %34)
  %36 = load %struct.xgene_dma_desc_sw*, %struct.xgene_dma_desc_sw** %4, align 8
  store %struct.xgene_dma_desc_sw* %36, %struct.xgene_dma_desc_sw** %2, align 8
  br label %37

37:                                               ; preds = %16, %13
  %38 = load %struct.xgene_dma_desc_sw*, %struct.xgene_dma_desc_sw** %2, align 8
  ret %struct.xgene_dma_desc_sw* %38
}

declare dso_local %struct.xgene_dma_desc_sw* @dma_pool_zalloc(i32, i32, i32*) #1

declare dso_local i32 @chan_err(%struct.xgene_dma_chan*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @chan_dbg(%struct.xgene_dma_chan*, i8*, %struct.xgene_dma_desc_sw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
