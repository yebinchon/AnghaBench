; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_free_login_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_free_login_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_conn = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }

@ISER_RX_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isert_conn*)* @isert_free_login_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isert_free_login_buf(%struct.isert_conn* %0) #0 {
  %2 = alloca %struct.isert_conn*, align 8
  %3 = alloca %struct.ib_device*, align 8
  store %struct.isert_conn* %0, %struct.isert_conn** %2, align 8
  %4 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %5 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %4, i32 0, i32 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  store %struct.ib_device* %8, %struct.ib_device** %3, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %10 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %11 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %14 = load i32, i32* @DMA_TO_DEVICE, align 4
  %15 = call i32 @ib_dma_unmap_single(%struct.ib_device* %9, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %17 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @kfree(i32 %18)
  %20 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %21 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %22 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %25 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %26 = call i32 @ib_dma_unmap_single(%struct.ib_device* %20, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %28 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @kfree(i32 %29)
  ret void
}

declare dso_local i32 @ib_dma_unmap_single(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
