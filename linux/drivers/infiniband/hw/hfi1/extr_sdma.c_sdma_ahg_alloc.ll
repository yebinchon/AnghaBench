; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_ahg_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_ahg_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdma_ahg_alloc(%struct.sdma_engine* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdma_engine*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sdma_engine* %0, %struct.sdma_engine** %3, align 8
  %6 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %7 = icmp ne %struct.sdma_engine* %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  %12 = call i32 @trace_hfi1_ahg_allocate(%struct.sdma_engine* %9, i32 %11)
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %46

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %39
  %17 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %18 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @READ_ONCE(i32 %19)
  %21 = call i32 @ffz(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 31
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %26 = load i32, i32* @ENOSPC, align 4
  %27 = sub nsw i32 0, %26
  %28 = call i32 @trace_hfi1_ahg_allocate(%struct.sdma_engine* %25, i32 %27)
  %29 = load i32, i32* @ENOSPC, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %46

31:                                               ; preds = %16
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %34 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %33, i32 0, i32 0
  %35 = call i32 @test_and_set_bit(i32 %32, i32* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %41

39:                                               ; preds = %31
  %40 = call i32 (...) @cpu_relax()
  br label %16

41:                                               ; preds = %38
  %42 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @trace_hfi1_ahg_allocate(%struct.sdma_engine* %42, i32 %43)
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %41, %24, %8
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @trace_hfi1_ahg_allocate(%struct.sdma_engine*, i32) #1

declare dso_local i32 @ffz(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
