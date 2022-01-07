; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_joydev.c_joydev_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_joydev.c_joydev_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.joydev_client* }
%struct.joydev_client = type { %struct.joydev* }
%struct.joydev = type { i64, i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @joydev_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @joydev_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.joydev_client*, align 8
  %6 = alloca %struct.joydev*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.joydev_client*, %struct.joydev_client** %8, align 8
  store %struct.joydev_client* %9, %struct.joydev_client** %5, align 8
  %10 = load %struct.joydev_client*, %struct.joydev_client** %5, align 8
  %11 = getelementptr inbounds %struct.joydev_client, %struct.joydev_client* %10, i32 0, i32 0
  %12 = load %struct.joydev*, %struct.joydev** %11, align 8
  store %struct.joydev* %12, %struct.joydev** %6, align 8
  %13 = load %struct.file*, %struct.file** %3, align 8
  %14 = load %struct.joydev*, %struct.joydev** %6, align 8
  %15 = getelementptr inbounds %struct.joydev, %struct.joydev* %14, i32 0, i32 1
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @poll_wait(%struct.file* %13, i32* %15, i32* %16)
  %18 = load %struct.joydev_client*, %struct.joydev_client** %5, align 8
  %19 = call i64 @joydev_data_pending(%struct.joydev_client* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @EPOLLIN, align 4
  %23 = load i32, i32* @EPOLLRDNORM, align 4
  %24 = or i32 %22, %23
  br label %26

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i32 [ %24, %21 ], [ 0, %25 ]
  %28 = load %struct.joydev*, %struct.joydev** %6, align 8
  %29 = getelementptr inbounds %struct.joydev, %struct.joydev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %37

33:                                               ; preds = %26
  %34 = load i32, i32* @EPOLLHUP, align 4
  %35 = load i32, i32* @EPOLLERR, align 4
  %36 = or i32 %34, %35
  br label %37

37:                                               ; preds = %33, %32
  %38 = phi i32 [ 0, %32 ], [ %36, %33 ]
  %39 = or i32 %27, %38
  ret i32 %39
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @joydev_data_pending(%struct.joydev_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
