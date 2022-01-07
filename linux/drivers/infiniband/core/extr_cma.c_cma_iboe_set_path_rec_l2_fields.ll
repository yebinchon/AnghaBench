; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_iboe_set_path_rec_l2_fields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_iboe_set_path_rec_l2_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rdma_id_private = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.rdma_route }
%struct.rdma_route = type { %struct.TYPE_8__*, %struct.rdma_addr }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rdma_addr = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@IB_GID_TYPE_ROCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.rdma_id_private*)* @cma_iboe_set_path_rec_l2_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @cma_iboe_set_path_rec_l2_fields(%struct.rdma_id_private* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rdma_id_private*, align 8
  %4 = alloca %struct.rdma_route*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rdma_addr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %3, align 8
  %9 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %10 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store %struct.rdma_route* %11, %struct.rdma_route** %4, align 8
  %12 = load i32, i32* @IB_GID_TYPE_ROCE, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %14 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %13, i32 0, i32 1
  store %struct.rdma_addr* %14, %struct.rdma_addr** %6, align 8
  %15 = load %struct.rdma_addr*, %struct.rdma_addr** %6, align 8
  %16 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %87

21:                                               ; preds = %1
  %22 = load %struct.rdma_addr*, %struct.rdma_addr** %6, align 8
  %23 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rdma_addr*, %struct.rdma_addr** %6, align 8
  %27 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.net_device* @dev_get_by_index(i32 %25, i32 %29)
  store %struct.net_device* %30, %struct.net_device** %8, align 8
  %31 = load %struct.net_device*, %struct.net_device** %8, align 8
  %32 = icmp ne %struct.net_device* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %21
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %87

34:                                               ; preds = %21
  %35 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %36 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %40 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @roce_gid_type_mask_support(i32 %38, i32 %42)
  store i64 %43, i64* %7, align 8
  %44 = load %struct.rdma_addr*, %struct.rdma_addr** %6, align 8
  %45 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %50 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @cma_route_gid_type(i32 %47, i64 %48, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.rdma_addr*, %struct.rdma_addr** %6, align 8
  %55 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ib_network_to_gid_type(i32 %57)
  %59 = icmp ult i32 %53, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %34
  %61 = load %struct.rdma_addr*, %struct.rdma_addr** %6, align 8
  %62 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ib_network_to_gid_type(i32 %64)
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %60, %34
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @sa_conv_gid_to_pathrec_type(i32 %67)
  %69 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %70 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  store i32 %68, i32* %72, align 4
  %73 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %74 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  %78 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %79 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = load %struct.rdma_addr*, %struct.rdma_addr** %6, align 8
  %82 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @sa_path_set_dmac(%struct.TYPE_8__* %80, i32 %84)
  %86 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %86, %struct.net_device** %2, align 8
  br label %87

87:                                               ; preds = %66, %33, %20
  %88 = load %struct.net_device*, %struct.net_device** %2, align 8
  ret %struct.net_device* %88
}

declare dso_local %struct.net_device* @dev_get_by_index(i32, i32) #1

declare dso_local i64 @roce_gid_type_mask_support(i32, i32) #1

declare dso_local i32 @cma_route_gid_type(i32, i64, i32) #1

declare dso_local i32 @ib_network_to_gid_type(i32) #1

declare dso_local i32 @sa_conv_gid_to_pathrec_type(i32) #1

declare dso_local i32 @sa_path_set_dmac(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
