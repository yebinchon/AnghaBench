; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com_cmd.c_efa_com_create_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com_cmd.c_efa_com_create_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_com_dev = type { i32, %struct.efa_com_admin_queue }
%struct.efa_com_admin_queue = type { i32 }
%struct.efa_com_create_qp_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.efa_com_create_qp_result = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.efa_admin_create_qp_cmd = type { i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.efa_admin_create_qp_resp = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.efa_admin_aq_entry = type { i32 }
%struct.efa_admin_acq_entry = type { i32 }

@EFA_ADMIN_CREATE_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to create qp [%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efa_com_create_qp(%struct.efa_com_dev* %0, %struct.efa_com_create_qp_params* %1, %struct.efa_com_create_qp_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efa_com_dev*, align 8
  %6 = alloca %struct.efa_com_create_qp_params*, align 8
  %7 = alloca %struct.efa_com_create_qp_result*, align 8
  %8 = alloca %struct.efa_admin_create_qp_cmd, align 4
  %9 = alloca %struct.efa_admin_create_qp_resp, align 4
  %10 = alloca %struct.efa_com_admin_queue*, align 8
  %11 = alloca i32, align 4
  store %struct.efa_com_dev* %0, %struct.efa_com_dev** %5, align 8
  store %struct.efa_com_create_qp_params* %1, %struct.efa_com_create_qp_params** %6, align 8
  store %struct.efa_com_create_qp_result* %2, %struct.efa_com_create_qp_result** %7, align 8
  %12 = bitcast %struct.efa_admin_create_qp_cmd* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 44, i1 false)
  %13 = load %struct.efa_com_dev*, %struct.efa_com_dev** %5, align 8
  %14 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %13, i32 0, i32 1
  store %struct.efa_com_admin_queue* %14, %struct.efa_com_admin_queue** %10, align 8
  %15 = load i32, i32* @EFA_ADMIN_CREATE_QP, align 4
  %16 = getelementptr inbounds %struct.efa_admin_create_qp_cmd, %struct.efa_admin_create_qp_cmd* %8, i32 0, i32 7
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.efa_com_create_qp_params*, %struct.efa_com_create_qp_params** %6, align 8
  %19 = getelementptr inbounds %struct.efa_com_create_qp_params, %struct.efa_com_create_qp_params* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.efa_admin_create_qp_cmd, %struct.efa_admin_create_qp_cmd* %8, i32 0, i32 6
  store i32 %20, i32* %21, align 4
  %22 = load %struct.efa_com_create_qp_params*, %struct.efa_com_create_qp_params** %6, align 8
  %23 = getelementptr inbounds %struct.efa_com_create_qp_params, %struct.efa_com_create_qp_params* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.efa_admin_create_qp_cmd, %struct.efa_admin_create_qp_cmd* %8, i32 0, i32 5
  store i32 %24, i32* %25, align 4
  %26 = load %struct.efa_com_create_qp_params*, %struct.efa_com_create_qp_params** %6, align 8
  %27 = getelementptr inbounds %struct.efa_com_create_qp_params, %struct.efa_com_create_qp_params* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.efa_admin_create_qp_cmd, %struct.efa_admin_create_qp_cmd* %8, i32 0, i32 4
  store i32 %28, i32* %29, align 4
  %30 = load %struct.efa_com_create_qp_params*, %struct.efa_com_create_qp_params** %6, align 8
  %31 = getelementptr inbounds %struct.efa_com_create_qp_params, %struct.efa_com_create_qp_params* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.efa_admin_create_qp_cmd, %struct.efa_admin_create_qp_cmd* %8, i32 0, i32 3
  store i32 %32, i32* %33, align 4
  %34 = load %struct.efa_com_create_qp_params*, %struct.efa_com_create_qp_params** %6, align 8
  %35 = getelementptr inbounds %struct.efa_com_create_qp_params, %struct.efa_com_create_qp_params* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.efa_admin_create_qp_cmd, %struct.efa_admin_create_qp_cmd* %8, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %38 = load %struct.efa_com_create_qp_params*, %struct.efa_com_create_qp_params** %6, align 8
  %39 = getelementptr inbounds %struct.efa_com_create_qp_params, %struct.efa_com_create_qp_params* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.efa_admin_create_qp_cmd, %struct.efa_admin_create_qp_cmd* %8, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.efa_com_create_qp_params*, %struct.efa_com_create_qp_params** %6, align 8
  %44 = getelementptr inbounds %struct.efa_com_create_qp_params, %struct.efa_com_create_qp_params* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.efa_admin_create_qp_cmd, %struct.efa_admin_create_qp_cmd* %8, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.efa_com_create_qp_params*, %struct.efa_com_create_qp_params** %6, align 8
  %49 = getelementptr inbounds %struct.efa_com_create_qp_params, %struct.efa_com_create_qp_params* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.efa_admin_create_qp_cmd, %struct.efa_admin_create_qp_cmd* %8, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.efa_com_create_qp_params*, %struct.efa_com_create_qp_params** %6, align 8
  %54 = getelementptr inbounds %struct.efa_com_create_qp_params, %struct.efa_com_create_qp_params* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.efa_admin_create_qp_cmd, %struct.efa_admin_create_qp_cmd* %8, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.efa_com_create_qp_params*, %struct.efa_com_create_qp_params** %6, align 8
  %59 = getelementptr inbounds %struct.efa_com_create_qp_params, %struct.efa_com_create_qp_params* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.efa_admin_create_qp_cmd, %struct.efa_admin_create_qp_cmd* %8, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %10, align 8
  %63 = bitcast %struct.efa_admin_create_qp_cmd* %8 to %struct.efa_admin_aq_entry*
  %64 = bitcast %struct.efa_admin_create_qp_resp* %9 to %struct.efa_admin_acq_entry*
  %65 = call i32 @efa_com_cmd_exec(%struct.efa_com_admin_queue* %62, %struct.efa_admin_aq_entry* %63, i32 44, %struct.efa_admin_acq_entry* %64, i32 28)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %3
  %69 = load %struct.efa_com_dev*, %struct.efa_com_dev** %5, align 8
  %70 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @ibdev_err_ratelimited(i32 %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %4, align 4
  br label %104

75:                                               ; preds = %3
  %76 = getelementptr inbounds %struct.efa_admin_create_qp_resp, %struct.efa_admin_create_qp_resp* %9, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.efa_com_create_qp_result*, %struct.efa_com_create_qp_result** %7, align 8
  %79 = getelementptr inbounds %struct.efa_com_create_qp_result, %struct.efa_com_create_qp_result* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 4
  %80 = getelementptr inbounds %struct.efa_admin_create_qp_resp, %struct.efa_admin_create_qp_resp* %9, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.efa_com_create_qp_result*, %struct.efa_com_create_qp_result** %7, align 8
  %83 = getelementptr inbounds %struct.efa_com_create_qp_result, %struct.efa_com_create_qp_result* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 4
  %84 = getelementptr inbounds %struct.efa_admin_create_qp_resp, %struct.efa_admin_create_qp_resp* %9, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.efa_com_create_qp_result*, %struct.efa_com_create_qp_result** %7, align 8
  %87 = getelementptr inbounds %struct.efa_com_create_qp_result, %struct.efa_com_create_qp_result* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  %88 = getelementptr inbounds %struct.efa_admin_create_qp_resp, %struct.efa_admin_create_qp_resp* %9, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.efa_com_create_qp_result*, %struct.efa_com_create_qp_result** %7, align 8
  %91 = getelementptr inbounds %struct.efa_com_create_qp_result, %struct.efa_com_create_qp_result* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = getelementptr inbounds %struct.efa_admin_create_qp_resp, %struct.efa_admin_create_qp_resp* %9, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.efa_com_create_qp_result*, %struct.efa_com_create_qp_result** %7, align 8
  %95 = getelementptr inbounds %struct.efa_com_create_qp_result, %struct.efa_com_create_qp_result* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = getelementptr inbounds %struct.efa_admin_create_qp_resp, %struct.efa_admin_create_qp_resp* %9, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.efa_com_create_qp_result*, %struct.efa_com_create_qp_result** %7, align 8
  %99 = getelementptr inbounds %struct.efa_com_create_qp_result, %struct.efa_com_create_qp_result* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = getelementptr inbounds %struct.efa_admin_create_qp_resp, %struct.efa_admin_create_qp_resp* %9, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.efa_com_create_qp_result*, %struct.efa_com_create_qp_result** %7, align 8
  %103 = getelementptr inbounds %struct.efa_com_create_qp_result, %struct.efa_com_create_qp_result* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %75, %68
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @efa_com_cmd_exec(%struct.efa_com_admin_queue*, %struct.efa_admin_aq_entry*, i32, %struct.efa_admin_acq_entry*, i32) #2

declare dso_local i32 @ibdev_err_ratelimited(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
