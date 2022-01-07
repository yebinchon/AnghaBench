; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elan.c_elan_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elan.c_elan_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_device_id = type { i32 }
%struct.elan_drvdata = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Hid Parse failed\0A\00", align 1
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Hid hw start failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Input device is not registered\0A\00", align 1
@ENAVAIL = common dso_local global i32 0, align 4
@ELAN_HAS_LED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @elan_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.elan_drvdata*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %8 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %9 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.elan_drvdata* @devm_kzalloc(i32* %9, i32 4, i32 %10)
  store %struct.elan_drvdata* %11, %struct.elan_drvdata** %7, align 8
  %12 = load %struct.elan_drvdata*, %struct.elan_drvdata** %7, align 8
  %13 = icmp ne %struct.elan_drvdata* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %79

17:                                               ; preds = %2
  %18 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %19 = load %struct.elan_drvdata*, %struct.elan_drvdata** %7, align 8
  %20 = call i32 @hid_set_drvdata(%struct.hid_device* %18, %struct.elan_drvdata* %19)
  %21 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %22 = call i32 @hid_parse(%struct.hid_device* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %27 = call i32 @hid_err(%struct.hid_device* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %79

29:                                               ; preds = %17
  %30 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %31 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %32 = call i32 @hid_hw_start(%struct.hid_device* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %37 = call i32 @hid_err(%struct.hid_device* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %79

39:                                               ; preds = %29
  %40 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %41 = call i64 @is_not_elan_touchpad(%struct.hid_device* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %79

44:                                               ; preds = %39
  %45 = load %struct.elan_drvdata*, %struct.elan_drvdata** %7, align 8
  %46 = getelementptr inbounds %struct.elan_drvdata, %struct.elan_drvdata* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %51 = call i32 @hid_err(%struct.hid_device* %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @ENAVAIL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %75

54:                                               ; preds = %44
  %55 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %56 = call i32 @elan_start_multitouch(%struct.hid_device* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %75

60:                                               ; preds = %54
  %61 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %62 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ELAN_HAS_LED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %69 = call i32 @elan_init_mute_led(%struct.hid_device* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %75

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %60
  store i32 0, i32* %3, align 4
  br label %79

75:                                               ; preds = %72, %59, %49
  %76 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %77 = call i32 @hid_hw_stop(%struct.hid_device* %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %75, %74, %43, %35, %25, %14
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.elan_drvdata* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.elan_drvdata*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i64 @is_not_elan_touchpad(%struct.hid_device*) #1

declare dso_local i32 @elan_start_multitouch(%struct.hid_device*) #1

declare dso_local i32 @elan_init_mute_led(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_stop(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
