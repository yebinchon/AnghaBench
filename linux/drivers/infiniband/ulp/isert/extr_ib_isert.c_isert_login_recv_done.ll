; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_login_recv_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_login_recv_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.isert_conn* }
%struct.isert_conn = type { i32, i32, i32, %struct.TYPE_6__*, i64, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.iscsi_login* }
%struct.iscsi_login = type { i32 }
%struct.TYPE_5__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }

@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"login recv\00", align 1
@ISER_RX_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ISER_HEADERS_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_cq*, %struct.ib_wc*)* @isert_login_recv_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isert_login_recv_done(%struct.ib_cq* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca %struct.ib_wc*, align 8
  %5 = alloca %struct.isert_conn*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %struct.iscsi_login*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %4, align 8
  %8 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %9 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.isert_conn*, %struct.isert_conn** %11, align 8
  store %struct.isert_conn* %12, %struct.isert_conn** %5, align 8
  %13 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %14 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %13, i32 0, i32 5
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.ib_device*, %struct.ib_device** %16, align 8
  store %struct.ib_device* %17, %struct.ib_device** %6, align 8
  %18 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %19 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IB_WC_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %28 = call i32 @isert_print_wc(%struct.ib_wc* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %82

29:                                               ; preds = %2
  %30 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %31 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %32 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %35 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %36 = call i32 @ib_dma_sync_single_for_cpu(%struct.ib_device* %30, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %38 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ISER_HEADERS_LEN, align 8
  %41 = sub nsw i64 %39, %40
  %42 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %43 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %42, i32 0, i32 4
  store i64 %41, i64* %43, align 8
  %44 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %45 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %44, i32 0, i32 3
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = icmp ne %struct.TYPE_6__* %46, null
  br i1 %47, label %48, label %65

48:                                               ; preds = %29
  %49 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %50 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %49, i32 0, i32 3
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.iscsi_login*, %struct.iscsi_login** %52, align 8
  store %struct.iscsi_login* %53, %struct.iscsi_login** %7, align 8
  %54 = load %struct.iscsi_login*, %struct.iscsi_login** %7, align 8
  %55 = icmp ne %struct.iscsi_login* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load %struct.iscsi_login*, %struct.iscsi_login** %7, align 8
  %58 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %63 = call i32 @isert_rx_login_req(%struct.isert_conn* %62)
  br label %64

64:                                               ; preds = %61, %56, %48
  br label %65

65:                                               ; preds = %64, %29
  %66 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %67 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %66, i32 0, i32 1
  %68 = call i32 @mutex_lock(i32* %67)
  %69 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %70 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %69, i32 0, i32 2
  %71 = call i32 @complete(i32* %70)
  %72 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %73 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %72, i32 0, i32 1
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %76 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %77 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %80 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %81 = call i32 @ib_dma_sync_single_for_device(%struct.ib_device* %75, i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %65, %26
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @isert_print_wc(%struct.ib_wc*, i8*) #1

declare dso_local i32 @ib_dma_sync_single_for_cpu(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i32 @isert_rx_login_req(%struct.isert_conn*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ib_dma_sync_single_for_device(%struct.ib_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
