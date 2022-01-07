; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_sw_tear_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_sw_tear_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { %struct.TYPE_2__*, %struct.sdma_state }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sdma_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdma_engine*)* @sdma_sw_tear_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_sw_tear_down(%struct.sdma_engine* %0) #0 {
  %2 = alloca %struct.sdma_engine*, align 8
  %3 = alloca %struct.sdma_state*, align 8
  store %struct.sdma_engine* %0, %struct.sdma_engine** %2, align 8
  %4 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %5 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %4, i32 0, i32 1
  store %struct.sdma_state* %5, %struct.sdma_state** %3, align 8
  %6 = load %struct.sdma_state*, %struct.sdma_state** %3, align 8
  %7 = call i32 @sdma_put(%struct.sdma_state* %6)
  %8 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %9 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = call i32 @atomic_set(i32* %11, i32 -1)
  %13 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %14 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @wake_up_interruptible(i32* %16)
  ret void
}

declare dso_local i32 @sdma_put(%struct.sdma_state*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
