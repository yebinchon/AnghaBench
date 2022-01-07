; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_do_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_do_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_dma_chan = type { i64, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@DMA_PREP_FENCE = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mic_dma_chan*, i32, i32, i32, i64)* @mic_dma_do_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mic_dma_do_dma(%struct.mic_dma_chan* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mic_dma_chan*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mic_dma_chan* %0, %struct.mic_dma_chan** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* %11, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %5
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i64, i64* %11, align 8
  %22 = call i32 @mic_dma_prog_memcpy_desc(%struct.mic_dma_chan* %18, i32 %19, i32 %20, i64 %21)
  %23 = icmp eq i32 %17, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %63

27:                                               ; preds = %15, %5
  %28 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %7, align 8
  %29 = call i32 @mic_dma_avail_desc_ring_space(%struct.mic_dma_chan* %28, i32 3)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %6, align 4
  br label %63

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @DMA_PREP_FENCE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %7, align 8
  %42 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %7, align 8
  %45 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %7, align 8
  %49 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @mic_dma_prep_status_desc(i32* %47, i32 0, i32 %50, i32 0)
  %52 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %7, align 8
  %53 = call i32 @mic_dma_hw_ring_inc_head(%struct.mic_dma_chan* %52)
  br label %54

54:                                               ; preds = %40, %35
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %7, align 8
  %61 = call i32 @mic_dma_prog_intr(%struct.mic_dma_chan* %60)
  br label %62

62:                                               ; preds = %59, %54
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %32, %24
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @mic_dma_prog_memcpy_desc(%struct.mic_dma_chan*, i32, i32, i64) #1

declare dso_local i32 @mic_dma_avail_desc_ring_space(%struct.mic_dma_chan*, i32) #1

declare dso_local i32 @mic_dma_prep_status_desc(i32*, i32, i32, i32) #1

declare dso_local i32 @mic_dma_hw_ring_inc_head(%struct.mic_dma_chan*) #1

declare dso_local i32 @mic_dma_prog_intr(%struct.mic_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
