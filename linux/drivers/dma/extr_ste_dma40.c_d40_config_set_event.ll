; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_config_set_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_config_set_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d40_chan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@DMA_DEV_TO_DEV = common dso_local global i64 0, align 8
@D40_CHAN_REG_SSLNK = common dso_local global i32 0, align 4
@D40_CHAN_REG_SDLNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d40_chan*, i32)* @d40_config_set_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d40_config_set_event(%struct.d40_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.d40_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.d40_chan* %0, %struct.d40_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %7 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @D40_TYPE_TO_EVENT(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %12 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %19 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DMA_DEV_TO_DEV, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %17, %2
  %25 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @D40_CHAN_REG_SSLNK, align 4
  %29 = call i32 @__d40_config_set_event(%struct.d40_chan* %25, i32 %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %17
  %31 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %32 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @D40_CHAN_REG_SDLNK, align 4
  %42 = call i32 @__d40_config_set_event(%struct.d40_chan* %38, i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %37, %30
  ret void
}

declare dso_local i32 @D40_TYPE_TO_EVENT(i32) #1

declare dso_local i32 @__d40_config_set_event(%struct.d40_chan*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
