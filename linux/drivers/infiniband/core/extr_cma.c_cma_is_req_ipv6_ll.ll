; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_is_req_ipv6_ll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_is_req_ipv6_ll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma_req_info = type { i32 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_in6 = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cma_req_info*)* @cma_is_req_ipv6_ll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_is_req_ipv6_ll(%struct.cma_req_info* %0) #0 {
  %2 = alloca %struct.cma_req_info*, align 8
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca %struct.sockaddr_in6*, align 8
  store %struct.cma_req_info* %0, %struct.cma_req_info** %2, align 8
  %5 = load %struct.cma_req_info*, %struct.cma_req_info** %2, align 8
  %6 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %5, i32 0, i32 0
  %7 = bitcast i32* %6 to %struct.sockaddr*
  store %struct.sockaddr* %7, %struct.sockaddr** %3, align 8
  %8 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %9 = bitcast %struct.sockaddr* %8 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %9, %struct.sockaddr_in6** %4, align 8
  %10 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %11 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AF_INET6, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %17 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %16, i32 0, i32 0
  %18 = call i32 @ipv6_addr_type(i32* %17)
  %19 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %15, %1
  %23 = phi i1 [ false, %1 ], [ %21, %15 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

declare dso_local i32 @ipv6_addr_type(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
