; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_handle_eflags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_handle_eflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_packet = type { i32, %struct.hfi1_ctxtdata* }
%struct.hfi1_ctxtdata = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_eflags(%struct.hfi1_packet* %0) #0 {
  %2 = alloca %struct.hfi1_packet*, align 8
  %3 = alloca %struct.hfi1_ctxtdata*, align 8
  store %struct.hfi1_packet* %0, %struct.hfi1_packet** %2, align 8
  %4 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %5 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %4, i32 0, i32 1
  %6 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  store %struct.hfi1_ctxtdata* %6, %struct.hfi1_ctxtdata** %3, align 8
  %7 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %8 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %9 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %12 = call i32 @rcv_hdrerr(%struct.hfi1_ctxtdata* %7, i32 %10, %struct.hfi1_packet* %11)
  %13 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %14 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @rhf_err_flags(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %20 = call i32 @show_eflags_errs(%struct.hfi1_packet* %19)
  br label %21

21:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @rcv_hdrerr(%struct.hfi1_ctxtdata*, i32, %struct.hfi1_packet*) #1

declare dso_local i64 @rhf_err_flags(i32) #1

declare dso_local i32 @show_eflags_errs(%struct.hfi1_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
