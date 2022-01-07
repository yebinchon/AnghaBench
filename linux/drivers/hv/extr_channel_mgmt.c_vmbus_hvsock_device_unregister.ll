; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_channel_mgmt.c_vmbus_hvsock_device_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_channel_mgmt.c_vmbus_hvsock_device_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmbus_hvsock_device_unregister(%struct.vmbus_channel* %0) #0 {
  %2 = alloca %struct.vmbus_channel*, align 8
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %2, align 8
  %3 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %4 = call i32 @is_hvsock_channel(%struct.vmbus_channel* %3)
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  br label %9

9:                                                ; preds = %24, %1
  %10 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %11 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @READ_ONCE(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %17 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @READ_ONCE(i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %15, %9
  %23 = phi i1 [ true, %9 ], [ %21, %15 ]
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = call i32 @msleep(i32 1)
  br label %9

26:                                               ; preds = %22
  %27 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %28 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @vmbus_device_unregister(i32 %29)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @is_hvsock_channel(%struct.vmbus_channel*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @vmbus_device_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
