; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_free_rx_descriptors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_free_rx_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { i32, %struct.iser_rx_desc*, %struct.ib_conn }
%struct.iser_rx_desc = type { i32 }
%struct.ib_conn = type { %struct.iser_device* }
%struct.iser_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ib_conn*)* }

@ISER_RX_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_free_rx_descriptors(%struct.iser_conn* %0) #0 {
  %2 = alloca %struct.iser_conn*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iser_rx_desc*, align 8
  %5 = alloca %struct.ib_conn*, align 8
  %6 = alloca %struct.iser_device*, align 8
  store %struct.iser_conn* %0, %struct.iser_conn** %2, align 8
  %7 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %8 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %7, i32 0, i32 2
  store %struct.ib_conn* %8, %struct.ib_conn** %5, align 8
  %9 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %10 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %9, i32 0, i32 0
  %11 = load %struct.iser_device*, %struct.iser_device** %10, align 8
  store %struct.iser_device* %11, %struct.iser_device** %6, align 8
  %12 = load %struct.iser_device*, %struct.iser_device** %6, align 8
  %13 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.ib_conn*)*, i32 (%struct.ib_conn*)** %15, align 8
  %17 = icmp ne i32 (%struct.ib_conn*)* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.iser_device*, %struct.iser_device** %6, align 8
  %20 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.ib_conn*)*, i32 (%struct.ib_conn*)** %22, align 8
  %24 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %25 = call i32 %23(%struct.ib_conn* %24)
  br label %26

26:                                               ; preds = %18, %1
  %27 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %28 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %27, i32 0, i32 1
  %29 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %28, align 8
  store %struct.iser_rx_desc* %29, %struct.iser_rx_desc** %4, align 8
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %46, %26
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %33 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load %struct.iser_device*, %struct.iser_device** %6, align 8
  %38 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %4, align 8
  %41 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %44 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %45 = call i32 @ib_dma_unmap_single(i32 %39, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  %49 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %4, align 8
  %50 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %49, i32 1
  store %struct.iser_rx_desc* %50, %struct.iser_rx_desc** %4, align 8
  br label %30

51:                                               ; preds = %30
  %52 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %53 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %52, i32 0, i32 1
  %54 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %53, align 8
  %55 = call i32 @kfree(%struct.iser_rx_desc* %54)
  %56 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %57 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %56, i32 0, i32 1
  store %struct.iser_rx_desc* null, %struct.iser_rx_desc** %57, align 8
  %58 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %59 = call i32 @iser_free_login_buf(%struct.iser_conn* %58)
  ret void
}

declare dso_local i32 @ib_dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.iser_rx_desc*) #1

declare dso_local i32 @iser_free_login_buf(%struct.iser_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
