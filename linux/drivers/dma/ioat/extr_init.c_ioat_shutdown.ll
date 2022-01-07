; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_init.c_ioat_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_init.c_ioat_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ioatdma_device = type { %struct.ioatdma_chan** }
%struct.ioatdma_chan = type { i32, i32, i32 }

@IOAT_MAX_CHANS = common dso_local global i32 0, align 4
@IOAT_CHAN_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @ioat_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioat_shutdown(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.ioatdma_device*, align 8
  %4 = alloca %struct.ioatdma_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.ioatdma_device* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.ioatdma_device* %7, %struct.ioatdma_device** %3, align 8
  %8 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %9 = icmp ne %struct.ioatdma_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %49

11:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %43, %11
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @IOAT_MAX_CHANS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %12
  %17 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %18 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %17, i32 0, i32 0
  %19 = load %struct.ioatdma_chan**, %struct.ioatdma_chan*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ioatdma_chan*, %struct.ioatdma_chan** %19, i64 %21
  %23 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %22, align 8
  store %struct.ioatdma_chan* %23, %struct.ioatdma_chan** %4, align 8
  %24 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %25 = icmp ne %struct.ioatdma_chan* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  br label %43

27:                                               ; preds = %16
  %28 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %29 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %28, i32 0, i32 1
  %30 = call i32 @spin_lock_bh(i32* %29)
  %31 = load i32, i32* @IOAT_CHAN_DOWN, align 4
  %32 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %33 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %32, i32 0, i32 2
  %34 = call i32 @set_bit(i32 %31, i32* %33)
  %35 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %36 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock_bh(i32* %36)
  %38 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %39 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %38, i32 0, i32 0
  %40 = call i32 @del_timer_sync(i32* %39)
  %41 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %42 = call i32 @ioat_reset_hw(%struct.ioatdma_chan* %41)
  br label %43

43:                                               ; preds = %27, %26
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %12

46:                                               ; preds = %12
  %47 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %48 = call i32 @ioat_disable_interrupts(%struct.ioatdma_device* %47)
  br label %49

49:                                               ; preds = %46, %10
  ret void
}

declare dso_local %struct.ioatdma_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @ioat_reset_hw(%struct.ioatdma_chan*) #1

declare dso_local i32 @ioat_disable_interrupts(%struct.ioatdma_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
