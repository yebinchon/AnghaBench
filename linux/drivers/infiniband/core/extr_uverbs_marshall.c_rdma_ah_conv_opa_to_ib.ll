; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_marshall.c_rdma_ah_conv_opa_to_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_marshall.c_rdma_ah_conv_opa_to_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.rdma_ah_attr = type { i32, i32 }
%struct.ib_port_attr = type { i32 }

@RDMA_AH_ATTR_TYPE_IB = common dso_local global i32 0, align 4
@OPA_DEFAULT_GID_PREFIX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.rdma_ah_attr*, %struct.rdma_ah_attr*)* @rdma_ah_conv_opa_to_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdma_ah_conv_opa_to_ib(%struct.ib_device* %0, %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.rdma_ah_attr*, align 8
  %6 = alloca %struct.rdma_ah_attr*, align 8
  %7 = alloca %struct.ib_port_attr, align 4
  %8 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %5, align 8
  store %struct.rdma_ah_attr* %2, %struct.rdma_ah_attr** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %10 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %11 = bitcast %struct.rdma_ah_attr* %9 to i8*
  %12 = bitcast %struct.rdma_ah_attr* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 8, i1 false)
  %13 = load i32, i32* @RDMA_AH_ATTR_TYPE_IB, align 4
  %14 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %15 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %17 = call i32 @rdma_ah_set_grh(%struct.rdma_ah_attr* %16, i32* null, i32 0, i32 0, i32 1, i32 0)
  %18 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %19 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %20 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ib_query_port(%struct.ib_device* %18, i32 %21, %struct.ib_port_attr* %7)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %26 = load i32, i32* @OPA_DEFAULT_GID_PREFIX, align 4
  %27 = call i32 @rdma_ah_set_subnet_prefix(%struct.rdma_ah_attr* %25, i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %36

30:                                               ; preds = %3
  %31 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %32 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cpu_to_be64(i32 %33)
  %35 = call i32 @rdma_ah_set_subnet_prefix(%struct.rdma_ah_attr* %31, i32 %34)
  br label %36

36:                                               ; preds = %30, %24
  %37 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %38 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %39 = call i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %38)
  %40 = call i32 @OPA_MAKE_ID(i32 %39)
  %41 = call i32 @rdma_ah_set_interface_id(%struct.rdma_ah_attr* %37, i32 %40)
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @rdma_ah_set_grh(%struct.rdma_ah_attr*, i32*, i32, i32, i32, i32) #2

declare dso_local i64 @ib_query_port(%struct.ib_device*, i32, %struct.ib_port_attr*) #2

declare dso_local i32 @rdma_ah_set_subnet_prefix(%struct.rdma_ah_attr*, i32) #2

declare dso_local i32 @cpu_to_be64(i32) #2

declare dso_local i32 @rdma_ah_set_interface_id(%struct.rdma_ah_attr*, i32) #2

declare dso_local i32 @OPA_MAKE_ID(i32) #2

declare dso_local i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
