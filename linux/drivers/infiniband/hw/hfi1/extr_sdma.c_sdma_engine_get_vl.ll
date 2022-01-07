; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_engine_get_vl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_engine_get_vl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { i64, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }
%struct.sdma_vl_map = type { i32* }

@TXE_NUM_SDMA_ENGINES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdma_engine_get_vl(%struct.sdma_engine* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdma_engine*, align 8
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca %struct.sdma_vl_map*, align 8
  %6 = alloca i32, align 4
  store %struct.sdma_engine* %0, %struct.sdma_engine** %3, align 8
  %7 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %8 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %7, i32 0, i32 1
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  store %struct.hfi1_devdata* %9, %struct.hfi1_devdata** %4, align 8
  %10 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %11 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TXE_NUM_SDMA_ENGINES, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %45

18:                                               ; preds = %1
  %19 = call i32 (...) @rcu_read_lock()
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %21 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.sdma_vl_map* @rcu_dereference(i32 %22)
  store %struct.sdma_vl_map* %23, %struct.sdma_vl_map** %5, align 8
  %24 = load %struct.sdma_vl_map*, %struct.sdma_vl_map** %5, align 8
  %25 = icmp ne %struct.sdma_vl_map* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = call i32 (...) @rcu_read_unlock()
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %45

34:                                               ; preds = %18
  %35 = load %struct.sdma_vl_map*, %struct.sdma_vl_map** %5, align 8
  %36 = getelementptr inbounds %struct.sdma_vl_map, %struct.sdma_vl_map* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %39 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  %43 = call i32 (...) @rcu_read_unlock()
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %34, %30, %15
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sdma_vl_map* @rcu_dereference(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
