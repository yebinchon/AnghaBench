; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_main.c_efa_ib_device_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_main.c_efa_ib_device_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_dev = type { %struct.TYPE_7__, i32, %struct.TYPE_8__, %struct.pci_dev* }
%struct.TYPE_7__ = type { i32, i32, i64, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.efa_com_get_network_attr_result = type { i32 }
%struct.efa_com_get_hw_hints_result = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Doorbells bar (%d)\0A\00", align 1
@EFA_AENQ_ENABLED_GROUPS = common dso_local global i32 0, align 4
@RDMA_NODE_UNSPECIFIED = common dso_local global i32 0, align 4
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
@IB_USER_VERBS_CMD_CREATE_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_MODIFY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_AH = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_AH = common dso_local global i64 0, align 8
@IB_USER_VERBS_EX_CMD_QUERY_DEVICE = common dso_local global i64 0, align 8
@efa_dev_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"efa_%d\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"IB device registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efa_dev*)* @efa_ib_device_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efa_ib_device_add(%struct.efa_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efa_dev*, align 8
  %4 = alloca %struct.efa_com_get_network_attr_result, align 4
  %5 = alloca %struct.efa_com_get_hw_hints_result, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.efa_dev* %0, %struct.efa_dev** %3, align 8
  %8 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %9 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %8, i32 0, i32 3
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %6, align 8
  %11 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %12 = call i32 @efa_stats_init(%struct.efa_dev* %11)
  %13 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %14 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %13, i32 0, i32 1
  %15 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %16 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %15, i32 0, i32 2
  %17 = call i32 @efa_com_get_device_attr(i32* %14, %struct.TYPE_8__* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %153

22:                                               ; preds = %1
  %23 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %24 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %23, i32 0, i32 3
  %25 = load %struct.pci_dev*, %struct.pci_dev** %24, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %28 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_dbg(i32* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %33 = call i32 @efa_request_doorbell_bar(%struct.efa_dev* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %2, align 4
  br label %153

38:                                               ; preds = %22
  %39 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %40 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %39, i32 0, i32 1
  %41 = call i32 @efa_com_get_network_attr(i32* %40, %struct.efa_com_get_network_attr_result* %4)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %149

45:                                               ; preds = %38
  %46 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %47 = call i32 @efa_update_network_attr(%struct.efa_dev* %46, %struct.efa_com_get_network_attr_result* %4)
  %48 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %49 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %48, i32 0, i32 1
  %50 = call i32 @efa_com_get_hw_hints(i32* %49, %struct.efa_com_get_hw_hints_result* %5)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %149

54:                                               ; preds = %45
  %55 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %56 = call i32 @efa_update_hw_hints(%struct.efa_dev* %55, %struct.efa_com_get_hw_hints_result* %5)
  %57 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %58 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %57, i32 0, i32 1
  %59 = load i32, i32* @EFA_AENQ_ENABLED_GROUPS, align 4
  %60 = call i32 @efa_com_set_aenq_config(i32* %58, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %149

64:                                               ; preds = %54
  %65 = load i32, i32* @RDMA_NODE_UNSPECIFIED, align 4
  %66 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %67 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 5
  store i32 %65, i32* %68, align 8
  %69 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %70 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %73 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 0
  %77 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %78 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32* %76, i32** %80, align 8
  %81 = load i64, i64* @IB_USER_VERBS_CMD_GET_CONTEXT, align 8
  %82 = shl i64 1, %81
  %83 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_DEVICE, align 8
  %84 = shl i64 1, %83
  %85 = or i64 %82, %84
  %86 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_PORT, align 8
  %87 = shl i64 1, %86
  %88 = or i64 %85, %87
  %89 = load i64, i64* @IB_USER_VERBS_CMD_ALLOC_PD, align 8
  %90 = shl i64 1, %89
  %91 = or i64 %88, %90
  %92 = load i64, i64* @IB_USER_VERBS_CMD_DEALLOC_PD, align 8
  %93 = shl i64 1, %92
  %94 = or i64 %91, %93
  %95 = load i64, i64* @IB_USER_VERBS_CMD_REG_MR, align 8
  %96 = shl i64 1, %95
  %97 = or i64 %94, %96
  %98 = load i64, i64* @IB_USER_VERBS_CMD_DEREG_MR, align 8
  %99 = shl i64 1, %98
  %100 = or i64 %97, %99
  %101 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL, align 8
  %102 = shl i64 1, %101
  %103 = or i64 %100, %102
  %104 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_CQ, align 8
  %105 = shl i64 1, %104
  %106 = or i64 %103, %105
  %107 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_CQ, align 8
  %108 = shl i64 1, %107
  %109 = or i64 %106, %108
  %110 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_QP, align 8
  %111 = shl i64 1, %110
  %112 = or i64 %109, %111
  %113 = load i64, i64* @IB_USER_VERBS_CMD_MODIFY_QP, align 8
  %114 = shl i64 1, %113
  %115 = or i64 %112, %114
  %116 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_QP, align 8
  %117 = shl i64 1, %116
  %118 = or i64 %115, %117
  %119 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_QP, align 8
  %120 = shl i64 1, %119
  %121 = or i64 %118, %120
  %122 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_AH, align 8
  %123 = shl i64 1, %122
  %124 = or i64 %121, %123
  %125 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_AH, align 8
  %126 = shl i64 1, %125
  %127 = or i64 %124, %126
  %128 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %129 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  store i64 %127, i64* %130, align 8
  %131 = load i64, i64* @IB_USER_VERBS_EX_CMD_QUERY_DEVICE, align 8
  %132 = shl i64 1, %131
  %133 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %134 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 3
  store i64 %132, i64* %135, align 8
  %136 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %137 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %136, i32 0, i32 0
  %138 = call i32 @ib_set_device_ops(%struct.TYPE_7__* %137, i32* @efa_dev_ops)
  %139 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %140 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %139, i32 0, i32 0
  %141 = call i32 @ib_register_device(%struct.TYPE_7__* %140, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %64
  br label %149

145:                                              ; preds = %64
  %146 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %147 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %146, i32 0, i32 0
  %148 = call i32 @ibdev_info(%struct.TYPE_7__* %147, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %153

149:                                              ; preds = %144, %63, %53, %44
  %150 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %151 = call i32 @efa_release_doorbell_bar(%struct.efa_dev* %150)
  %152 = load i32, i32* %7, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %149, %145, %36, %20
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @efa_stats_init(%struct.efa_dev*) #1

declare dso_local i32 @efa_com_get_device_attr(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @efa_request_doorbell_bar(%struct.efa_dev*) #1

declare dso_local i32 @efa_com_get_network_attr(i32*, %struct.efa_com_get_network_attr_result*) #1

declare dso_local i32 @efa_update_network_attr(%struct.efa_dev*, %struct.efa_com_get_network_attr_result*) #1

declare dso_local i32 @efa_com_get_hw_hints(i32*, %struct.efa_com_get_hw_hints_result*) #1

declare dso_local i32 @efa_update_hw_hints(%struct.efa_dev*, %struct.efa_com_get_hw_hints_result*) #1

declare dso_local i32 @efa_com_set_aenq_config(i32*, i32) #1

declare dso_local i32 @ib_set_device_ops(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @ib_register_device(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @ibdev_info(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @efa_release_doorbell_bar(%struct.efa_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
