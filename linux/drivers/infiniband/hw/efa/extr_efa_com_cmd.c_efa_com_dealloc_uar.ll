; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com_cmd.c_efa_com_dealloc_uar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com_cmd.c_efa_com_dealloc_uar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_com_dev = type { i32, %struct.efa_com_admin_queue }
%struct.efa_com_admin_queue = type { i32 }
%struct.efa_com_dealloc_uar_params = type { i32 }
%struct.efa_admin_dealloc_uar_cmd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.efa_admin_dealloc_uar_resp = type { i32 }
%struct.efa_admin_aq_entry = type { i32 }
%struct.efa_admin_acq_entry = type { i32 }

@EFA_ADMIN_DEALLOC_UAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to deallocate uar-%u [%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efa_com_dealloc_uar(%struct.efa_com_dev* %0, %struct.efa_com_dealloc_uar_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efa_com_dev*, align 8
  %5 = alloca %struct.efa_com_dealloc_uar_params*, align 8
  %6 = alloca %struct.efa_com_admin_queue*, align 8
  %7 = alloca %struct.efa_admin_dealloc_uar_cmd, align 4
  %8 = alloca %struct.efa_admin_dealloc_uar_resp, align 4
  %9 = alloca i32, align 4
  store %struct.efa_com_dev* %0, %struct.efa_com_dev** %4, align 8
  store %struct.efa_com_dealloc_uar_params* %1, %struct.efa_com_dealloc_uar_params** %5, align 8
  %10 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %11 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %10, i32 0, i32 1
  store %struct.efa_com_admin_queue* %11, %struct.efa_com_admin_queue** %6, align 8
  %12 = bitcast %struct.efa_admin_dealloc_uar_cmd* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = load i32, i32* @EFA_ADMIN_DEALLOC_UAR, align 4
  %14 = getelementptr inbounds %struct.efa_admin_dealloc_uar_cmd, %struct.efa_admin_dealloc_uar_cmd* %7, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.efa_com_dealloc_uar_params*, %struct.efa_com_dealloc_uar_params** %5, align 8
  %17 = getelementptr inbounds %struct.efa_com_dealloc_uar_params, %struct.efa_com_dealloc_uar_params* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.efa_admin_dealloc_uar_cmd, %struct.efa_admin_dealloc_uar_cmd* %7, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %6, align 8
  %21 = bitcast %struct.efa_admin_dealloc_uar_cmd* %7 to %struct.efa_admin_aq_entry*
  %22 = bitcast %struct.efa_admin_dealloc_uar_resp* %8 to %struct.efa_admin_acq_entry*
  %23 = call i32 @efa_com_cmd_exec(%struct.efa_com_admin_queue* %20, %struct.efa_admin_aq_entry* %21, i32 8, %struct.efa_admin_acq_entry* %22, i32 4)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %28 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.efa_admin_dealloc_uar_cmd, %struct.efa_admin_dealloc_uar_cmd* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @ibdev_err_ratelimited(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i32, i32* %3, align 4
  ret i32 %37
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
