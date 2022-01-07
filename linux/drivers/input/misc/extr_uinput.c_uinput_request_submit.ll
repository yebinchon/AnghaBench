; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_uinput.c_uinput_request_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_uinput.c_uinput_request_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uinput_device = type { i32 }
%struct.uinput_request = type { i32, i32, i32 }

@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uinput_device*, %struct.uinput_request*)* @uinput_request_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uinput_request_submit(%struct.uinput_device* %0, %struct.uinput_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uinput_device*, align 8
  %5 = alloca %struct.uinput_request*, align 8
  %6 = alloca i32, align 4
  store %struct.uinput_device* %0, %struct.uinput_device** %4, align 8
  store %struct.uinput_request* %1, %struct.uinput_request** %5, align 8
  %7 = load %struct.uinput_device*, %struct.uinput_device** %4, align 8
  %8 = load %struct.uinput_request*, %struct.uinput_request** %5, align 8
  %9 = call i32 @uinput_request_reserve_slot(%struct.uinput_device* %7, %struct.uinput_request* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.uinput_device*, %struct.uinput_device** %4, align 8
  %16 = load %struct.uinput_request*, %struct.uinput_request** %5, align 8
  %17 = call i32 @uinput_request_send(%struct.uinput_device* %15, %struct.uinput_request* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %35

21:                                               ; preds = %14
  %22 = load %struct.uinput_request*, %struct.uinput_request** %5, align 8
  %23 = getelementptr inbounds %struct.uinput_request, %struct.uinput_request* %22, i32 0, i32 2
  %24 = load i32, i32* @HZ, align 4
  %25 = mul nsw i32 30, %24
  %26 = call i32 @wait_for_completion_timeout(i32* %23, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ETIMEDOUT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %35

31:                                               ; preds = %21
  %32 = load %struct.uinput_request*, %struct.uinput_request** %5, align 8
  %33 = getelementptr inbounds %struct.uinput_request, %struct.uinput_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %28, %20
  %36 = load %struct.uinput_device*, %struct.uinput_device** %4, align 8
  %37 = load %struct.uinput_request*, %struct.uinput_request** %5, align 8
  %38 = getelementptr inbounds %struct.uinput_request, %struct.uinput_request* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @uinput_request_release_slot(%struct.uinput_device* %36, i32 %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %35, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @uinput_request_reserve_slot(%struct.uinput_device*, %struct.uinput_request*) #1

declare dso_local i32 @uinput_request_send(%struct.uinput_device*, %struct.uinput_request*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @uinput_request_release_slot(%struct.uinput_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
