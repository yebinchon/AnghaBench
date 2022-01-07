; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_rdma_read_gids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_rdma_read_gids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rdma_addr }
%struct.rdma_addr = type { i32, i32, i32 }
%union.ib_gid = type { i32 }
%struct.sockaddr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdma_read_gids(%struct.rdma_cm_id* %0, %union.ib_gid* %1, %union.ib_gid* %2) #0 {
  %4 = alloca %struct.rdma_cm_id*, align 8
  %5 = alloca %union.ib_gid*, align 8
  %6 = alloca %union.ib_gid*, align 8
  %7 = alloca %struct.rdma_addr*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %4, align 8
  store %union.ib_gid* %1, %union.ib_gid** %5, align 8
  store %union.ib_gid* %2, %union.ib_gid** %6, align 8
  %8 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %9 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.rdma_addr* %10, %struct.rdma_addr** %7, align 8
  %11 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %12 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %3
  %16 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %17 = icmp ne %union.ib_gid* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %20 = call i32 @memset(%union.ib_gid* %19, i32 0, i32 4)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %23 = icmp ne %union.ib_gid* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %26 = call i32 @memset(%union.ib_gid* %25, i32 0, i32 4)
  br label %27

27:                                               ; preds = %24, %21
  br label %73

28:                                               ; preds = %3
  %29 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %30 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %33 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @rdma_protocol_roce(i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %28
  %38 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %39 = icmp ne %union.ib_gid* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.rdma_addr*, %struct.rdma_addr** %7, align 8
  %42 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %41, i32 0, i32 2
  %43 = bitcast i32* %42 to %struct.sockaddr*
  %44 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %45 = call i32 @rdma_ip2gid(%struct.sockaddr* %43, %union.ib_gid* %44)
  br label %46

46:                                               ; preds = %40, %37
  %47 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %48 = icmp ne %union.ib_gid* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.rdma_addr*, %struct.rdma_addr** %7, align 8
  %51 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %50, i32 0, i32 1
  %52 = bitcast i32* %51 to %struct.sockaddr*
  %53 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %54 = call i32 @rdma_ip2gid(%struct.sockaddr* %52, %union.ib_gid* %53)
  br label %55

55:                                               ; preds = %49, %46
  br label %73

56:                                               ; preds = %28
  %57 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %58 = icmp ne %union.ib_gid* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.rdma_addr*, %struct.rdma_addr** %7, align 8
  %61 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %60, i32 0, i32 0
  %62 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %63 = call i32 @rdma_addr_get_sgid(i32* %61, %union.ib_gid* %62)
  br label %64

64:                                               ; preds = %59, %56
  %65 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %66 = icmp ne %union.ib_gid* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load %struct.rdma_addr*, %struct.rdma_addr** %7, align 8
  %69 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %68, i32 0, i32 0
  %70 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %71 = call i32 @rdma_addr_get_dgid(i32* %69, %union.ib_gid* %70)
  br label %72

72:                                               ; preds = %67, %64
  br label %73

73:                                               ; preds = %27, %72, %55
  ret void
}

declare dso_local i32 @memset(%union.ib_gid*, i32, i32) #1

declare dso_local i64 @rdma_protocol_roce(i32, i32) #1

declare dso_local i32 @rdma_ip2gid(%struct.sockaddr*, %union.ib_gid*) #1

declare dso_local i32 @rdma_addr_get_sgid(i32*, %union.ib_gid*) #1

declare dso_local i32 @rdma_addr_get_dgid(i32*, %union.ib_gid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
