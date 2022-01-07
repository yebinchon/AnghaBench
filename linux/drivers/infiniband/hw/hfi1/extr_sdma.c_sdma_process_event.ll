; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_process_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@sdma_state_s99_running = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdma_engine*, i32)* @sdma_process_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_process_event(%struct.sdma_engine* %0, i32 %1) #0 {
  %3 = alloca %struct.sdma_engine*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.sdma_engine* %0, %struct.sdma_engine** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %7 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %11 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %10, i32 0, i32 1
  %12 = call i32 @write_seqlock(i32* %11)
  %13 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @__sdma_process_event(%struct.sdma_engine* %13, i32 %14)
  %16 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %17 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @sdma_state_s99_running, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %24 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %25 = call i32 @sdma_descq_freecnt(%struct.sdma_engine* %24)
  %26 = call i32 @sdma_desc_avail(%struct.sdma_engine* %23, i32 %25)
  br label %27

27:                                               ; preds = %22, %2
  %28 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %29 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %28, i32 0, i32 1
  %30 = call i32 @write_sequnlock(i32* %29)
  %31 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %32 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %31, i32 0, i32 0
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local i32 @__sdma_process_event(%struct.sdma_engine*, i32) #1

declare dso_local i32 @sdma_desc_avail(%struct.sdma_engine*, i32) #1

declare dso_local i32 @sdma_descq_freecnt(%struct.sdma_engine*) #1

declare dso_local i32 @write_sequnlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
