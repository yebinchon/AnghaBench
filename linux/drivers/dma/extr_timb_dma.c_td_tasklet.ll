; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_timb_dma.c_td_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_timb_dma.c_td_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timb_dma = type { i64, %struct.timb_dma_chan*, %struct.TYPE_2__ }
%struct.timb_dma_chan = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@TIMBDMA_ISR = common dso_local global i64 0, align 8
@TIMBDMA_IER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @td_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @td_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.timb_dma*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timb_dma_chan*, align 8
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.timb_dma*
  store %struct.timb_dma* %10, %struct.timb_dma** %3, align 8
  %11 = load %struct.timb_dma*, %struct.timb_dma** %3, align 8
  %12 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TIMBDMA_ISR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @ioread32(i64 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.timb_dma*, %struct.timb_dma** %3, align 8
  %19 = call i32 @__td_ier_mask(%struct.timb_dma* %18)
  %20 = and i32 %17, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.timb_dma*, %struct.timb_dma** %3, align 8
  %23 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TIMBDMA_ISR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @iowrite32(i32 %21, i64 %26)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %65, %1
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.timb_dma*, %struct.timb_dma** %3, align 8
  %31 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %68

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %7, align 4
  %38 = shl i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %35
  %42 = load %struct.timb_dma*, %struct.timb_dma** %3, align 8
  %43 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %42, i32 0, i32 1
  %44 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %44, i64 %46
  store %struct.timb_dma_chan* %47, %struct.timb_dma_chan** %8, align 8
  %48 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %8, align 8
  %49 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %48, i32 0, i32 0
  %50 = call i32 @spin_lock(i32* %49)
  %51 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %8, align 8
  %52 = call i32 @__td_finish(%struct.timb_dma_chan* %51)
  %53 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %8, align 8
  %54 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %53, i32 0, i32 1
  %55 = call i32 @list_empty(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %41
  %58 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %8, align 8
  %59 = call i32 @__td_start_next(%struct.timb_dma_chan* %58)
  br label %60

60:                                               ; preds = %57, %41
  %61 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %8, align 8
  %62 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock(i32* %62)
  br label %64

64:                                               ; preds = %60, %35
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %28

68:                                               ; preds = %28
  %69 = load %struct.timb_dma*, %struct.timb_dma** %3, align 8
  %70 = call i32 @__td_ier_mask(%struct.timb_dma* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.timb_dma*, %struct.timb_dma** %3, align 8
  %73 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @TIMBDMA_IER, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @iowrite32(i32 %71, i64 %76)
  ret void
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @__td_ier_mask(%struct.timb_dma*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__td_finish(%struct.timb_dma_chan*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @__td_start_next(%struct.timb_dma_chan*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
