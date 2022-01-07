; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-microsoft.c_ms_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-microsoft.c_ms_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32 }
%struct.hid_device_id = type { i64 }
%struct.ms_data = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MS_NOGET = common dso_local global i64 0, align 8
@HID_QUIRK_NOGET = common dso_local global i32 0, align 4
@MS_SURFACE_DIAL = common dso_local global i64 0, align 8
@HID_QUIRK_INPUT_PER_APP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@MS_HIDINPUT = common dso_local global i64 0, align 8
@HID_CONNECT_HIDINPUT_FORCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"could not initialize ff, continuing anyway\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @ms_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ms_data*, align 8
  %8 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %9 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %10 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %13 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %12, i32 0, i32 1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ms_data* @devm_kzalloc(i32* %13, i32 8, i32 %14)
  store %struct.ms_data* %15, %struct.ms_data** %7, align 8
  %16 = load %struct.ms_data*, %struct.ms_data** %7, align 8
  %17 = icmp eq %struct.ms_data* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %87

21:                                               ; preds = %2
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.ms_data*, %struct.ms_data** %7, align 8
  %24 = getelementptr inbounds %struct.ms_data, %struct.ms_data* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %26 = load %struct.ms_data*, %struct.ms_data** %7, align 8
  %27 = call i32 @hid_set_drvdata(%struct.hid_device* %25, %struct.ms_data* %26)
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @MS_NOGET, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load i32, i32* @HID_QUIRK_NOGET, align 4
  %34 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %35 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %21
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @MS_SURFACE_DIAL, align 8
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* @HID_QUIRK_INPUT_PER_APP, align 4
  %45 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %46 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %51 = call i32 @hid_parse(%struct.hid_device* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %56 = call i32 @hid_err(%struct.hid_device* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %85

57:                                               ; preds = %49
  %58 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %59 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @MS_HIDINPUT, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @HID_CONNECT_HIDINPUT_FORCE, align 4
  br label %67

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi i32 [ %65, %64 ], [ 0, %66 ]
  %69 = or i32 %59, %68
  %70 = call i32 @hid_hw_start(%struct.hid_device* %58, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %75 = call i32 @hid_err(%struct.hid_device* %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %85

76:                                               ; preds = %67
  %77 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %78 = call i32 @ms_init_ff(%struct.hid_device* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %83 = call i32 @hid_err(%struct.hid_device* %82, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %76
  store i32 0, i32* %3, align 4
  br label %87

85:                                               ; preds = %73, %54
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %84, %18
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.ms_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.ms_data*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i32 @ms_init_ff(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
