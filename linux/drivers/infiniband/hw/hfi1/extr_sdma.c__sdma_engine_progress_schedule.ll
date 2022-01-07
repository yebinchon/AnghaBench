; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c__sdma_engine_progress_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c__sdma_engine_progress_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { i32, i32 }

@CCE_INT_FORCE = common dso_local global i64 0, align 8
@IS_SDMA_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_sdma_engine_progress_schedule(%struct.sdma_engine* %0) #0 {
  %2 = alloca %struct.sdma_engine*, align 8
  store %struct.sdma_engine* %0, %struct.sdma_engine** %2, align 8
  %3 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %4 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %5 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @trace_hfi1_sdma_engine_progress(%struct.sdma_engine* %3, i32 %6)
  %8 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %9 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* @CCE_INT_FORCE, align 8
  %12 = load i32, i32* @IS_SDMA_START, align 4
  %13 = sdiv i32 %12, 64
  %14 = mul nsw i32 8, %13
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %11, %15
  %17 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %18 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @write_csr(i32 %10, i64 %16, i32 %19)
  ret void
}

declare dso_local i32 @trace_hfi1_sdma_engine_progress(%struct.sdma_engine*, i32) #1

declare dso_local i32 @write_csr(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
