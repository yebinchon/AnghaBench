; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_chan_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_chan_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idma64 = type { %struct.idma64_chan* }
%struct.idma64_chan = type { %struct.TYPE_2__, %struct.idma64_desc*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.idma64_desc = type { i64, i32 }

@ERROR = common dso_local global i32 0, align 4
@DMA_ERROR = common dso_local global i64 0, align 8
@XFER = common dso_local global i32 0, align 4
@DMA_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idma64*, i16, i32, i32)* @idma64_chan_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idma64_chan_irq(%struct.idma64* %0, i16 zeroext %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.idma64*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.idma64_chan*, align 8
  %10 = alloca %struct.idma64_desc*, align 8
  store %struct.idma64* %0, %struct.idma64** %5, align 8
  store i16 %1, i16* %6, align 2
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.idma64*, %struct.idma64** %5, align 8
  %12 = getelementptr inbounds %struct.idma64, %struct.idma64* %11, i32 0, i32 0
  %13 = load %struct.idma64_chan*, %struct.idma64_chan** %12, align 8
  %14 = load i16, i16* %6, align 2
  %15 = zext i16 %14 to i64
  %16 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %13, i64 %15
  store %struct.idma64_chan* %16, %struct.idma64_chan** %9, align 8
  %17 = load %struct.idma64_chan*, %struct.idma64_chan** %9, align 8
  %18 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.idma64_chan*, %struct.idma64_chan** %9, align 8
  %22 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %21, i32 0, i32 1
  %23 = load %struct.idma64_desc*, %struct.idma64_desc** %22, align 8
  store %struct.idma64_desc* %23, %struct.idma64_desc** %10, align 8
  %24 = load %struct.idma64_desc*, %struct.idma64_desc** %10, align 8
  %25 = icmp ne %struct.idma64_desc* %24, null
  br i1 %25, label %26, label %83

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = load i16, i16* %6, align 2
  %29 = zext i16 %28 to i32
  %30 = shl i32 1, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load %struct.idma64*, %struct.idma64** %5, align 8
  %35 = load i32, i32* @ERROR, align 4
  %36 = call i32 @CLEAR(i32 %35)
  %37 = load %struct.idma64_chan*, %struct.idma64_chan** %9, align 8
  %38 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dma_writel(%struct.idma64* %34, i32 %36, i32 %39)
  %41 = load i64, i64* @DMA_ERROR, align 8
  %42 = load %struct.idma64_desc*, %struct.idma64_desc** %10, align 8
  %43 = getelementptr inbounds %struct.idma64_desc, %struct.idma64_desc* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %68

44:                                               ; preds = %26
  %45 = load i32, i32* %8, align 4
  %46 = load i16, i16* %6, align 2
  %47 = zext i16 %46 to i32
  %48 = shl i32 1, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %44
  %52 = load %struct.idma64*, %struct.idma64** %5, align 8
  %53 = load i32, i32* @XFER, align 4
  %54 = call i32 @CLEAR(i32 %53)
  %55 = load %struct.idma64_chan*, %struct.idma64_chan** %9, align 8
  %56 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dma_writel(%struct.idma64* %52, i32 %54, i32 %57)
  %59 = load i64, i64* @DMA_COMPLETE, align 8
  %60 = load %struct.idma64_desc*, %struct.idma64_desc** %10, align 8
  %61 = getelementptr inbounds %struct.idma64_desc, %struct.idma64_desc* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.idma64_desc*, %struct.idma64_desc** %10, align 8
  %63 = getelementptr inbounds %struct.idma64_desc, %struct.idma64_desc* %62, i32 0, i32 1
  %64 = call i32 @vchan_cookie_complete(i32* %63)
  %65 = load %struct.idma64_chan*, %struct.idma64_chan** %9, align 8
  %66 = call i32 @idma64_start_transfer(%struct.idma64_chan* %65)
  br label %67

67:                                               ; preds = %51, %44
  br label %68

68:                                               ; preds = %67, %33
  %69 = load %struct.idma64_chan*, %struct.idma64_chan** %9, align 8
  %70 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %69, i32 0, i32 1
  %71 = load %struct.idma64_desc*, %struct.idma64_desc** %70, align 8
  %72 = icmp eq %struct.idma64_desc* %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = load %struct.idma64_desc*, %struct.idma64_desc** %10, align 8
  %75 = getelementptr inbounds %struct.idma64_desc, %struct.idma64_desc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DMA_ERROR, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73, %68
  %80 = load %struct.idma64_chan*, %struct.idma64_chan** %9, align 8
  %81 = call i32 @idma64_stop_transfer(%struct.idma64_chan* %80)
  br label %82

82:                                               ; preds = %79, %73
  br label %83

83:                                               ; preds = %82, %4
  %84 = load %struct.idma64_chan*, %struct.idma64_chan** %9, align 8
  %85 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock(i32* %86)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dma_writel(%struct.idma64*, i32, i32) #1

declare dso_local i32 @CLEAR(i32) #1

declare dso_local i32 @vchan_cookie_complete(i32*) #1

declare dso_local i32 @idma64_start_transfer(%struct.idma64_chan*) #1

declare dso_local i32 @idma64_stop_transfer(%struct.idma64_chan*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
