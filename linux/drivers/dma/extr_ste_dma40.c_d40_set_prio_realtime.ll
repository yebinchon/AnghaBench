; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_set_prio_realtime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_set_prio_realtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d40_chan = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@DMA_DEV_TO_DEV = common dso_local global i64 0, align 8
@DMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d40_chan*)* @d40_set_prio_realtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d40_set_prio_realtime(%struct.d40_chan* %0) #0 {
  %2 = alloca %struct.d40_chan*, align 8
  store %struct.d40_chan* %0, %struct.d40_chan** %2, align 8
  %3 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %4 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %3, i32 0, i32 1
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %7, 3
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %52

10:                                               ; preds = %1
  %11 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %12 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %19 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DMA_DEV_TO_DEV, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %17, %10
  %25 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %26 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %27 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @__d40_set_prio_rt(%struct.d40_chan* %25, i32 %29, i32 1)
  br label %31

31:                                               ; preds = %24, %17
  %32 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %33 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %31
  %39 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %40 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DMA_DEV_TO_DEV, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %38, %31
  %46 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %47 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %48 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @__d40_set_prio_rt(%struct.d40_chan* %46, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %9, %45, %38
  ret void
}

declare dso_local i32 @__d40_set_prio_rt(%struct.d40_chan*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
