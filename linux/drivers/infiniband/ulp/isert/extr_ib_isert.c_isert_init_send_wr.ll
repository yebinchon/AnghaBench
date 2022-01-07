; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_init_send_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_init_send_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_conn = type { i64 }
%struct.isert_cmd = type { %struct.iser_tx_desc, i64 }
%struct.iser_tx_desc = type { i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ib_send_wr = type { i32, i32, i32*, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }

@isert_send_done = common dso_local global i32 0, align 4
@IB_WR_SEND_WITH_INV = common dso_local global i32 0, align 4
@IB_WR_SEND = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isert_conn*, %struct.isert_cmd*, %struct.ib_send_wr*)* @isert_init_send_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isert_init_send_wr(%struct.isert_conn* %0, %struct.isert_cmd* %1, %struct.ib_send_wr* %2) #0 {
  %4 = alloca %struct.isert_conn*, align 8
  %5 = alloca %struct.isert_cmd*, align 8
  %6 = alloca %struct.ib_send_wr*, align 8
  %7 = alloca %struct.iser_tx_desc*, align 8
  store %struct.isert_conn* %0, %struct.isert_conn** %4, align 8
  store %struct.isert_cmd* %1, %struct.isert_cmd** %5, align 8
  store %struct.ib_send_wr* %2, %struct.ib_send_wr** %6, align 8
  %8 = load %struct.isert_cmd*, %struct.isert_cmd** %5, align 8
  %9 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %8, i32 0, i32 0
  store %struct.iser_tx_desc* %9, %struct.iser_tx_desc** %7, align 8
  %10 = load i32, i32* @isert_send_done, align 4
  %11 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %7, align 8
  %12 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 8
  %14 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %7, align 8
  %15 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %14, i32 0, i32 2
  %16 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %17 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %16, i32 0, i32 5
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %17, align 8
  %18 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %19 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %3
  %23 = load %struct.isert_cmd*, %struct.isert_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load i32, i32* @IB_WR_SEND_WITH_INV, align 4
  %29 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %30 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.isert_cmd*, %struct.isert_cmd** %5, align 8
  %32 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %35 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i64 %33, i64* %36, align 8
  br label %41

37:                                               ; preds = %22, %3
  %38 = load i32, i32* @IB_WR_SEND, align 4
  %39 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %40 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %37, %27
  %42 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %7, align 8
  %43 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %47 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %46, i32 0, i32 2
  store i32* %45, i32** %47, align 8
  %48 = load %struct.isert_cmd*, %struct.isert_cmd** %5, align 8
  %49 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %53 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %55 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %56 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
