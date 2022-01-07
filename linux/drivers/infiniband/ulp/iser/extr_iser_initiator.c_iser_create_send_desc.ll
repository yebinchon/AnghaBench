; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_create_send_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_create_send_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.iser_device* }
%struct.iser_device = type { i32 }
%struct.iser_tx_desc = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@ISER_HEADERS_LEN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ISER_VER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iser_conn*, %struct.iser_tx_desc*)* @iser_create_send_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iser_create_send_desc(%struct.iser_conn* %0, %struct.iser_tx_desc* %1) #0 {
  %3 = alloca %struct.iser_conn*, align 8
  %4 = alloca %struct.iser_tx_desc*, align 8
  %5 = alloca %struct.iser_device*, align 8
  store %struct.iser_conn* %0, %struct.iser_conn** %3, align 8
  store %struct.iser_tx_desc* %1, %struct.iser_tx_desc** %4, align 8
  %6 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %7 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.iser_device*, %struct.iser_device** %8, align 8
  store %struct.iser_device* %9, %struct.iser_device** %5, align 8
  %10 = load %struct.iser_device*, %struct.iser_device** %5, align 8
  %11 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %14 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ISER_HEADERS_LEN, align 4
  %17 = load i32, i32* @DMA_TO_DEVICE, align 4
  %18 = call i32 @ib_dma_sync_single_for_cpu(i32 %12, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %20 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %19, i32 0, i32 1
  %21 = call i32 @memset(%struct.TYPE_4__* %20, i32 0, i32 4)
  %22 = load i32, i32* @ISER_VER, align 4
  %23 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %24 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %27 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  ret void
}

declare dso_local i32 @ib_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
