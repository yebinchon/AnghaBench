; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_stratix10-rsu.c_rsu_command_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_stratix10-rsu.c_rsu_command_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stratix10_svc_client = type { i32, %struct.stratix10_rsu_priv* }
%struct.stratix10_rsu_priv = type { i32 }
%struct.stratix10_svc_cb_data = type { i64 }

@SVC_STATUS_RSU_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"RSU returned status is %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stratix10_svc_client*, %struct.stratix10_svc_cb_data*)* @rsu_command_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsu_command_callback(%struct.stratix10_svc_client* %0, %struct.stratix10_svc_cb_data* %1) #0 {
  %3 = alloca %struct.stratix10_svc_client*, align 8
  %4 = alloca %struct.stratix10_svc_cb_data*, align 8
  %5 = alloca %struct.stratix10_rsu_priv*, align 8
  store %struct.stratix10_svc_client* %0, %struct.stratix10_svc_client** %3, align 8
  store %struct.stratix10_svc_cb_data* %1, %struct.stratix10_svc_cb_data** %4, align 8
  %6 = load %struct.stratix10_svc_client*, %struct.stratix10_svc_client** %3, align 8
  %7 = getelementptr inbounds %struct.stratix10_svc_client, %struct.stratix10_svc_client* %6, i32 0, i32 1
  %8 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %7, align 8
  store %struct.stratix10_rsu_priv* %8, %struct.stratix10_rsu_priv** %5, align 8
  %9 = load %struct.stratix10_svc_cb_data*, %struct.stratix10_svc_cb_data** %4, align 8
  %10 = getelementptr inbounds %struct.stratix10_svc_cb_data, %struct.stratix10_svc_cb_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @SVC_STATUS_RSU_OK, align 4
  %13 = call i64 @BIT(i32 %12)
  %14 = icmp ne i64 %11, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.stratix10_svc_client*, %struct.stratix10_svc_client** %3, align 8
  %17 = getelementptr inbounds %struct.stratix10_svc_client, %struct.stratix10_svc_client* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.stratix10_svc_cb_data*, %struct.stratix10_svc_cb_data** %4, align 8
  %20 = getelementptr inbounds %struct.stratix10_svc_cb_data, %struct.stratix10_svc_cb_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %21)
  br label %23

23:                                               ; preds = %15, %2
  %24 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %25 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %24, i32 0, i32 0
  %26 = call i32 @complete(i32* %25)
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
