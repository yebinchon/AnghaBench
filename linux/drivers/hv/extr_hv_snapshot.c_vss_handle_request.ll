; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_snapshot.c_vss_handle_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_snapshot.c_vss_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.work_struct = type { i32 }

@vss_transaction = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@HVUTIL_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"VSS: Not ready for request.\0A\00", align 1
@HV_E_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"VSS: Received request for op code: %d\0A\00", align 1
@HVUTIL_HOSTMSG_RECEIVED = common dso_local global i32 0, align 4
@vss_poll_wrapper = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @vss_handle_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vss_handle_request(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vss_transaction, i32 0, i32 1), align 8
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %27 [
    i32 128, label %7
    i32 131, label %7
    i32 129, label %7
    i32 130, label %23
  ]

7:                                                ; preds = %1, %1, %1
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vss_transaction, i32 0, i32 2), align 8
  %9 = load i32, i32* @HVUTIL_READY, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @HV_E_FAIL, align 4
  %14 = call i32 @vss_respond_to_host(i32 %13)
  br label %33

15:                                               ; preds = %7
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vss_transaction, i32 0, i32 1), align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @HVUTIL_HOSTMSG_RECEIVED, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vss_transaction, i32 0, i32 2), align 8
  %22 = call i32 (...) @vss_send_op()
  br label %33

23:                                               ; preds = %1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vss_transaction, i32 0, i32 1), align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  br label %28

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %27, %23
  %29 = call i32 @vss_respond_to_host(i32 0)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vss_transaction, i32 0, i32 0), align 8
  %31 = load i32, i32* @vss_poll_wrapper, align 4
  %32 = call i32 @hv_poll_channel(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %15, %11
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @vss_respond_to_host(i32) #1

declare dso_local i32 @vss_send_op(...) #1

declare dso_local i32 @hv_poll_channel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
