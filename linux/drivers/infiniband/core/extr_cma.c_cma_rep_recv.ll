; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_rep_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_rep_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"RDMA CM: CONNECT_ERROR: failed to handle reply. status %d\0A\00", align 1
@IB_CM_REJ_CONSUMER_DEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*)* @cma_rep_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_rep_recv(%struct.rdma_id_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdma_id_private*, align 8
  %4 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %3, align 8
  %5 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %6 = call i32 @cma_modify_qp_rtr(%struct.rdma_id_private* %5, i32* null)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %12 = call i32 @cma_modify_qp_rts(%struct.rdma_id_private* %11, i32* null)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %26

16:                                               ; preds = %10
  %17 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %18 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ib_send_cm_rtu(i32 %20, i32* null, i32 0)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %26

25:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %38

26:                                               ; preds = %24, %15, %9
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @pr_debug_ratelimited(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %30 = call i32 @cma_modify_qp_err(%struct.rdma_id_private* %29)
  %31 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %32 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IB_CM_REJ_CONSUMER_DEFINED, align 4
  %36 = call i32 @ib_send_cm_rej(i32 %34, i32 %35, i32* null, i32 0, i32* null, i32 0)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %26, %25
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @cma_modify_qp_rtr(%struct.rdma_id_private*, i32*) #1

declare dso_local i32 @cma_modify_qp_rts(%struct.rdma_id_private*, i32*) #1

declare dso_local i32 @ib_send_cm_rtu(i32, i32*, i32) #1

declare dso_local i32 @pr_debug_ratelimited(i8*, i32) #1

declare dso_local i32 @cma_modify_qp_err(%struct.rdma_id_private*) #1

declare dso_local i32 @ib_send_cm_rej(i32, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
