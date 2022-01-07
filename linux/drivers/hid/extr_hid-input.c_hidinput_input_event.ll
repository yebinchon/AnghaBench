; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-input.c_hidinput_input_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-input.c_hidinput_input_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.hid_device = type { i32 }
%struct.hid_field = type { i32 }

@EV_FF = common dso_local global i32 0, align 4
@EV_LED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"event field not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32, i32)* @hidinput_input_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidinput_input_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hid_device*, align 8
  %11 = alloca %struct.hid_field*, align 8
  %12 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %14 = call %struct.hid_device* @input_get_drvdata(%struct.input_dev* %13)
  store %struct.hid_device* %14, %struct.hid_device** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @EV_FF, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @input_ff_event(%struct.input_dev* %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %46

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @EV_LED, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %46

29:                                               ; preds = %24
  %30 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @hidinput_find_field(%struct.hid_device* %30, i32 %31, i32 %32, %struct.hid_field** %11)
  store i32 %33, i32* %12, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %37 = call i32 @hid_warn(%struct.input_dev* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %46

38:                                               ; preds = %29
  %39 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @hid_set_field(%struct.hid_field* %39, i32 %40, i32 %41)
  %43 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  %44 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %43, i32 0, i32 0
  %45 = call i32 @schedule_work(i32* %44)
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %38, %35, %28, %18
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.hid_device* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @input_ff_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @hidinput_find_field(%struct.hid_device*, i32, i32, %struct.hid_field**) #1

declare dso_local i32 @hid_warn(%struct.input_dev*, i8*) #1

declare dso_local i32 @hid_set_field(%struct.hid_field*, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
