; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_clear_csr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_clear_csr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_chan = type { i32 }

@CSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_chan*)* @omap_dma_clear_csr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_dma_clear_csr(%struct.omap_chan* %0) #0 {
  %2 = alloca %struct.omap_chan*, align 8
  store %struct.omap_chan* %0, %struct.omap_chan** %2, align 8
  %3 = call i64 (...) @dma_omap1()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.omap_chan*, %struct.omap_chan** %2, align 8
  %7 = load i32, i32* @CSR, align 4
  %8 = call i32 @omap_dma_chan_read(%struct.omap_chan* %6, i32 %7)
  br label %13

9:                                                ; preds = %1
  %10 = load %struct.omap_chan*, %struct.omap_chan** %2, align 8
  %11 = load i32, i32* @CSR, align 4
  %12 = call i32 @omap_dma_chan_write(%struct.omap_chan* %10, i32 %11, i32 -1)
  br label %13

13:                                               ; preds = %9, %5
  ret void
}

declare dso_local i64 @dma_omap1(...) #1

declare dso_local i32 @omap_dma_chan_read(%struct.omap_chan*, i32) #1

declare dso_local i32 @omap_dma_chan_write(%struct.omap_chan*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
