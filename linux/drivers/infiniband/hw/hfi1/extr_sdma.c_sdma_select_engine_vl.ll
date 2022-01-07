; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_select_engine_vl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_select_engine_vl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { i32 }
%struct.hfi1_devdata = type { %struct.sdma_engine*, i32 }
%struct.sdma_vl_map = type { i64, %struct.sdma_map_elem** }
%struct.sdma_map_elem = type { i64, %struct.sdma_engine** }

@num_vls = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sdma_engine* @sdma_select_engine_vl(%struct.hfi1_devdata* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.sdma_engine*, align 8
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sdma_vl_map*, align 8
  %9 = alloca %struct.sdma_map_elem*, align 8
  %10 = alloca %struct.sdma_engine*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @num_vls, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.sdma_engine* null, %struct.sdma_engine** %10, align 8
  br label %55

15:                                               ; preds = %3
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %18 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.sdma_vl_map* @rcu_dereference(i32 %19)
  store %struct.sdma_vl_map* %20, %struct.sdma_vl_map** %8, align 8
  %21 = load %struct.sdma_vl_map*, %struct.sdma_vl_map** %8, align 8
  %22 = icmp ne %struct.sdma_vl_map* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %15
  %28 = call i32 (...) @rcu_read_unlock()
  %29 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %30 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %29, i32 0, i32 0
  %31 = load %struct.sdma_engine*, %struct.sdma_engine** %30, align 8
  %32 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %31, i64 0
  store %struct.sdma_engine* %32, %struct.sdma_engine** %4, align 8
  br label %75

33:                                               ; preds = %15
  %34 = load %struct.sdma_vl_map*, %struct.sdma_vl_map** %8, align 8
  %35 = getelementptr inbounds %struct.sdma_vl_map, %struct.sdma_vl_map* %34, i32 0, i32 1
  %36 = load %struct.sdma_map_elem**, %struct.sdma_map_elem*** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.sdma_vl_map*, %struct.sdma_vl_map** %8, align 8
  %39 = getelementptr inbounds %struct.sdma_vl_map, %struct.sdma_vl_map* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = and i64 %37, %40
  %42 = getelementptr inbounds %struct.sdma_map_elem*, %struct.sdma_map_elem** %36, i64 %41
  %43 = load %struct.sdma_map_elem*, %struct.sdma_map_elem** %42, align 8
  store %struct.sdma_map_elem* %43, %struct.sdma_map_elem** %9, align 8
  %44 = load %struct.sdma_map_elem*, %struct.sdma_map_elem** %9, align 8
  %45 = getelementptr inbounds %struct.sdma_map_elem, %struct.sdma_map_elem* %44, i32 0, i32 1
  %46 = load %struct.sdma_engine**, %struct.sdma_engine*** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.sdma_map_elem*, %struct.sdma_map_elem** %9, align 8
  %49 = getelementptr inbounds %struct.sdma_map_elem, %struct.sdma_map_elem* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = and i64 %47, %50
  %52 = getelementptr inbounds %struct.sdma_engine*, %struct.sdma_engine** %46, i64 %51
  %53 = load %struct.sdma_engine*, %struct.sdma_engine** %52, align 8
  store %struct.sdma_engine* %53, %struct.sdma_engine** %10, align 8
  %54 = call i32 (...) @rcu_read_unlock()
  br label %55

55:                                               ; preds = %33, %14
  %56 = load %struct.sdma_engine*, %struct.sdma_engine** %10, align 8
  %57 = icmp ne %struct.sdma_engine* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %60 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %59, i32 0, i32 0
  %61 = load %struct.sdma_engine*, %struct.sdma_engine** %60, align 8
  %62 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %61, i64 0
  br label %65

63:                                               ; preds = %55
  %64 = load %struct.sdma_engine*, %struct.sdma_engine** %10, align 8
  br label %65

65:                                               ; preds = %63, %58
  %66 = phi %struct.sdma_engine* [ %62, %58 ], [ %64, %63 ]
  store %struct.sdma_engine* %66, %struct.sdma_engine** %10, align 8
  %67 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.sdma_engine*, %struct.sdma_engine** %10, align 8
  %71 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @trace_hfi1_sdma_engine_select(%struct.hfi1_devdata* %67, i64 %68, i64 %69, i32 %72)
  %74 = load %struct.sdma_engine*, %struct.sdma_engine** %10, align 8
  store %struct.sdma_engine* %74, %struct.sdma_engine** %4, align 8
  br label %75

75:                                               ; preds = %65, %27
  %76 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  ret %struct.sdma_engine* %76
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sdma_vl_map* @rcu_dereference(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @trace_hfi1_sdma_engine_select(%struct.hfi1_devdata*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
