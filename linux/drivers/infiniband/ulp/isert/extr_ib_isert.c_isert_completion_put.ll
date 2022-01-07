; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_completion_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_completion_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_tx_desc = type { i32 }
%struct.isert_cmd = type { i64, i32 }
%struct.ib_device = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"unmap single for isert_cmd->pdu_buf_dma\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iser_tx_desc*, %struct.isert_cmd*, %struct.ib_device*, i32)* @isert_completion_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isert_completion_put(%struct.iser_tx_desc* %0, %struct.isert_cmd* %1, %struct.ib_device* %2, i32 %3) #0 {
  %5 = alloca %struct.iser_tx_desc*, align 8
  %6 = alloca %struct.isert_cmd*, align 8
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  store %struct.iser_tx_desc* %0, %struct.iser_tx_desc** %5, align 8
  store %struct.isert_cmd* %1, %struct.isert_cmd** %6, align 8
  store %struct.ib_device* %2, %struct.ib_device** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %10 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %4
  %14 = call i32 @isert_dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %16 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %17 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %20 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DMA_TO_DEVICE, align 4
  %23 = call i32 @ib_dma_unmap_single(%struct.ib_device* %15, i64 %18, i32 %21, i32 %22)
  %24 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %25 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %13, %4
  %27 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %28 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %29 = call i32 @isert_unmap_tx_desc(%struct.iser_tx_desc* %27, %struct.ib_device* %28)
  %30 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @isert_put_cmd(%struct.isert_cmd* %30, i32 %31)
  ret void
}

declare dso_local i32 @isert_dbg(i8*) #1

declare dso_local i32 @ib_dma_unmap_single(%struct.ib_device*, i64, i32, i32) #1

declare dso_local i32 @isert_unmap_tx_desc(%struct.iser_tx_desc*, %struct.ib_device*) #1

declare dso_local i32 @isert_put_cmd(%struct.isert_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
