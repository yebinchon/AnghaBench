; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_translate_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_translate_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.rdma_dev_addr = type { i32 }
%struct.sockaddr_ib = type { i32 }

@AF_IB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.rdma_dev_addr*)* @cma_translate_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_translate_addr(%struct.sockaddr* %0, %struct.rdma_dev_addr* %1) #0 {
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca %struct.rdma_dev_addr*, align 8
  %5 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  store %struct.rdma_dev_addr* %1, %struct.rdma_dev_addr** %4, align 8
  %6 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %7 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AF_IB, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %13 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %4, align 8
  %14 = call i32 @rdma_translate_ip(%struct.sockaddr* %12, %struct.rdma_dev_addr* %13)
  store i32 %14, i32* %5, align 4
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %17 = bitcast %struct.sockaddr* %16 to %struct.sockaddr_ib*
  %18 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %4, align 8
  %19 = call i32 @cma_translate_ib(%struct.sockaddr_ib* %17, %struct.rdma_dev_addr* %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %15, %11
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local i32 @rdma_translate_ip(%struct.sockaddr*, %struct.rdma_dev_addr*) #1

declare dso_local i32 @cma_translate_ib(%struct.sockaddr_ib*, %struct.rdma_dev_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
