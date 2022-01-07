; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_accept_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_accept_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.rdma_conn_param = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_cm_rep_param = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@u8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, %struct.rdma_conn_param*)* @cma_accept_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_accept_ib(%struct.rdma_id_private* %0, %struct.rdma_conn_param* %1) #0 {
  %3 = alloca %struct.rdma_id_private*, align 8
  %4 = alloca %struct.rdma_conn_param*, align 8
  %5 = alloca %struct.ib_cm_rep_param, align 8
  %6 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %3, align 8
  store %struct.rdma_conn_param* %1, %struct.rdma_conn_param** %4, align 8
  %7 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %8 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %4, align 8
  %9 = call i32 @cma_modify_qp_rtr(%struct.rdma_id_private* %7, %struct.rdma_conn_param* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %69

13:                                               ; preds = %2
  %14 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %15 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %4, align 8
  %16 = call i32 @cma_modify_qp_rts(%struct.rdma_id_private* %14, %struct.rdma_conn_param* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %69

20:                                               ; preds = %13
  %21 = call i32 @memset(%struct.ib_cm_rep_param* %5, i32 0, i32 48)
  %22 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %23 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.ib_cm_rep_param, %struct.ib_cm_rep_param* %5, i32 0, i32 9
  store i32 %24, i32* %25, align 4
  %26 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %27 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.ib_cm_rep_param, %struct.ib_cm_rep_param* %5, i32 0, i32 8
  store i32 %28, i32* %29, align 8
  %30 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %4, align 8
  %31 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.ib_cm_rep_param, %struct.ib_cm_rep_param* %5, i32 0, i32 7
  store i32 %32, i32* %33, align 4
  %34 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %4, align 8
  %35 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.ib_cm_rep_param, %struct.ib_cm_rep_param* %5, i32 0, i32 6
  store i32 %36, i32* %37, align 8
  %38 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %4, align 8
  %39 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.ib_cm_rep_param, %struct.ib_cm_rep_param* %5, i32 0, i32 5
  store i32 %40, i32* %41, align 4
  %42 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %4, align 8
  %43 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.ib_cm_rep_param, %struct.ib_cm_rep_param* %5, i32 0, i32 4
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.ib_cm_rep_param, %struct.ib_cm_rep_param* %5, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %4, align 8
  %48 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.ib_cm_rep_param, %struct.ib_cm_rep_param* %5, i32 0, i32 2
  store i32 %49, i32* %50, align 8
  %51 = load i32, i32* @u8, align 4
  %52 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %4, align 8
  %53 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @min_t(i32 %51, i32 7, i32 %54)
  %56 = getelementptr inbounds %struct.ib_cm_rep_param, %struct.ib_cm_rep_param* %5, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %58 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  %63 = getelementptr inbounds %struct.ib_cm_rep_param, %struct.ib_cm_rep_param* %5, i32 0, i32 0
  store i32 %62, i32* %63, align 8
  %64 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %65 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ib_send_cm_rep(i32 %67, %struct.ib_cm_rep_param* %5)
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %20, %19, %12
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @cma_modify_qp_rtr(%struct.rdma_id_private*, %struct.rdma_conn_param*) #1

declare dso_local i32 @cma_modify_qp_rts(%struct.rdma_id_private*, %struct.rdma_conn_param*) #1

declare dso_local i32 @memset(%struct.ib_cm_rep_param*, i32, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @ib_send_cm_rep(i32, %struct.ib_cm_rep_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
