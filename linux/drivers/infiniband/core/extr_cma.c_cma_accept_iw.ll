; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_accept_iw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_accept_iw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.rdma_conn_param = type { i32, i32, i32, i32, i32 }
%struct.iw_cm_conn_param = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, %struct.rdma_conn_param*)* @cma_accept_iw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_accept_iw(%struct.rdma_id_private* %0, %struct.rdma_conn_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca %struct.rdma_conn_param*, align 8
  %6 = alloca %struct.iw_cm_conn_param, align 4
  %7 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %4, align 8
  store %struct.rdma_conn_param* %1, %struct.rdma_conn_param** %5, align 8
  %8 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %9 = icmp ne %struct.rdma_conn_param* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %59

13:                                               ; preds = %2
  %14 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %15 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %16 = call i32 @cma_modify_qp_rtr(%struct.rdma_id_private* %14, %struct.rdma_conn_param* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %59

21:                                               ; preds = %13
  %22 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %23 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %6, i32 0, i32 4
  store i32 %24, i32* %25, align 4
  %26 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %27 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %6, i32 0, i32 3
  store i32 %28, i32* %29, align 4
  %30 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %31 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %6, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %35 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %6, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %39 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %21
  %44 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %45 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %6, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  br label %53

48:                                               ; preds = %21
  %49 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %50 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %6, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %55 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @iw_cm_accept(i32 %57, %struct.iw_cm_conn_param* %6)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %53, %19, %10
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @cma_modify_qp_rtr(%struct.rdma_id_private*, %struct.rdma_conn_param*) #1

declare dso_local i32 @iw_cm_accept(i32, %struct.iw_cm_conn_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
