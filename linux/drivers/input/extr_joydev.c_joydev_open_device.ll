; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_joydev.c_joydev_open_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_joydev.c_joydev_open_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.joydev = type { i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.joydev*)* @joydev_open_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @joydev_open_device(%struct.joydev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.joydev*, align 8
  %4 = alloca i32, align 4
  store %struct.joydev* %0, %struct.joydev** %3, align 8
  %5 = load %struct.joydev*, %struct.joydev** %3, align 8
  %6 = getelementptr inbounds %struct.joydev, %struct.joydev* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock_interruptible(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %47

12:                                               ; preds = %1
  %13 = load %struct.joydev*, %struct.joydev** %3, align 8
  %14 = getelementptr inbounds %struct.joydev, %struct.joydev* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %42

20:                                               ; preds = %12
  %21 = load %struct.joydev*, %struct.joydev** %3, align 8
  %22 = getelementptr inbounds %struct.joydev, %struct.joydev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = icmp ne i32 %23, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %20
  %27 = load %struct.joydev*, %struct.joydev** %3, align 8
  %28 = getelementptr inbounds %struct.joydev, %struct.joydev* %27, i32 0, i32 2
  %29 = call i32 @input_open_device(i32* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.joydev*, %struct.joydev** %3, align 8
  %34 = getelementptr inbounds %struct.joydev, %struct.joydev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  br label %40

37:                                               ; preds = %26
  %38 = load %struct.joydev*, %struct.joydev** %3, align 8
  %39 = call i32 @joydev_refresh_state(%struct.joydev* %38)
  br label %40

40:                                               ; preds = %37, %32
  br label %41

41:                                               ; preds = %40, %20
  br label %42

42:                                               ; preds = %41, %17
  %43 = load %struct.joydev*, %struct.joydev** %3, align 8
  %44 = getelementptr inbounds %struct.joydev, %struct.joydev* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %42, %10
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @input_open_device(i32*) #1

declare dso_local i32 @joydev_refresh_state(%struct.joydev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
