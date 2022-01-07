; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_login_post_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_login_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_conn = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.iser_tx_desc = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ib_send_wr = type { i32, i32, i32, i32, %struct.TYPE_3__*, i32* }

@ISER_HEADERS_LEN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@isert_login_send_done = common dso_local global i32 0, align 4
@IB_WR_SEND = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ib_post_send() failed, ret: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isert_conn*, %struct.iser_tx_desc*)* @isert_login_post_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_login_post_send(%struct.isert_conn* %0, %struct.iser_tx_desc* %1) #0 {
  %3 = alloca %struct.isert_conn*, align 8
  %4 = alloca %struct.iser_tx_desc*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_send_wr, align 8
  %7 = alloca i32, align 4
  store %struct.isert_conn* %0, %struct.isert_conn** %3, align 8
  store %struct.iser_tx_desc* %1, %struct.iser_tx_desc** %4, align 8
  %8 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %9 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  store %struct.ib_device* %12, %struct.ib_device** %5, align 8
  %13 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %14 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %15 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ISER_HEADERS_LEN, align 4
  %18 = load i32, i32* @DMA_TO_DEVICE, align 4
  %19 = call i32 @ib_dma_sync_single_for_device(%struct.ib_device* %13, i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* @isert_login_send_done, align 4
  %21 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %22 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %6, i32 0, i32 5
  store i32* null, i32** %24, align 8
  %25 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %26 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %6, i32 0, i32 4
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %27, align 8
  %28 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %29 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %6, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %33 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %6, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* @IB_WR_SEND, align 4
  %37 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %6, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %39 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %6, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %41 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ib_post_send(i32 %42, %struct.ib_send_wr* %6, i32* null)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %2
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @isert_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %46, %2
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @ib_dma_sync_single_for_device(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i32 @ib_post_send(i32, %struct.ib_send_wr*, i32*) #1

declare dso_local i32 @isert_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
