; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_sw_clean_up_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_sw_clean_up_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { i32, i32, i64*, i32, i64, i64 }

@sdma_event_e40_sw_cleaned = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @sdma_sw_clean_up_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_sw_clean_up_task(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sdma_engine*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.sdma_engine*
  store %struct.sdma_engine* %6, %struct.sdma_engine** %3, align 8
  %7 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %8 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %7, i32 0, i32 0
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %12 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %11, i32 0, i32 1
  %13 = call i32 @write_seqlock(i32* %12)
  %14 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %15 = call i32 @sdma_make_progress(%struct.sdma_engine* %14, i32 0)
  %16 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %17 = call i32 @sdma_flush(%struct.sdma_engine* %16)
  %18 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %19 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %21 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %23 = call i32 @sdma_descq_freecnt(%struct.sdma_engine* %22)
  %24 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %25 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %27 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  store i64 0, i64* %28, align 8
  %29 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %30 = load i32, i32* @sdma_event_e40_sw_cleaned, align 4
  %31 = call i32 @__sdma_process_event(%struct.sdma_engine* %29, i32 %30)
  %32 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %33 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %32, i32 0, i32 1
  %34 = call i32 @write_sequnlock(i32* %33)
  %35 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %36 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %35, i32 0, i32 0
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local i32 @sdma_make_progress(%struct.sdma_engine*, i32) #1

declare dso_local i32 @sdma_flush(%struct.sdma_engine*) #1

declare dso_local i32 @sdma_descq_freecnt(%struct.sdma_engine*) #1

declare dso_local i32 @__sdma_process_event(%struct.sdma_engine*, i32) #1

declare dso_local i32 @write_sequnlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
