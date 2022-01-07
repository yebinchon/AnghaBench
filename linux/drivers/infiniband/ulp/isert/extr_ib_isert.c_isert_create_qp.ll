; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_create_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_create_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.isert_conn = type { %struct.isert_device* }
%struct.isert_device = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.isert_comp = type { i32 }
%struct.rdma_cm_id = type { %struct.ib_qp* }
%struct.ib_qp_init_attr = type { i32, i32, i32, %struct.TYPE_6__, i32, i32, %struct.isert_conn*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i64 }

@isert_qp_event_callback = common dso_local global i32 0, align 4
@ISERT_QP_MAX_REQ_DTOS = common dso_local global i64 0, align 8
@ISERT_QP_MAX_RECV_DTOS = common dso_local global i64 0, align 8
@ISCSI_DEF_XMIT_CMDS_MAX = common dso_local global i32 0, align 4
@IB_SIGNAL_REQ_WR = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@IB_QP_CREATE_INTEGRITY_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"rdma_create_qp failed for cma_id %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_qp* (%struct.isert_conn*, %struct.isert_comp*, %struct.rdma_cm_id*)* @isert_create_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_qp* @isert_create_qp(%struct.isert_conn* %0, %struct.isert_comp* %1, %struct.rdma_cm_id* %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.isert_conn*, align 8
  %6 = alloca %struct.isert_comp*, align 8
  %7 = alloca %struct.rdma_cm_id*, align 8
  %8 = alloca %struct.isert_device*, align 8
  %9 = alloca %struct.ib_qp_init_attr, align 8
  %10 = alloca i32, align 4
  store %struct.isert_conn* %0, %struct.isert_conn** %5, align 8
  store %struct.isert_comp* %1, %struct.isert_comp** %6, align 8
  store %struct.rdma_cm_id* %2, %struct.rdma_cm_id** %7, align 8
  %11 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %12 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %11, i32 0, i32 0
  %13 = load %struct.isert_device*, %struct.isert_device** %12, align 8
  store %struct.isert_device* %13, %struct.isert_device** %8, align 8
  %14 = call i32 @memset(%struct.ib_qp_init_attr* %9, i32 0, i32 72)
  %15 = load i32, i32* @isert_qp_event_callback, align 4
  %16 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 7
  store i32 %15, i32* %16, align 8
  %17 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %18 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 6
  store %struct.isert_conn* %17, %struct.isert_conn** %18, align 8
  %19 = load %struct.isert_comp*, %struct.isert_comp** %6, align 8
  %20 = getelementptr inbounds %struct.isert_comp, %struct.isert_comp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 5
  store i32 %21, i32* %22, align 4
  %23 = load %struct.isert_comp*, %struct.isert_comp** %6, align 8
  %24 = getelementptr inbounds %struct.isert_comp, %struct.isert_comp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 4
  store i32 %25, i32* %26, align 8
  %27 = load i64, i64* @ISERT_QP_MAX_REQ_DTOS, align 8
  %28 = add nsw i64 %27, 1
  %29 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* @ISERT_QP_MAX_RECV_DTOS, align 8
  %32 = add nsw i64 %31, 1
  %33 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* @ISCSI_DEF_XMIT_CMDS_MAX, align 4
  %36 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.isert_device*, %struct.isert_device** %8, align 8
  %39 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %38, i32 0, i32 2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load i32, i32* @IB_SIGNAL_REQ_WR, align 4
  %49 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 2
  store i32 %48, i32* %49, align 8
  %50 = load i32, i32* @IB_QPT_RC, align 4
  %51 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load %struct.isert_device*, %struct.isert_device** %8, align 8
  %53 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %3
  %57 = load i32, i32* @IB_QP_CREATE_INTEGRITY_EN, align 4
  %58 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %56, %3
  %62 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %7, align 8
  %63 = load %struct.isert_device*, %struct.isert_device** %8, align 8
  %64 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @rdma_create_qp(%struct.rdma_cm_id* %62, i32 %65, %struct.ib_qp_init_attr* %9)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @isert_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = call %struct.ib_qp* @ERR_PTR(i32 %72)
  store %struct.ib_qp* %73, %struct.ib_qp** %4, align 8
  br label %78

74:                                               ; preds = %61
  %75 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %7, align 8
  %76 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %75, i32 0, i32 0
  %77 = load %struct.ib_qp*, %struct.ib_qp** %76, align 8
  store %struct.ib_qp* %77, %struct.ib_qp** %4, align 8
  br label %78

78:                                               ; preds = %74, %69
  %79 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  ret %struct.ib_qp* %79
}

declare dso_local i32 @memset(%struct.ib_qp_init_attr*, i32, i32) #1

declare dso_local i32 @rdma_create_qp(%struct.rdma_cm_id*, i32, %struct.ib_qp_init_attr*) #1

declare dso_local i32 @isert_err(i8*, i32) #1

declare dso_local %struct.ib_qp* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
