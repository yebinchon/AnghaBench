; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_free_req_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_free_req_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_target_port = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.srp_device* }
%struct.srp_device = type { i64, %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.srp_rdma_ch = type { %struct.srp_request* }
%struct.srp_request = type { %struct.srp_request*, i64, %struct.srp_request*, %struct.srp_request*, %struct.srp_request* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srp_target_port*, %struct.srp_rdma_ch*)* @srp_free_req_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srp_free_req_data(%struct.srp_target_port* %0, %struct.srp_rdma_ch* %1) #0 {
  %3 = alloca %struct.srp_target_port*, align 8
  %4 = alloca %struct.srp_rdma_ch*, align 8
  %5 = alloca %struct.srp_device*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %struct.srp_request*, align 8
  %8 = alloca i32, align 4
  store %struct.srp_target_port* %0, %struct.srp_target_port** %3, align 8
  store %struct.srp_rdma_ch* %1, %struct.srp_rdma_ch** %4, align 8
  %9 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %10 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.srp_device*, %struct.srp_device** %12, align 8
  store %struct.srp_device* %13, %struct.srp_device** %5, align 8
  %14 = load %struct.srp_device*, %struct.srp_device** %5, align 8
  %15 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %14, i32 0, i32 1
  %16 = load %struct.ib_device*, %struct.ib_device** %15, align 8
  store %struct.ib_device* %16, %struct.ib_device** %6, align 8
  %17 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %18 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %17, i32 0, i32 0
  %19 = load %struct.srp_request*, %struct.srp_request** %18, align 8
  %20 = icmp ne %struct.srp_request* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %84

22:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %74, %22
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %26 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %77

29:                                               ; preds = %23
  %30 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %31 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %30, i32 0, i32 0
  %32 = load %struct.srp_request*, %struct.srp_request** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %32, i64 %34
  store %struct.srp_request* %35, %struct.srp_request** %7, align 8
  %36 = load %struct.srp_device*, %struct.srp_device** %5, align 8
  %37 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %29
  %41 = load %struct.srp_request*, %struct.srp_request** %7, align 8
  %42 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %41, i32 0, i32 4
  %43 = load %struct.srp_request*, %struct.srp_request** %42, align 8
  %44 = call i32 @kfree(%struct.srp_request* %43)
  br label %54

45:                                               ; preds = %29
  %46 = load %struct.srp_request*, %struct.srp_request** %7, align 8
  %47 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %46, i32 0, i32 3
  %48 = load %struct.srp_request*, %struct.srp_request** %47, align 8
  %49 = call i32 @kfree(%struct.srp_request* %48)
  %50 = load %struct.srp_request*, %struct.srp_request** %7, align 8
  %51 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %50, i32 0, i32 2
  %52 = load %struct.srp_request*, %struct.srp_request** %51, align 8
  %53 = call i32 @kfree(%struct.srp_request* %52)
  br label %54

54:                                               ; preds = %45, %40
  %55 = load %struct.srp_request*, %struct.srp_request** %7, align 8
  %56 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %61 = load %struct.srp_request*, %struct.srp_request** %7, align 8
  %62 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %65 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DMA_TO_DEVICE, align 4
  %68 = call i32 @ib_dma_unmap_single(%struct.ib_device* %60, i64 %63, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %59, %54
  %70 = load %struct.srp_request*, %struct.srp_request** %7, align 8
  %71 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %70, i32 0, i32 0
  %72 = load %struct.srp_request*, %struct.srp_request** %71, align 8
  %73 = call i32 @kfree(%struct.srp_request* %72)
  br label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %23

77:                                               ; preds = %23
  %78 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %79 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %78, i32 0, i32 0
  %80 = load %struct.srp_request*, %struct.srp_request** %79, align 8
  %81 = call i32 @kfree(%struct.srp_request* %80)
  %82 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %83 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %82, i32 0, i32 0
  store %struct.srp_request* null, %struct.srp_request** %83, align 8
  br label %84

84:                                               ; preds = %77, %21
  ret void
}

declare dso_local i32 @kfree(%struct.srp_request*) #1

declare dso_local i32 @ib_dma_unmap_single(%struct.ib_device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
