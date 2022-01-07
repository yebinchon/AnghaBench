; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_channel.c_vmbus_reset_channel_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_channel.c_vmbus_reset_channel_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i64, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmbus_reset_channel_cb(%struct.vmbus_channel* %0) #0 {
  %2 = alloca %struct.vmbus_channel*, align 8
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %2, align 8
  %3 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %4 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %3, i32 0, i32 1
  %5 = call i32 @tasklet_disable(i32* %4)
  %6 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %7 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %6, i32 0, i32 2
  store i32* null, i32** %7, align 8
  %8 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %9 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i64 (...) @get_cpu()
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = call i32 (...) @put_cpu()
  %15 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %16 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %19 = call i32 @smp_call_function_single(i64 %17, i32 (%struct.vmbus_channel*)* @reset_channel_cb, %struct.vmbus_channel* %18, i32 1)
  br label %24

20:                                               ; preds = %1
  %21 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %22 = call i32 @reset_channel_cb(%struct.vmbus_channel* %21)
  %23 = call i32 (...) @put_cpu()
  br label %24

24:                                               ; preds = %20, %13
  %25 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %26 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %25, i32 0, i32 1
  %27 = call i32 @tasklet_enable(i32* %26)
  ret void
}

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i64 @get_cpu(...) #1

declare dso_local i32 @put_cpu(...) #1

declare dso_local i32 @smp_call_function_single(i64, i32 (%struct.vmbus_channel*)*, %struct.vmbus_channel*, i32) #1

declare dso_local i32 @reset_channel_cb(%struct.vmbus_channel*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
