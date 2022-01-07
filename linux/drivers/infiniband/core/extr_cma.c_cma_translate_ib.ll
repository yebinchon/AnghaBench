; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_translate_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_translate_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_ib = type { i32, i32 }
%struct.rdma_dev_addr = type { i32 }
%union.ib_gid = type { i32 }

@ARPHRD_INFINIBAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr_ib*, %struct.rdma_dev_addr*)* @cma_translate_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cma_translate_ib(%struct.sockaddr_ib* %0, %struct.rdma_dev_addr* %1) #0 {
  %3 = alloca %struct.sockaddr_ib*, align 8
  %4 = alloca %struct.rdma_dev_addr*, align 8
  store %struct.sockaddr_ib* %0, %struct.sockaddr_ib** %3, align 8
  store %struct.rdma_dev_addr* %1, %struct.rdma_dev_addr** %4, align 8
  %5 = load i32, i32* @ARPHRD_INFINIBAND, align 4
  %6 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %4, align 8
  %7 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %4, align 8
  %9 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %3, align 8
  %10 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %9, i32 0, i32 1
  %11 = bitcast i32* %10 to %union.ib_gid*
  %12 = call i32 @rdma_addr_set_sgid(%struct.rdma_dev_addr* %8, %union.ib_gid* %11)
  %13 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %4, align 8
  %14 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %3, align 8
  %15 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ntohs(i32 %16)
  %18 = call i32 @ib_addr_set_pkey(%struct.rdma_dev_addr* %13, i32 %17)
  ret void
}

declare dso_local i32 @rdma_addr_set_sgid(%struct.rdma_dev_addr*, %union.ib_gid*) #1

declare dso_local i32 @ib_addr_set_pkey(%struct.rdma_dev_addr*, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
