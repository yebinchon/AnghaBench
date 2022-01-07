; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_alloc_req_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_alloc_req_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_rdma_ch = type { %struct.srp_request*, %struct.srp_target_port* }
%struct.srp_request = type { i32, i32, i8*, i8*, i8* }
%struct.srp_target_port = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.srp_device* }
%struct.srp_device = type { i32, i64, %struct.ib_device* }
%struct.ib_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srp_rdma_ch*)* @srp_alloc_req_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_alloc_req_data(%struct.srp_rdma_ch* %0) #0 {
  %2 = alloca %struct.srp_rdma_ch*, align 8
  %3 = alloca %struct.srp_target_port*, align 8
  %4 = alloca %struct.srp_device*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.srp_request*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.srp_rdma_ch* %0, %struct.srp_rdma_ch** %2, align 8
  %11 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %2, align 8
  %12 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %11, i32 0, i32 1
  %13 = load %struct.srp_target_port*, %struct.srp_target_port** %12, align 8
  store %struct.srp_target_port* %13, %struct.srp_target_port** %3, align 8
  %14 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %15 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.srp_device*, %struct.srp_device** %17, align 8
  store %struct.srp_device* %18, %struct.srp_device** %4, align 8
  %19 = load %struct.srp_device*, %struct.srp_device** %4, align 8
  %20 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %19, i32 0, i32 2
  %21 = load %struct.ib_device*, %struct.ib_device** %20, align 8
  store %struct.ib_device* %21, %struct.ib_device** %5, align 8
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %10, align 4
  %24 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %25 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.srp_request* @kcalloc(i32 %26, i32 32, i32 %27)
  %29 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %2, align 8
  %30 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %29, i32 0, i32 0
  store %struct.srp_request* %28, %struct.srp_request** %30, align 8
  %31 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %2, align 8
  %32 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %31, i32 0, i32 0
  %33 = load %struct.srp_request*, %struct.srp_request** %32, align 8
  %34 = icmp ne %struct.srp_request* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %1
  br label %120

36:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %116, %36
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %40 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %119

43:                                               ; preds = %37
  %44 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %2, align 8
  %45 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %44, i32 0, i32 0
  %46 = load %struct.srp_request*, %struct.srp_request** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %46, i64 %48
  store %struct.srp_request* %49, %struct.srp_request** %6, align 8
  %50 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %51 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i8* @kmalloc_array(i32 %52, i32 8, i32 %53)
  store i8* %54, i8** %7, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %43
  br label %120

58:                                               ; preds = %43
  %59 = load %struct.srp_device*, %struct.srp_device** %4, align 8
  %60 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.srp_request*, %struct.srp_request** %6, align 8
  %66 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  br label %84

67:                                               ; preds = %58
  %68 = load i8*, i8** %7, align 8
  %69 = load %struct.srp_request*, %struct.srp_request** %6, align 8
  %70 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load %struct.srp_device*, %struct.srp_device** %4, align 8
  %72 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i8* @kmalloc_array(i32 %73, i32 8, i32 %74)
  %76 = load %struct.srp_request*, %struct.srp_request** %6, align 8
  %77 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load %struct.srp_request*, %struct.srp_request** %6, align 8
  %79 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %67
  br label %120

83:                                               ; preds = %67
  br label %84

84:                                               ; preds = %83, %63
  %85 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %86 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call i32 @kmalloc(i32 %87, i32 %88)
  %90 = load %struct.srp_request*, %struct.srp_request** %6, align 8
  %91 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.srp_request*, %struct.srp_request** %6, align 8
  %93 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %84
  br label %120

97:                                               ; preds = %84
  %98 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %99 = load %struct.srp_request*, %struct.srp_request** %6, align 8
  %100 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %103 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @DMA_TO_DEVICE, align 4
  %106 = call i32 @ib_dma_map_single(%struct.ib_device* %98, i32 %101, i32 %104, i32 %105)
  store i32 %106, i32* %8, align 4
  %107 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i64 @ib_dma_mapping_error(%struct.ib_device* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %97
  br label %120

112:                                              ; preds = %97
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.srp_request*, %struct.srp_request** %6, align 8
  %115 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %37

119:                                              ; preds = %37
  store i32 0, i32* %10, align 4
  br label %120

120:                                              ; preds = %119, %111, %96, %82, %57, %35
  %121 = load i32, i32* %10, align 4
  ret i32 %121
}

declare dso_local %struct.srp_request* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @ib_dma_map_single(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i64 @ib_dma_mapping_error(%struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
