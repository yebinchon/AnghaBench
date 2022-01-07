; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_modify_qp_rtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_modify_qp_rtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.rdma_conn_param = type { i32 }
%struct.ib_qp_attr = type { i32, i32 }

@IB_QPS_INIT = common dso_local global i32 0, align 4
@IB_QPS_RTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, %struct.rdma_conn_param*)* @cma_modify_qp_rtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_modify_qp_rtr(%struct.rdma_id_private* %0, %struct.rdma_conn_param* %1) #0 {
  %3 = alloca %struct.rdma_id_private*, align 8
  %4 = alloca %struct.rdma_conn_param*, align 8
  %5 = alloca %struct.ib_qp_attr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %3, align 8
  store %struct.rdma_conn_param* %1, %struct.rdma_conn_param** %4, align 8
  %8 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %9 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %12 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %72

17:                                               ; preds = %2
  %18 = load i32, i32* @IB_QPS_INIT, align 4
  %19 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %5, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %21 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %20, i32 0, i32 1
  %22 = call i32 @rdma_init_qp_attr(%struct.TYPE_4__* %21, %struct.ib_qp_attr* %5, i32* %6)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %72

26:                                               ; preds = %17
  %27 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %28 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @ib_modify_qp(i32 %30, %struct.ib_qp_attr* %5, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %72

36:                                               ; preds = %26
  %37 = load i32, i32* @IB_QPS_RTR, align 4
  %38 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %5, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %40 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %39, i32 0, i32 1
  %41 = call i32 @rdma_init_qp_attr(%struct.TYPE_4__* %40, %struct.ib_qp_attr* %5, i32* %6)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %72

45:                                               ; preds = %36
  %46 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %47 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %52 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %50, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @BUG_ON(i32 %56)
  %58 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %4, align 8
  %59 = icmp ne %struct.rdma_conn_param* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %45
  %61 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %4, align 8
  %62 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %5, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %60, %45
  %66 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %67 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @ib_modify_qp(i32 %69, %struct.ib_qp_attr* %5, i32 %70)
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %65, %44, %35, %25, %16
  %73 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %74 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rdma_init_qp_attr(%struct.TYPE_4__*, %struct.ib_qp_attr*, i32*) #1

declare dso_local i32 @ib_modify_qp(i32, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
