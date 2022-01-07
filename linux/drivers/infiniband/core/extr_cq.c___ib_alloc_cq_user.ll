; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cq.c___ib_alloc_cq_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cq.c___ib_alloc_cq_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32, %struct.ib_cq*, %struct.ib_device*, %struct.TYPE_6__, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.ib_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ib_cq.0*, %struct.ib_cq_init_attr*, i32*)*, i32 (%struct.ib_cq.1*, %struct.ib_udata*)* }
%struct.ib_cq.0 = type opaque
%struct.ib_cq_init_attr = type opaque
%struct.ib_cq.1 = type opaque
%struct.ib_udata = type { i32 }
%struct.ib_cq_init_attr.2 = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ib_cq = common dso_local global i32 0, align 4
@IB_POLL_BATCH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RDMA_RESTRACK_CQ = common dso_local global i32 0, align 4
@ib_cq_completion_direct = common dso_local global i32 0, align 4
@ib_cq_completion_softirq = common dso_local global i32 0, align 4
@IB_POLL_BUDGET_IRQ = common dso_local global i32 0, align 4
@ib_poll_handler = common dso_local global i32 0, align 4
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@ib_cq_completion_workqueue = common dso_local global i32 0, align 4
@ib_cq_poll_work = common dso_local global i32 0, align 4
@ib_comp_wq = common dso_local global i32 0, align 4
@ib_comp_unbound_wq = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_cq* @__ib_alloc_cq_user(%struct.ib_device* %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5, %struct.ib_udata* %6) #0 {
  %8 = alloca %struct.ib_cq*, align 8
  %9 = alloca %struct.ib_device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.ib_udata*, align 8
  %16 = alloca %struct.ib_cq_init_attr.2, align 4
  %17 = alloca %struct.ib_cq*, align 8
  %18 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store %struct.ib_udata* %6, %struct.ib_udata** %15, align 8
  %19 = getelementptr inbounds %struct.ib_cq_init_attr.2, %struct.ib_cq_init_attr.2* %16, i32 0, i32 0
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.ib_cq_init_attr.2, %struct.ib_cq_init_attr.2* %16, i32 0, i32 1
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %21, align 4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %18, align 4
  %25 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %26 = load i32, i32* @ib_cq, align 4
  %27 = call %struct.ib_cq* @rdma_zalloc_drv_obj(%struct.ib_device* %25, i32 %26)
  store %struct.ib_cq* %27, %struct.ib_cq** %17, align 8
  %28 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %29 = icmp ne %struct.ib_cq* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %7
  %31 = load i32, i32* %18, align 4
  %32 = call %struct.ib_cq* @ERR_PTR(i32 %31)
  store %struct.ib_cq* %32, %struct.ib_cq** %8, align 8
  br label %153

33:                                               ; preds = %7
  %34 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %35 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %36 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %35, i32 0, i32 2
  store %struct.ib_device* %34, %struct.ib_device** %36, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %39 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %38, i32 0, i32 9
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* %13, align 4
  %41 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %42 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %44 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %43, i32 0, i32 8
  %45 = call i32 @atomic_set(i32* %44, i32 0)
  %46 = load i32, i32* @IB_POLL_BATCH, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.ib_cq* @kmalloc_array(i32 %46, i32 56, i32 %47)
  %49 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %50 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %49, i32 0, i32 1
  store %struct.ib_cq* %48, %struct.ib_cq** %50, align 8
  %51 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %52 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %51, i32 0, i32 1
  %53 = load %struct.ib_cq*, %struct.ib_cq** %52, align 8
  %54 = icmp ne %struct.ib_cq* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %33
  br label %148

56:                                               ; preds = %33
  %57 = load i32, i32* @RDMA_RESTRACK_CQ, align 4
  %58 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %59 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %62 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %61, i32 0, i32 3
  %63 = load i8*, i8** %14, align 8
  %64 = call i32 @rdma_restrack_set_task(%struct.TYPE_6__* %62, i8* %63)
  %65 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %66 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32 (%struct.ib_cq.0*, %struct.ib_cq_init_attr*, i32*)*, i32 (%struct.ib_cq.0*, %struct.ib_cq_init_attr*, i32*)** %67, align 8
  %69 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %70 = bitcast %struct.ib_cq* %69 to %struct.ib_cq.0*
  %71 = bitcast %struct.ib_cq_init_attr.2* %16 to %struct.ib_cq_init_attr*
  %72 = call i32 %68(%struct.ib_cq.0* %70, %struct.ib_cq_init_attr* %71, i32* null)
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %18, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %56
  br label %143

76:                                               ; preds = %56
  %77 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %78 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %77, i32 0, i32 3
  %79 = call i32 @rdma_restrack_kadd(%struct.TYPE_6__* %78)
  %80 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %81 = call i32 @rdma_dim_init(%struct.ib_cq* %80)
  %82 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %83 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  switch i32 %84, label %124 [
    i32 131, label %85
    i32 130, label %89
    i32 128, label %101
    i32 129, label %101
  ]

85:                                               ; preds = %76
  %86 = load i32, i32* @ib_cq_completion_direct, align 4
  %87 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %88 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 4
  br label %127

89:                                               ; preds = %76
  %90 = load i32, i32* @ib_cq_completion_softirq, align 4
  %91 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %92 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 4
  %93 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %94 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %93, i32 0, i32 7
  %95 = load i32, i32* @IB_POLL_BUDGET_IRQ, align 4
  %96 = load i32, i32* @ib_poll_handler, align 4
  %97 = call i32 @irq_poll_init(i32* %94, i32 %95, i32 %96)
  %98 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %99 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %100 = call i32 @ib_req_notify_cq(%struct.ib_cq* %98, i32 %99)
  br label %127

101:                                              ; preds = %76, %76
  %102 = load i32, i32* @ib_cq_completion_workqueue, align 4
  %103 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %104 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 4
  %105 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %106 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %105, i32 0, i32 5
  %107 = load i32, i32* @ib_cq_poll_work, align 4
  %108 = call i32 @INIT_WORK(i32* %106, i32 %107)
  %109 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %110 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %111 = call i32 @ib_req_notify_cq(%struct.ib_cq* %109, i32 %110)
  %112 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %113 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 128
  br i1 %115, label %116, label %118

116:                                              ; preds = %101
  %117 = load i32, i32* @ib_comp_wq, align 4
  br label %120

118:                                              ; preds = %101
  %119 = load i32, i32* @ib_comp_unbound_wq, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  %122 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %123 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 4
  br label %127

124:                                              ; preds = %76
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %18, align 4
  br label %129

127:                                              ; preds = %120, %89, %85
  %128 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  store %struct.ib_cq* %128, %struct.ib_cq** %8, align 8
  br label %153

129:                                              ; preds = %124
  %130 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %131 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %130, i32 0, i32 3
  %132 = call i32 @rdma_restrack_del(%struct.TYPE_6__* %131)
  %133 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %134 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %133, i32 0, i32 2
  %135 = load %struct.ib_device*, %struct.ib_device** %134, align 8
  %136 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i32 (%struct.ib_cq.1*, %struct.ib_udata*)*, i32 (%struct.ib_cq.1*, %struct.ib_udata*)** %137, align 8
  %139 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %140 = bitcast %struct.ib_cq* %139 to %struct.ib_cq.1*
  %141 = load %struct.ib_udata*, %struct.ib_udata** %15, align 8
  %142 = call i32 %138(%struct.ib_cq.1* %140, %struct.ib_udata* %141)
  br label %143

143:                                              ; preds = %129, %75
  %144 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %145 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %144, i32 0, i32 1
  %146 = load %struct.ib_cq*, %struct.ib_cq** %145, align 8
  %147 = call i32 @kfree(%struct.ib_cq* %146)
  br label %148

148:                                              ; preds = %143, %55
  %149 = load %struct.ib_cq*, %struct.ib_cq** %17, align 8
  %150 = call i32 @kfree(%struct.ib_cq* %149)
  %151 = load i32, i32* %18, align 4
  %152 = call %struct.ib_cq* @ERR_PTR(i32 %151)
  store %struct.ib_cq* %152, %struct.ib_cq** %8, align 8
  br label %153

153:                                              ; preds = %148, %127, %30
  %154 = load %struct.ib_cq*, %struct.ib_cq** %8, align 8
  ret %struct.ib_cq* %154
}

declare dso_local %struct.ib_cq* @rdma_zalloc_drv_obj(%struct.ib_device*, i32) #1

declare dso_local %struct.ib_cq* @ERR_PTR(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.ib_cq* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @rdma_restrack_set_task(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @rdma_restrack_kadd(%struct.TYPE_6__*) #1

declare dso_local i32 @rdma_dim_init(%struct.ib_cq*) #1

declare dso_local i32 @irq_poll_init(i32*, i32, i32) #1

declare dso_local i32 @ib_req_notify_cq(%struct.ib_cq*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @rdma_restrack_del(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.ib_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
