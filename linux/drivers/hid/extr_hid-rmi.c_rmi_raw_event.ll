; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-rmi.c_rmi_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-rmi.c_rmi_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32 }
%struct.rmi_data = type { i32 }

@RMI_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_report*, i32*, i32)* @rmi_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_raw_event(%struct.hid_device* %0, %struct.hid_report* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_report*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rmi_data*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_report* %1, %struct.hid_report** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %12 = call %struct.rmi_data* @hid_get_drvdata(%struct.hid_device* %11)
  store %struct.rmi_data* %12, %struct.rmi_data** %10, align 8
  %13 = load %struct.rmi_data*, %struct.rmi_data** %10, align 8
  %14 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RMI_DEVICE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %43

20:                                               ; preds = %4
  %21 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @rmi_check_sanity(%struct.hid_device* %21, i32* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %43

28:                                               ; preds = %20
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %42 [
    i32 128, label %32
    i32 129, label %37
  ]

32:                                               ; preds = %28
  %33 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @rmi_read_data_event(%struct.hid_device* %33, i32* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  br label %43

37:                                               ; preds = %28
  %38 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @rmi_input_event(%struct.hid_device* %38, i32* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %43

42:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %37, %32, %27, %19
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.rmi_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @rmi_check_sanity(%struct.hid_device*, i32*, i32) #1

declare dso_local i32 @rmi_read_data_event(%struct.hid_device*, i32*, i32) #1

declare dso_local i32 @rmi_input_event(%struct.hid_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
