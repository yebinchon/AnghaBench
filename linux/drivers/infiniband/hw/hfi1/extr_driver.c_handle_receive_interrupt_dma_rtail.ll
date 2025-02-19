; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_handle_receive_interrupt_dma_rtail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_handle_receive_interrupt_dma_rtail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { i64 }
%struct.hfi1_packet = type { i64 }

@RCV_PKT_OK = common dso_local global i32 0, align 4
@RCV_PKT_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_receive_interrupt_dma_rtail(%struct.hfi1_ctxtdata* %0, i32 %1) #0 {
  %3 = alloca %struct.hfi1_ctxtdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfi1_packet, align 8
  store %struct.hfi1_ctxtdata* %0, %struct.hfi1_ctxtdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @RCV_PKT_OK, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %10 = call i32 @init_packet(%struct.hfi1_ctxtdata* %9, %struct.hfi1_packet* %7)
  %11 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %12 = call i64 @get_rcvhdrtail(%struct.hfi1_ctxtdata* %11)
  store i64 %12, i64* %5, align 8
  %13 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %7, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @RCV_PKT_DONE, align 4
  store i32 %18, i32* %6, align 4
  br label %45

19:                                               ; preds = %2
  %20 = call i32 (...) @smp_rmb()
  %21 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %22 = call i32 @prescan_rxq(%struct.hfi1_ctxtdata* %21, %struct.hfi1_packet* %7)
  br label %23

23:                                               ; preds = %36, %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @RCV_PKT_OK, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @process_rcv_packet(%struct.hfi1_packet* %7, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %7, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @RCV_PKT_DONE, align 4
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %34, %27
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @process_rcv_update(i32 %37, %struct.hfi1_packet* %7)
  br label %23

39:                                               ; preds = %23
  %40 = call i32 @process_rcv_qp_work(%struct.hfi1_packet* %7)
  %41 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %7, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %44 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %39, %17
  %46 = call i32 @finish_packet(%struct.hfi1_packet* %7)
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @init_packet(%struct.hfi1_ctxtdata*, %struct.hfi1_packet*) #1

declare dso_local i64 @get_rcvhdrtail(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @prescan_rxq(%struct.hfi1_ctxtdata*, %struct.hfi1_packet*) #1

declare dso_local i32 @process_rcv_packet(%struct.hfi1_packet*, i32) #1

declare dso_local i32 @process_rcv_update(i32, %struct.hfi1_packet*) #1

declare dso_local i32 @process_rcv_qp_work(%struct.hfi1_packet*) #1

declare dso_local i32 @finish_packet(%struct.hfi1_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
