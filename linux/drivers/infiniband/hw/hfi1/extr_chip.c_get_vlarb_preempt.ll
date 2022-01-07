; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_get_vlarb_preempt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_get_vlarb_preempt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }
%struct.ib_vl_weight_elem = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, i32, %struct.ib_vl_weight_elem*)* @get_vlarb_preempt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_vlarb_preempt(%struct.hfi1_devdata* %0, i32 %1, %struct.ib_vl_weight_elem* %2) #0 {
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_vl_weight_elem*, align 8
  %7 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_vl_weight_elem* %2, %struct.ib_vl_weight_elem** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %17, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load %struct.ib_vl_weight_elem*, %struct.ib_vl_weight_elem** %6, align 8
  %14 = getelementptr inbounds %struct.ib_vl_weight_elem, %struct.ib_vl_weight_elem* %13, i32 0, i32 0
  store i32 15, i32* %14, align 8
  %15 = load %struct.ib_vl_weight_elem*, %struct.ib_vl_weight_elem** %6, align 8
  %16 = getelementptr inbounds %struct.ib_vl_weight_elem, %struct.ib_vl_weight_elem* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ib_vl_weight_elem*, %struct.ib_vl_weight_elem** %6, align 8
  %21 = getelementptr inbounds %struct.ib_vl_weight_elem, %struct.ib_vl_weight_elem* %20, i32 1
  store %struct.ib_vl_weight_elem* %21, %struct.ib_vl_weight_elem** %6, align 8
  br label %8

22:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
