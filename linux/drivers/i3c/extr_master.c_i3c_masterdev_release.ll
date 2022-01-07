; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_masterdev_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_masterdev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i3c_master_controller = type { i64 }
%struct.i3c_bus = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @i3c_masterdev_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i3c_masterdev_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i3c_master_controller*, align 8
  %4 = alloca %struct.i3c_bus*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.i3c_master_controller* @dev_to_i3cmaster(%struct.device* %5)
  store %struct.i3c_master_controller* %6, %struct.i3c_master_controller** %3, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.i3c_bus* @dev_to_i3cbus(%struct.device* %7)
  store %struct.i3c_bus* %8, %struct.i3c_bus** %4, align 8
  %9 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %10 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %15 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @destroy_workqueue(i64 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.i3c_bus*, %struct.i3c_bus** %4, align 8
  %20 = getelementptr inbounds %struct.i3c_bus, %struct.i3c_bus* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = call i32 @list_empty(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.i3c_bus*, %struct.i3c_bus** %4, align 8
  %26 = getelementptr inbounds %struct.i3c_bus, %struct.i3c_bus* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @list_empty(i32* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %24, %18
  %32 = phi i1 [ true, %18 ], [ %30, %24 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON(i32 %33)
  %35 = load %struct.i3c_bus*, %struct.i3c_bus** %4, align 8
  %36 = call i32 @i3c_bus_cleanup(%struct.i3c_bus* %35)
  %37 = load %struct.device*, %struct.device** %2, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @of_node_put(i32 %39)
  ret void
}

declare dso_local %struct.i3c_master_controller* @dev_to_i3cmaster(%struct.device*) #1

declare dso_local %struct.i3c_bus* @dev_to_i3cbus(%struct.device*) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @i3c_bus_cleanup(%struct.i3c_bus*) #1

declare dso_local i32 @of_node_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
