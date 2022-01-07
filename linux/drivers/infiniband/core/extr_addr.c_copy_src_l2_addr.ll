; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_addr.c_copy_src_l2_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_addr.c_copy_src_l2_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_dev_addr = type { i32 }
%struct.sockaddr = type { i64 }
%struct.dst_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i64 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@ARPHRD_INFINIBAND = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@RDMA_NETWORK_IPV4 = common dso_local global i32 0, align 4
@RDMA_NETWORK_IPV6 = common dso_local global i32 0, align 4
@RDMA_NETWORK_IB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_dev_addr*, %struct.sockaddr*, %struct.dst_entry*, %struct.net_device*)* @copy_src_l2_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_src_l2_addr(%struct.rdma_dev_addr* %0, %struct.sockaddr* %1, %struct.dst_entry* %2, %struct.net_device* %3) #0 {
  %5 = alloca %struct.rdma_dev_addr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.dst_entry*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store %struct.rdma_dev_addr* %0, %struct.rdma_dev_addr** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.dst_entry* %2, %struct.dst_entry** %7, align 8
  store %struct.net_device* %3, %struct.net_device** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %11 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_LOOPBACK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %20 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %5, align 8
  %21 = call i32 @rdma_translate_ip(%struct.sockaddr* %19, %struct.rdma_dev_addr* %20)
  store i32 %21, i32* %9, align 4
  br label %28

22:                                               ; preds = %4
  %23 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %5, align 8
  %24 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %25 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = call i32 @rdma_copy_src_l2_addr(%struct.rdma_dev_addr* %23, %struct.TYPE_2__* %26)
  br label %28

28:                                               ; preds = %22, %18
  %29 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %30 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %31 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @has_gateway(%struct.dst_entry* %29, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %28
  %36 = load %struct.net_device*, %struct.net_device** %8, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ARPHRD_INFINIBAND, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %43 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AF_INET, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @RDMA_NETWORK_IPV4, align 4
  br label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @RDMA_NETWORK_IPV6, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %5, align 8
  %54 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %59

55:                                               ; preds = %35, %28
  %56 = load i32, i32* @RDMA_NETWORK_IB, align 4
  %57 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %5, align 8
  %58 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

declare dso_local i32 @rdma_translate_ip(%struct.sockaddr*, %struct.rdma_dev_addr*) #1

declare dso_local i32 @rdma_copy_src_l2_addr(%struct.rdma_dev_addr*, %struct.TYPE_2__*) #1

declare dso_local i64 @has_gateway(%struct.dst_entry*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
