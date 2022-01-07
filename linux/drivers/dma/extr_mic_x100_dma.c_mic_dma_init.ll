; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_dma_device = type { i32, %struct.mic_dma_chan* }
%struct.mic_dma_chan = type { i32, i32, i32, i32, i32 }

@MIC_DMA_NUM_CHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mic_dma_device*, i32)* @mic_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mic_dma_init(%struct.mic_dma_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mic_dma_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mic_dma_chan*, align 8
  %9 = alloca i32, align 4
  store %struct.mic_dma_device* %0, %struct.mic_dma_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.mic_dma_device*, %struct.mic_dma_device** %4, align 8
  %11 = getelementptr inbounds %struct.mic_dma_device, %struct.mic_dma_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %48, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @MIC_DMA_NUM_CHAN, align 4
  %18 = add nsw i32 %16, %17
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %14
  %21 = load %struct.mic_dma_device*, %struct.mic_dma_device** %4, align 8
  %22 = getelementptr inbounds %struct.mic_dma_device, %struct.mic_dma_device* %21, i32 0, i32 1
  %23 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %23, i64 %25
  store %struct.mic_dma_chan* %26, %struct.mic_dma_chan** %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %8, align 8
  %29 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %8, align 8
  %32 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %8, align 8
  %34 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %33, i32 0, i32 4
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %8, align 8
  %37 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %36, i32 0, i32 3
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %8, align 8
  %40 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %39, i32 0, i32 2
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %8, align 8
  %43 = call i32 @mic_dma_setup_irq(%struct.mic_dma_chan* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %20
  br label %52

47:                                               ; preds = %20
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %14

51:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %67

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %62, %52
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %8, align 8
  %61 = call i32 @mic_dma_free_irq(%struct.mic_dma_chan* %60)
  br label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %6, align 4
  br label %55

65:                                               ; preds = %55
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %51
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mic_dma_setup_irq(%struct.mic_dma_chan*) #1

declare dso_local i32 @mic_dma_free_irq(%struct.mic_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
