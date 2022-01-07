; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/hsu/extr_hsu.c_hsu_dma_do_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/hsu/extr_hsu.c_hsu_dma_do_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsu_dma_chip = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i16, %struct.hsu_dma_chan* }
%struct.hsu_dma_chan = type { %struct.TYPE_4__, %struct.hsu_dma_desc* }
%struct.TYPE_4__ = type { i32 }
%struct.hsu_dma_desc = type { i64, i64, i32, i32 }

@HSU_CH_SR_CHE = common dso_local global i32 0, align 4
@DMA_ERROR = common dso_local global i32 0, align 4
@DMA_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hsu_dma_do_irq(%struct.hsu_dma_chip* %0, i16 zeroext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hsu_dma_chip*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca %struct.hsu_dma_chan*, align 8
  %9 = alloca %struct.hsu_dma_desc*, align 8
  %10 = alloca i64, align 8
  store %struct.hsu_dma_chip* %0, %struct.hsu_dma_chip** %5, align 8
  store i16 %1, i16* %6, align 2
  store i32 %2, i32* %7, align 4
  %11 = load i16, i16* %6, align 2
  %12 = zext i16 %11 to i32
  %13 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %5, align 8
  %14 = getelementptr inbounds %struct.hsu_dma_chip, %struct.hsu_dma_chip* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i16, i16* %16, align 8
  %18 = zext i16 %17 to i32
  %19 = icmp sge i32 %12, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %77

21:                                               ; preds = %3
  %22 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %5, align 8
  %23 = getelementptr inbounds %struct.hsu_dma_chip, %struct.hsu_dma_chip* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %25, align 8
  %27 = load i16, i16* %6, align 2
  %28 = zext i16 %27 to i64
  %29 = getelementptr inbounds %struct.hsu_dma_chan, %struct.hsu_dma_chan* %26, i64 %28
  store %struct.hsu_dma_chan* %29, %struct.hsu_dma_chan** %8, align 8
  %30 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %8, align 8
  %31 = getelementptr inbounds %struct.hsu_dma_chan, %struct.hsu_dma_chan* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %8, align 8
  %36 = getelementptr inbounds %struct.hsu_dma_chan, %struct.hsu_dma_chan* %35, i32 0, i32 1
  %37 = load %struct.hsu_dma_desc*, %struct.hsu_dma_desc** %36, align 8
  store %struct.hsu_dma_desc* %37, %struct.hsu_dma_desc** %9, align 8
  %38 = load %struct.hsu_dma_desc*, %struct.hsu_dma_desc** %9, align 8
  %39 = icmp ne %struct.hsu_dma_desc* %38, null
  br i1 %39, label %40, label %71

40:                                               ; preds = %21
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @HSU_CH_SR_CHE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @DMA_ERROR, align 4
  %47 = load %struct.hsu_dma_desc*, %struct.hsu_dma_desc** %9, align 8
  %48 = getelementptr inbounds %struct.hsu_dma_desc, %struct.hsu_dma_desc* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  br label %70

49:                                               ; preds = %40
  %50 = load %struct.hsu_dma_desc*, %struct.hsu_dma_desc** %9, align 8
  %51 = getelementptr inbounds %struct.hsu_dma_desc, %struct.hsu_dma_desc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.hsu_dma_desc*, %struct.hsu_dma_desc** %9, align 8
  %54 = getelementptr inbounds %struct.hsu_dma_desc, %struct.hsu_dma_desc* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %8, align 8
  %59 = call i32 @hsu_dma_start_channel(%struct.hsu_dma_chan* %58)
  br label %69

60:                                               ; preds = %49
  %61 = load %struct.hsu_dma_desc*, %struct.hsu_dma_desc** %9, align 8
  %62 = getelementptr inbounds %struct.hsu_dma_desc, %struct.hsu_dma_desc* %61, i32 0, i32 3
  %63 = call i32 @vchan_cookie_complete(i32* %62)
  %64 = load i32, i32* @DMA_COMPLETE, align 4
  %65 = load %struct.hsu_dma_desc*, %struct.hsu_dma_desc** %9, align 8
  %66 = getelementptr inbounds %struct.hsu_dma_desc, %struct.hsu_dma_desc* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %8, align 8
  %68 = call i32 @hsu_dma_start_transfer(%struct.hsu_dma_chan* %67)
  br label %69

69:                                               ; preds = %60, %57
  br label %70

70:                                               ; preds = %69, %45
  br label %71

71:                                               ; preds = %70, %21
  %72 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %8, align 8
  %73 = getelementptr inbounds %struct.hsu_dma_chan, %struct.hsu_dma_chan* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  store i32 1, i32* %4, align 4
  br label %77

77:                                               ; preds = %71, %20
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hsu_dma_start_channel(%struct.hsu_dma_chan*) #1

declare dso_local i32 @vchan_cookie_complete(i32*) #1

declare dso_local i32 @hsu_dma_start_transfer(%struct.hsu_dma_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
