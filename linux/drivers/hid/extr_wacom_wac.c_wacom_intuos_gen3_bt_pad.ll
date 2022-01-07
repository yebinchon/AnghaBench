; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_intuos_gen3_bt_pad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_intuos_gen3_bt_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, i32*, %struct.input_dev* }
%struct.input_dev = type { i32 }

@ABS_MISC = common dso_local global i32 0, align 4
@PAD_DEVICE_ID = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SERIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wacom_wac*)* @wacom_intuos_gen3_bt_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_intuos_gen3_bt_pad(%struct.wacom_wac* %0) #0 {
  %2 = alloca %struct.wacom_wac*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %2, align 8
  %6 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %7 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %6, i32 0, i32 2
  %8 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  store %struct.input_dev* %8, %struct.input_dev** %3, align 8
  %9 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %10 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 44
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @wacom_report_numbered_buttons(%struct.input_dev* %16, i32 4, i32 %17)
  %19 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %20 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %21 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  %29 = call i32 @input_report_key(%struct.input_dev* %19, i32 %24, i32 %28)
  %30 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %31 = load i32, i32* @ABS_MISC, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @PAD_DEVICE_ID, align 4
  br label %37

36:                                               ; preds = %1
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  %39 = call i32 @input_report_abs(%struct.input_dev* %30, i32 %31, i32 %38)
  %40 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %41 = load i32, i32* @EV_MSC, align 4
  %42 = load i32, i32* @MSC_SERIAL, align 4
  %43 = call i32 @input_event(%struct.input_dev* %40, i32 %41, i32 %42, i32 -1)
  %44 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %45 = call i32 @input_sync(%struct.input_dev* %44)
  ret void
}

declare dso_local i32 @wacom_report_numbered_buttons(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
