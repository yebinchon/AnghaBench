; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_send_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_send_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.isert_conn* }
%struct.isert_conn = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.iser_tx_desc = type { i32 }
%struct.isert_cmd = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"send\00", align 1
@IB_WC_WR_FLUSH_ERR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"Cmd %p\0A\00", align 1
@isert_do_control_comp = common dso_local global i32 0, align 4
@isert_comp_wq = common dso_local global i32 0, align 4
@ISTATE_SENT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_cq*, %struct.ib_wc*)* @isert_send_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isert_send_done(%struct.ib_cq* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca %struct.ib_wc*, align 8
  %5 = alloca %struct.isert_conn*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %struct.iser_tx_desc*, align 8
  %8 = alloca %struct.isert_cmd*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %4, align 8
  %9 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %10 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.isert_conn*, %struct.isert_conn** %12, align 8
  store %struct.isert_conn* %13, %struct.isert_conn** %5, align 8
  %14 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %15 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.ib_device*, %struct.ib_device** %17, align 8
  store %struct.ib_device* %18, %struct.ib_device** %6, align 8
  %19 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %20 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.iser_tx_desc* @cqe_to_tx_desc(i32 %21)
  store %struct.iser_tx_desc* %22, %struct.iser_tx_desc** %7, align 8
  %23 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %7, align 8
  %24 = call %struct.isert_cmd* @tx_desc_to_cmd(%struct.iser_tx_desc* %23)
  store %struct.isert_cmd* %24, %struct.isert_cmd** %8, align 8
  %25 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %26 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IB_WC_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %2
  %34 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %35 = call i32 @isert_print_wc(%struct.ib_wc* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %37 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IB_WC_WR_FLUSH_ERR, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %43 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @iscsit_cause_connection_reinstatement(i32 %44, i32 0)
  br label %46

46:                                               ; preds = %41, %33
  %47 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %7, align 8
  %48 = load %struct.isert_cmd*, %struct.isert_cmd** %8, align 8
  %49 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %50 = call i32 @isert_completion_put(%struct.iser_tx_desc* %47, %struct.isert_cmd* %48, %struct.ib_device* %49, i32 1)
  br label %81

51:                                               ; preds = %2
  %52 = load %struct.isert_cmd*, %struct.isert_cmd** %8, align 8
  %53 = call i32 @isert_dbg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.isert_cmd* %52)
  %54 = load %struct.isert_cmd*, %struct.isert_cmd** %8, align 8
  %55 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %71 [
    i32 129, label %59
    i32 131, label %59
    i32 130, label %59
    i32 128, label %59
  ]

59:                                               ; preds = %51, %51, %51, %51
  %60 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %7, align 8
  %61 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %62 = call i32 @isert_unmap_tx_desc(%struct.iser_tx_desc* %60, %struct.ib_device* %61)
  %63 = load %struct.isert_cmd*, %struct.isert_cmd** %8, align 8
  %64 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %63, i32 0, i32 1
  %65 = load i32, i32* @isert_do_control_comp, align 4
  %66 = call i32 @INIT_WORK(i32* %64, i32 %65)
  %67 = load i32, i32* @isert_comp_wq, align 4
  %68 = load %struct.isert_cmd*, %struct.isert_cmd** %8, align 8
  %69 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %68, i32 0, i32 1
  %70 = call i32 @queue_work(i32 %67, i32* %69)
  br label %81

71:                                               ; preds = %51
  %72 = load i32, i32* @ISTATE_SENT_STATUS, align 4
  %73 = load %struct.isert_cmd*, %struct.isert_cmd** %8, align 8
  %74 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 4
  %77 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %7, align 8
  %78 = load %struct.isert_cmd*, %struct.isert_cmd** %8, align 8
  %79 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %80 = call i32 @isert_completion_put(%struct.iser_tx_desc* %77, %struct.isert_cmd* %78, %struct.ib_device* %79, i32 0)
  br label %81

81:                                               ; preds = %46, %59, %71
  ret void
}

declare dso_local %struct.iser_tx_desc* @cqe_to_tx_desc(i32) #1

declare dso_local %struct.isert_cmd* @tx_desc_to_cmd(%struct.iser_tx_desc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @isert_print_wc(%struct.ib_wc*, i8*) #1

declare dso_local i32 @iscsit_cause_connection_reinstatement(i32, i32) #1

declare dso_local i32 @isert_completion_put(%struct.iser_tx_desc*, %struct.isert_cmd*, %struct.ib_device*, i32) #1

declare dso_local i32 @isert_dbg(i8*, %struct.isert_cmd*) #1

declare dso_local i32 @isert_unmap_tx_desc(%struct.iser_tx_desc*, %struct.ib_device*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
