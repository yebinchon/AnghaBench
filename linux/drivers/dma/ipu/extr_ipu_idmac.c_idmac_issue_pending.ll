; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_idmac.c_idmac_issue_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_idmac.c_idmac_issue_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32, i32 }
%struct.idmac_channel = type { i32 }
%struct.idmac = type { i32 }
%struct.ipu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @idmac_issue_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idmac_issue_pending(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.idmac_channel*, align 8
  %4 = alloca %struct.idmac*, align 8
  %5 = alloca %struct.ipu*, align 8
  %6 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %8 = call %struct.idmac_channel* @to_idmac_chan(%struct.dma_chan* %7)
  store %struct.idmac_channel* %8, %struct.idmac_channel** %3, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %10 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.idmac* @to_idmac(i32 %11)
  store %struct.idmac* %12, %struct.idmac** %4, align 8
  %13 = load %struct.idmac*, %struct.idmac** %4, align 8
  %14 = call %struct.ipu* @to_ipu(%struct.idmac* %13)
  store %struct.ipu* %14, %struct.ipu** %5, align 8
  %15 = load %struct.ipu*, %struct.ipu** %5, align 8
  %16 = getelementptr inbounds %struct.ipu, %struct.ipu* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %20 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %23 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ipu_select_buffer(i32 %21, i32 %24)
  %26 = load %struct.ipu*, %struct.ipu** %5, align 8
  %27 = getelementptr inbounds %struct.ipu, %struct.ipu* %26, i32 0, i32 0
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  ret void
}

declare dso_local %struct.idmac_channel* @to_idmac_chan(%struct.dma_chan*) #1

declare dso_local %struct.idmac* @to_idmac(i32) #1

declare dso_local %struct.ipu* @to_ipu(%struct.idmac*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipu_select_buffer(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
