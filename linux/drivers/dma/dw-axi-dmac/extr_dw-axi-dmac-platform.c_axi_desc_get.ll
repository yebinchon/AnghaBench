; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_dw-axi-dmac-platform.c_axi_desc_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_dw-axi-dmac-platform.c_axi_desc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axi_dma_desc = type { %struct.axi_dma_chan*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.axi_dma_chan = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.dw_axi_dma* }
%struct.dw_axi_dma = type { i32 }

@GFP_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: not enough descriptors available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.axi_dma_desc* (%struct.axi_dma_chan*)* @axi_desc_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.axi_dma_desc* @axi_desc_get(%struct.axi_dma_chan* %0) #0 {
  %2 = alloca %struct.axi_dma_desc*, align 8
  %3 = alloca %struct.axi_dma_chan*, align 8
  %4 = alloca %struct.dw_axi_dma*, align 8
  %5 = alloca %struct.axi_dma_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.axi_dma_chan* %0, %struct.axi_dma_chan** %3, align 8
  %7 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.dw_axi_dma*, %struct.dw_axi_dma** %10, align 8
  store %struct.dw_axi_dma* %11, %struct.dw_axi_dma** %4, align 8
  %12 = load %struct.dw_axi_dma*, %struct.dw_axi_dma** %4, align 8
  %13 = getelementptr inbounds %struct.dw_axi_dma, %struct.dw_axi_dma* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GFP_NOWAIT, align 4
  %16 = call %struct.axi_dma_desc* @dma_pool_zalloc(i32 %14, i32 %15, i32* %6)
  store %struct.axi_dma_desc* %16, %struct.axi_dma_desc** %5, align 8
  %17 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %5, align 8
  %18 = icmp ne %struct.axi_dma_desc* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %25 = call i32 @chan2dev(%struct.axi_dma_chan* %24)
  %26 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %27 = call i32 @axi_chan_name(%struct.axi_dma_chan* %26)
  %28 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %27)
  store %struct.axi_dma_desc* null, %struct.axi_dma_desc** %2, align 8
  br label %45

29:                                               ; preds = %1
  %30 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %31 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %30, i32 0, i32 0
  %32 = call i32 @atomic_inc(i32* %31)
  %33 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %5, align 8
  %34 = getelementptr inbounds %struct.axi_dma_desc, %struct.axi_dma_desc* %33, i32 0, i32 2
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %5, align 8
  %38 = getelementptr inbounds %struct.axi_dma_desc, %struct.axi_dma_desc* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 8
  %41 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %42 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %5, align 8
  %43 = getelementptr inbounds %struct.axi_dma_desc, %struct.axi_dma_desc* %42, i32 0, i32 0
  store %struct.axi_dma_chan* %41, %struct.axi_dma_chan** %43, align 8
  %44 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %5, align 8
  store %struct.axi_dma_desc* %44, %struct.axi_dma_desc** %2, align 8
  br label %45

45:                                               ; preds = %29, %23
  %46 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %2, align 8
  ret %struct.axi_dma_desc* %46
}

declare dso_local %struct.axi_dma_desc* @dma_pool_zalloc(i32, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @chan2dev(%struct.axi_dma_chan*) #1

declare dso_local i32 @axi_chan_name(%struct.axi_dma_chan*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
