; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_multicast.c_mcast_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_multicast.c_mcast_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.mcast_device = type { i32, i32, %struct.mcast_port*, i32 }
%struct.mcast_port = type { i32 }

@mcast_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, i8*)* @mcast_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcast_remove_one(%struct.ib_device* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mcast_device*, align 8
  %6 = alloca %struct.mcast_port*, align 8
  %7 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.mcast_device*
  store %struct.mcast_device* %9, %struct.mcast_device** %5, align 8
  %10 = load %struct.mcast_device*, %struct.mcast_device** %5, align 8
  %11 = icmp ne %struct.mcast_device* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %57

13:                                               ; preds = %2
  %14 = load %struct.mcast_device*, %struct.mcast_device** %5, align 8
  %15 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %14, i32 0, i32 3
  %16 = call i32 @ib_unregister_event_handler(i32* %15)
  %17 = load i32, i32* @mcast_wq, align 4
  %18 = call i32 @flush_workqueue(i32 %17)
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %51, %13
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.mcast_device*, %struct.mcast_device** %5, align 8
  %22 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mcast_device*, %struct.mcast_device** %5, align 8
  %25 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  %28 = icmp sle i32 %20, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %19
  %30 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %31 = load %struct.mcast_device*, %struct.mcast_device** %5, align 8
  %32 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %33, %34
  %36 = call i64 @rdma_cap_ib_mcast(%struct.ib_device* %30, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %29
  %39 = load %struct.mcast_device*, %struct.mcast_device** %5, align 8
  %40 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %39, i32 0, i32 2
  %41 = load %struct.mcast_port*, %struct.mcast_port** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %41, i64 %43
  store %struct.mcast_port* %44, %struct.mcast_port** %6, align 8
  %45 = load %struct.mcast_port*, %struct.mcast_port** %6, align 8
  %46 = call i32 @deref_port(%struct.mcast_port* %45)
  %47 = load %struct.mcast_port*, %struct.mcast_port** %6, align 8
  %48 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %47, i32 0, i32 0
  %49 = call i32 @wait_for_completion(i32* %48)
  br label %50

50:                                               ; preds = %38, %29
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %19

54:                                               ; preds = %19
  %55 = load %struct.mcast_device*, %struct.mcast_device** %5, align 8
  %56 = call i32 @kfree(%struct.mcast_device* %55)
  br label %57

57:                                               ; preds = %54, %12
  ret void
}

declare dso_local i32 @ib_unregister_event_handler(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i64 @rdma_cap_ib_mcast(%struct.ib_device*, i32) #1

declare dso_local i32 @deref_port(%struct.mcast_port*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @kfree(%struct.mcast_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
