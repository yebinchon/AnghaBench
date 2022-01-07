; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_match_private_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_match_private_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i32 }
%struct.cma_hdr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.in6_addr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_in6 = type { %struct.in6_addr }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, %struct.cma_hdr*)* @cma_match_private_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_match_private_data(%struct.rdma_id_private* %0, %struct.cma_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca %struct.cma_hdr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.in6_addr, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %4, align 8
  store %struct.cma_hdr* %1, %struct.cma_hdr** %5, align 8
  %9 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %10 = call %struct.sockaddr* @cma_src_addr(%struct.rdma_id_private* %9)
  store %struct.sockaddr* %10, %struct.sockaddr** %6, align 8
  %11 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %12 = call i64 @cma_any_addr(%struct.sockaddr* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %16 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %73

20:                                               ; preds = %14, %2
  %21 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %71 [
    i32 129, label %24
    i32 128, label %48
    i32 130, label %70
  ]

24:                                               ; preds = %20
  %25 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %26 = bitcast %struct.sockaddr* %25 to %struct.sockaddr_in*
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load %struct.cma_hdr*, %struct.cma_hdr** %5, align 8
  %31 = call i32 @cma_get_ip_ver(%struct.cma_hdr* %30)
  %32 = icmp ne i32 %31, 4
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %73

34:                                               ; preds = %24
  %35 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %36 = call i64 @cma_any_addr(%struct.sockaddr* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = load %struct.cma_hdr*, %struct.cma_hdr** %5, align 8
  %40 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %73

47:                                               ; preds = %38, %34
  br label %72

48:                                               ; preds = %20
  %49 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %50 = bitcast %struct.sockaddr* %49 to %struct.sockaddr_in6*
  %51 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %50, i32 0, i32 0
  %52 = bitcast %struct.in6_addr* %8 to i8*
  %53 = bitcast %struct.in6_addr* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = load %struct.cma_hdr*, %struct.cma_hdr** %5, align 8
  %55 = call i32 @cma_get_ip_ver(%struct.cma_hdr* %54)
  %56 = icmp ne i32 %55, 6
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %73

58:                                               ; preds = %48
  %59 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %60 = call i64 @cma_any_addr(%struct.sockaddr* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %58
  %63 = load %struct.cma_hdr*, %struct.cma_hdr** %5, align 8
  %64 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = call i32 @memcmp(i32* %65, %struct.in6_addr* %8, i32 4)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %73

69:                                               ; preds = %62, %58
  br label %72

70:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %73

71:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %73

72:                                               ; preds = %69, %47
  store i32 1, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %71, %70, %68, %57, %46, %33, %19
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.sockaddr* @cma_src_addr(%struct.rdma_id_private*) #1

declare dso_local i64 @cma_any_addr(%struct.sockaddr*) #1

declare dso_local i32 @cma_get_ip_ver(%struct.cma_hdr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcmp(i32*, %struct.in6_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
