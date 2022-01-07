; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_engine_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_engine_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { i32, i32, i32, i32, i32, i32, i32 }

@sdma_desct_intr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdma_engine_interrupt(%struct.sdma_engine* %0, i32 %1) #0 {
  %3 = alloca %struct.sdma_engine*, align 8
  %4 = alloca i32, align 4
  store %struct.sdma_engine* %0, %struct.sdma_engine** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @trace_hfi1_sdma_engine_interrupt(%struct.sdma_engine* %5, i32 %6)
  %8 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %9 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %8, i32 0, i32 3
  %10 = call i32 @write_seqlock(i32* %9)
  %11 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %12 = load i32, i32* @sdma_desct_intr, align 4
  %13 = call i32 @sdma_set_desc_cnt(%struct.sdma_engine* %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %16 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %22 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  br label %51

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %28 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %34 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %50

37:                                               ; preds = %25
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %40 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %46 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %44, %37
  br label %50

50:                                               ; preds = %49, %32
  br label %51

51:                                               ; preds = %50, %20
  %52 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @sdma_make_progress(%struct.sdma_engine* %52, i32 %53)
  %55 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %56 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %55, i32 0, i32 3
  %57 = call i32 @write_sequnlock(i32* %56)
  ret void
}

declare dso_local i32 @trace_hfi1_sdma_engine_interrupt(%struct.sdma_engine*, i32) #1

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local i32 @sdma_set_desc_cnt(%struct.sdma_engine*, i32) #1

declare dso_local i32 @sdma_make_progress(%struct.sdma_engine*, i32) #1

declare dso_local i32 @write_sequnlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
