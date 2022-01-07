; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_select_user_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_select_user_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sdma_engine = type { i32 }
%struct.hfi1_devdata = type { i32 }
%struct.sdma_rht_node = type { %struct.sdma_rht_map_elem** }
%struct.sdma_rht_map_elem = type { i64, %struct.sdma_engine** }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@sdma_rht_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sdma_engine* @sdma_select_user_engine(%struct.hfi1_devdata* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.sdma_engine*, align 8
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sdma_rht_node*, align 8
  %9 = alloca %struct.sdma_engine*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sdma_rht_map_elem*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.sdma_engine* null, %struct.sdma_engine** %9, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %59

17:                                               ; preds = %3
  %18 = call i64 (...) @smp_processor_id()
  store i64 %18, i64* %10, align 8
  %19 = call i32 (...) @rcu_read_lock()
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %21 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @sdma_rht_params, align 4
  %24 = call %struct.sdma_rht_node* @rhashtable_lookup_fast(i32 %22, i64* %10, i32 %23)
  store %struct.sdma_rht_node* %24, %struct.sdma_rht_node** %8, align 8
  %25 = load %struct.sdma_rht_node*, %struct.sdma_rht_node** %8, align 8
  %26 = icmp ne %struct.sdma_rht_node* %25, null
  br i1 %26, label %27, label %52

27:                                               ; preds = %17
  %28 = load %struct.sdma_rht_node*, %struct.sdma_rht_node** %8, align 8
  %29 = getelementptr inbounds %struct.sdma_rht_node, %struct.sdma_rht_node* %28, i32 0, i32 0
  %30 = load %struct.sdma_rht_map_elem**, %struct.sdma_rht_map_elem*** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.sdma_rht_map_elem*, %struct.sdma_rht_map_elem** %30, i64 %31
  %33 = load %struct.sdma_rht_map_elem*, %struct.sdma_rht_map_elem** %32, align 8
  %34 = icmp ne %struct.sdma_rht_map_elem* %33, null
  br i1 %34, label %35, label %52

35:                                               ; preds = %27
  %36 = load %struct.sdma_rht_node*, %struct.sdma_rht_node** %8, align 8
  %37 = getelementptr inbounds %struct.sdma_rht_node, %struct.sdma_rht_node* %36, i32 0, i32 0
  %38 = load %struct.sdma_rht_map_elem**, %struct.sdma_rht_map_elem*** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.sdma_rht_map_elem*, %struct.sdma_rht_map_elem** %38, i64 %39
  %41 = load %struct.sdma_rht_map_elem*, %struct.sdma_rht_map_elem** %40, align 8
  store %struct.sdma_rht_map_elem* %41, %struct.sdma_rht_map_elem** %11, align 8
  %42 = load %struct.sdma_rht_map_elem*, %struct.sdma_rht_map_elem** %11, align 8
  %43 = getelementptr inbounds %struct.sdma_rht_map_elem, %struct.sdma_rht_map_elem* %42, i32 0, i32 1
  %44 = load %struct.sdma_engine**, %struct.sdma_engine*** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.sdma_rht_map_elem*, %struct.sdma_rht_map_elem** %11, align 8
  %47 = getelementptr inbounds %struct.sdma_rht_map_elem, %struct.sdma_rht_map_elem* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = and i64 %45, %48
  %50 = getelementptr inbounds %struct.sdma_engine*, %struct.sdma_engine** %44, i64 %49
  %51 = load %struct.sdma_engine*, %struct.sdma_engine** %50, align 8
  store %struct.sdma_engine* %51, %struct.sdma_engine** %9, align 8
  br label %52

52:                                               ; preds = %35, %27, %17
  %53 = call i32 (...) @rcu_read_unlock()
  %54 = load %struct.sdma_engine*, %struct.sdma_engine** %9, align 8
  %55 = icmp ne %struct.sdma_engine* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load %struct.sdma_engine*, %struct.sdma_engine** %9, align 8
  store %struct.sdma_engine* %57, %struct.sdma_engine** %4, align 8
  br label %64

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %16
  %60 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call %struct.sdma_engine* @sdma_select_engine_vl(%struct.hfi1_devdata* %60, i64 %61, i64 %62)
  store %struct.sdma_engine* %63, %struct.sdma_engine** %4, align 8
  br label %64

64:                                               ; preds = %59, %56
  %65 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  ret %struct.sdma_engine* %65
}

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sdma_rht_node* @rhashtable_lookup_fast(i32, i64*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.sdma_engine* @sdma_select_engine_vl(%struct.hfi1_devdata*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
