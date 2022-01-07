; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_rdma_write_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_rdma_write_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.isert_conn* }
%struct.isert_conn = type { i32, %struct.isert_device* }
%struct.isert_device = type { i32 }
%struct.iser_tx_desc = type { i32 }
%struct.isert_cmd = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.se_cmd }
%struct.se_cmd = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"rdma write\00", align 1
@IB_WC_WR_FLUSH_ERR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"Cmd %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"isert_put_response() ret: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_cq*, %struct.ib_wc*)* @isert_rdma_write_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isert_rdma_write_done(%struct.ib_cq* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca %struct.ib_wc*, align 8
  %5 = alloca %struct.isert_conn*, align 8
  %6 = alloca %struct.isert_device*, align 8
  %7 = alloca %struct.iser_tx_desc*, align 8
  %8 = alloca %struct.isert_cmd*, align 8
  %9 = alloca %struct.se_cmd*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %4, align 8
  %11 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %12 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.isert_conn*, %struct.isert_conn** %14, align 8
  store %struct.isert_conn* %15, %struct.isert_conn** %5, align 8
  %16 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %17 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %16, i32 0, i32 1
  %18 = load %struct.isert_device*, %struct.isert_device** %17, align 8
  store %struct.isert_device* %18, %struct.isert_device** %6, align 8
  %19 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %20 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.iser_tx_desc* @cqe_to_tx_desc(i32 %21)
  store %struct.iser_tx_desc* %22, %struct.iser_tx_desc** %7, align 8
  %23 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %7, align 8
  %24 = call %struct.isert_cmd* @tx_desc_to_cmd(%struct.iser_tx_desc* %23)
  store %struct.isert_cmd* %24, %struct.isert_cmd** %8, align 8
  %25 = load %struct.isert_cmd*, %struct.isert_cmd** %8, align 8
  %26 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store %struct.se_cmd* %28, %struct.se_cmd** %9, align 8
  store i32 0, i32* %10, align 4
  %29 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %30 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IB_WC_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %2
  %38 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %39 = call i32 @isert_print_wc(%struct.ib_wc* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %41 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IB_WC_WR_FLUSH_ERR, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %47 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @iscsit_cause_connection_reinstatement(i32 %48, i32 0)
  br label %50

50:                                               ; preds = %45, %37
  %51 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %7, align 8
  %52 = load %struct.isert_cmd*, %struct.isert_cmd** %8, align 8
  %53 = load %struct.isert_device*, %struct.isert_device** %6, align 8
  %54 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @isert_completion_put(%struct.iser_tx_desc* %51, %struct.isert_cmd* %52, i32 %55, i32 1)
  br label %96

57:                                               ; preds = %2
  %58 = load %struct.isert_cmd*, %struct.isert_cmd** %8, align 8
  %59 = call i32 @isert_dbg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.isert_cmd* %58)
  %60 = load %struct.se_cmd*, %struct.se_cmd** %9, align 8
  %61 = load %struct.isert_cmd*, %struct.isert_cmd** %8, align 8
  %62 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @isert_check_pi_status(%struct.se_cmd* %60, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load %struct.isert_cmd*, %struct.isert_cmd** %8, align 8
  %69 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %70 = call i32 @isert_rdma_rw_ctx_destroy(%struct.isert_cmd* %68, %struct.isert_conn* %69)
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %57
  %74 = load %struct.se_cmd*, %struct.se_cmd** %9, align 8
  %75 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %74, i32 0, i32 1
  %76 = call i32 @kref_get(i32* %75)
  %77 = load %struct.se_cmd*, %struct.se_cmd** %9, align 8
  %78 = load %struct.se_cmd*, %struct.se_cmd** %9, align 8
  %79 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @transport_generic_request_failure(%struct.se_cmd* %77, i32 %80)
  br label %96

82:                                               ; preds = %57
  %83 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %84 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.isert_cmd*, %struct.isert_cmd** %8, align 8
  %87 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = call i32 @isert_put_response(i32 %85, %struct.TYPE_8__* %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %82
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %92, %82
  br label %96

96:                                               ; preds = %50, %95, %73
  ret void
}

declare dso_local %struct.iser_tx_desc* @cqe_to_tx_desc(i32) #1

declare dso_local %struct.isert_cmd* @tx_desc_to_cmd(%struct.iser_tx_desc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @isert_print_wc(%struct.ib_wc*, i8*) #1

declare dso_local i32 @iscsit_cause_connection_reinstatement(i32, i32) #1

declare dso_local i32 @isert_completion_put(%struct.iser_tx_desc*, %struct.isert_cmd*, i32, i32) #1

declare dso_local i32 @isert_dbg(i8*, %struct.isert_cmd*) #1

declare dso_local i32 @isert_check_pi_status(%struct.se_cmd*, i32) #1

declare dso_local i32 @isert_rdma_rw_ctx_destroy(%struct.isert_cmd*, %struct.isert_conn*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @transport_generic_request_failure(%struct.se_cmd*, i32) #1

declare dso_local i32 @isert_put_response(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
