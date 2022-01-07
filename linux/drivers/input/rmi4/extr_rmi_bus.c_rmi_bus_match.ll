; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_bus.c_rmi_bus_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_bus.c_rmi_bus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @rmi_bus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_bus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call i32 @rmi_is_physical_device(%struct.device* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %11 = call i32 @rmi_is_physical_driver(%struct.device_driver* %10)
  %12 = icmp ne i32 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %25

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %20 = call i64 @rmi_function_match(%struct.device* %18, %struct.device_driver* %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i1 [ true, %14 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @rmi_is_physical_device(%struct.device*) #1

declare dso_local i32 @rmi_is_physical_driver(%struct.device_driver*) #1

declare dso_local i64 @rmi_function_match(%struct.device*, %struct.device_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
