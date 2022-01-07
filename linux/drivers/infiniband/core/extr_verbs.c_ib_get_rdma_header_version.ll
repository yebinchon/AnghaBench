; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_get_rdma_header_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_get_rdma_header_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.rdma_network_hdr = type { i32 }
%struct.iphdr = type { i32, i32, i64 }
%struct.ipv6hdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_get_rdma_header_version(%union.rdma_network_hdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.rdma_network_hdr*, align 8
  %4 = alloca %struct.iphdr*, align 8
  %5 = alloca %struct.iphdr, align 8
  %6 = alloca %struct.ipv6hdr*, align 8
  store %union.rdma_network_hdr* %0, %union.rdma_network_hdr** %3, align 8
  %7 = load %union.rdma_network_hdr*, %union.rdma_network_hdr** %3, align 8
  %8 = bitcast %union.rdma_network_hdr* %7 to i32*
  %9 = bitcast i32* %8 to %struct.iphdr*
  store %struct.iphdr* %9, %struct.iphdr** %4, align 8
  %10 = load %union.rdma_network_hdr*, %union.rdma_network_hdr** %3, align 8
  %11 = bitcast %union.rdma_network_hdr* %10 to i32*
  %12 = bitcast i32* %11 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %12, %struct.ipv6hdr** %6, align 8
  %13 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %14 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 6
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %19 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 4
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 4, i32 0
  store i32 %23, i32* %2, align 4
  br label %45

24:                                               ; preds = %1
  %25 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %26 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 5
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 6, i32* %2, align 4
  br label %45

30:                                               ; preds = %24
  %31 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %32 = call i32 @memcpy(%struct.iphdr* %5, %struct.iphdr* %31, i32 16)
  %33 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %5, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = bitcast %struct.iphdr* %5 to i32*
  %35 = call i64 @ip_fast_csum(i32* %34, i32 5)
  %36 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %5, i32 0, i32 2
  store i64 %35, i64* %36, align 8
  %37 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %38 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %5, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  store i32 4, i32* %2, align 4
  br label %45

44:                                               ; preds = %30
  store i32 6, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %43, %29, %17
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @memcpy(%struct.iphdr*, %struct.iphdr*, i32) #1

declare dso_local i64 @ip_fast_csum(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
