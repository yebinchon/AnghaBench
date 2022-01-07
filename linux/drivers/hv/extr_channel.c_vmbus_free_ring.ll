; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_channel.c_vmbus_free_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_channel.c_vmbus_free_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32, i32*, i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmbus_free_ring(%struct.vmbus_channel* %0) #0 {
  %2 = alloca %struct.vmbus_channel*, align 8
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %2, align 8
  %3 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %4 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %3, i32 0, i32 3
  %5 = call i32 @hv_ringbuffer_cleanup(i32* %4)
  %6 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %7 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %6, i32 0, i32 2
  %8 = call i32 @hv_ringbuffer_cleanup(i32* %7)
  %9 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %10 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %15 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %18 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = call i32 @get_order(i32 %21)
  %23 = call i32 @__free_pages(i32* %16, i32 %22)
  %24 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %25 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @hv_ringbuffer_cleanup(i32*) #1

declare dso_local i32 @__free_pages(i32*, i32) #1

declare dso_local i32 @get_order(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
