; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_kdeth_process_expected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_kdeth_process_expected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_packet = type { %struct.hfi1_ctxtdata*, i32 }
%struct.hfi1_ctxtdata = type { i32 }

@RHF_RCV_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_packet*)* @kdeth_process_expected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdeth_process_expected(%struct.hfi1_packet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_packet*, align 8
  %4 = alloca %struct.hfi1_ctxtdata*, align 8
  store %struct.hfi1_packet* %0, %struct.hfi1_packet** %3, align 8
  %5 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %6 = call i32 @hfi1_setup_9B_packet(%struct.hfi1_packet* %5)
  %7 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %8 = call i32 @hfi1_dbg_should_fault_rx(%struct.hfi1_packet* %7)
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @RHF_RCV_CONTINUE, align 4
  store i32 %12, i32* %2, align 4
  br label %38

13:                                               ; preds = %1
  %14 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %15 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @rhf_err_flags(i32 %16)
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %13
  %21 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %22 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %21, i32 0, i32 0
  %23 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %22, align 8
  store %struct.hfi1_ctxtdata* %23, %struct.hfi1_ctxtdata** %4, align 8
  %24 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %25 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %26 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %29 = call i64 @hfi1_handle_kdeth_eflags(%struct.hfi1_ctxtdata* %24, i32 %27, %struct.hfi1_packet* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* @RHF_RCV_CONTINUE, align 4
  store i32 %32, i32* %2, align 4
  br label %38

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33, %13
  %35 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %36 = call i32 @hfi1_kdeth_expected_rcv(%struct.hfi1_packet* %35)
  %37 = load i32, i32* @RHF_RCV_CONTINUE, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %31, %11
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @hfi1_setup_9B_packet(%struct.hfi1_packet*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hfi1_dbg_should_fault_rx(%struct.hfi1_packet*) #1

declare dso_local i32 @rhf_err_flags(i32) #1

declare dso_local i64 @hfi1_handle_kdeth_eflags(%struct.hfi1_ctxtdata*, i32, %struct.hfi1_packet*) #1

declare dso_local i32 @hfi1_kdeth_expected_rcv(%struct.hfi1_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
