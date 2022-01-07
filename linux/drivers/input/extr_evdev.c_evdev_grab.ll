; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_evdev.c_evdev_grab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_evdev.c_evdev_grab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev = type { i64, i32 }
%struct.evdev_client = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evdev*, %struct.evdev_client*)* @evdev_grab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdev_grab(%struct.evdev* %0, %struct.evdev_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evdev*, align 8
  %5 = alloca %struct.evdev_client*, align 8
  %6 = alloca i32, align 4
  store %struct.evdev* %0, %struct.evdev** %4, align 8
  store %struct.evdev_client* %1, %struct.evdev_client** %5, align 8
  %7 = load %struct.evdev*, %struct.evdev** %4, align 8
  %8 = getelementptr inbounds %struct.evdev, %struct.evdev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.evdev*, %struct.evdev** %4, align 8
  %16 = getelementptr inbounds %struct.evdev, %struct.evdev* %15, i32 0, i32 1
  %17 = call i32 @input_grab_device(i32* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %28

22:                                               ; preds = %14
  %23 = load %struct.evdev*, %struct.evdev** %4, align 8
  %24 = getelementptr inbounds %struct.evdev, %struct.evdev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %27 = call i32 @rcu_assign_pointer(i64 %25, %struct.evdev_client* %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %22, %20, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @input_grab_device(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i64, %struct.evdev_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
