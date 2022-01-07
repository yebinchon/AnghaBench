; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dmaengine.c_dma_run_dependencies.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dmaengine.c_dma_run_dependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 (%struct.dma_async_tx_descriptor*)*, %struct.dma_chan* }
%struct.dma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dma_chan*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_run_dependencies(%struct.dma_async_tx_descriptor* %0) #0 {
  %2 = alloca %struct.dma_async_tx_descriptor*, align 8
  %3 = alloca %struct.dma_async_tx_descriptor*, align 8
  %4 = alloca %struct.dma_async_tx_descriptor*, align 8
  %5 = alloca %struct.dma_chan*, align 8
  store %struct.dma_async_tx_descriptor* %0, %struct.dma_async_tx_descriptor** %2, align 8
  %6 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %7 = call %struct.dma_async_tx_descriptor* @txd_next(%struct.dma_async_tx_descriptor* %6)
  store %struct.dma_async_tx_descriptor* %7, %struct.dma_async_tx_descriptor** %3, align 8
  %8 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %9 = icmp ne %struct.dma_async_tx_descriptor* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %57

11:                                               ; preds = %1
  %12 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %13 = call i32 @txd_clear_next(%struct.dma_async_tx_descriptor* %12)
  %14 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %15 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %14, i32 0, i32 1
  %16 = load %struct.dma_chan*, %struct.dma_chan** %15, align 8
  store %struct.dma_chan* %16, %struct.dma_chan** %5, align 8
  br label %17

17:                                               ; preds = %47, %11
  %18 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %19 = icmp ne %struct.dma_async_tx_descriptor* %18, null
  br i1 %19, label %20, label %49

20:                                               ; preds = %17
  %21 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %22 = call i32 @txd_lock(%struct.dma_async_tx_descriptor* %21)
  %23 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %24 = call i32 @txd_clear_parent(%struct.dma_async_tx_descriptor* %23)
  %25 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %26 = call %struct.dma_async_tx_descriptor* @txd_next(%struct.dma_async_tx_descriptor* %25)
  store %struct.dma_async_tx_descriptor* %26, %struct.dma_async_tx_descriptor** %4, align 8
  %27 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %4, align 8
  %28 = icmp ne %struct.dma_async_tx_descriptor* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %4, align 8
  %31 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %30, i32 0, i32 1
  %32 = load %struct.dma_chan*, %struct.dma_chan** %31, align 8
  %33 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %34 = icmp eq %struct.dma_chan* %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %37 = call i32 @txd_clear_next(%struct.dma_async_tx_descriptor* %36)
  br label %39

38:                                               ; preds = %29, %20
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %4, align 8
  br label %39

39:                                               ; preds = %38, %35
  %40 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %41 = call i32 @txd_unlock(%struct.dma_async_tx_descriptor* %40)
  %42 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %43 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %42, i32 0, i32 0
  %44 = load i32 (%struct.dma_async_tx_descriptor*)*, i32 (%struct.dma_async_tx_descriptor*)** %43, align 8
  %45 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %46 = call i32 %44(%struct.dma_async_tx_descriptor* %45)
  br label %47

47:                                               ; preds = %39
  %48 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %4, align 8
  store %struct.dma_async_tx_descriptor* %48, %struct.dma_async_tx_descriptor** %3, align 8
  br label %17

49:                                               ; preds = %17
  %50 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %51 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.dma_chan*)*, i32 (%struct.dma_chan*)** %53, align 8
  %55 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %56 = call i32 %54(%struct.dma_chan* %55)
  br label %57

57:                                               ; preds = %49, %10
  ret void
}

declare dso_local %struct.dma_async_tx_descriptor* @txd_next(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @txd_clear_next(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @txd_lock(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @txd_clear_parent(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @txd_unlock(%struct.dma_async_tx_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
