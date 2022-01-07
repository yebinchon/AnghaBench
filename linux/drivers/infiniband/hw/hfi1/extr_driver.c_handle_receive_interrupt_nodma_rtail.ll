; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_handle_receive_interrupt_nodma_rtail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_handle_receive_interrupt_nodma_rtail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { i32, i32 }
%struct.hfi1_packet = type { i32, i32 }

@RCV_PKT_OK = common dso_local global i32 0, align 4
@RCV_PKT_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_receive_interrupt_nodma_rtail(%struct.hfi1_ctxtdata* %0, i32 %1) #0 {
  %3 = alloca %struct.hfi1_ctxtdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfi1_packet, align 4
  store %struct.hfi1_ctxtdata* %0, %struct.hfi1_ctxtdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @RCV_PKT_OK, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %10 = call i32 @init_packet(%struct.hfi1_ctxtdata* %9, %struct.hfi1_packet* %7)
  %11 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %7, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @rhf_rcv_seq(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %16 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @RCV_PKT_DONE, align 4
  store i32 %20, i32* %6, align 4
  br label %59

21:                                               ; preds = %2
  %22 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %23 = call i32 @prescan_rxq(%struct.hfi1_ctxtdata* %22, %struct.hfi1_packet* %7)
  br label %24

24:                                               ; preds = %50, %21
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @RCV_PKT_OK, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @process_rcv_packet(%struct.hfi1_packet* %7, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %7, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rhf_rcv_seq(i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %35 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = icmp sgt i32 %37, 13
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %41 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %28
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %45 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @RCV_PKT_DONE, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %42
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @process_rcv_update(i32 %51, %struct.hfi1_packet* %7)
  br label %24

53:                                               ; preds = %24
  %54 = call i32 @process_rcv_qp_work(%struct.hfi1_packet* %7)
  %55 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %7, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %58 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %53, %19
  %60 = call i32 @finish_packet(%struct.hfi1_packet* %7)
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @init_packet(%struct.hfi1_ctxtdata*, %struct.hfi1_packet*) #1

declare dso_local i32 @rhf_rcv_seq(i32) #1

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
