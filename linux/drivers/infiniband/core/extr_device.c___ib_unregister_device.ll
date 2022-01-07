; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c___ib_unregister_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c___ib_unregister_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @__ib_unregister_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ib_unregister_device(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %3 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %4 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %3, i32 0, i32 0
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %7 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %6, i32 0, i32 3
  %8 = call i32 @refcount_read(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %42

11:                                               ; preds = %1
  %12 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %13 = call i32 @disable_device(%struct.ib_device* %12)
  %14 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %15 = call i32 @free_netdevs(%struct.ib_device* %14)
  %16 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %17 = call i32 @ib_device_unregister_sysfs(%struct.ib_device* %16)
  %18 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %19 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %18, i32 0, i32 1
  %20 = call i32 @device_del(%struct.TYPE_6__* %19)
  %21 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %22 = call i32 @ib_device_unregister_rdmacg(%struct.ib_device* %21)
  %23 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %24 = call i32 @ib_cache_cleanup_one(%struct.ib_device* %23)
  %25 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %26 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %11
  %31 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %32 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @kref_read(i32* %34)
  %36 = icmp sle i32 %35, 1
  %37 = zext i1 %36 to i32
  %38 = call i32 @WARN_ON(i32 %37)
  %39 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %40 = call i32 @ib_dealloc_device(%struct.ib_device* %39)
  br label %41

41:                                               ; preds = %30, %11
  br label %42

42:                                               ; preds = %41, %10
  %43 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %44 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @disable_device(%struct.ib_device*) #1

declare dso_local i32 @free_netdevs(%struct.ib_device*) #1

declare dso_local i32 @ib_device_unregister_sysfs(%struct.ib_device*) #1

declare dso_local i32 @device_del(%struct.TYPE_6__*) #1

declare dso_local i32 @ib_device_unregister_rdmacg(%struct.ib_device*) #1

declare dso_local i32 @ib_cache_cleanup_one(%struct.ib_device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i32 @ib_dealloc_device(%struct.ib_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
