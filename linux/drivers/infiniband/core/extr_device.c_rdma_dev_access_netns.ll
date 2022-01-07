; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_rdma_dev_access_netns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_rdma_dev_access_netns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.net = type { i32 }

@ib_devices_shared_netns = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_dev_access_netns(%struct.ib_device* %0, %struct.net* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct.net*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store %struct.net* %1, %struct.net** %4, align 8
  %5 = load i64, i64* @ib_devices_shared_netns, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %9 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @read_pnet(i32* %10)
  %12 = load %struct.net*, %struct.net** %4, align 8
  %13 = call i64 @net_eq(i32 %11, %struct.net* %12)
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %7, %2
  %16 = phi i1 [ true, %2 ], [ %14, %7 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

declare dso_local i64 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @read_pnet(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
