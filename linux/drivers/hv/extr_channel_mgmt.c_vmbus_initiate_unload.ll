; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_channel_mgmt.c_vmbus_initiate_unload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_channel_mgmt.c_vmbus_initiate_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vmbus_channel_message_header = type { i32 }

@vmbus_proto_version = common dso_local global i64 0, align 8
@VERSION_WIN8_1 = common dso_local global i64 0, align 8
@vmbus_connection = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CHANNELMSG_UNLOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmbus_initiate_unload(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmbus_channel_message_header, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @vmbus_proto_version, align 8
  %5 = load i64, i64* @VERSION_WIN8_1, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %24

8:                                                ; preds = %1
  %9 = call i32 @init_completion(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 0))
  %10 = call i32 @memset(%struct.vmbus_channel_message_header* %3, i32 0, i32 4)
  %11 = load i32, i32* @CHANNELMSG_UNLOAD, align 4
  %12 = getelementptr inbounds %struct.vmbus_channel_message_header, %struct.vmbus_channel_message_header* %3, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @vmbus_post_msg(%struct.vmbus_channel_message_header* %3, i32 4, i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %8
  %21 = call i32 @wait_for_completion(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 0))
  br label %24

22:                                               ; preds = %8
  %23 = call i32 (...) @vmbus_wait_for_unload()
  br label %24

24:                                               ; preds = %7, %22, %20
  ret void
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @memset(%struct.vmbus_channel_message_header*, i32, i32) #1

declare dso_local i32 @vmbus_post_msg(%struct.vmbus_channel_message_header*, i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @vmbus_wait_for_unload(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
