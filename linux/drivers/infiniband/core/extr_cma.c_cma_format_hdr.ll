; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_format_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_format_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i32 }
%struct.cma_hdr = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@CMA_VERSION = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.rdma_id_private*)* @cma_format_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_format_hdr(i8* %0, %struct.rdma_id_private* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca %struct.cma_hdr*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.rdma_id_private* %1, %struct.rdma_id_private** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.cma_hdr*
  store %struct.cma_hdr* %11, %struct.cma_hdr** %5, align 8
  %12 = load i32, i32* @CMA_VERSION, align 4
  %13 = load %struct.cma_hdr*, %struct.cma_hdr** %5, align 8
  %14 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %16 = call i64 @cma_family(%struct.rdma_id_private* %15)
  %17 = load i64, i64* @AF_INET, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %2
  %20 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %21 = call i64 @cma_src_addr(%struct.rdma_id_private* %20)
  %22 = inttoptr i64 %21 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %22, %struct.sockaddr_in** %6, align 8
  %23 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %24 = call i64 @cma_dst_addr(%struct.rdma_id_private* %23)
  %25 = inttoptr i64 %24 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %25, %struct.sockaddr_in** %7, align 8
  %26 = load %struct.cma_hdr*, %struct.cma_hdr** %5, align 8
  %27 = call i32 @cma_set_ip_ver(%struct.cma_hdr* %26, i32 4)
  %28 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cma_hdr*, %struct.cma_hdr** %5, align 8
  %33 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  %36 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cma_hdr*, %struct.cma_hdr** %5, align 8
  %41 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cma_hdr*, %struct.cma_hdr** %5, align 8
  %48 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %81

49:                                               ; preds = %2
  %50 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %51 = call i64 @cma_family(%struct.rdma_id_private* %50)
  %52 = load i64, i64* @AF_INET6, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %80

54:                                               ; preds = %49
  %55 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %56 = call i64 @cma_src_addr(%struct.rdma_id_private* %55)
  %57 = inttoptr i64 %56 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %57, %struct.sockaddr_in6** %8, align 8
  %58 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %59 = call i64 @cma_dst_addr(%struct.rdma_id_private* %58)
  %60 = inttoptr i64 %59 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %60, %struct.sockaddr_in6** %9, align 8
  %61 = load %struct.cma_hdr*, %struct.cma_hdr** %5, align 8
  %62 = call i32 @cma_set_ip_ver(%struct.cma_hdr* %61, i32 6)
  %63 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %64 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.cma_hdr*, %struct.cma_hdr** %5, align 8
  %67 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  %69 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %70 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.cma_hdr*, %struct.cma_hdr** %5, align 8
  %73 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  %75 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %76 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.cma_hdr*, %struct.cma_hdr** %5, align 8
  %79 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %54, %49
  br label %81

81:                                               ; preds = %80, %19
  ret i32 0
}

declare dso_local i64 @cma_family(%struct.rdma_id_private*) #1

declare dso_local i64 @cma_src_addr(%struct.rdma_id_private*) #1

declare dso_local i64 @cma_dst_addr(%struct.rdma_id_private*) #1

declare dso_local i32 @cma_set_ip_ver(%struct.cma_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
