; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_evdev.c_evdev_ungrab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_evdev.c_evdev_ungrab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev = type { i32, i32, i32 }
%struct.evdev_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evdev*, %struct.evdev_client*)* @evdev_ungrab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdev_ungrab(%struct.evdev* %0, %struct.evdev_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evdev*, align 8
  %5 = alloca %struct.evdev_client*, align 8
  %6 = alloca %struct.evdev_client*, align 8
  store %struct.evdev* %0, %struct.evdev** %4, align 8
  store %struct.evdev_client* %1, %struct.evdev_client** %5, align 8
  %7 = load %struct.evdev*, %struct.evdev** %4, align 8
  %8 = getelementptr inbounds %struct.evdev, %struct.evdev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.evdev*, %struct.evdev** %4, align 8
  %11 = getelementptr inbounds %struct.evdev, %struct.evdev* %10, i32 0, i32 2
  %12 = call i32 @lockdep_is_held(i32* %11)
  %13 = call %struct.evdev_client* @rcu_dereference_protected(i32 %9, i32 %12)
  store %struct.evdev_client* %13, %struct.evdev_client** %6, align 8
  %14 = load %struct.evdev_client*, %struct.evdev_client** %6, align 8
  %15 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %16 = icmp ne %struct.evdev_client* %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %29

20:                                               ; preds = %2
  %21 = load %struct.evdev*, %struct.evdev** %4, align 8
  %22 = getelementptr inbounds %struct.evdev, %struct.evdev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @rcu_assign_pointer(i32 %23, i32* null)
  %25 = call i32 (...) @synchronize_rcu()
  %26 = load %struct.evdev*, %struct.evdev** %4, align 8
  %27 = getelementptr inbounds %struct.evdev, %struct.evdev* %26, i32 0, i32 0
  %28 = call i32 @input_release_device(i32* %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %20, %17
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.evdev_client* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @input_release_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
