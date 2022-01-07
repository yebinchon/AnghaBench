; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_virt-dma.h_vchan_synchronize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_virt-dma.h_vchan_synchronize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virt_dma_chan = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virt_dma_chan*)* @vchan_synchronize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vchan_synchronize(%struct.virt_dma_chan* %0) #0 {
  %2 = alloca %struct.virt_dma_chan*, align 8
  %3 = alloca i64, align 8
  store %struct.virt_dma_chan* %0, %struct.virt_dma_chan** %2, align 8
  %4 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %2, align 8
  %5 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %4, i32 0, i32 2
  %6 = call i32 @tasklet_kill(i32* %5)
  %7 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %2, align 8
  %8 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %7, i32 0, i32 0
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %2, align 8
  %12 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %2, align 8
  %17 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @vchan_vdesc_fini(i32* %18)
  %20 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %2, align 8
  %21 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %15, %1
  %23 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %2, align 8
  %24 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %23, i32 0, i32 0
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  ret void
}

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vchan_vdesc_fini(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
