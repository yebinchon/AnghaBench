; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_is_valid_mcast_lid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_is_valid_mcast_lid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ib_qp_init_attr = type { i32 }
%struct.ib_qp_attr = type { i64, i32 }

@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@IB_QPS_INIT = common dso_local global i64 0, align 8
@IB_LINK_LAYER_INFINIBAND = common dso_local global i64 0, align 8
@IB_MULTICAST_LID_BASE = common dso_local global i32 0, align 4
@IB_LID_PERMISSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, i64)* @is_valid_mcast_lid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_valid_mcast_lid(%struct.ib_qp* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ib_qp_init_attr, align 4
  %7 = alloca %struct.ib_qp_attr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = bitcast %struct.ib_qp_init_attr* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = bitcast %struct.ib_qp_attr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  store i32 0, i32* %8, align 4
  %12 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %13 = load i32, i32* @IB_QP_STATE, align 4
  %14 = load i32, i32* @IB_QP_PORT, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @ib_query_qp(%struct.ib_qp* %12, %struct.ib_qp_attr* %7, i32 %15, %struct.ib_qp_init_attr* %6)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %7, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IB_QPS_INIT, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %25 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %7, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @rdma_port_get_link_layer(%struct.TYPE_2__* %26, i32 %28)
  %30 = load i64, i64* @IB_LINK_LAYER_INFINIBAND, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %78

33:                                               ; preds = %23
  br label %64

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %34, %2
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %56, %35
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %39 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %37, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %36
  %45 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %46 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @rdma_port_get_link_layer(%struct.TYPE_2__* %47, i32 %48)
  %50 = load i64, i64* @IB_LINK_LAYER_INFINIBAND, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %44
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %36

59:                                               ; preds = %36
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 1, i32* %3, align 4
  br label %78

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %33
  %65 = load i64, i64* %5, align 8
  %66 = load i32, i32* @IB_MULTICAST_LID_BASE, align 4
  %67 = call i64 @be16_to_cpu(i32 %66)
  %68 = icmp slt i64 %65, %67
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i64, i64* %5, align 8
  %71 = load i32, i32* @IB_LID_PERMISSIVE, align 4
  %72 = call i64 @be16_to_cpu(i32 %71)
  %73 = icmp eq i64 %70, %72
  br label %74

74:                                               ; preds = %69, %64
  %75 = phi i1 [ true, %64 ], [ %73, %69 ]
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %62, %32
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ib_query_qp(%struct.ib_qp*, %struct.ib_qp_attr*, i32, %struct.ib_qp_init_attr*) #2

declare dso_local i64 @rdma_port_get_link_layer(%struct.TYPE_2__*, i32) #2

declare dso_local i64 @be16_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
