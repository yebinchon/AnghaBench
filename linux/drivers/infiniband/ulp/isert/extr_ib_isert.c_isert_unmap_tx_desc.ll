; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_unmap_tx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_unmap_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_tx_desc = type { i64 }
%struct.ib_device = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"unmap single for tx_desc->dma_addr\0A\00", align 1
@ISER_HEADERS_LEN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iser_tx_desc*, %struct.ib_device*)* @isert_unmap_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isert_unmap_tx_desc(%struct.iser_tx_desc* %0, %struct.ib_device* %1) #0 {
  %3 = alloca %struct.iser_tx_desc*, align 8
  %4 = alloca %struct.ib_device*, align 8
  store %struct.iser_tx_desc* %0, %struct.iser_tx_desc** %3, align 8
  store %struct.ib_device* %1, %struct.ib_device** %4, align 8
  %5 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %3, align 8
  %6 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = call i32 @isert_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %12 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %3, align 8
  %13 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @ISER_HEADERS_LEN, align 4
  %16 = load i32, i32* @DMA_TO_DEVICE, align 4
  %17 = call i32 @ib_dma_unmap_single(%struct.ib_device* %11, i64 %14, i32 %15, i32 %16)
  %18 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %3, align 8
  %19 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %9, %2
  ret void
}

declare dso_local i32 @isert_dbg(i8*) #1

declare dso_local i32 @ib_dma_unmap_single(%struct.ib_device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
