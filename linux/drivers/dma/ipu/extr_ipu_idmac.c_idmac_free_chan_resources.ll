; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_idmac.c_idmac_free_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_idmac.c_idmac_free_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32, i32 }
%struct.idmac_channel = type { i64, i32, i32 }
%struct.idmac = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IPU_CHANNEL_FREE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IDMAC_IC_7 = common dso_local global i32 0, align 4
@ic_eof = common dso_local global i32 0, align 4
@ic_sof = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @idmac_free_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idmac_free_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.idmac_channel*, align 8
  %4 = alloca %struct.idmac*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.idmac_channel* @to_idmac_chan(%struct.dma_chan* %5)
  store %struct.idmac_channel* %6, %struct.idmac_channel** %3, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %8 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.idmac* @to_idmac(i32 %9)
  store %struct.idmac* %10, %struct.idmac** %4, align 8
  %11 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %12 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %15 = call i32 @__idmac_terminate_all(%struct.dma_chan* %14)
  %16 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %17 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IPU_CHANNEL_FREE, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %23 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %26 = call i32 @free_irq(i32 %24, %struct.idmac_channel* %25)
  %27 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %28 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ipu_irq_unmap(i32 %29)
  br label %31

31:                                               ; preds = %21, %1
  %32 = load i64, i64* @IPU_CHANNEL_FREE, align 8
  %33 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %34 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.idmac*, %struct.idmac** %4, align 8
  %36 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %37 = call i32 @ipu_uninit_channel(%struct.idmac* %35, %struct.idmac_channel* %36)
  %38 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %39 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.idmac*, %struct.idmac** %4, align 8
  %42 = call %struct.TYPE_2__* @to_ipu(%struct.idmac* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @tasklet_schedule(i32* %43)
  ret void
}

declare dso_local %struct.idmac_channel* @to_idmac_chan(%struct.dma_chan*) #1

declare dso_local %struct.idmac* @to_idmac(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__idmac_terminate_all(%struct.dma_chan*) #1

declare dso_local i32 @free_irq(i32, %struct.idmac_channel*) #1

declare dso_local i32 @ipu_irq_unmap(i32) #1

declare dso_local i32 @ipu_uninit_channel(%struct.idmac*, %struct.idmac_channel*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local %struct.TYPE_2__* @to_ipu(%struct.idmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
