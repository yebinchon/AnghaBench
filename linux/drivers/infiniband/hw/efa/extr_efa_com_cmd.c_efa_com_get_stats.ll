; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com_cmd.c_efa_com_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com_cmd.c_efa_com_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_com_dev = type { i32, %struct.efa_com_admin_queue }
%struct.efa_com_admin_queue = type { i32 }
%struct.efa_com_get_stats_params = type { i32, i32, i32 }
%union.efa_com_get_stats_result = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.efa_admin_aq_get_stats_cmd = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.efa_admin_acq_get_stats_resp = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.efa_admin_aq_entry = type { i32 }
%struct.efa_admin_acq_entry = type { i32 }

@EFA_ADMIN_GET_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to get stats type-%u scope-%u.%u [%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efa_com_get_stats(%struct.efa_com_dev* %0, %struct.efa_com_get_stats_params* %1, %union.efa_com_get_stats_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efa_com_dev*, align 8
  %6 = alloca %struct.efa_com_get_stats_params*, align 8
  %7 = alloca %union.efa_com_get_stats_result*, align 8
  %8 = alloca %struct.efa_com_admin_queue*, align 8
  %9 = alloca %struct.efa_admin_aq_get_stats_cmd, align 4
  %10 = alloca %struct.efa_admin_acq_get_stats_resp, align 4
  %11 = alloca i32, align 4
  store %struct.efa_com_dev* %0, %struct.efa_com_dev** %5, align 8
  store %struct.efa_com_get_stats_params* %1, %struct.efa_com_get_stats_params** %6, align 8
  store %union.efa_com_get_stats_result* %2, %union.efa_com_get_stats_result** %7, align 8
  %12 = load %struct.efa_com_dev*, %struct.efa_com_dev** %5, align 8
  %13 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %12, i32 0, i32 1
  store %struct.efa_com_admin_queue* %13, %struct.efa_com_admin_queue** %8, align 8
  %14 = bitcast %struct.efa_admin_aq_get_stats_cmd* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 16, i1 false)
  %15 = load i32, i32* @EFA_ADMIN_GET_STATS, align 4
  %16 = getelementptr inbounds %struct.efa_admin_aq_get_stats_cmd, %struct.efa_admin_aq_get_stats_cmd* %9, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.efa_com_get_stats_params*, %struct.efa_com_get_stats_params** %6, align 8
  %19 = getelementptr inbounds %struct.efa_com_get_stats_params, %struct.efa_com_get_stats_params* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.efa_admin_aq_get_stats_cmd, %struct.efa_admin_aq_get_stats_cmd* %9, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load %struct.efa_com_get_stats_params*, %struct.efa_com_get_stats_params** %6, align 8
  %23 = getelementptr inbounds %struct.efa_com_get_stats_params, %struct.efa_com_get_stats_params* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.efa_admin_aq_get_stats_cmd, %struct.efa_admin_aq_get_stats_cmd* %9, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load %struct.efa_com_get_stats_params*, %struct.efa_com_get_stats_params** %6, align 8
  %27 = getelementptr inbounds %struct.efa_com_get_stats_params, %struct.efa_com_get_stats_params* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.efa_admin_aq_get_stats_cmd, %struct.efa_admin_aq_get_stats_cmd* %9, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %8, align 8
  %31 = bitcast %struct.efa_admin_aq_get_stats_cmd* %9 to %struct.efa_admin_aq_entry*
  %32 = bitcast %struct.efa_admin_acq_get_stats_resp* %10 to %struct.efa_admin_acq_entry*
  %33 = call i32 @efa_com_cmd_exec(%struct.efa_com_admin_queue* %30, %struct.efa_admin_aq_entry* %31, i32 16, %struct.efa_admin_acq_entry* %32, i32 20)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %3
  %37 = load %struct.efa_com_dev*, %struct.efa_com_dev** %5, align 8
  %38 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.efa_admin_aq_get_stats_cmd, %struct.efa_admin_aq_get_stats_cmd* %9, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.efa_admin_aq_get_stats_cmd, %struct.efa_admin_aq_get_stats_cmd* %9, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.efa_admin_aq_get_stats_cmd, %struct.efa_admin_aq_get_stats_cmd* %9, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @ibdev_err_ratelimited(i32 %39, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %43, i32 %45, i32 %46)
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %4, align 4
  br label %80

49:                                               ; preds = %3
  %50 = getelementptr inbounds %struct.efa_admin_acq_get_stats_resp, %struct.efa_admin_acq_get_stats_resp* %10, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %union.efa_com_get_stats_result*, %union.efa_com_get_stats_result** %7, align 8
  %54 = bitcast %union.efa_com_get_stats_result* %53 to %struct.TYPE_5__*
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 4
  store i32 %52, i32* %55, align 4
  %56 = getelementptr inbounds %struct.efa_admin_acq_get_stats_resp, %struct.efa_admin_acq_get_stats_resp* %10, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %union.efa_com_get_stats_result*, %union.efa_com_get_stats_result** %7, align 8
  %60 = bitcast %union.efa_com_get_stats_result* %59 to %struct.TYPE_5__*
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 4
  %62 = getelementptr inbounds %struct.efa_admin_acq_get_stats_resp, %struct.efa_admin_acq_get_stats_resp* %10, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %union.efa_com_get_stats_result*, %union.efa_com_get_stats_result** %7, align 8
  %66 = bitcast %union.efa_com_get_stats_result* %65 to %struct.TYPE_5__*
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  store i32 %64, i32* %67, align 4
  %68 = getelementptr inbounds %struct.efa_admin_acq_get_stats_resp, %struct.efa_admin_acq_get_stats_resp* %10, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %union.efa_com_get_stats_result*, %union.efa_com_get_stats_result** %7, align 8
  %72 = bitcast %union.efa_com_get_stats_result* %71 to %struct.TYPE_5__*
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  %74 = getelementptr inbounds %struct.efa_admin_acq_get_stats_resp, %struct.efa_admin_acq_get_stats_resp* %10, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %union.efa_com_get_stats_result*, %union.efa_com_get_stats_result** %7, align 8
  %78 = bitcast %union.efa_com_get_stats_result* %77 to %struct.TYPE_5__*
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 4
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %49, %36
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @efa_com_cmd_exec(%struct.efa_com_admin_queue*, %struct.efa_admin_aq_entry*, i32, %struct.efa_admin_acq_entry*, i32) #2

declare dso_local i32 @ibdev_err_ratelimited(i32, i8*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
