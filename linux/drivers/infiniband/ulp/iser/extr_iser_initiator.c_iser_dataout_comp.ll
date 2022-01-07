; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_dataout_comp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_dataout_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.ib_conn* }
%struct.ib_conn = type { %struct.iser_device* }
%struct.iser_device = type { i32 }
%struct.iser_tx_desc = type { i32 }

@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"dataout\00", align 1
@ISER_HEADERS_LEN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ig = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_dataout_comp(%struct.ib_cq* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca %struct.ib_wc*, align 8
  %5 = alloca %struct.iser_tx_desc*, align 8
  %6 = alloca %struct.ib_conn*, align 8
  %7 = alloca %struct.iser_device*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %4, align 8
  %8 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %9 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.iser_tx_desc* @iser_tx(i32 %10)
  store %struct.iser_tx_desc* %11, %struct.iser_tx_desc** %5, align 8
  %12 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %13 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.ib_conn*, %struct.ib_conn** %15, align 8
  store %struct.ib_conn* %16, %struct.ib_conn** %6, align 8
  %17 = load %struct.ib_conn*, %struct.ib_conn** %6, align 8
  %18 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %17, i32 0, i32 0
  %19 = load %struct.iser_device*, %struct.iser_device** %18, align 8
  store %struct.iser_device* %19, %struct.iser_device** %7, align 8
  %20 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %21 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IB_WC_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %30 = call i32 @iser_err_comp(%struct.ib_wc* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %2
  %32 = load %struct.iser_device*, %struct.iser_device** %7, align 8
  %33 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %36 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ISER_HEADERS_LEN, align 4
  %39 = load i32, i32* @DMA_TO_DEVICE, align 4
  %40 = call i32 @ib_dma_unmap_single(i32 %34, i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ig, i32 0, i32 0), align 4
  %42 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %43 = call i32 @kmem_cache_free(i32 %41, %struct.iser_tx_desc* %42)
  ret void
}

declare dso_local %struct.iser_tx_desc* @iser_tx(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iser_err_comp(%struct.ib_wc*, i8*) #1

declare dso_local i32 @ib_dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.iser_tx_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
