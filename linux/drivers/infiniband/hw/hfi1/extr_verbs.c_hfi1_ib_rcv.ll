; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_hfi1_ib_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_hfi1_ib_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_packet = type { i32, i32, %struct.hfi1_ctxtdata* }
%struct.hfi1_ctxtdata = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_ib_rcv(%struct.hfi1_packet* %0) #0 {
  %2 = alloca %struct.hfi1_packet*, align 8
  %3 = alloca %struct.hfi1_ctxtdata*, align 8
  store %struct.hfi1_packet* %0, %struct.hfi1_packet** %2, align 8
  %4 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %5 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %4, i32 0, i32 2
  %6 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  store %struct.hfi1_ctxtdata* %6, %struct.hfi1_ctxtdata** %3, align 8
  %7 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %8 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %11 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %12 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @rhf_dc_info(i32 %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @trace_input_ibhdr(i32 %9, %struct.hfi1_packet* %10, i32 %18)
  %20 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %21 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %22 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @hfi1_check_mcast(i32 %23)
  %25 = call i32 @hfi1_handle_packet(%struct.hfi1_packet* %20, i32 %24)
  ret void
}

declare dso_local i32 @trace_input_ibhdr(i32, %struct.hfi1_packet*, i32) #1

declare dso_local i32 @rhf_dc_info(i32) #1

declare dso_local i32 @hfi1_handle_packet(%struct.hfi1_packet*, i32) #1

declare dso_local i32 @hfi1_check_mcast(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
