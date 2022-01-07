; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_init_tx_hdrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_init_tx_hdrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_conn = type { %struct.isert_device* }
%struct.isert_device = type { %struct.TYPE_3__*, %struct.ib_device* }
%struct.TYPE_3__ = type { i32 }
%struct.ib_device = type { i32 }
%struct.iser_tx_desc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@ISER_HEADERS_LEN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ib_dma_mapping_error() failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Setup tx_sg[0].addr: 0x%llx length: %u lkey: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isert_conn*, %struct.iser_tx_desc*)* @isert_init_tx_hdrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_init_tx_hdrs(%struct.isert_conn* %0, %struct.iser_tx_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isert_conn*, align 8
  %5 = alloca %struct.iser_tx_desc*, align 8
  %6 = alloca %struct.isert_device*, align 8
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  store %struct.isert_conn* %0, %struct.isert_conn** %4, align 8
  store %struct.iser_tx_desc* %1, %struct.iser_tx_desc** %5, align 8
  %9 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %10 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %9, i32 0, i32 0
  %11 = load %struct.isert_device*, %struct.isert_device** %10, align 8
  store %struct.isert_device* %11, %struct.isert_device** %6, align 8
  %12 = load %struct.isert_device*, %struct.isert_device** %6, align 8
  %13 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %12, i32 0, i32 1
  %14 = load %struct.ib_device*, %struct.ib_device** %13, align 8
  store %struct.ib_device* %14, %struct.ib_device** %7, align 8
  %15 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %16 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %17 = bitcast %struct.iser_tx_desc* %16 to i8*
  %18 = load i32, i32* @ISER_HEADERS_LEN, align 4
  %19 = load i32, i32* @DMA_TO_DEVICE, align 4
  %20 = call i32 @ib_dma_map_single(%struct.ib_device* %15, i8* %17, i32 %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @ib_dma_mapping_error(%struct.ib_device* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = call i32 @isert_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %76

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %32 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %34 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %37 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i32 %35, i32* %40, align 4
  %41 = load i32, i32* @ISER_HEADERS_LEN, align 4
  %42 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %43 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %41, i32* %46, align 4
  %47 = load %struct.isert_device*, %struct.isert_device** %6, align 8
  %48 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %53 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %51, i32* %56, align 4
  %57 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %58 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %64 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %70 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @isert_dbg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %68, i32 %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %29, %25
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @ib_dma_map_single(%struct.ib_device*, i8*, i32, i32) #1

declare dso_local i64 @ib_dma_mapping_error(%struct.ib_device*, i32) #1

declare dso_local i32 @isert_err(i8*) #1

declare dso_local i32 @isert_dbg(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
