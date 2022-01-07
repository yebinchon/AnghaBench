; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_snapshot.c_hv_vss_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_snapshot.c_hv_vss_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.hv_util_service = type { i32, i32 }

@vmbus_proto_version = common dso_local global i64 0, align 8
@VERSION_WIN8_1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [84 x i8] c"Integration service 'Backup (volume snapshot)' not supported on this host version.\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@recv_buffer = common dso_local global i32 0, align 4
@vss_transaction = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@HVUTIL_DEVICE_INIT = common dso_local global i32 0, align 4
@vss_devname = common dso_local global i32 0, align 4
@CN_VSS_IDX = common dso_local global i32 0, align 4
@CN_VSS_VAL = common dso_local global i32 0, align 4
@vss_on_msg = common dso_local global i32 0, align 4
@vss_on_reset = common dso_local global i32 0, align 4
@hvt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"VSS: Failed to initialize transport\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hv_vss_init(%struct.hv_util_service* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hv_util_service*, align 8
  store %struct.hv_util_service* %0, %struct.hv_util_service** %3, align 8
  %4 = load i64, i64* @vmbus_proto_version, align 8
  %5 = load i64, i64* @VERSION_WIN8_1, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = call i32 @pr_warn(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @ENOTSUPP, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %32

11:                                               ; preds = %1
  %12 = load %struct.hv_util_service*, %struct.hv_util_service** %3, align 8
  %13 = getelementptr inbounds %struct.hv_util_service, %struct.hv_util_service* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* @recv_buffer, align 4
  %15 = load %struct.hv_util_service*, %struct.hv_util_service** %3, align 8
  %16 = getelementptr inbounds %struct.hv_util_service, %struct.hv_util_service* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vss_transaction, i32 0, i32 1), align 4
  %18 = load i32, i32* @HVUTIL_DEVICE_INIT, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vss_transaction, i32 0, i32 0), align 4
  %19 = load i32, i32* @vss_devname, align 4
  %20 = load i32, i32* @CN_VSS_IDX, align 4
  %21 = load i32, i32* @CN_VSS_VAL, align 4
  %22 = load i32, i32* @vss_on_msg, align 4
  %23 = load i32, i32* @vss_on_reset, align 4
  %24 = call i32 @hvutil_transport_init(i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* @hvt, align 4
  %25 = load i32, i32* @hvt, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %11
  %28 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EFAULT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %27, %7
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @hvutil_transport_init(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
