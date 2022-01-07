; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_stratix10-rsu.c_rsu_retry_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_stratix10-rsu.c_rsu_retry_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stratix10_svc_client = type { i32, %struct.stratix10_rsu_priv* }
%struct.stratix10_rsu_priv = type { i32, i32 }
%struct.stratix10_svc_cb_data = type { i64, i64 }

@SVC_STATUS_RSU_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to get retry counter %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stratix10_svc_client*, %struct.stratix10_svc_cb_data*)* @rsu_retry_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsu_retry_callback(%struct.stratix10_svc_client* %0, %struct.stratix10_svc_cb_data* %1) #0 {
  %3 = alloca %struct.stratix10_svc_client*, align 8
  %4 = alloca %struct.stratix10_svc_cb_data*, align 8
  %5 = alloca %struct.stratix10_rsu_priv*, align 8
  %6 = alloca i32*, align 8
  store %struct.stratix10_svc_client* %0, %struct.stratix10_svc_client** %3, align 8
  store %struct.stratix10_svc_cb_data* %1, %struct.stratix10_svc_cb_data** %4, align 8
  %7 = load %struct.stratix10_svc_client*, %struct.stratix10_svc_client** %3, align 8
  %8 = getelementptr inbounds %struct.stratix10_svc_client, %struct.stratix10_svc_client* %7, i32 0, i32 1
  %9 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %8, align 8
  store %struct.stratix10_rsu_priv* %9, %struct.stratix10_rsu_priv** %5, align 8
  %10 = load %struct.stratix10_svc_cb_data*, %struct.stratix10_svc_cb_data** %4, align 8
  %11 = getelementptr inbounds %struct.stratix10_svc_cb_data, %struct.stratix10_svc_cb_data* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %6, align 8
  %14 = load %struct.stratix10_svc_cb_data*, %struct.stratix10_svc_cb_data** %4, align 8
  %15 = getelementptr inbounds %struct.stratix10_svc_cb_data, %struct.stratix10_svc_cb_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @SVC_STATUS_RSU_OK, align 4
  %18 = call i64 @BIT(i32 %17)
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %24 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %33

25:                                               ; preds = %2
  %26 = load %struct.stratix10_svc_client*, %struct.stratix10_svc_client** %3, align 8
  %27 = getelementptr inbounds %struct.stratix10_svc_client, %struct.stratix10_svc_client* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.stratix10_svc_cb_data*, %struct.stratix10_svc_cb_data** %4, align 8
  %30 = getelementptr inbounds %struct.stratix10_svc_cb_data, %struct.stratix10_svc_cb_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %31)
  br label %33

33:                                               ; preds = %25, %20
  %34 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %35 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %34, i32 0, i32 1
  %36 = call i32 @complete(i32* %35)
  ret void
}

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
