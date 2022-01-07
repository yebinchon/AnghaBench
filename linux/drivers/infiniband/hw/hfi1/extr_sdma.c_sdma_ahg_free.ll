; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_ahg_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_ahg_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdma_ahg_free(%struct.sdma_engine* %0, i32 %1) #0 {
  %3 = alloca %struct.sdma_engine*, align 8
  %4 = alloca i32, align 4
  store %struct.sdma_engine* %0, %struct.sdma_engine** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %6 = icmp ne %struct.sdma_engine* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %23

8:                                                ; preds = %2
  %9 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @trace_hfi1_ahg_deallocate(%struct.sdma_engine* %9, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 31
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %8
  br label %23

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %21 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %20, i32 0, i32 0
  %22 = call i32 @clear_bit(i32 %19, i32* %21)
  br label %23

23:                                               ; preds = %18, %17, %7
  ret void
}

declare dso_local i32 @trace_hfi1_ahg_deallocate(%struct.sdma_engine*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
