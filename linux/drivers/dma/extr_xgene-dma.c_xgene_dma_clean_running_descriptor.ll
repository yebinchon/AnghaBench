; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_clean_running_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_clean_running_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_dma_chan = type { i32, i32 }
%struct.xgene_dma_desc_sw = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"LD %p free\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_dma_chan*, %struct.xgene_dma_desc_sw*)* @xgene_dma_clean_running_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_dma_clean_running_descriptor(%struct.xgene_dma_chan* %0, %struct.xgene_dma_desc_sw* %1) #0 {
  %3 = alloca %struct.xgene_dma_chan*, align 8
  %4 = alloca %struct.xgene_dma_desc_sw*, align 8
  store %struct.xgene_dma_chan* %0, %struct.xgene_dma_chan** %3, align 8
  store %struct.xgene_dma_desc_sw* %1, %struct.xgene_dma_desc_sw** %4, align 8
  %5 = load %struct.xgene_dma_desc_sw*, %struct.xgene_dma_desc_sw** %4, align 8
  %6 = getelementptr inbounds %struct.xgene_dma_desc_sw, %struct.xgene_dma_desc_sw* %5, i32 0, i32 1
  %7 = call i32 @list_del(i32* %6)
  %8 = load %struct.xgene_dma_desc_sw*, %struct.xgene_dma_desc_sw** %4, align 8
  %9 = getelementptr inbounds %struct.xgene_dma_desc_sw, %struct.xgene_dma_desc_sw* %8, i32 0, i32 0
  %10 = call i32 @async_tx_test_ack(%struct.TYPE_2__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.xgene_dma_desc_sw*, %struct.xgene_dma_desc_sw** %4, align 8
  %14 = getelementptr inbounds %struct.xgene_dma_desc_sw, %struct.xgene_dma_desc_sw* %13, i32 0, i32 1
  %15 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %16 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %15, i32 0, i32 1
  %17 = call i32 @list_add_tail(i32* %14, i32* %16)
  br label %31

18:                                               ; preds = %2
  %19 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %20 = load %struct.xgene_dma_desc_sw*, %struct.xgene_dma_desc_sw** %4, align 8
  %21 = call i32 @chan_dbg(%struct.xgene_dma_chan* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.xgene_dma_desc_sw* %20)
  %22 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %23 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.xgene_dma_desc_sw*, %struct.xgene_dma_desc_sw** %4, align 8
  %26 = load %struct.xgene_dma_desc_sw*, %struct.xgene_dma_desc_sw** %4, align 8
  %27 = getelementptr inbounds %struct.xgene_dma_desc_sw, %struct.xgene_dma_desc_sw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dma_pool_free(i32 %24, %struct.xgene_dma_desc_sw* %25, i32 %29)
  br label %31

31:                                               ; preds = %18, %12
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @async_tx_test_ack(%struct.TYPE_2__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @chan_dbg(%struct.xgene_dma_chan*, i8*, %struct.xgene_dma_desc_sw*) #1

declare dso_local i32 @dma_pool_free(i32, %struct.xgene_dma_desc_sw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
