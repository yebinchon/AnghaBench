; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_login_send_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_login_send_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.isert_conn* }
%struct.isert_conn = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.iser_tx_desc = type { i32 }

@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"login send\00", align 1
@IB_WC_WR_FLUSH_ERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_cq*, %struct.ib_wc*)* @isert_login_send_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isert_login_send_done(%struct.ib_cq* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca %struct.ib_wc*, align 8
  %5 = alloca %struct.isert_conn*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %struct.iser_tx_desc*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %4, align 8
  %8 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %9 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.isert_conn*, %struct.isert_conn** %11, align 8
  store %struct.isert_conn* %12, %struct.isert_conn** %5, align 8
  %13 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %14 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.ib_device*, %struct.ib_device** %16, align 8
  store %struct.ib_device* %17, %struct.ib_device** %6, align 8
  %18 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %19 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.iser_tx_desc* @cqe_to_tx_desc(i32 %20)
  store %struct.iser_tx_desc* %21, %struct.iser_tx_desc** %7, align 8
  %22 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %23 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IB_WC_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %2
  %31 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %32 = call i32 @isert_print_wc(%struct.ib_wc* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %34 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IB_WC_WR_FLUSH_ERR, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %40 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @iscsit_cause_connection_reinstatement(i32 %41, i32 0)
  br label %43

43:                                               ; preds = %38, %30
  br label %44

44:                                               ; preds = %43, %2
  %45 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %7, align 8
  %46 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %47 = call i32 @isert_unmap_tx_desc(%struct.iser_tx_desc* %45, %struct.ib_device* %46)
  ret void
}

declare dso_local %struct.iser_tx_desc* @cqe_to_tx_desc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @isert_print_wc(%struct.ib_wc*, i8*) #1

declare dso_local i32 @iscsit_cause_connection_reinstatement(i32, i32) #1

declare dso_local i32 @isert_unmap_tx_desc(%struct.iser_tx_desc*, %struct.ib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
