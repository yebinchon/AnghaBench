; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_fw_device_op_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_fw_device_op_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.client* }
%struct.client = type { i32, i32, i32 }

@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @fw_device_op_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_device_op_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.client*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.client*, %struct.client** %8, align 8
  store %struct.client* %9, %struct.client** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = load %struct.client*, %struct.client** %5, align 8
  %12 = getelementptr inbounds %struct.client, %struct.client* %11, i32 0, i32 2
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @poll_wait(%struct.file* %10, i32* %12, i32* %13)
  %15 = load %struct.client*, %struct.client** %5, align 8
  %16 = getelementptr inbounds %struct.client, %struct.client* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @fw_device_is_shutdown(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @EPOLLHUP, align 4
  %22 = load i32, i32* @EPOLLERR, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %20, %2
  %27 = load %struct.client*, %struct.client** %5, align 8
  %28 = getelementptr inbounds %struct.client, %struct.client* %27, i32 0, i32 0
  %29 = call i32 @list_empty(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @EPOLLIN, align 4
  %33 = load i32, i32* @EPOLLRDNORM, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %31, %26
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @fw_device_is_shutdown(i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
