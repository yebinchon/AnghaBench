; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com_cmd.c_efa_com_set_feature_ex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com_cmd.c_efa_com_set_feature_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_com_dev = type { i32, %struct.efa_com_admin_queue }
%struct.efa_com_admin_queue = type { i32 }
%struct.efa_admin_set_feature_resp = type { i32 }
%struct.efa_admin_set_feature_cmd = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.efa_admin_aq_entry = type { i32 }
%struct.efa_admin_acq_entry = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Feature %d isn't supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EFA_ADMIN_SET_FEATURE = common dso_local global i32 0, align 4
@EFA_ADMIN_AQ_COMMON_DESC_CTRL_DATA_INDIRECT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Failed to submit set_feature command %d error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efa_com_dev*, %struct.efa_admin_set_feature_resp*, %struct.efa_admin_set_feature_cmd*, i32, i32, i64)* @efa_com_set_feature_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efa_com_set_feature_ex(%struct.efa_com_dev* %0, %struct.efa_admin_set_feature_resp* %1, %struct.efa_admin_set_feature_cmd* %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.efa_com_dev*, align 8
  %9 = alloca %struct.efa_admin_set_feature_resp*, align 8
  %10 = alloca %struct.efa_admin_set_feature_cmd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.efa_com_admin_queue*, align 8
  %15 = alloca i32, align 4
  store %struct.efa_com_dev* %0, %struct.efa_com_dev** %8, align 8
  store %struct.efa_admin_set_feature_resp* %1, %struct.efa_admin_set_feature_resp** %9, align 8
  store %struct.efa_admin_set_feature_cmd* %2, %struct.efa_admin_set_feature_cmd** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %16 = load %struct.efa_com_dev*, %struct.efa_com_dev** %8, align 8
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @efa_com_check_supported_feature_id(%struct.efa_com_dev* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %6
  %21 = load %struct.efa_com_dev*, %struct.efa_com_dev** %8, align 8
  %22 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 (i32, i8*, i32, ...) @ibdev_err_ratelimited(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %78

28:                                               ; preds = %6
  %29 = load %struct.efa_com_dev*, %struct.efa_com_dev** %8, align 8
  %30 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %29, i32 0, i32 1
  store %struct.efa_com_admin_queue* %30, %struct.efa_com_admin_queue** %14, align 8
  %31 = load i32, i32* @EFA_ADMIN_SET_FEATURE, align 4
  %32 = load %struct.efa_admin_set_feature_cmd*, %struct.efa_admin_set_feature_cmd** %10, align 8
  %33 = getelementptr inbounds %struct.efa_admin_set_feature_cmd, %struct.efa_admin_set_feature_cmd* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load i64, i64* %13, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %28
  %38 = load i32, i32* @EFA_ADMIN_AQ_COMMON_DESC_CTRL_DATA_INDIRECT_MASK, align 4
  %39 = load %struct.efa_admin_set_feature_cmd*, %struct.efa_admin_set_feature_cmd** %10, align 8
  %40 = getelementptr inbounds %struct.efa_admin_set_feature_cmd, %struct.efa_admin_set_feature_cmd* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.efa_admin_set_feature_cmd*, %struct.efa_admin_set_feature_cmd** %10, align 8
  %44 = getelementptr inbounds %struct.efa_admin_set_feature_cmd, %struct.efa_admin_set_feature_cmd* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.efa_admin_set_feature_cmd*, %struct.efa_admin_set_feature_cmd** %10, align 8
  %48 = getelementptr inbounds %struct.efa_admin_set_feature_cmd, %struct.efa_admin_set_feature_cmd* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = call i32 @efa_com_set_dma_addr(i32 %42, i32* %46, i32* %50)
  br label %52

52:                                               ; preds = %37, %28
  %53 = load i64, i64* %13, align 8
  %54 = load %struct.efa_admin_set_feature_cmd*, %struct.efa_admin_set_feature_cmd** %10, align 8
  %55 = getelementptr inbounds %struct.efa_admin_set_feature_cmd, %struct.efa_admin_set_feature_cmd* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.efa_admin_set_feature_cmd*, %struct.efa_admin_set_feature_cmd** %10, align 8
  %59 = getelementptr inbounds %struct.efa_admin_set_feature_cmd, %struct.efa_admin_set_feature_cmd* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %14, align 8
  %62 = load %struct.efa_admin_set_feature_cmd*, %struct.efa_admin_set_feature_cmd** %10, align 8
  %63 = bitcast %struct.efa_admin_set_feature_cmd* %62 to %struct.efa_admin_aq_entry*
  %64 = load %struct.efa_admin_set_feature_resp*, %struct.efa_admin_set_feature_resp** %9, align 8
  %65 = bitcast %struct.efa_admin_set_feature_resp* %64 to %struct.efa_admin_acq_entry*
  %66 = call i32 @efa_com_cmd_exec(%struct.efa_com_admin_queue* %61, %struct.efa_admin_aq_entry* %63, i32 32, %struct.efa_admin_acq_entry* %65, i32 4)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %52
  %70 = load %struct.efa_com_dev*, %struct.efa_com_dev** %8, align 8
  %71 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %15, align 4
  %75 = call i32 (i32, i8*, i32, ...) @ibdev_err_ratelimited(i32 %72, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i32, i32* %15, align 4
  store i32 %76, i32* %7, align 4
  br label %78

77:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %77, %69, %20
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @efa_com_check_supported_feature_id(%struct.efa_com_dev*, i32) #1

declare dso_local i32 @ibdev_err_ratelimited(i32, i8*, i32, ...) #1

declare dso_local i32 @efa_com_set_dma_addr(i32, i32*, i32*) #1

declare dso_local i32 @efa_com_cmd_exec(%struct.efa_com_admin_queue*, %struct.efa_admin_aq_entry*, i32, %struct.efa_admin_acq_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
