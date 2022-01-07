; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_stratix10-rsu.c_rsu_status_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_stratix10-rsu.c_rsu_status_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stratix10_svc_client = type { i32, %struct.stratix10_rsu_priv* }
%struct.stratix10_rsu_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i64, i64, i8*, i8* }
%struct.stratix10_svc_cb_data = type { i64, i64 }
%struct.arm_smccc_res = type { i64, i32, i64, i32 }

@SVC_STATUS_RSU_OK = common dso_local global i32 0, align 4
@RSU_VERSION_MASK = common dso_local global i32 0, align 4
@RSU_STATE_MASK = common dso_local global i32 0, align 4
@RSU_ERROR_LOCATION_MASK = common dso_local global i32 0, align 4
@RSU_ERROR_DETAIL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"COMMAND_RSU_STATUS returned 0x%lX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stratix10_svc_client*, %struct.stratix10_svc_cb_data*)* @rsu_status_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsu_status_callback(%struct.stratix10_svc_client* %0, %struct.stratix10_svc_cb_data* %1) #0 {
  %3 = alloca %struct.stratix10_svc_client*, align 8
  %4 = alloca %struct.stratix10_svc_cb_data*, align 8
  %5 = alloca %struct.stratix10_rsu_priv*, align 8
  %6 = alloca %struct.arm_smccc_res*, align 8
  store %struct.stratix10_svc_client* %0, %struct.stratix10_svc_client** %3, align 8
  store %struct.stratix10_svc_cb_data* %1, %struct.stratix10_svc_cb_data** %4, align 8
  %7 = load %struct.stratix10_svc_client*, %struct.stratix10_svc_client** %3, align 8
  %8 = getelementptr inbounds %struct.stratix10_svc_client, %struct.stratix10_svc_client* %7, i32 0, i32 1
  %9 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %8, align 8
  store %struct.stratix10_rsu_priv* %9, %struct.stratix10_rsu_priv** %5, align 8
  %10 = load %struct.stratix10_svc_cb_data*, %struct.stratix10_svc_cb_data** %4, align 8
  %11 = getelementptr inbounds %struct.stratix10_svc_cb_data, %struct.stratix10_svc_cb_data* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.arm_smccc_res*
  store %struct.arm_smccc_res* %13, %struct.arm_smccc_res** %6, align 8
  %14 = load %struct.stratix10_svc_cb_data*, %struct.stratix10_svc_cb_data** %4, align 8
  %15 = getelementptr inbounds %struct.stratix10_svc_cb_data, %struct.stratix10_svc_cb_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @SVC_STATUS_RSU_OK, align 4
  %18 = call i64 @BIT(i32 %17)
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %65

20:                                               ; preds = %2
  %21 = load i32, i32* @RSU_VERSION_MASK, align 4
  %22 = load %struct.arm_smccc_res*, %struct.arm_smccc_res** %6, align 8
  %23 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @FIELD_GET(i32 %21, i32 %24)
  %26 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %27 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 5
  store i8* %25, i8** %28, align 8
  %29 = load i32, i32* @RSU_STATE_MASK, align 4
  %30 = load %struct.arm_smccc_res*, %struct.arm_smccc_res** %6, align 8
  %31 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @FIELD_GET(i32 %29, i32 %32)
  %34 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %35 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  store i8* %33, i8** %36, align 8
  %37 = load %struct.arm_smccc_res*, %struct.arm_smccc_res** %6, align 8
  %38 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %41 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  store i64 %39, i64* %42, align 8
  %43 = load %struct.arm_smccc_res*, %struct.arm_smccc_res** %6, align 8
  %44 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %47 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i64 %45, i64* %48, align 8
  %49 = load i32, i32* @RSU_ERROR_LOCATION_MASK, align 4
  %50 = load %struct.arm_smccc_res*, %struct.arm_smccc_res** %6, align 8
  %51 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @FIELD_GET(i32 %49, i32 %52)
  %54 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %55 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i8* %53, i8** %56, align 8
  %57 = load i32, i32* @RSU_ERROR_DETAIL_MASK, align 4
  %58 = load %struct.arm_smccc_res*, %struct.arm_smccc_res** %6, align 8
  %59 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @FIELD_GET(i32 %57, i32 %60)
  %62 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %63 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  br label %91

65:                                               ; preds = %2
  %66 = load %struct.stratix10_svc_client*, %struct.stratix10_svc_client** %3, align 8
  %67 = getelementptr inbounds %struct.stratix10_svc_client, %struct.stratix10_svc_client* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.arm_smccc_res*, %struct.arm_smccc_res** %6, align 8
  %70 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %71)
  %73 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %74 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 5
  store i8* null, i8** %75, align 8
  %76 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %77 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  store i8* null, i8** %78, align 8
  %79 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %80 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  store i64 0, i64* %81, align 8
  %82 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %83 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %86 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i8* null, i8** %87, align 8
  %88 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %89 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i8* null, i8** %90, align 8
  br label %91

91:                                               ; preds = %65, %20
  %92 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %93 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %92, i32 0, i32 0
  %94 = call i32 @complete(i32* %93)
  ret void
}

declare dso_local i64 @BIT(i32) #1

declare dso_local i8* @FIELD_GET(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
