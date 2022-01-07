; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_channel_mgmt.c_vmbus_onoffer_rescind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_channel_mgmt.c_vmbus_onoffer_rescind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.vmbus_channel_message_header = type { i32 }
%struct.vmbus_channel_rescind_offer = type { i32 }
%struct.vmbus_channel = type { i64, i32, i32*, %struct.TYPE_3__*, i32 (%struct.vmbus_channel*)*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }

@vmbus_connection = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@CHANNEL_OPEN_STATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_channel_message_header*)* @vmbus_onoffer_rescind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_onoffer_rescind(%struct.vmbus_channel_message_header* %0) #0 {
  %2 = alloca %struct.vmbus_channel_message_header*, align 8
  %3 = alloca %struct.vmbus_channel_rescind_offer*, align 8
  %4 = alloca %struct.vmbus_channel*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.vmbus_channel_message_header* %0, %struct.vmbus_channel_message_header** %2, align 8
  %7 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %2, align 8
  %8 = bitcast %struct.vmbus_channel_message_header* %7 to %struct.vmbus_channel_rescind_offer*
  store %struct.vmbus_channel_rescind_offer* %8, %struct.vmbus_channel_rescind_offer** %3, align 8
  %9 = load %struct.vmbus_channel_rescind_offer*, %struct.vmbus_channel_rescind_offer** %3, align 8
  %10 = call i32 @trace_vmbus_onoffer_rescind(%struct.vmbus_channel_rescind_offer* %9)
  br label %11

11:                                               ; preds = %14, %1
  %12 = call i64 @atomic_read(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmbus_connection, i32 0, i32 1))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 @msleep(i32 1)
  br label %11

16:                                               ; preds = %11
  %17 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmbus_connection, i32 0, i32 0))
  %18 = load %struct.vmbus_channel_rescind_offer*, %struct.vmbus_channel_rescind_offer** %3, align 8
  %19 = getelementptr inbounds %struct.vmbus_channel_rescind_offer, %struct.vmbus_channel_rescind_offer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.vmbus_channel* @relid2channel(i32 %20)
  store %struct.vmbus_channel* %21, %struct.vmbus_channel** %4, align 8
  %22 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmbus_connection, i32 0, i32 0))
  %23 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %24 = icmp eq %struct.vmbus_channel* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %112

26:                                               ; preds = %16
  %27 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %28 = call i64 @is_hvsock_channel(%struct.vmbus_channel* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %32 = call i64 @is_sub_channel(%struct.vmbus_channel* %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i1 [ true, %26 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %38 = call i32 @vmbus_reset_channel_cb(%struct.vmbus_channel* %37)
  %39 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %40 = call i32 @vmbus_rescind_cleanup(%struct.vmbus_channel* %39)
  br label %41

41:                                               ; preds = %47, %34
  %42 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %43 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @READ_ONCE(i32 %44)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = call i32 @msleep(i32 1)
  br label %41

49:                                               ; preds = %41
  %50 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %51 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %50, i32 0, i32 3
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = icmp ne %struct.TYPE_3__* %52, null
  br i1 %53, label %54, label %86

54:                                               ; preds = %49
  %55 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %56 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %55, i32 0, i32 4
  %57 = load i32 (%struct.vmbus_channel*)*, i32 (%struct.vmbus_channel*)** %56, align 8
  %58 = icmp ne i32 (%struct.vmbus_channel*)* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %61 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %60, i32 0, i32 4
  %62 = load i32 (%struct.vmbus_channel*)*, i32 (%struct.vmbus_channel*)** %61, align 8
  %63 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %64 = call i32 %62(%struct.vmbus_channel* %63)
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = call i32 (...) @check_ready_for_suspend_event()
  br label %69

69:                                               ; preds = %67, %59
  br label %112

70:                                               ; preds = %54
  %71 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %72 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %71, i32 0, i32 3
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = call %struct.device* @get_device(i32* %74)
  store %struct.device* %75, %struct.device** %5, align 8
  %76 = load %struct.device*, %struct.device** %5, align 8
  %77 = icmp ne %struct.device* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %70
  %79 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %80 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %79, i32 0, i32 3
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = call i32 @vmbus_device_unregister(%struct.TYPE_3__* %81)
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = call i32 @put_device(%struct.device* %83)
  br label %85

85:                                               ; preds = %78, %70
  br label %86

86:                                               ; preds = %85, %49
  %87 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %88 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %107

91:                                               ; preds = %86
  %92 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmbus_connection, i32 0, i32 0))
  %93 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %94 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CHANNEL_OPEN_STATE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %100 = call i32 @hv_process_channel_removal(%struct.vmbus_channel* %99)
  br label %105

101:                                              ; preds = %91
  %102 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %103 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %102, i32 0, i32 1
  %104 = call i32 @complete(i32* %103)
  br label %105

105:                                              ; preds = %101, %98
  %106 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmbus_connection, i32 0, i32 0))
  br label %107

107:                                              ; preds = %105, %86
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = call i32 (...) @check_ready_for_suspend_event()
  br label %112

112:                                              ; preds = %25, %69, %110, %107
  ret void
}

declare dso_local i32 @trace_vmbus_onoffer_rescind(%struct.vmbus_channel_rescind_offer*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.vmbus_channel* @relid2channel(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @is_hvsock_channel(%struct.vmbus_channel*) #1

declare dso_local i64 @is_sub_channel(%struct.vmbus_channel*) #1

declare dso_local i32 @vmbus_reset_channel_cb(%struct.vmbus_channel*) #1

declare dso_local i32 @vmbus_rescind_cleanup(%struct.vmbus_channel*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @check_ready_for_suspend_event(...) #1

declare dso_local %struct.device* @get_device(i32*) #1

declare dso_local i32 @vmbus_device_unregister(%struct.TYPE_3__*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @hv_process_channel_removal(%struct.vmbus_channel*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
