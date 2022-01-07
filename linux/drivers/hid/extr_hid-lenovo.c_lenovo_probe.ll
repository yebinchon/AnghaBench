; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lenovo.c_lenovo_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lenovo.c_lenovo_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_device_id = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"hid_parse failed\0A\00", align 1
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"hid_hw_start failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @lenovo_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lenovo_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %8 = call i32 @hid_parse(%struct.hid_device* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %13 = call i32 @hid_err(%struct.hid_device* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %16 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %17 = call i32 @hid_hw_start(%struct.hid_device* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %22 = call i32 @hid_err(%struct.hid_device* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %42

23:                                               ; preds = %14
  %24 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %25 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %33 [
    i32 128, label %27
    i32 129, label %30
    i32 130, label %30
  ]

27:                                               ; preds = %23
  %28 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %29 = call i32 @lenovo_probe_tpkbd(%struct.hid_device* %28)
  store i32 %29, i32* %6, align 4
  br label %34

30:                                               ; preds = %23, %23
  %31 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %32 = call i32 @lenovo_probe_cptkbd(%struct.hid_device* %31)
  store i32 %32, i32* %6, align 4
  br label %34

33:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %30, %27
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %39

38:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %44

39:                                               ; preds = %37
  %40 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %41 = call i32 @hid_hw_stop(%struct.hid_device* %40)
  br label %42

42:                                               ; preds = %39, %20, %11
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i32 @lenovo_probe_tpkbd(%struct.hid_device*) #1

declare dso_local i32 @lenovo_probe_cptkbd(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_stop(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
