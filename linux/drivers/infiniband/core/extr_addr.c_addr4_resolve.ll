; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_addr.c_addr4_resolve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_addr.c_addr4_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.rdma_dev_addr = type { i32, i32, i32 }
%struct.rtable = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.flowi4 = type { i8*, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.sockaddr*, %struct.rdma_dev_addr*, %struct.rtable**)* @addr4_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr4_resolve(%struct.sockaddr* %0, %struct.sockaddr* %1, %struct.rdma_dev_addr* %2, %struct.rtable** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.rdma_dev_addr*, align 8
  %9 = alloca %struct.rtable**, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.rtable*, align 8
  %15 = alloca %struct.flowi4, align 8
  %16 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store %struct.rdma_dev_addr* %2, %struct.rdma_dev_addr** %8, align 8
  store %struct.rtable** %3, %struct.rtable*** %9, align 8
  %17 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %18 = bitcast %struct.sockaddr* %17 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %18, %struct.sockaddr_in** %10, align 8
  %19 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %20 = bitcast %struct.sockaddr* %19 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %20, %struct.sockaddr_in** %11, align 8
  %21 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %12, align 8
  %25 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %13, align 8
  %29 = call i32 @memset(%struct.flowi4* %15, i32 0, i32 24)
  %30 = load i8*, i8** %13, align 8
  %31 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %15, i32 0, i32 2
  store i8* %30, i8** %31, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %15, i32 0, i32 0
  store i8* %32, i8** %33, align 8
  %34 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %8, align 8
  %35 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %15, i32 0, i32 1
  store i32 %36, i32* %37, align 8
  %38 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %8, align 8
  %39 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.rtable* @ip_route_output_key(i32 %40, %struct.flowi4* %15)
  store %struct.rtable* %41, %struct.rtable** %14, align 8
  %42 = load %struct.rtable*, %struct.rtable** %14, align 8
  %43 = call i32 @PTR_ERR_OR_ZERO(%struct.rtable* %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %4
  %47 = load i32, i32* %16, align 4
  store i32 %47, i32* %5, align 4
  br label %61

48:                                               ; preds = %4
  %49 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %15, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %52 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  %54 = load %struct.rtable*, %struct.rtable** %14, align 8
  %55 = getelementptr inbounds %struct.rtable, %struct.rtable* %54, i32 0, i32 0
  %56 = call i32 @ip4_dst_hoplimit(i32* %55)
  %57 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %8, align 8
  %58 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.rtable*, %struct.rtable** %14, align 8
  %60 = load %struct.rtable**, %struct.rtable*** %9, align 8
  store %struct.rtable* %59, %struct.rtable** %60, align 8
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %48, %46
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @memset(%struct.flowi4*, i32, i32) #1

declare dso_local %struct.rtable* @ip_route_output_key(i32, %struct.flowi4*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.rtable*) #1

declare dso_local i32 @ip4_dst_hoplimit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
