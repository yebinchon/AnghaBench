; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_ib_dealloc_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_ib_dealloc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.ib_device.0*)* }
%struct.ib_device.0 = type opaque

@devices_rwsem = common dso_local global i32 0, align 4
@devices = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_dealloc_device(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %3 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %4 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %3, i32 0, i32 5
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32 (%struct.ib_device.0*)*, i32 (%struct.ib_device.0*)** %5, align 8
  %7 = icmp ne i32 (%struct.ib_device.0*)* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %10 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.ib_device.0*)*, i32 (%struct.ib_device.0*)** %11, align 8
  %13 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %14 = bitcast %struct.ib_device* %13 to %struct.ib_device.0*
  %15 = call i32 %12(%struct.ib_device.0* %14)
  br label %16

16:                                               ; preds = %8, %1
  %17 = call i32 @down_write(i32* @devices_rwsem)
  %18 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %19 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.ib_device* @xa_load(i32* @devices, i32 %20)
  %22 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %23 = icmp eq %struct.ib_device* %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %26 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @xa_erase(i32* @devices, i32 %27)
  br label %29

29:                                               ; preds = %24, %16
  %30 = call i32 @up_write(i32* @devices_rwsem)
  %31 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %32 = call i32 @free_netdevs(%struct.ib_device* %31)
  %33 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %34 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %33, i32 0, i32 3
  %35 = call i32 @xa_empty(i32* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN_ON(i32 %38)
  %40 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %41 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %40, i32 0, i32 2
  %42 = call i32 @xa_empty(i32* %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @WARN_ON(i32 %45)
  %47 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %48 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %47, i32 0, i32 1
  %49 = call i32 @refcount_read(i32* %48)
  %50 = call i32 @WARN_ON(i32 %49)
  %51 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %52 = call i32 @rdma_restrack_clean(%struct.ib_device* %51)
  %53 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %54 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %53, i32 0, i32 0
  %55 = call i32 @put_device(i32* %54)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.ib_device* @xa_load(i32*, i32) #1

declare dso_local i32 @xa_erase(i32*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @free_netdevs(%struct.ib_device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @xa_empty(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @rdma_restrack_clean(%struct.ib_device*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
