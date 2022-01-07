; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_hfi1_get_hdr_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_hfi1_get_hdr_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_ah_attr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OPA_LID_PERMISSIVE = common dso_local global i32 0, align 4
@HFI1_PKT_TYPE_16B = common dso_local global i32 0, align 4
@HFI1_PKT_TYPE_9B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.rdma_ah_attr*)* @hfi1_get_hdr_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfi1_get_hdr_type(i64 %0, %struct.rdma_ah_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.rdma_ah_attr*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %5, align 8
  %6 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %7 = call i64 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %6)
  %8 = load i32, i32* @OPA_LID_PERMISSIVE, align 4
  %9 = call i64 @be32_to_cpu(i32 %8)
  %10 = icmp eq i64 %7, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %13 = call %struct.TYPE_2__* @rdma_ah_read_grh(%struct.rdma_ah_attr* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i64 @ib_is_opa_gid(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @HFI1_PKT_TYPE_16B, align 4
  br label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @HFI1_PKT_TYPE_9B, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %3, align 4
  br label %34

23:                                               ; preds = %2
  %24 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %25 = call i64 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %24)
  %26 = call i32 @hfi1_get_packet_type(i64 %25)
  %27 = load i32, i32* @HFI1_PKT_TYPE_16B, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @HFI1_PKT_TYPE_16B, align 4
  store i32 %30, i32* %3, align 4
  br label %34

31:                                               ; preds = %23
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @hfi1_get_packet_type(i64 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %29, %21
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @rdma_ah_get_dlid(%struct.rdma_ah_attr*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @ib_is_opa_gid(i32*) #1

declare dso_local %struct.TYPE_2__* @rdma_ah_read_grh(%struct.rdma_ah_attr*) #1

declare dso_local i32 @hfi1_get_packet_type(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
