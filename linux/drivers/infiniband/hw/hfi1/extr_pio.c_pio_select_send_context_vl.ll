; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_pio_select_send_context_vl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_pio_select_send_context_vl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_context = type { i32 }
%struct.hfi1_devdata = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.send_context* }
%struct.pio_vl_map = type { i64, %struct.pio_map_elem** }
%struct.pio_map_elem = type { i64, %struct.send_context** }

@num_vls = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.send_context* @pio_select_send_context_vl(%struct.hfi1_devdata* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.send_context*, align 8
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pio_vl_map*, align 8
  %9 = alloca %struct.pio_map_elem*, align 8
  %10 = alloca %struct.send_context*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @num_vls, align 8
  %13 = icmp uge i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.send_context* null, %struct.send_context** %10, align 8
  br label %60

18:                                               ; preds = %3
  %19 = call i32 (...) @rcu_read_lock()
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %21 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.pio_vl_map* @rcu_dereference(i32 %22)
  store %struct.pio_vl_map* %23, %struct.pio_vl_map** %8, align 8
  %24 = load %struct.pio_vl_map*, %struct.pio_vl_map** %8, align 8
  %25 = icmp ne %struct.pio_vl_map* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %18
  %31 = call i32 (...) @rcu_read_unlock()
  %32 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %33 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.send_context*, %struct.send_context** %36, align 8
  store %struct.send_context* %37, %struct.send_context** %4, align 8
  br label %75

38:                                               ; preds = %18
  %39 = load %struct.pio_vl_map*, %struct.pio_vl_map** %8, align 8
  %40 = getelementptr inbounds %struct.pio_vl_map, %struct.pio_vl_map* %39, i32 0, i32 1
  %41 = load %struct.pio_map_elem**, %struct.pio_map_elem*** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.pio_vl_map*, %struct.pio_vl_map** %8, align 8
  %44 = getelementptr inbounds %struct.pio_vl_map, %struct.pio_vl_map* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = and i64 %42, %45
  %47 = getelementptr inbounds %struct.pio_map_elem*, %struct.pio_map_elem** %41, i64 %46
  %48 = load %struct.pio_map_elem*, %struct.pio_map_elem** %47, align 8
  store %struct.pio_map_elem* %48, %struct.pio_map_elem** %9, align 8
  %49 = load %struct.pio_map_elem*, %struct.pio_map_elem** %9, align 8
  %50 = getelementptr inbounds %struct.pio_map_elem, %struct.pio_map_elem* %49, i32 0, i32 1
  %51 = load %struct.send_context**, %struct.send_context*** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.pio_map_elem*, %struct.pio_map_elem** %9, align 8
  %54 = getelementptr inbounds %struct.pio_map_elem, %struct.pio_map_elem* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = and i64 %52, %55
  %57 = getelementptr inbounds %struct.send_context*, %struct.send_context** %51, i64 %56
  %58 = load %struct.send_context*, %struct.send_context** %57, align 8
  store %struct.send_context* %58, %struct.send_context** %10, align 8
  %59 = call i32 (...) @rcu_read_unlock()
  br label %60

60:                                               ; preds = %38, %17
  %61 = load %struct.send_context*, %struct.send_context** %10, align 8
  %62 = icmp ne %struct.send_context* %61, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %60
  %64 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %65 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load %struct.send_context*, %struct.send_context** %68, align 8
  br label %72

70:                                               ; preds = %60
  %71 = load %struct.send_context*, %struct.send_context** %10, align 8
  br label %72

72:                                               ; preds = %70, %63
  %73 = phi %struct.send_context* [ %69, %63 ], [ %71, %70 ]
  store %struct.send_context* %73, %struct.send_context** %10, align 8
  %74 = load %struct.send_context*, %struct.send_context** %10, align 8
  store %struct.send_context* %74, %struct.send_context** %4, align 8
  br label %75

75:                                               ; preds = %72, %30
  %76 = load %struct.send_context*, %struct.send_context** %4, align 8
  ret %struct.send_context* %76
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.pio_vl_map* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
