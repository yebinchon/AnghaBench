; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat.c_roccat_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat.c_roccat_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roccat_device = type { i32, i32, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@devices_lock = common dso_local global i32 0, align 4
@devices = common dso_local global %struct.roccat_device** null, align 8
@roccat_major = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @roccat_disconnect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.roccat_device*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @mutex_lock(i32* @devices_lock)
  %5 = load %struct.roccat_device**, %struct.roccat_device*** @devices, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.roccat_device*, %struct.roccat_device** %5, i64 %7
  %9 = load %struct.roccat_device*, %struct.roccat_device** %8, align 8
  store %struct.roccat_device* %9, %struct.roccat_device** %3, align 8
  %10 = call i32 @mutex_unlock(i32* @devices_lock)
  %11 = load %struct.roccat_device*, %struct.roccat_device** %3, align 8
  %12 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.roccat_device*, %struct.roccat_device** %3, align 8
  %14 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @roccat_major, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @MKDEV(i32 %18, i32 %19)
  %21 = call i32 @device_destroy(i32 %17, i32 %20)
  %22 = call i32 @mutex_lock(i32* @devices_lock)
  %23 = load %struct.roccat_device**, %struct.roccat_device*** @devices, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.roccat_device*, %struct.roccat_device** %23, i64 %25
  store %struct.roccat_device* null, %struct.roccat_device** %26, align 8
  %27 = call i32 @mutex_unlock(i32* @devices_lock)
  %28 = load %struct.roccat_device*, %struct.roccat_device** %3, align 8
  %29 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %1
  %33 = load %struct.roccat_device*, %struct.roccat_device** %3, align 8
  %34 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @hid_hw_close(i32 %35)
  %37 = load %struct.roccat_device*, %struct.roccat_device** %3, align 8
  %38 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %37, i32 0, i32 0
  %39 = call i32 @wake_up_interruptible(i32* %38)
  br label %43

40:                                               ; preds = %1
  %41 = load %struct.roccat_device*, %struct.roccat_device** %3, align 8
  %42 = call i32 @kfree(%struct.roccat_device* %41)
  br label %43

43:                                               ; preds = %40, %32
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @hid_hw_close(i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kfree(%struct.roccat_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
