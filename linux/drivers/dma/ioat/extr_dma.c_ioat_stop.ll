; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_dma.c_ioat_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_dma.c_ioat_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioatdma_chan = type { i32, i32, i32, i32, %struct.ioatdma_device* }
%struct.ioatdma_device = type { i32, %struct.msix_entry*, %struct.pci_dev* }
%struct.msix_entry = type { i32 }
%struct.pci_dev = type { i32 }

@IOAT_RUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ioat_stop(%struct.ioatdma_chan* %0) #0 {
  %2 = alloca %struct.ioatdma_chan*, align 8
  %3 = alloca %struct.ioatdma_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msix_entry*, align 8
  store %struct.ioatdma_chan* %0, %struct.ioatdma_chan** %2, align 8
  %7 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %2, align 8
  %8 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %7, i32 0, i32 4
  %9 = load %struct.ioatdma_device*, %struct.ioatdma_device** %8, align 8
  store %struct.ioatdma_device* %9, %struct.ioatdma_device** %3, align 8
  %10 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %11 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %10, i32 0, i32 2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %4, align 8
  %13 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %2, align 8
  %14 = call i32 @chan_num(%struct.ioatdma_chan* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @IOAT_RUN, align 4
  %16 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %2, align 8
  %17 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %16, i32 0, i32 3
  %18 = call i32 @clear_bit(i32 %15, i32* %17)
  %19 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %20 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %38 [
    i32 128, label %22
    i32 129, label %33
    i32 130, label %33
  ]

22:                                               ; preds = %1
  %23 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %24 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %23, i32 0, i32 1
  %25 = load %struct.msix_entry*, %struct.msix_entry** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %25, i64 %27
  store %struct.msix_entry* %28, %struct.msix_entry** %6, align 8
  %29 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %30 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @synchronize_irq(i32 %31)
  br label %39

33:                                               ; preds = %1, %1
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @synchronize_irq(i32 %36)
  br label %39

38:                                               ; preds = %1
  br label %39

39:                                               ; preds = %38, %33, %22
  %40 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %2, align 8
  %41 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %40, i32 0, i32 2
  %42 = call i32 @del_timer_sync(i32* %41)
  %43 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %2, align 8
  %44 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %43, i32 0, i32 1
  %45 = call i32 @tasklet_kill(i32* %44)
  %46 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %2, align 8
  %47 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %46, i32 0, i32 0
  %48 = ptrtoint i32* %47 to i64
  %49 = call i32 @ioat_cleanup_event(i64 %48)
  ret void
}

declare dso_local i32 @chan_num(%struct.ioatdma_chan*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @ioat_cleanup_event(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
