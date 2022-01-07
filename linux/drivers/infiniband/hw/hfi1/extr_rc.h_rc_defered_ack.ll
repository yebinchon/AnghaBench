; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.h_rc_defered_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.h_rc_defered_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { i32 }
%struct.rvt_qp = type { i32, i32 }

@RVT_R_RSP_NAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_ctxtdata*, %struct.rvt_qp*)* @rc_defered_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rc_defered_ack(%struct.hfi1_ctxtdata* %0, %struct.rvt_qp* %1) #0 {
  %3 = alloca %struct.hfi1_ctxtdata*, align 8
  %4 = alloca %struct.rvt_qp*, align 8
  store %struct.hfi1_ctxtdata* %0, %struct.hfi1_ctxtdata** %3, align 8
  store %struct.rvt_qp* %1, %struct.rvt_qp** %4, align 8
  %5 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %6 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %5, i32 0, i32 0
  %7 = call i64 @list_empty(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load i32, i32* @RVT_R_RSP_NAK, align 4
  %11 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %12 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %16 = call i32 @rvt_get_qp(%struct.rvt_qp* %15)
  %17 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %18 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %17, i32 0, i32 0
  %19 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %20 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %19, i32 0, i32 0
  %21 = call i32 @list_add_tail(i32* %18, i32* %20)
  br label %22

22:                                               ; preds = %9, %2
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @rvt_get_qp(%struct.rvt_qp*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
