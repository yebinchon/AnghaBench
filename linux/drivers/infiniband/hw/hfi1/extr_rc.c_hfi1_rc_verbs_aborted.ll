; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.c_hfi1_rc_verbs_aborted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.c_hfi1_rc_verbs_aborted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32 }
%struct.hfi1_opa_header = type { i32 }
%struct.ib_other_headers = type { i32* }

@RDMA_READ_RESPONSE_FIRST = common dso_local global i32 0, align 4
@ATOMIC_ACKNOWLEDGE = common dso_local global i32 0, align 4
@READ_RESP = common dso_local global i32 0, align 4
@WRITE_RESP = common dso_local global i32 0, align 4
@IB_BTH_REQ_ACK = common dso_local global i32 0, align 4
@RVT_S_SEND_ONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_rc_verbs_aborted(%struct.rvt_qp* %0, %struct.hfi1_opa_header* %1) #0 {
  %3 = alloca %struct.rvt_qp*, align 8
  %4 = alloca %struct.hfi1_opa_header*, align 8
  %5 = alloca %struct.ib_other_headers*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.rvt_qp* %0, %struct.rvt_qp** %3, align 8
  store %struct.hfi1_opa_header* %1, %struct.hfi1_opa_header** %4, align 8
  %8 = load %struct.hfi1_opa_header*, %struct.hfi1_opa_header** %4, align 8
  %9 = call %struct.ib_other_headers* @hfi1_get_rc_ohdr(%struct.hfi1_opa_header* %8)
  store %struct.ib_other_headers* %9, %struct.ib_other_headers** %5, align 8
  %10 = load %struct.ib_other_headers*, %struct.ib_other_headers** %5, align 8
  %11 = call i64 @ib_bth_get_opcode(%struct.ib_other_headers* %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i32, i32* @RDMA_READ_RESPONSE_FIRST, align 4
  %14 = call i64 @OP(i32 %13)
  %15 = icmp sge i64 %12, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* @ATOMIC_ACKNOWLEDGE, align 4
  %19 = call i64 @OP(i32 %18)
  %20 = icmp sle i64 %17, %19
  br i1 %20, label %31, label %21

21:                                               ; preds = %16, %2
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* @READ_RESP, align 4
  %24 = call i64 @TID_OP(i32 %23)
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* @WRITE_RESP, align 4
  %29 = call i64 @TID_OP(i32 %28)
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %21, %16
  br label %48

32:                                               ; preds = %26
  %33 = load %struct.ib_other_headers*, %struct.ib_other_headers** %5, align 8
  %34 = call i32 @ib_bth_get_psn(%struct.ib_other_headers* %33)
  %35 = load i32, i32* @IB_BTH_REQ_ACK, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @cpu_to_be32(i32 %37)
  %39 = load %struct.ib_other_headers*, %struct.ib_other_headers** %5, align 8
  %40 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* @RVT_S_SEND_ONE, align 4
  %44 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %45 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %32, %31
  ret void
}

declare dso_local %struct.ib_other_headers* @hfi1_get_rc_ohdr(%struct.hfi1_opa_header*) #1

declare dso_local i64 @ib_bth_get_opcode(%struct.ib_other_headers*) #1

declare dso_local i64 @OP(i32) #1

declare dso_local i64 @TID_OP(i32) #1

declare dso_local i32 @ib_bth_get_psn(%struct.ib_other_headers*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
