; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com_cmd.c_efa_com_create_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com_cmd.c_efa_com_create_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_com_dev = type { i32, %struct.efa_com_admin_queue }
%struct.efa_com_admin_queue = type { i32 }
%struct.efa_com_create_ah_params = type { i32, i32 }
%struct.efa_com_create_ah_result = type { i32 }
%struct.efa_admin_create_ah_resp = type { i32 }
%struct.efa_admin_create_ah_cmd = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.efa_admin_aq_entry = type { i32 }
%struct.efa_admin_acq_entry = type { i32 }

@EFA_ADMIN_CREATE_AH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to create ah for %pI6 [%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efa_com_create_ah(%struct.efa_com_dev* %0, %struct.efa_com_create_ah_params* %1, %struct.efa_com_create_ah_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efa_com_dev*, align 8
  %6 = alloca %struct.efa_com_create_ah_params*, align 8
  %7 = alloca %struct.efa_com_create_ah_result*, align 8
  %8 = alloca %struct.efa_admin_create_ah_resp, align 4
  %9 = alloca %struct.efa_com_admin_queue*, align 8
  %10 = alloca %struct.efa_admin_create_ah_cmd, align 4
  %11 = alloca i32, align 4
  store %struct.efa_com_dev* %0, %struct.efa_com_dev** %5, align 8
  store %struct.efa_com_create_ah_params* %1, %struct.efa_com_create_ah_params** %6, align 8
  store %struct.efa_com_create_ah_result* %2, %struct.efa_com_create_ah_result** %7, align 8
  %12 = load %struct.efa_com_dev*, %struct.efa_com_dev** %5, align 8
  %13 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %12, i32 0, i32 1
  store %struct.efa_com_admin_queue* %13, %struct.efa_com_admin_queue** %9, align 8
  %14 = bitcast %struct.efa_admin_create_ah_cmd* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 12, i1 false)
  %15 = load i32, i32* @EFA_ADMIN_CREATE_AH, align 4
  %16 = getelementptr inbounds %struct.efa_admin_create_ah_cmd, %struct.efa_admin_create_ah_cmd* %10, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = getelementptr inbounds %struct.efa_admin_create_ah_cmd, %struct.efa_admin_create_ah_cmd* %10, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.efa_com_create_ah_params*, %struct.efa_com_create_ah_params** %6, align 8
  %21 = getelementptr inbounds %struct.efa_com_create_ah_params, %struct.efa_com_create_ah_params* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @memcpy(i32 %19, i32 %22, i32 4)
  %24 = load %struct.efa_com_create_ah_params*, %struct.efa_com_create_ah_params** %6, align 8
  %25 = getelementptr inbounds %struct.efa_com_create_ah_params, %struct.efa_com_create_ah_params* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.efa_admin_create_ah_cmd, %struct.efa_admin_create_ah_cmd* %10, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %9, align 8
  %29 = bitcast %struct.efa_admin_create_ah_cmd* %10 to %struct.efa_admin_aq_entry*
  %30 = bitcast %struct.efa_admin_create_ah_resp* %8 to %struct.efa_admin_acq_entry*
  %31 = call i32 @efa_com_cmd_exec(%struct.efa_com_admin_queue* %28, %struct.efa_admin_aq_entry* %29, i32 12, %struct.efa_admin_acq_entry* %30, i32 4)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %3
  %35 = load %struct.efa_com_dev*, %struct.efa_com_dev** %5, align 8
  %36 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.efa_admin_create_ah_cmd, %struct.efa_admin_create_ah_cmd* %10, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @ibdev_err_ratelimited(i32 %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %4, align 4
  br label %48

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.efa_admin_create_ah_resp, %struct.efa_admin_create_ah_resp* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.efa_com_create_ah_result*, %struct.efa_com_create_ah_result** %7, align 8
  %47 = getelementptr inbounds %struct.efa_com_create_ah_result, %struct.efa_com_create_ah_result* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %43, %34
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @efa_com_cmd_exec(%struct.efa_com_admin_queue*, %struct.efa_admin_aq_entry*, i32, %struct.efa_admin_acq_entry*, i32) #2

declare dso_local i32 @ibdev_err_ratelimited(i32, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
