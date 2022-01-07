; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_evdev.c_evdev_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_evdev.c_evdev_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.evdev_client* }
%struct.evdev_client = type { i64, i64, i32, %struct.evdev* }
%struct.evdev = type { i64, i32 }

@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @evdev_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdev_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.evdev_client*, align 8
  %6 = alloca %struct.evdev*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.evdev_client*, %struct.evdev_client** %9, align 8
  store %struct.evdev_client* %10, %struct.evdev_client** %5, align 8
  %11 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %12 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %11, i32 0, i32 3
  %13 = load %struct.evdev*, %struct.evdev** %12, align 8
  store %struct.evdev* %13, %struct.evdev** %6, align 8
  %14 = load %struct.file*, %struct.file** %3, align 8
  %15 = load %struct.evdev*, %struct.evdev** %6, align 8
  %16 = getelementptr inbounds %struct.evdev, %struct.evdev* %15, i32 0, i32 1
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @poll_wait(%struct.file* %14, i32* %16, i32* %17)
  %19 = load %struct.evdev*, %struct.evdev** %6, align 8
  %20 = getelementptr inbounds %struct.evdev, %struct.evdev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %25 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @EPOLLOUT, align 4
  %30 = load i32, i32* @EPOLLWRNORM, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %7, align 4
  br label %36

32:                                               ; preds = %23, %2
  %33 = load i32, i32* @EPOLLHUP, align 4
  %34 = load i32, i32* @EPOLLERR, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %38 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %41 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i32, i32* @EPOLLIN, align 4
  %46 = load i32, i32* @EPOLLRDNORM, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %44, %36
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
