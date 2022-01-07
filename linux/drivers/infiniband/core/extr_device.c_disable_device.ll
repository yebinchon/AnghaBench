; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_disable_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_disable_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32, i32, i32 }

@devices_rwsem = common dso_local global i32 0, align 4
@devices = common dso_local global i32 0, align 4
@DEVICE_REGISTERED = common dso_local global i32 0, align 4
@clients_rwsem = common dso_local global i32 0, align 4
@highest_client_id = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @disable_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_device(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %4 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %5 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %4, i32 0, i32 2
  %6 = call i32 @refcount_read(i32* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = call i32 @down_write(i32* @devices_rwsem)
  %12 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %13 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DEVICE_REGISTERED, align 4
  %16 = call i32 @xa_clear_mark(i32* @devices, i32 %14, i32 %15)
  %17 = call i32 @up_write(i32* @devices_rwsem)
  %18 = call i32 @down_read(i32* @clients_rwsem)
  %19 = load i64, i64* @highest_client_id, align 8
  store i64 %19, i64* %3, align 8
  %20 = call i32 @up_read(i32* @clients_rwsem)
  br label %21

21:                                               ; preds = %24, %1
  %22 = load i64, i64* %3, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i64, i64* %3, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %3, align 8
  %27 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @remove_client_context(%struct.ib_device* %27, i64 %28)
  br label %21

30:                                               ; preds = %21
  %31 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %32 = call i32 @ib_device_put(%struct.ib_device* %31)
  %33 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %34 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %33, i32 0, i32 0
  %35 = call i32 @wait_for_completion(i32* %34)
  %36 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %37 = call i32 @remove_compat_devs(%struct.ib_device* %36)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @xa_clear_mark(i32*, i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @remove_client_context(%struct.ib_device*, i64) #1

declare dso_local i32 @ib_device_put(%struct.ib_device*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @remove_compat_devs(%struct.ib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
