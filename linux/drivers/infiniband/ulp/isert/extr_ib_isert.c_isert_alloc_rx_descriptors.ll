; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_alloc_rx_descriptors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_alloc_rx_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_conn = type { %struct.iser_rx_desc*, %struct.isert_device* }
%struct.iser_rx_desc = type { i32, %struct.TYPE_4__, %struct.ib_sge }
%struct.TYPE_4__ = type { i32 }
%struct.ib_sge = type { i32, i32, i32 }
%struct.isert_device = type { %struct.TYPE_3__*, %struct.ib_device* }
%struct.TYPE_3__ = type { i32 }
%struct.ib_device = type { i32 }

@ISERT_QP_MAX_RECV_DTOS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ISER_RX_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@isert_recv_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"conn %p failed to allocate rx descriptors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isert_conn*)* @isert_alloc_rx_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_alloc_rx_descriptors(%struct.isert_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isert_conn*, align 8
  %4 = alloca %struct.isert_device*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.iser_rx_desc*, align 8
  %7 = alloca %struct.ib_sge*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.isert_conn* %0, %struct.isert_conn** %3, align 8
  %11 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %12 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %11, i32 0, i32 1
  %13 = load %struct.isert_device*, %struct.isert_device** %12, align 8
  store %struct.isert_device* %13, %struct.isert_device** %4, align 8
  %14 = load %struct.isert_device*, %struct.isert_device** %4, align 8
  %15 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %14, i32 0, i32 1
  %16 = load %struct.ib_device*, %struct.ib_device** %15, align 8
  store %struct.ib_device* %16, %struct.ib_device** %5, align 8
  %17 = load i32, i32* @ISERT_QP_MAX_RECV_DTOS, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.iser_rx_desc* @kcalloc(i32 %17, i32 20, i32 %18)
  %20 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %21 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %20, i32 0, i32 0
  store %struct.iser_rx_desc* %19, %struct.iser_rx_desc** %21, align 8
  %22 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %23 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %22, i32 0, i32 0
  %24 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %23, align 8
  %25 = icmp ne %struct.iser_rx_desc* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %112

29:                                               ; preds = %1
  %30 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %31 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %30, i32 0, i32 0
  %32 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %31, align 8
  store %struct.iser_rx_desc* %32, %struct.iser_rx_desc** %6, align 8
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %74, %29
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @ISERT_QP_MAX_RECV_DTOS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %79

37:                                               ; preds = %33
  %38 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %39 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %6, align 8
  %40 = bitcast %struct.iser_rx_desc* %39 to i8*
  %41 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %42 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %43 = call i32 @ib_dma_map_single(%struct.ib_device* %38, i8* %40, i32 %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @ib_dma_mapping_error(%struct.ib_device* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %80

49:                                               ; preds = %37
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %6, align 8
  %52 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %6, align 8
  %54 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %53, i32 0, i32 2
  store %struct.ib_sge* %54, %struct.ib_sge** %7, align 8
  %55 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %6, align 8
  %56 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %59 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %61 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %62 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.isert_device*, %struct.isert_device** %4, align 8
  %64 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %69 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @isert_recv_done, align 4
  %71 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %6, align 8
  %72 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 4
  br label %74

74:                                               ; preds = %49
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  %77 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %6, align 8
  %78 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %77, i32 1
  store %struct.iser_rx_desc* %78, %struct.iser_rx_desc** %6, align 8
  br label %33

79:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %112

80:                                               ; preds = %48
  %81 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %82 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %81, i32 0, i32 0
  %83 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %82, align 8
  store %struct.iser_rx_desc* %83, %struct.iser_rx_desc** %6, align 8
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %96, %80
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %84
  %89 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %90 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %6, align 8
  %91 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %94 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %95 = call i32 @ib_dma_unmap_single(%struct.ib_device* %89, i32 %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %88
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  %99 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %6, align 8
  %100 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %99, i32 1
  store %struct.iser_rx_desc* %100, %struct.iser_rx_desc** %6, align 8
  br label %84

101:                                              ; preds = %84
  %102 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %103 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %102, i32 0, i32 0
  %104 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %103, align 8
  %105 = call i32 @kfree(%struct.iser_rx_desc* %104)
  %106 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %107 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %106, i32 0, i32 0
  store %struct.iser_rx_desc* null, %struct.iser_rx_desc** %107, align 8
  %108 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %109 = call i32 @isert_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.isert_conn* %108)
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %101, %79, %26
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.iser_rx_desc* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ib_dma_map_single(%struct.ib_device*, i8*, i32, i32) #1

declare dso_local i64 @ib_dma_mapping_error(%struct.ib_device*, i32) #1

declare dso_local i32 @ib_dma_unmap_single(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.iser_rx_desc*) #1

declare dso_local i32 @isert_err(i8*, %struct.isert_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
