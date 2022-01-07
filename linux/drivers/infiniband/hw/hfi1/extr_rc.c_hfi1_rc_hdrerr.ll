; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.c_hfi1_rc_hdrerr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.c_hfi1_rc_hdrerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { i32 }
%struct.hfi1_packet = type { i32 }
%struct.rvt_qp = type { i32, i32, i64 }
%struct.hfi1_ibport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IB_OPCODE_RC_RDMA_READ_RESPONSE_FIRST = common dso_local global i64 0, align 8
@IB_NAK_PSN_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_rc_hdrerr(%struct.hfi1_ctxtdata* %0, %struct.hfi1_packet* %1, %struct.rvt_qp* %2) #0 {
  %4 = alloca %struct.hfi1_ctxtdata*, align 8
  %5 = alloca %struct.hfi1_packet*, align 8
  %6 = alloca %struct.rvt_qp*, align 8
  %7 = alloca %struct.hfi1_ibport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.hfi1_ctxtdata* %0, %struct.hfi1_ctxtdata** %4, align 8
  store %struct.hfi1_packet* %1, %struct.hfi1_packet** %5, align 8
  store %struct.rvt_qp* %2, %struct.rvt_qp** %6, align 8
  %11 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %12 = call %struct.hfi1_ibport* @rcd_to_iport(%struct.hfi1_ctxtdata* %11)
  store %struct.hfi1_ibport* %12, %struct.hfi1_ibport** %7, align 8
  %13 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %7, align 8
  %14 = load %struct.hfi1_packet*, %struct.hfi1_packet** %5, align 8
  %15 = call i64 @hfi1_ruc_check_hdr(%struct.hfi1_ibport* %13, %struct.hfi1_packet* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %61

18:                                               ; preds = %3
  %19 = load %struct.hfi1_packet*, %struct.hfi1_packet** %5, align 8
  %20 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ib_bth_get_psn(i32 %21)
  store i64 %22, i64* %10, align 8
  %23 = load %struct.hfi1_packet*, %struct.hfi1_packet** %5, align 8
  %24 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @ib_bth_get_opcode(i32 %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @IB_OPCODE_RC_RDMA_READ_RESPONSE_FIRST, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %18
  %31 = load i64, i64* %10, align 8
  %32 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %33 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @delta_psn(i64 %31, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %37 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %8, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %7, align 8
  %45 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load i64, i64* @IB_NAK_PSN_ERROR, align 8
  %50 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %51 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  %52 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %53 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %56 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %58 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %59 = call i32 @rc_defered_ack(%struct.hfi1_ctxtdata* %57, %struct.rvt_qp* %58)
  br label %60

60:                                               ; preds = %43, %40, %30
  br label %61

61:                                               ; preds = %17, %60, %18
  ret void
}

declare dso_local %struct.hfi1_ibport* @rcd_to_iport(%struct.hfi1_ctxtdata*) #1

declare dso_local i64 @hfi1_ruc_check_hdr(%struct.hfi1_ibport*, %struct.hfi1_packet*) #1

declare dso_local i64 @ib_bth_get_psn(i32) #1

declare dso_local i64 @ib_bth_get_opcode(i32) #1

declare dso_local i32 @delta_psn(i64, i32) #1

declare dso_local i32 @rc_defered_ack(%struct.hfi1_ctxtdata*, %struct.rvt_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
