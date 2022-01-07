; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_rdma_read_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_rdma_read_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.isert_conn* }
%struct.isert_conn = type { i32, %struct.isert_device* }
%struct.isert_device = type { i32 }
%struct.iser_tx_desc = type { i32 }
%struct.isert_cmd = type { %struct.TYPE_6__, %struct.iscsi_cmd* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.iscsi_cmd = type { i32, i32, i32, i64, %struct.se_cmd }
%struct.se_cmd = type { i32 }

@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"rdma read\00", align 1
@IB_WC_WR_FLUSH_ERR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"Cmd %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Cmd: %p RDMA_READ comp calling execute_cmd\0A\00", align 1
@ICF_GOT_LAST_DATAOUT = common dso_local global i32 0, align 4
@ISTATE_RECEIVED_LAST_DATAOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_cq*, %struct.ib_wc*)* @isert_rdma_read_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isert_rdma_read_done(%struct.ib_cq* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca %struct.ib_wc*, align 8
  %5 = alloca %struct.isert_conn*, align 8
  %6 = alloca %struct.isert_device*, align 8
  %7 = alloca %struct.iser_tx_desc*, align 8
  %8 = alloca %struct.isert_cmd*, align 8
  %9 = alloca %struct.iscsi_cmd*, align 8
  %10 = alloca %struct.se_cmd*, align 8
  %11 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %4, align 8
  %12 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %13 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.isert_conn*, %struct.isert_conn** %15, align 8
  store %struct.isert_conn* %16, %struct.isert_conn** %5, align 8
  %17 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %18 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %17, i32 0, i32 1
  %19 = load %struct.isert_device*, %struct.isert_device** %18, align 8
  store %struct.isert_device* %19, %struct.isert_device** %6, align 8
  %20 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %21 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.iser_tx_desc* @cqe_to_tx_desc(i32 %22)
  store %struct.iser_tx_desc* %23, %struct.iser_tx_desc** %7, align 8
  %24 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %7, align 8
  %25 = call %struct.isert_cmd* @tx_desc_to_cmd(%struct.iser_tx_desc* %24)
  store %struct.isert_cmd* %25, %struct.isert_cmd** %8, align 8
  %26 = load %struct.isert_cmd*, %struct.isert_cmd** %8, align 8
  %27 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %26, i32 0, i32 1
  %28 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %27, align 8
  store %struct.iscsi_cmd* %28, %struct.iscsi_cmd** %9, align 8
  %29 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %30 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %29, i32 0, i32 4
  store %struct.se_cmd* %30, %struct.se_cmd** %10, align 8
  store i32 0, i32* %11, align 4
  %31 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %32 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IB_WC_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %2
  %40 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %41 = call i32 @isert_print_wc(%struct.ib_wc* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %43 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IB_WC_WR_FLUSH_ERR, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %49 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @iscsit_cause_connection_reinstatement(i32 %50, i32 0)
  br label %52

52:                                               ; preds = %47, %39
  %53 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %7, align 8
  %54 = load %struct.isert_cmd*, %struct.isert_cmd** %8, align 8
  %55 = load %struct.isert_device*, %struct.isert_device** %6, align 8
  %56 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @isert_completion_put(%struct.iser_tx_desc* %53, %struct.isert_cmd* %54, i32 %57, i32 1)
  br label %110

59:                                               ; preds = %2
  %60 = load %struct.isert_cmd*, %struct.isert_cmd** %8, align 8
  %61 = call i32 @isert_dbg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.isert_cmd* %60)
  %62 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %63 = call i32 @iscsit_stop_dataout_timer(%struct.iscsi_cmd* %62)
  %64 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %65 = load %struct.se_cmd*, %struct.se_cmd** %10, align 8
  %66 = call i64 @isert_prot_cmd(%struct.isert_conn* %64, %struct.se_cmd* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %59
  %69 = load %struct.se_cmd*, %struct.se_cmd** %10, align 8
  %70 = load %struct.isert_cmd*, %struct.isert_cmd** %8, align 8
  %71 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @isert_check_pi_status(%struct.se_cmd* %69, i32 %75)
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %68, %59
  %78 = load %struct.isert_cmd*, %struct.isert_cmd** %8, align 8
  %79 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %80 = call i32 @isert_rdma_rw_ctx_destroy(%struct.isert_cmd* %78, %struct.isert_conn* %79)
  %81 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %82 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load %struct.isert_cmd*, %struct.isert_cmd** %8, align 8
  %84 = call i32 @isert_dbg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), %struct.isert_cmd* %83)
  %85 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %86 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %85, i32 0, i32 0
  %87 = call i32 @spin_lock_bh(i32* %86)
  %88 = load i32, i32* @ICF_GOT_LAST_DATAOUT, align 4
  %89 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %90 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load i32, i32* @ISTATE_RECEIVED_LAST_DATAOUT, align 4
  %94 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %95 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %97 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %96, i32 0, i32 0
  %98 = call i32 @spin_unlock_bh(i32* %97)
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %77
  %102 = load %struct.se_cmd*, %struct.se_cmd** %10, align 8
  %103 = load %struct.se_cmd*, %struct.se_cmd** %10, align 8
  %104 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @transport_generic_request_failure(%struct.se_cmd* %102, i32 %105)
  br label %110

107:                                              ; preds = %77
  %108 = load %struct.se_cmd*, %struct.se_cmd** %10, align 8
  %109 = call i32 @target_execute_cmd(%struct.se_cmd* %108)
  br label %110

110:                                              ; preds = %52, %107, %101
  ret void
}

declare dso_local %struct.iser_tx_desc* @cqe_to_tx_desc(i32) #1

declare dso_local %struct.isert_cmd* @tx_desc_to_cmd(%struct.iser_tx_desc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @isert_print_wc(%struct.ib_wc*, i8*) #1

declare dso_local i32 @iscsit_cause_connection_reinstatement(i32, i32) #1

declare dso_local i32 @isert_completion_put(%struct.iser_tx_desc*, %struct.isert_cmd*, i32, i32) #1

declare dso_local i32 @isert_dbg(i8*, %struct.isert_cmd*) #1

declare dso_local i32 @iscsit_stop_dataout_timer(%struct.iscsi_cmd*) #1

declare dso_local i64 @isert_prot_cmd(%struct.isert_conn*, %struct.se_cmd*) #1

declare dso_local i32 @isert_check_pi_status(%struct.se_cmd*, i32) #1

declare dso_local i32 @isert_rdma_rw_ctx_destroy(%struct.isert_cmd*, %struct.isert_conn*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @transport_generic_request_failure(%struct.se_cmd*, i32) #1

declare dso_local i32 @target_execute_cmd(%struct.se_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
