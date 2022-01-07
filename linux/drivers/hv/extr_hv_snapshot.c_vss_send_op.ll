; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_snapshot.c_vss_send_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_snapshot.c_vss_send_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.hv_vss_msg = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@vss_transaction = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@HVUTIL_HOSTMSG_RECEIVED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"VSS: Unexpected attempt to send to daemon\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@HVUTIL_USERSPACE_REQ = common dso_local global i64 0, align 8
@vss_timeout_work = common dso_local global i32 0, align 4
@VSS_OP_FREEZE = common dso_local global i32 0, align 4
@VSS_FREEZE_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@HV_UTIL_TIMEOUT = common dso_local global i32 0, align 4
@hvt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"VSS: failed to communicate to the daemon: %d\0A\00", align 1
@HV_E_FAIL = common dso_local global i32 0, align 4
@HVUTIL_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vss_send_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vss_send_op() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.hv_vss_msg*, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vss_transaction, i32 0, i32 1), align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %1, align 4
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vss_transaction, i32 0, i32 0), align 8
  %9 = load i64, i64* @HVUTIL_HOSTMSG_RECEIVED, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %57

13:                                               ; preds = %0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.hv_vss_msg* @kzalloc(i32 4, i32 %14)
  store %struct.hv_vss_msg* %15, %struct.hv_vss_msg** %3, align 8
  %16 = load %struct.hv_vss_msg*, %struct.hv_vss_msg** %3, align 8
  %17 = icmp ne %struct.hv_vss_msg* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %57

19:                                               ; preds = %13
  %20 = load i32, i32* %1, align 4
  %21 = load %struct.hv_vss_msg*, %struct.hv_vss_msg** %3, align 8
  %22 = getelementptr inbounds %struct.hv_vss_msg, %struct.hv_vss_msg* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load i64, i64* @HVUTIL_USERSPACE_REQ, align 8
  store i64 %24, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vss_transaction, i32 0, i32 0), align 8
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @VSS_OP_FREEZE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load i32, i32* @VSS_FREEZE_TIMEOUT, align 4
  %30 = load i32, i32* @HZ, align 4
  %31 = mul nsw i32 %29, %30
  br label %36

32:                                               ; preds = %19
  %33 = load i32, i32* @HV_UTIL_TIMEOUT, align 4
  %34 = load i32, i32* @HZ, align 4
  %35 = mul nsw i32 %33, %34
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i32 [ %31, %28 ], [ %35, %32 ]
  %38 = call i32 @schedule_delayed_work(i32* @vss_timeout_work, i32 %37)
  %39 = load i32, i32* @hvt, align 4
  %40 = load %struct.hv_vss_msg*, %struct.hv_vss_msg** %3, align 8
  %41 = call i32 @hvutil_transport_send(i32 %39, %struct.hv_vss_msg* %40, i32 4, i32* null)
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* %2, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %36
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = call i64 @cancel_delayed_work_sync(i32* @vss_timeout_work)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @HV_E_FAIL, align 4
  %51 = call i32 @vss_respond_to_host(i32 %50)
  %52 = load i64, i64* @HVUTIL_READY, align 8
  store i64 %52, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vss_transaction, i32 0, i32 0), align 8
  br label %53

53:                                               ; preds = %49, %44
  br label %54

54:                                               ; preds = %53, %36
  %55 = load %struct.hv_vss_msg*, %struct.hv_vss_msg** %3, align 8
  %56 = call i32 @kfree(%struct.hv_vss_msg* %55)
  br label %57

57:                                               ; preds = %54, %18, %11
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.hv_vss_msg* @kzalloc(i32, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @hvutil_transport_send(i32, %struct.hv_vss_msg*, i32, i32*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i64 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @vss_respond_to_host(i32) #1

declare dso_local i32 @kfree(%struct.hv_vss_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
