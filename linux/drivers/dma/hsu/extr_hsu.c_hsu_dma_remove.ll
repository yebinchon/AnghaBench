; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/hsu/extr_hsu.c_hsu_dma_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/hsu/extr_hsu.c_hsu_dma_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsu_dma_chip = type { %struct.hsu_dma* }
%struct.hsu_dma = type { i16, %struct.hsu_dma_chan*, i32 }
%struct.hsu_dma_chan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hsu_dma_remove(%struct.hsu_dma_chip* %0) #0 {
  %2 = alloca %struct.hsu_dma_chip*, align 8
  %3 = alloca %struct.hsu_dma*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.hsu_dma_chan*, align 8
  store %struct.hsu_dma_chip* %0, %struct.hsu_dma_chip** %2, align 8
  %6 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %2, align 8
  %7 = getelementptr inbounds %struct.hsu_dma_chip, %struct.hsu_dma_chip* %6, i32 0, i32 0
  %8 = load %struct.hsu_dma*, %struct.hsu_dma** %7, align 8
  store %struct.hsu_dma* %8, %struct.hsu_dma** %3, align 8
  %9 = load %struct.hsu_dma*, %struct.hsu_dma** %3, align 8
  %10 = getelementptr inbounds %struct.hsu_dma, %struct.hsu_dma* %9, i32 0, i32 2
  %11 = call i32 @dma_async_device_unregister(i32* %10)
  store i16 0, i16* %4, align 2
  br label %12

12:                                               ; preds = %31, %1
  %13 = load i16, i16* %4, align 2
  %14 = zext i16 %13 to i32
  %15 = load %struct.hsu_dma*, %struct.hsu_dma** %3, align 8
  %16 = getelementptr inbounds %struct.hsu_dma, %struct.hsu_dma* %15, i32 0, i32 0
  %17 = load i16, i16* %16, align 8
  %18 = zext i16 %17 to i32
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %12
  %21 = load %struct.hsu_dma*, %struct.hsu_dma** %3, align 8
  %22 = getelementptr inbounds %struct.hsu_dma, %struct.hsu_dma* %21, i32 0, i32 1
  %23 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %22, align 8
  %24 = load i16, i16* %4, align 2
  %25 = zext i16 %24 to i64
  %26 = getelementptr inbounds %struct.hsu_dma_chan, %struct.hsu_dma_chan* %23, i64 %25
  store %struct.hsu_dma_chan* %26, %struct.hsu_dma_chan** %5, align 8
  %27 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %5, align 8
  %28 = getelementptr inbounds %struct.hsu_dma_chan, %struct.hsu_dma_chan* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @tasklet_kill(i32* %29)
  br label %31

31:                                               ; preds = %20
  %32 = load i16, i16* %4, align 2
  %33 = add i16 %32, 1
  store i16 %33, i16* %4, align 2
  br label %12

34:                                               ; preds = %12
  ret i32 0
}

declare dso_local i32 @dma_async_device_unregister(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
