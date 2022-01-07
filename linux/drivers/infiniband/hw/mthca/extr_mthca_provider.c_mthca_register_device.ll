; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, %struct.TYPE_10__, i32, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@IB_USER_VERBS_CMD_GET_CONTEXT = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_DEVICE = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_PORT = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_ALLOC_PD = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DEALLOC_PD = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_REG_MR = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DEREG_MR = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_CQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_RESIZE_CQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_CQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_MODIFY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_ATTACH_MCAST = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DETACH_MCAST = common dso_local global i64 0, align 8
@RDMA_NODE_IB_CA = common dso_local global i32 0, align 4
@MTHCA_FLAG_SRQ = common dso_local global i32 0, align 4
@IB_USER_VERBS_CMD_CREATE_SRQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_MODIFY_SRQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_SRQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_SRQ = common dso_local global i64 0, align 8
@mthca_dev_arbel_srq_ops = common dso_local global i32 0, align 4
@mthca_dev_tavor_srq_ops = common dso_local global i32 0, align 4
@MTHCA_FLAG_FMR = common dso_local global i32 0, align 4
@mthca_dev_arbel_fmr_ops = common dso_local global i32 0, align 4
@mthca_dev_tavor_fmr_ops = common dso_local global i32 0, align 4
@mthca_dev_ops = common dso_local global i32 0, align 4
@mthca_dev_arbel_ops = common dso_local global i32 0, align 4
@mthca_dev_tavor_ops = common dso_local global i32 0, align 4
@mthca_attr_group = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"mthca%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_register_device(%struct.mthca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  %5 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %6 = call i32 @mthca_init_node_data(%struct.mthca_dev* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %174

11:                                               ; preds = %1
  %12 = load i64, i64* @IB_USER_VERBS_CMD_GET_CONTEXT, align 8
  %13 = shl i64 1, %12
  %14 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_DEVICE, align 8
  %15 = shl i64 1, %14
  %16 = or i64 %13, %15
  %17 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_PORT, align 8
  %18 = shl i64 1, %17
  %19 = or i64 %16, %18
  %20 = load i64, i64* @IB_USER_VERBS_CMD_ALLOC_PD, align 8
  %21 = shl i64 1, %20
  %22 = or i64 %19, %21
  %23 = load i64, i64* @IB_USER_VERBS_CMD_DEALLOC_PD, align 8
  %24 = shl i64 1, %23
  %25 = or i64 %22, %24
  %26 = load i64, i64* @IB_USER_VERBS_CMD_REG_MR, align 8
  %27 = shl i64 1, %26
  %28 = or i64 %25, %27
  %29 = load i64, i64* @IB_USER_VERBS_CMD_DEREG_MR, align 8
  %30 = shl i64 1, %29
  %31 = or i64 %28, %30
  %32 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL, align 8
  %33 = shl i64 1, %32
  %34 = or i64 %31, %33
  %35 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_CQ, align 8
  %36 = shl i64 1, %35
  %37 = or i64 %34, %36
  %38 = load i64, i64* @IB_USER_VERBS_CMD_RESIZE_CQ, align 8
  %39 = shl i64 1, %38
  %40 = or i64 %37, %39
  %41 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_CQ, align 8
  %42 = shl i64 1, %41
  %43 = or i64 %40, %42
  %44 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_QP, align 8
  %45 = shl i64 1, %44
  %46 = or i64 %43, %45
  %47 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_QP, align 8
  %48 = shl i64 1, %47
  %49 = or i64 %46, %48
  %50 = load i64, i64* @IB_USER_VERBS_CMD_MODIFY_QP, align 8
  %51 = shl i64 1, %50
  %52 = or i64 %49, %51
  %53 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_QP, align 8
  %54 = shl i64 1, %53
  %55 = or i64 %52, %54
  %56 = load i64, i64* @IB_USER_VERBS_CMD_ATTACH_MCAST, align 8
  %57 = shl i64 1, %56
  %58 = or i64 %55, %57
  %59 = load i64, i64* @IB_USER_VERBS_CMD_DETACH_MCAST, align 8
  %60 = shl i64 1, %59
  %61 = or i64 %58, %60
  %62 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %63 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  %65 = load i32, i32* @RDMA_NODE_IB_CA, align 4
  %66 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %67 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 4
  store i32 %65, i32* %68, align 4
  %69 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %70 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %74 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 3
  store i32 %72, i32* %75, align 8
  %76 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %77 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  store i32 1, i32* %78, align 8
  %79 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %80 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %79, i32 0, i32 3
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %84 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32* %82, i32** %86, align 8
  %87 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %88 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @MTHCA_FLAG_SRQ, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %122

93:                                               ; preds = %11
  %94 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_SRQ, align 8
  %95 = shl i64 1, %94
  %96 = load i64, i64* @IB_USER_VERBS_CMD_MODIFY_SRQ, align 8
  %97 = shl i64 1, %96
  %98 = or i64 %95, %97
  %99 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_SRQ, align 8
  %100 = shl i64 1, %99
  %101 = or i64 %98, %100
  %102 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_SRQ, align 8
  %103 = shl i64 1, %102
  %104 = or i64 %101, %103
  %105 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %106 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = or i64 %108, %104
  store i64 %109, i64* %107, align 8
  %110 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %111 = call i64 @mthca_is_memfree(%struct.mthca_dev* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %93
  %114 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %115 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %114, i32 0, i32 1
  %116 = call i32 @ib_set_device_ops(%struct.TYPE_10__* %115, i32* @mthca_dev_arbel_srq_ops)
  br label %121

117:                                              ; preds = %93
  %118 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %119 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %118, i32 0, i32 1
  %120 = call i32 @ib_set_device_ops(%struct.TYPE_10__* %119, i32* @mthca_dev_tavor_srq_ops)
  br label %121

121:                                              ; preds = %117, %113
  br label %122

122:                                              ; preds = %121, %11
  %123 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %124 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @MTHCA_FLAG_FMR, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %122
  %130 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %131 = call i64 @mthca_is_memfree(%struct.mthca_dev* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %135 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %134, i32 0, i32 1
  %136 = call i32 @ib_set_device_ops(%struct.TYPE_10__* %135, i32* @mthca_dev_arbel_fmr_ops)
  br label %141

137:                                              ; preds = %129
  %138 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %139 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %138, i32 0, i32 1
  %140 = call i32 @ib_set_device_ops(%struct.TYPE_10__* %139, i32* @mthca_dev_tavor_fmr_ops)
  br label %141

141:                                              ; preds = %137, %133
  br label %142

142:                                              ; preds = %141, %122
  %143 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %144 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %143, i32 0, i32 1
  %145 = call i32 @ib_set_device_ops(%struct.TYPE_10__* %144, i32* @mthca_dev_ops)
  %146 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %147 = call i64 @mthca_is_memfree(%struct.mthca_dev* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %142
  %150 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %151 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %150, i32 0, i32 1
  %152 = call i32 @ib_set_device_ops(%struct.TYPE_10__* %151, i32* @mthca_dev_arbel_ops)
  br label %157

153:                                              ; preds = %142
  %154 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %155 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %154, i32 0, i32 1
  %156 = call i32 @ib_set_device_ops(%struct.TYPE_10__* %155, i32* @mthca_dev_tavor_ops)
  br label %157

157:                                              ; preds = %153, %149
  %158 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %159 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %158, i32 0, i32 2
  %160 = call i32 @mutex_init(i32* %159)
  %161 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %162 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %161, i32 0, i32 1
  %163 = call i32 @rdma_set_device_sysfs_group(%struct.TYPE_10__* %162, i32* @mthca_attr_group)
  %164 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %165 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %164, i32 0, i32 1
  %166 = call i32 @ib_register_device(%struct.TYPE_10__* %165, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* %4, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %157
  %170 = load i32, i32* %4, align 4
  store i32 %170, i32* %2, align 4
  br label %174

171:                                              ; preds = %157
  %172 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %173 = call i32 @mthca_start_catas_poll(%struct.mthca_dev* %172)
  store i32 0, i32* %2, align 4
  br label %174

174:                                              ; preds = %171, %169, %9
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local i32 @mthca_init_node_data(%struct.mthca_dev*) #1

declare dso_local i64 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i32 @ib_set_device_ops(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @rdma_set_device_sysfs_group(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @ib_register_device(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @mthca_start_catas_poll(%struct.mthca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
