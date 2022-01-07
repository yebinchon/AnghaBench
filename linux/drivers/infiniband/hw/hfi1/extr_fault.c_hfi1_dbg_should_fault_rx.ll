; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_fault.c_hfi1_dbg_should_fault_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_fault.c_hfi1_dbg_should_fault_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_packet = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.hfi1_ibdev }
%struct.hfi1_ibdev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

@HFI1_FAULT_DIR_RX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_dbg_should_fault_rx(%struct.hfi1_packet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_packet*, align 8
  %4 = alloca %struct.hfi1_ibdev*, align 8
  store %struct.hfi1_packet* %0, %struct.hfi1_packet** %3, align 8
  %5 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %6 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.hfi1_ibdev* %10, %struct.hfi1_ibdev** %4, align 8
  %11 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %4, align 8
  %12 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %13 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @HFI1_FAULT_DIR_RX, align 4
  %16 = call i64 @__hfi1_should_fault(%struct.hfi1_ibdev* %11, i64 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %20 = call i32 @trace_hfi1_fault_packet(%struct.hfi1_packet* %19)
  %21 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %4, align 8
  %22 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %27 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  store i32 1, i32* %2, align 4
  br label %33

32:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %18
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @__hfi1_should_fault(%struct.hfi1_ibdev*, i64, i32) #1

declare dso_local i32 @trace_hfi1_fault_packet(%struct.hfi1_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
