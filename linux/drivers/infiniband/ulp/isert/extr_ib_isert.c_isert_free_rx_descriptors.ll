; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_free_rx_descriptors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_free_rx_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_conn = type { %struct.iser_rx_desc*, %struct.TYPE_2__* }
%struct.iser_rx_desc = type { i32 }
%struct.TYPE_2__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }

@ISERT_QP_MAX_RECV_DTOS = common dso_local global i32 0, align 4
@ISER_RX_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isert_conn*)* @isert_free_rx_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isert_free_rx_descriptors(%struct.isert_conn* %0) #0 {
  %2 = alloca %struct.isert_conn*, align 8
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct.iser_rx_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.isert_conn* %0, %struct.isert_conn** %2, align 8
  %6 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %7 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  store %struct.ib_device* %10, %struct.ib_device** %3, align 8
  %11 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %12 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %11, i32 0, i32 0
  %13 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %12, align 8
  %14 = icmp ne %struct.iser_rx_desc* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %44

16:                                               ; preds = %1
  %17 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %18 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %17, i32 0, i32 0
  %19 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %18, align 8
  store %struct.iser_rx_desc* %19, %struct.iser_rx_desc** %4, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %32, %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ISERT_QP_MAX_RECV_DTOS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %26 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %4, align 8
  %27 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %30 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %31 = call i32 @ib_dma_unmap_single(%struct.ib_device* %25, i32 %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  %35 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %4, align 8
  %36 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %35, i32 1
  store %struct.iser_rx_desc* %36, %struct.iser_rx_desc** %4, align 8
  br label %20

37:                                               ; preds = %20
  %38 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %39 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %38, i32 0, i32 0
  %40 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %39, align 8
  %41 = call i32 @kfree(%struct.iser_rx_desc* %40)
  %42 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %43 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %42, i32 0, i32 0
  store %struct.iser_rx_desc* null, %struct.iser_rx_desc** %43, align 8
  br label %44

44:                                               ; preds = %37, %15
  ret void
}

declare dso_local i32 @ib_dma_unmap_single(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.iser_rx_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
