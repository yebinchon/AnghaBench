; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com_cmd.c_efa_com_query_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com_cmd.c_efa_com_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_com_dev = type { i32, %struct.efa_com_admin_queue }
%struct.efa_com_admin_queue = type { i32 }
%struct.efa_com_query_qp_params = type { i32 }
%struct.efa_com_query_qp_result = type { i32, i32, i32, i32 }
%struct.efa_admin_query_qp_cmd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.efa_admin_query_qp_resp = type { i32, i32, i32, i32 }
%struct.efa_admin_aq_entry = type { i32 }
%struct.efa_admin_acq_entry = type { i32 }

@EFA_ADMIN_QUERY_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to query qp-%u [%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efa_com_query_qp(%struct.efa_com_dev* %0, %struct.efa_com_query_qp_params* %1, %struct.efa_com_query_qp_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efa_com_dev*, align 8
  %6 = alloca %struct.efa_com_query_qp_params*, align 8
  %7 = alloca %struct.efa_com_query_qp_result*, align 8
  %8 = alloca %struct.efa_com_admin_queue*, align 8
  %9 = alloca %struct.efa_admin_query_qp_cmd, align 4
  %10 = alloca %struct.efa_admin_query_qp_resp, align 4
  %11 = alloca i32, align 4
  store %struct.efa_com_dev* %0, %struct.efa_com_dev** %5, align 8
  store %struct.efa_com_query_qp_params* %1, %struct.efa_com_query_qp_params** %6, align 8
  store %struct.efa_com_query_qp_result* %2, %struct.efa_com_query_qp_result** %7, align 8
  %12 = load %struct.efa_com_dev*, %struct.efa_com_dev** %5, align 8
  %13 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %12, i32 0, i32 1
  store %struct.efa_com_admin_queue* %13, %struct.efa_com_admin_queue** %8, align 8
  %14 = bitcast %struct.efa_admin_query_qp_cmd* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = load i32, i32* @EFA_ADMIN_QUERY_QP, align 4
  %16 = getelementptr inbounds %struct.efa_admin_query_qp_cmd, %struct.efa_admin_query_qp_cmd* %9, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.efa_com_query_qp_params*, %struct.efa_com_query_qp_params** %6, align 8
  %19 = getelementptr inbounds %struct.efa_com_query_qp_params, %struct.efa_com_query_qp_params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.efa_admin_query_qp_cmd, %struct.efa_admin_query_qp_cmd* %9, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %8, align 8
  %23 = bitcast %struct.efa_admin_query_qp_cmd* %9 to %struct.efa_admin_aq_entry*
  %24 = bitcast %struct.efa_admin_query_qp_resp* %10 to %struct.efa_admin_acq_entry*
  %25 = call i32 @efa_com_cmd_exec(%struct.efa_com_admin_queue* %22, %struct.efa_admin_aq_entry* %23, i32 8, %struct.efa_admin_acq_entry* %24, i32 16)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %3
  %29 = load %struct.efa_com_dev*, %struct.efa_com_dev** %5, align 8
  %30 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.efa_admin_query_qp_cmd, %struct.efa_admin_query_qp_cmd* %9, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @ibdev_err_ratelimited(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %4, align 4
  br label %54

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.efa_admin_query_qp_resp, %struct.efa_admin_query_qp_resp* %10, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.efa_com_query_qp_result*, %struct.efa_com_query_qp_result** %7, align 8
  %41 = getelementptr inbounds %struct.efa_com_query_qp_result, %struct.efa_com_query_qp_result* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = getelementptr inbounds %struct.efa_admin_query_qp_resp, %struct.efa_admin_query_qp_resp* %10, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.efa_com_query_qp_result*, %struct.efa_com_query_qp_result** %7, align 8
  %45 = getelementptr inbounds %struct.efa_com_query_qp_result, %struct.efa_com_query_qp_result* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds %struct.efa_admin_query_qp_resp, %struct.efa_admin_query_qp_resp* %10, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.efa_com_query_qp_result*, %struct.efa_com_query_qp_result** %7, align 8
  %49 = getelementptr inbounds %struct.efa_com_query_qp_result, %struct.efa_com_query_qp_result* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = getelementptr inbounds %struct.efa_admin_query_qp_resp, %struct.efa_admin_query_qp_resp* %10, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.efa_com_query_qp_result*, %struct.efa_com_query_qp_result** %7, align 8
  %53 = getelementptr inbounds %struct.efa_com_query_qp_result, %struct.efa_com_query_qp_result* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %37, %28
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @efa_com_cmd_exec(%struct.efa_com_admin_queue*, %struct.efa_admin_aq_entry*, i32, %struct.efa_admin_acq_entry*, i32) #2

declare dso_local i32 @ibdev_err_ratelimited(i32, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
