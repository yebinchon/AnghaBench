; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_uinput.c_uinput_request_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_uinput.c_uinput_request_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uinput_device = type { i64, i32, i32 }
%struct.uinput_request = type { i32, i32, i32 }

@UIST_CREATED = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@EV_UINPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uinput_device*, %struct.uinput_request*)* @uinput_request_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uinput_request_send(%struct.uinput_device* %0, %struct.uinput_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uinput_device*, align 8
  %5 = alloca %struct.uinput_request*, align 8
  %6 = alloca i32, align 4
  store %struct.uinput_device* %0, %struct.uinput_device** %4, align 8
  store %struct.uinput_request* %1, %struct.uinput_request** %5, align 8
  %7 = load %struct.uinput_device*, %struct.uinput_device** %4, align 8
  %8 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock_interruptible(i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %43

14:                                               ; preds = %2
  %15 = load %struct.uinput_device*, %struct.uinput_device** %4, align 8
  %16 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @UIST_CREATED, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %38

23:                                               ; preds = %14
  %24 = load %struct.uinput_request*, %struct.uinput_request** %5, align 8
  %25 = getelementptr inbounds %struct.uinput_request, %struct.uinput_request* %24, i32 0, i32 2
  %26 = call i32 @init_completion(i32* %25)
  %27 = load %struct.uinput_device*, %struct.uinput_device** %4, align 8
  %28 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @EV_UINPUT, align 4
  %31 = load %struct.uinput_request*, %struct.uinput_request** %5, align 8
  %32 = getelementptr inbounds %struct.uinput_request, %struct.uinput_request* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.uinput_request*, %struct.uinput_request** %5, align 8
  %35 = getelementptr inbounds %struct.uinput_request, %struct.uinput_request* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @uinput_dev_event(i32 %29, i32 %30, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %23, %20
  %39 = load %struct.uinput_device*, %struct.uinput_device** %4, align 8
  %40 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %39, i32 0, i32 1
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @uinput_dev_event(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
