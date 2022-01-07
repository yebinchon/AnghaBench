; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_device_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_device_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.hv_device = type { %struct.vmbus_channel* }
%struct.vmbus_channel = type { i32 }

@vmbus_connection = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @vmbus_device_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_device_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.vmbus_channel*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.hv_device* @device_to_hv_device(%struct.device* %5)
  store %struct.hv_device* %6, %struct.hv_device** %3, align 8
  %7 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %8 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %7, i32 0, i32 0
  %9 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  store %struct.vmbus_channel* %9, %struct.vmbus_channel** %4, align 8
  %10 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 0))
  %11 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %12 = call i32 @hv_process_channel_removal(%struct.vmbus_channel* %11)
  %13 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 0))
  %14 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %15 = call i32 @kfree(%struct.hv_device* %14)
  ret void
}

declare dso_local %struct.hv_device* @device_to_hv_device(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hv_process_channel_removal(%struct.vmbus_channel*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.hv_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
