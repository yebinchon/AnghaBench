; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_fsldma_free_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_fsldma_free_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsldma_device = type { i64, %struct.fsldma_device**, i32 }
%struct.fsldma_chan = type { i64, %struct.fsldma_chan**, i32 }

@.str = private unnamed_addr constant [25 x i8] c"free per-controller IRQ\0A\00", align 1
@FSL_DMA_MAX_CHANS_PER_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"free per-channel IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsldma_device*)* @fsldma_free_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsldma_free_irqs(%struct.fsldma_device* %0) #0 {
  %2 = alloca %struct.fsldma_device*, align 8
  %3 = alloca %struct.fsldma_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.fsldma_device* %0, %struct.fsldma_device** %2, align 8
  %5 = load %struct.fsldma_device*, %struct.fsldma_device** %2, align 8
  %6 = getelementptr inbounds %struct.fsldma_device, %struct.fsldma_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.fsldma_device*, %struct.fsldma_device** %2, align 8
  %11 = getelementptr inbounds %struct.fsldma_device, %struct.fsldma_device* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.fsldma_device*, %struct.fsldma_device** %2, align 8
  %15 = getelementptr inbounds %struct.fsldma_device, %struct.fsldma_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.fsldma_device*, %struct.fsldma_device** %2, align 8
  %18 = call i32 @free_irq(i64 %16, %struct.fsldma_device* %17)
  br label %54

19:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %51, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @FSL_DMA_MAX_CHANS_PER_DEVICE, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %20
  %25 = load %struct.fsldma_device*, %struct.fsldma_device** %2, align 8
  %26 = getelementptr inbounds %struct.fsldma_device, %struct.fsldma_device* %25, i32 0, i32 1
  %27 = load %struct.fsldma_device**, %struct.fsldma_device*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.fsldma_device*, %struct.fsldma_device** %27, i64 %29
  %31 = load %struct.fsldma_device*, %struct.fsldma_device** %30, align 8
  %32 = bitcast %struct.fsldma_device* %31 to %struct.fsldma_chan*
  store %struct.fsldma_chan* %32, %struct.fsldma_chan** %3, align 8
  %33 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %34 = icmp ne %struct.fsldma_chan* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %24
  %36 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %37 = getelementptr inbounds %struct.fsldma_chan, %struct.fsldma_chan* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %42 = bitcast %struct.fsldma_chan* %41 to %struct.fsldma_device*
  %43 = call i32 @chan_dbg(%struct.fsldma_device* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %45 = getelementptr inbounds %struct.fsldma_chan, %struct.fsldma_chan* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %48 = bitcast %struct.fsldma_chan* %47 to %struct.fsldma_device*
  %49 = call i32 @free_irq(i64 %46, %struct.fsldma_device* %48)
  br label %50

50:                                               ; preds = %40, %35, %24
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %20

54:                                               ; preds = %9, %20
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @free_irq(i64, %struct.fsldma_device*) #1

declare dso_local i32 @chan_dbg(%struct.fsldma_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
