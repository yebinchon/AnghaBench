; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_handle_chan_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_handle_chan_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dma_chan = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_dma_chan*)* @stm32_dma_handle_chan_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_dma_handle_chan_done(%struct.stm32_dma_chan* %0) #0 {
  %2 = alloca %struct.stm32_dma_chan*, align 8
  store %struct.stm32_dma_chan* %0, %struct.stm32_dma_chan** %2, align 8
  %3 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %4 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %3, i32 0, i32 2
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %7, label %56

7:                                                ; preds = %1
  %8 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %9 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %7
  %15 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %16 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = call i32 @vchan_cyclic_callback(%struct.TYPE_5__* %18)
  %20 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %21 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %25 = call i32 @stm32_dma_configure_next_sg(%struct.stm32_dma_chan* %24)
  br label %55

26:                                               ; preds = %7
  %27 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %28 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %27, i32 0, i32 1
  store i32 0, i32* %28, align 8
  %29 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %30 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %33 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %31, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %26
  %39 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %40 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = call i32 @list_del(i32* %43)
  %45 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %46 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = call i32 @vchan_cookie_complete(%struct.TYPE_5__* %48)
  %50 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %51 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %50, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %51, align 8
  br label %52

52:                                               ; preds = %38, %26
  %53 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %54 = call i32 @stm32_dma_start_transfer(%struct.stm32_dma_chan* %53)
  br label %55

55:                                               ; preds = %52, %14
  br label %56

56:                                               ; preds = %55, %1
  ret void
}

declare dso_local i32 @vchan_cyclic_callback(%struct.TYPE_5__*) #1

declare dso_local i32 @stm32_dma_configure_next_sg(%struct.stm32_dma_chan*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @vchan_cookie_complete(%struct.TYPE_5__*) #1

declare dso_local i32 @stm32_dma_start_transfer(%struct.stm32_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
