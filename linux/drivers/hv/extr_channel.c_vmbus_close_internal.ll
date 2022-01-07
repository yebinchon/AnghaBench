; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_channel.c_vmbus_close_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_channel.c_vmbus_close_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i64, i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.vmbus_channel_close_channel }
%struct.vmbus_channel_close_channel = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CHANNEL_OPENED_STATE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CHANNEL_OPEN_STATE = common dso_local global i64 0, align 8
@CHANNELMSG_CLOSECHANNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Close failed: close post msg return is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Close failed: teardown gpadl return %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmbus_channel*)* @vmbus_close_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmbus_close_internal(%struct.vmbus_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca %struct.vmbus_channel_close_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %3, align 8
  %6 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %7 = call i32 @vmbus_reset_channel_cb(%struct.vmbus_channel* %6)
  %8 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %9 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CHANNEL_OPENED_STATE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %65

16:                                               ; preds = %1
  %17 = load i64, i64* @CHANNEL_OPEN_STATE, align 8
  %18 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %19 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %21 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store %struct.vmbus_channel_close_channel* %22, %struct.vmbus_channel_close_channel** %4, align 8
  %23 = load i32, i32* @CHANNELMSG_CLOSECHANNEL, align 4
  %24 = load %struct.vmbus_channel_close_channel*, %struct.vmbus_channel_close_channel** %4, align 8
  %25 = getelementptr inbounds %struct.vmbus_channel_close_channel, %struct.vmbus_channel_close_channel* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %28 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.vmbus_channel_close_channel*, %struct.vmbus_channel_close_channel** %4, align 8
  %32 = getelementptr inbounds %struct.vmbus_channel_close_channel, %struct.vmbus_channel_close_channel* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.vmbus_channel_close_channel*, %struct.vmbus_channel_close_channel** %4, align 8
  %34 = call i32 @vmbus_post_msg(%struct.vmbus_channel_close_channel* %33, i32 8, i32 1)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.vmbus_channel_close_channel*, %struct.vmbus_channel_close_channel** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @trace_vmbus_close_internal(%struct.vmbus_channel_close_channel* %35, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %16
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %63

43:                                               ; preds = %16
  %44 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %45 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %50 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %51 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @vmbus_teardown_gpadl(%struct.vmbus_channel* %49, i64 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %56, %48
  %60 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %61 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %59, %43
  br label %63

63:                                               ; preds = %62, %40
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %13
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @vmbus_reset_channel_cb(%struct.vmbus_channel*) #1

declare dso_local i32 @vmbus_post_msg(%struct.vmbus_channel_close_channel*, i32, i32) #1

declare dso_local i32 @trace_vmbus_close_internal(%struct.vmbus_channel_close_channel*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @vmbus_teardown_gpadl(%struct.vmbus_channel*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
