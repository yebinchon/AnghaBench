; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_init_rdma_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_init_rdma_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_ib_device = type { %struct.TYPE_6__, %struct.i40iw_device* }
%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.i40iw_device = type { i32, %struct.i40iw_ib_device*, %struct.TYPE_4__, %struct.net_device* }
%struct.TYPE_4__ = type { i64 }
%struct.net_device = type { i32, i32 }
%struct.pci_dev = type { i32 }

@i40iw_ib_device = common dso_local global i32 0, align 4
@ibdev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"iwdev == NULL\0A\00", align 1
@RDMA_NODE_RNIC = common dso_local global i32 0, align 4
@IB_USER_VERBS_CMD_GET_CONTEXT = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_DEVICE = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_PORT = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_ALLOC_PD = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DEALLOC_PD = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_REG_MR = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DEREG_MR = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_CQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_CQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_REQ_NOTIFY_CQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_MODIFY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_POLL_CQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_AH = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_AH = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_POST_RECV = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_POST_SEND = common dso_local global i64 0, align 8
@i40iw_dev_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i40iw_ib_device* (%struct.i40iw_device*)* @i40iw_init_rdma_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i40iw_ib_device* @i40iw_init_rdma_device(%struct.i40iw_device* %0) #0 {
  %2 = alloca %struct.i40iw_ib_device*, align 8
  %3 = alloca %struct.i40iw_device*, align 8
  %4 = alloca %struct.i40iw_ib_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %3, align 8
  %7 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %8 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %7, i32 0, i32 3
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %11 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.pci_dev*
  store %struct.pci_dev* %14, %struct.pci_dev** %6, align 8
  %15 = load i32, i32* @i40iw_ib_device, align 4
  %16 = load i32, i32* @ibdev, align 4
  %17 = call %struct.i40iw_ib_device* @ib_alloc_device(i32 %15, i32 %16)
  store %struct.i40iw_ib_device* %17, %struct.i40iw_ib_device** %4, align 8
  %18 = load %struct.i40iw_ib_device*, %struct.i40iw_ib_device** %4, align 8
  %19 = icmp ne %struct.i40iw_ib_device* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.i40iw_ib_device* null, %struct.i40iw_ib_device** %2, align 8
  br label %129

22:                                               ; preds = %1
  %23 = load %struct.i40iw_ib_device*, %struct.i40iw_ib_device** %4, align 8
  %24 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %25 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %24, i32 0, i32 1
  store %struct.i40iw_ib_device* %23, %struct.i40iw_ib_device** %25, align 8
  %26 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %27 = load %struct.i40iw_ib_device*, %struct.i40iw_ib_device** %4, align 8
  %28 = getelementptr inbounds %struct.i40iw_ib_device, %struct.i40iw_ib_device* %27, i32 0, i32 1
  store %struct.i40iw_device* %26, %struct.i40iw_device** %28, align 8
  %29 = load i32, i32* @RDMA_NODE_RNIC, align 4
  %30 = load %struct.i40iw_ib_device*, %struct.i40iw_ib_device** %4, align 8
  %31 = getelementptr inbounds %struct.i40iw_ib_device, %struct.i40iw_ib_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 6
  store i32 %29, i32* %32, align 8
  %33 = load %struct.i40iw_ib_device*, %struct.i40iw_ib_device** %4, align 8
  %34 = getelementptr inbounds %struct.i40iw_ib_device, %struct.i40iw_ib_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 5
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ether_addr_copy(i32* %35, i32 %38)
  %40 = load i64, i64* @IB_USER_VERBS_CMD_GET_CONTEXT, align 8
  %41 = shl i64 1, %40
  %42 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_DEVICE, align 8
  %43 = shl i64 1, %42
  %44 = or i64 %41, %43
  %45 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_PORT, align 8
  %46 = shl i64 1, %45
  %47 = or i64 %44, %46
  %48 = load i64, i64* @IB_USER_VERBS_CMD_ALLOC_PD, align 8
  %49 = shl i64 1, %48
  %50 = or i64 %47, %49
  %51 = load i64, i64* @IB_USER_VERBS_CMD_DEALLOC_PD, align 8
  %52 = shl i64 1, %51
  %53 = or i64 %50, %52
  %54 = load i64, i64* @IB_USER_VERBS_CMD_REG_MR, align 8
  %55 = shl i64 1, %54
  %56 = or i64 %53, %55
  %57 = load i64, i64* @IB_USER_VERBS_CMD_DEREG_MR, align 8
  %58 = shl i64 1, %57
  %59 = or i64 %56, %58
  %60 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL, align 8
  %61 = shl i64 1, %60
  %62 = or i64 %59, %61
  %63 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_CQ, align 8
  %64 = shl i64 1, %63
  %65 = or i64 %62, %64
  %66 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_CQ, align 8
  %67 = shl i64 1, %66
  %68 = or i64 %65, %67
  %69 = load i64, i64* @IB_USER_VERBS_CMD_REQ_NOTIFY_CQ, align 8
  %70 = shl i64 1, %69
  %71 = or i64 %68, %70
  %72 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_QP, align 8
  %73 = shl i64 1, %72
  %74 = or i64 %71, %73
  %75 = load i64, i64* @IB_USER_VERBS_CMD_MODIFY_QP, align 8
  %76 = shl i64 1, %75
  %77 = or i64 %74, %76
  %78 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_QP, align 8
  %79 = shl i64 1, %78
  %80 = or i64 %77, %79
  %81 = load i64, i64* @IB_USER_VERBS_CMD_POLL_CQ, align 8
  %82 = shl i64 1, %81
  %83 = or i64 %80, %82
  %84 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_AH, align 8
  %85 = shl i64 1, %84
  %86 = or i64 %83, %85
  %87 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_AH, align 8
  %88 = shl i64 1, %87
  %89 = or i64 %86, %88
  %90 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_QP, align 8
  %91 = shl i64 1, %90
  %92 = or i64 %89, %91
  %93 = load i64, i64* @IB_USER_VERBS_CMD_POST_RECV, align 8
  %94 = shl i64 1, %93
  %95 = or i64 %92, %94
  %96 = load i64, i64* @IB_USER_VERBS_CMD_POST_SEND, align 8
  %97 = shl i64 1, %96
  %98 = or i64 %95, %97
  %99 = load %struct.i40iw_ib_device*, %struct.i40iw_ib_device** %4, align 8
  %100 = getelementptr inbounds %struct.i40iw_ib_device, %struct.i40iw_ib_device* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i64 %98, i64* %101, align 8
  %102 = load %struct.i40iw_ib_device*, %struct.i40iw_ib_device** %4, align 8
  %103 = getelementptr inbounds %struct.i40iw_ib_device, %struct.i40iw_ib_device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  store i32 1, i32* %104, align 8
  %105 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %106 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.i40iw_ib_device*, %struct.i40iw_ib_device** %4, align 8
  %109 = getelementptr inbounds %struct.i40iw_ib_device, %struct.i40iw_ib_device* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 4
  store i32 %107, i32* %110, align 8
  %111 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %112 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %111, i32 0, i32 0
  %113 = load %struct.i40iw_ib_device*, %struct.i40iw_ib_device** %4, align 8
  %114 = getelementptr inbounds %struct.i40iw_ib_device, %struct.i40iw_ib_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  store i32* %112, i32** %116, align 8
  %117 = load %struct.i40iw_ib_device*, %struct.i40iw_ib_device** %4, align 8
  %118 = getelementptr inbounds %struct.i40iw_ib_device, %struct.i40iw_ib_device* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.net_device*, %struct.net_device** %5, align 8
  %122 = getelementptr inbounds %struct.net_device, %struct.net_device* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @memcpy(i32 %120, i32 %123, i32 4)
  %125 = load %struct.i40iw_ib_device*, %struct.i40iw_ib_device** %4, align 8
  %126 = getelementptr inbounds %struct.i40iw_ib_device, %struct.i40iw_ib_device* %125, i32 0, i32 0
  %127 = call i32 @ib_set_device_ops(%struct.TYPE_6__* %126, i32* @i40iw_dev_ops)
  %128 = load %struct.i40iw_ib_device*, %struct.i40iw_ib_device** %4, align 8
  store %struct.i40iw_ib_device* %128, %struct.i40iw_ib_device** %2, align 8
  br label %129

129:                                              ; preds = %22, %20
  %130 = load %struct.i40iw_ib_device*, %struct.i40iw_ib_device** %2, align 8
  ret %struct.i40iw_ib_device* %130
}

declare dso_local %struct.i40iw_ib_device* @ib_alloc_device(i32, i32) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

declare dso_local i32 @ether_addr_copy(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ib_set_device_ops(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
