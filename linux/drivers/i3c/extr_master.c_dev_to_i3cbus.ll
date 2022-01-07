; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_dev_to_i3cbus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_dev_to_i3cbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_bus = type { i32 }
%struct.device = type { i32* }
%struct.i3c_master_controller = type { %struct.i3c_bus }
%struct.TYPE_2__ = type { %struct.i3c_bus* }

@i3c_device_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i3c_bus* (%struct.device*)* @dev_to_i3cbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i3c_bus* @dev_to_i3cbus(%struct.device* %0) #0 {
  %2 = alloca %struct.i3c_bus*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.i3c_master_controller*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, @i3c_device_type
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.TYPE_2__* @dev_to_i3cdev(%struct.device* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.i3c_bus*, %struct.i3c_bus** %12, align 8
  store %struct.i3c_bus* %13, %struct.i3c_bus** %2, align 8
  br label %19

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call %struct.i3c_master_controller* @dev_to_i3cmaster(%struct.device* %15)
  store %struct.i3c_master_controller* %16, %struct.i3c_master_controller** %4, align 8
  %17 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %18 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %17, i32 0, i32 0
  store %struct.i3c_bus* %18, %struct.i3c_bus** %2, align 8
  br label %19

19:                                               ; preds = %14, %9
  %20 = load %struct.i3c_bus*, %struct.i3c_bus** %2, align 8
  ret %struct.i3c_bus* %20
}

declare dso_local %struct.TYPE_2__* @dev_to_i3cdev(%struct.device*) #1

declare dso_local %struct.i3c_master_controller* @dev_to_i3cmaster(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
