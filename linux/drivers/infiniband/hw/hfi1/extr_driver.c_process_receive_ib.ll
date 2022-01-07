; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_process_receive_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_process_receive_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_packet = type { i32 }

@RHF_RCV_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_packet*)* @process_receive_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_receive_ib(%struct.hfi1_packet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_packet*, align 8
  store %struct.hfi1_packet* %0, %struct.hfi1_packet** %3, align 8
  %4 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %5 = call i64 @hfi1_setup_9B_packet(%struct.hfi1_packet* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @RHF_RCV_CONTINUE, align 4
  store i32 %8, i32* %2, align 4
  br label %33

9:                                                ; preds = %1
  %10 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %11 = call i32 @hfi1_dbg_should_fault_rx(%struct.hfi1_packet* %10)
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @RHF_RCV_CONTINUE, align 4
  store i32 %15, i32* %2, align 4
  br label %33

16:                                               ; preds = %9
  %17 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %18 = call i32 @trace_hfi1_rcvhdr(%struct.hfi1_packet* %17)
  %19 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %20 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @rhf_err_flags(i32 %21)
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %27 = call i32 @handle_eflags(%struct.hfi1_packet* %26)
  %28 = load i32, i32* @RHF_RCV_CONTINUE, align 4
  store i32 %28, i32* %2, align 4
  br label %33

29:                                               ; preds = %16
  %30 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %31 = call i32 @hfi1_ib_rcv(%struct.hfi1_packet* %30)
  %32 = load i32, i32* @RHF_RCV_CONTINUE, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %25, %14, %7
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @hfi1_setup_9B_packet(%struct.hfi1_packet*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hfi1_dbg_should_fault_rx(%struct.hfi1_packet*) #1

declare dso_local i32 @trace_hfi1_rcvhdr(%struct.hfi1_packet*) #1

declare dso_local i32 @rhf_err_flags(i32) #1

declare dso_local i32 @handle_eflags(%struct.hfi1_packet*) #1

declare dso_local i32 @hfi1_ib_rcv(%struct.hfi1_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
