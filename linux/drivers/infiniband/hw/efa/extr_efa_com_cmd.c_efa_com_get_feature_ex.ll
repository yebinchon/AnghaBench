; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com_cmd.c_efa_com_get_feature_ex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com_cmd.c_efa_com_get_feature_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_com_dev = type { i32, %struct.efa_com_admin_queue }
%struct.efa_com_admin_queue = type { i32 }
%struct.efa_admin_get_feature_resp = type { i32 }
%struct.efa_admin_get_feature_cmd = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.efa_admin_aq_entry = type { i32 }
%struct.efa_admin_acq_entry = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Feature %d isn't supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EFA_ADMIN_GET_FEATURE = common dso_local global i32 0, align 4
@EFA_ADMIN_AQ_COMMON_DESC_CTRL_DATA_INDIRECT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to submit get_feature command %d [%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efa_com_dev*, %struct.efa_admin_get_feature_resp*, i32, i32, i64)* @efa_com_get_feature_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efa_com_get_feature_ex(%struct.efa_com_dev* %0, %struct.efa_admin_get_feature_resp* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.efa_com_dev*, align 8
  %8 = alloca %struct.efa_admin_get_feature_resp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.efa_admin_get_feature_cmd, align 8
  %13 = alloca %struct.efa_com_admin_queue*, align 8
  %14 = alloca i32, align 4
  store %struct.efa_com_dev* %0, %struct.efa_com_dev** %7, align 8
  store %struct.efa_admin_get_feature_resp* %1, %struct.efa_admin_get_feature_resp** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = bitcast %struct.efa_admin_get_feature_cmd* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 32, i1 false)
  %16 = load %struct.efa_com_dev*, %struct.efa_com_dev** %7, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @efa_com_check_supported_feature_id(%struct.efa_com_dev* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %5
  %21 = load %struct.efa_com_dev*, %struct.efa_com_dev** %7, align 8
  %22 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 (i32, i8*, i32, ...) @ibdev_err_ratelimited(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %71

28:                                               ; preds = %5
  %29 = load %struct.efa_com_dev*, %struct.efa_com_dev** %7, align 8
  %30 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %29, i32 0, i32 1
  store %struct.efa_com_admin_queue* %30, %struct.efa_com_admin_queue** %13, align 8
  %31 = load i32, i32* @EFA_ADMIN_GET_FEATURE, align 4
  %32 = getelementptr inbounds %struct.efa_admin_get_feature_cmd, %struct.efa_admin_get_feature_cmd* %12, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i64, i64* %11, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i32, i32* @EFA_ADMIN_AQ_COMMON_DESC_CTRL_DATA_INDIRECT_MASK, align 4
  %38 = getelementptr inbounds %struct.efa_admin_get_feature_cmd, %struct.efa_admin_get_feature_cmd* %12, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %36, %28
  %41 = load i32, i32* %10, align 4
  %42 = getelementptr inbounds %struct.efa_admin_get_feature_cmd, %struct.efa_admin_get_feature_cmd* %12, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.efa_admin_get_feature_cmd, %struct.efa_admin_get_feature_cmd* %12, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = call i32 @efa_com_set_dma_addr(i32 %41, i32* %44, i32* %47)
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds %struct.efa_admin_get_feature_cmd, %struct.efa_admin_get_feature_cmd* %12, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* %9, align 4
  %53 = getelementptr inbounds %struct.efa_admin_get_feature_cmd, %struct.efa_admin_get_feature_cmd* %12, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %13, align 8
  %56 = bitcast %struct.efa_admin_get_feature_cmd* %12 to %struct.efa_admin_aq_entry*
  %57 = load %struct.efa_admin_get_feature_resp*, %struct.efa_admin_get_feature_resp** %8, align 8
  %58 = bitcast %struct.efa_admin_get_feature_resp* %57 to %struct.efa_admin_acq_entry*
  %59 = call i32 @efa_com_cmd_exec(%struct.efa_com_admin_queue* %55, %struct.efa_admin_aq_entry* %56, i32 32, %struct.efa_admin_acq_entry* %58, i32 4)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %40
  %63 = load %struct.efa_com_dev*, %struct.efa_com_dev** %7, align 8
  %64 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %14, align 4
  %68 = call i32 (i32, i8*, i32, ...) @ibdev_err_ratelimited(i32 %65, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %6, align 4
  br label %71

70:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %70, %62, %20
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @efa_com_check_supported_feature_id(%struct.efa_com_dev*, i32) #2

declare dso_local i32 @ibdev_err_ratelimited(i32, i8*, i32, ...) #2

declare dso_local i32 @efa_com_set_dma_addr(i32, i32*, i32*) #2

declare dso_local i32 @efa_com_cmd_exec(%struct.efa_com_admin_queue*, %struct.efa_admin_aq_entry*, i32, %struct.efa_admin_acq_entry*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
