; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr.h_qedr_get_dmac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr.h_qedr_get_dmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32 }
%struct.rdma_ah_attr = type { i32 }
%union.ib_gid = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ib_global_route = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Local port GID not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_dev*, %struct.rdma_ah_attr*, i32*)* @qedr_get_dmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_get_dmac(%struct.qedr_dev* %0, %struct.rdma_ah_attr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qedr_dev*, align 8
  %6 = alloca %struct.rdma_ah_attr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %union.ib_gid, align 4
  %9 = alloca %struct.in6_addr, align 4
  %10 = alloca %struct.ib_global_route*, align 8
  %11 = alloca i32*, align 8
  store %struct.qedr_dev* %0, %struct.qedr_dev** %5, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = bitcast %union.ib_gid* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %14 = call %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr* %13)
  store %struct.ib_global_route* %14, %struct.ib_global_route** %10, align 8
  %15 = load %struct.ib_global_route*, %struct.ib_global_route** %10, align 8
  %16 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %15, i32 0, i32 0
  %17 = call i32 @memcmp(%struct.TYPE_4__* %16, %union.ib_gid* %8, i32 4)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %21 = call i32 @DP_ERR(%struct.qedr_dev* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @eth_zero_addr(i32* %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %43

26:                                               ; preds = %3
  %27 = load %struct.ib_global_route*, %struct.ib_global_route** %10, align 8
  %28 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memcpy(%struct.in6_addr* %9, i32 %30, i32 4)
  %32 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %33 = call i32* @rdma_ah_retrieve_dmac(%struct.rdma_ah_attr* %32)
  store i32* %33, i32** %11, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %43

39:                                               ; preds = %26
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @ether_addr_copy(i32* %40, i32* %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %36, %19
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr*) #2

declare dso_local i32 @memcmp(%struct.TYPE_4__*, %union.ib_gid*, i32) #2

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*) #2

declare dso_local i32 @eth_zero_addr(i32*) #2

declare dso_local i32 @memcpy(%struct.in6_addr*, i32, i32) #2

declare dso_local i32* @rdma_ah_retrieve_dmac(%struct.rdma_ah_attr*) #2

declare dso_local i32 @ether_addr_copy(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
