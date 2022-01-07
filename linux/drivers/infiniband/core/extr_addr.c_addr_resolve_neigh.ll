; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_addr.c_addr_resolve_neigh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_addr.c_addr_resolve_neigh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.sockaddr = type { i32 }
%struct.rdma_dev_addr = type { i32, i32 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@MAX_ADDR_LEN = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_entry*, %struct.sockaddr*, %struct.rdma_dev_addr*, i32, i32)* @addr_resolve_neigh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_resolve_neigh(%struct.dst_entry* %0, %struct.sockaddr* %1, %struct.rdma_dev_addr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dst_entry*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.rdma_dev_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dst_entry* %0, %struct.dst_entry** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store %struct.rdma_dev_addr* %2, %struct.rdma_dev_addr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @IFF_LOOPBACK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %5
  %17 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %8, align 8
  %18 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %8, align 8
  %21 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MAX_ADDR_LEN, align 4
  %24 = call i32 @memcpy(i32 %19, i32 %22, i32 %23)
  br label %37

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @IFF_NOARP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %32 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %8, align 8
  %33 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @fetch_ha(%struct.dst_entry* %31, %struct.rdma_dev_addr* %32, %struct.sockaddr* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %30, %25
  br label %37

37:                                               ; preds = %36, %16
  %38 = load i32, i32* %11, align 4
  ret i32 %38
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @fetch_ha(%struct.dst_entry*, %struct.rdma_dev_addr*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
