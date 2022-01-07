; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_ib_unregister_device_queued.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_ib_unregister_device_queued.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@system_unbound_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_unregister_device_queued(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %3 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %4 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %3, i32 0, i32 3
  %5 = call i32 @refcount_read(i32* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %11 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %19 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %18, i32 0, i32 0
  %20 = call i32 @get_device(i32* %19)
  %21 = load i32, i32* @system_unbound_wq, align 4
  %22 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %23 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %22, i32 0, i32 1
  %24 = call i32 @queue_work(i32 %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %28 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %27, i32 0, i32 0
  %29 = call i32 @put_device(i32* %28)
  br label %30

30:                                               ; preds = %26, %1
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
