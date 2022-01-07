; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-udraw-ps3.c_udraw_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-udraw-ps3.c_udraw_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_device_id = type { i32 }
%struct.udraw = type { i32, i32, i32, i32, i32, i32, %struct.hid_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"could not allocate interfaces\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to register interfaces\0A\00", align 1
@HID_CONNECT_HIDRAW = common dso_local global i32 0, align 4
@HID_CONNECT_DRIVER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @udraw_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udraw_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca %struct.udraw*, align 8
  %7 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %8 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %9 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.udraw* @devm_kzalloc(i32* %9, i32 32, i32 %10)
  store %struct.udraw* %11, %struct.udraw** %6, align 8
  %12 = load %struct.udraw*, %struct.udraw** %6, align 8
  %13 = icmp ne %struct.udraw* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %107

17:                                               ; preds = %2
  %18 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %19 = load %struct.udraw*, %struct.udraw** %6, align 8
  %20 = getelementptr inbounds %struct.udraw, %struct.udraw* %19, i32 0, i32 6
  store %struct.hid_device* %18, %struct.hid_device** %20, align 8
  %21 = load %struct.udraw*, %struct.udraw** %6, align 8
  %22 = getelementptr inbounds %struct.udraw, %struct.udraw* %21, i32 0, i32 0
  store i32 -1, i32* %22, align 8
  %23 = load %struct.udraw*, %struct.udraw** %6, align 8
  %24 = getelementptr inbounds %struct.udraw, %struct.udraw* %23, i32 0, i32 1
  store i32 -1, i32* %24, align 4
  %25 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %26 = load %struct.udraw*, %struct.udraw** %6, align 8
  %27 = call i32 @hid_set_drvdata(%struct.hid_device* %25, %struct.udraw* %26)
  %28 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %29 = call i32 @hid_parse(%struct.hid_device* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %17
  %33 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %34 = call i32 @hid_err(%struct.hid_device* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %107

36:                                               ; preds = %17
  %37 = load %struct.udraw*, %struct.udraw** %6, align 8
  %38 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %39 = call i32 @udraw_setup_joypad(%struct.udraw* %37, %struct.hid_device* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load %struct.udraw*, %struct.udraw** %6, align 8
  %43 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %44 = call i32 @udraw_setup_touch(%struct.udraw* %42, %struct.hid_device* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.udraw*, %struct.udraw** %6, align 8
  %48 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %49 = call i32 @udraw_setup_pen(%struct.udraw* %47, %struct.hid_device* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.udraw*, %struct.udraw** %6, align 8
  %53 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %54 = call i32 @udraw_setup_accel(%struct.udraw* %52, %struct.hid_device* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51, %46, %41, %36
  %57 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %58 = call i32 @hid_err(%struct.hid_device* %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %107

61:                                               ; preds = %51
  %62 = load %struct.udraw*, %struct.udraw** %6, align 8
  %63 = getelementptr inbounds %struct.udraw, %struct.udraw* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @input_register_device(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %85, label %67

67:                                               ; preds = %61
  %68 = load %struct.udraw*, %struct.udraw** %6, align 8
  %69 = getelementptr inbounds %struct.udraw, %struct.udraw* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @input_register_device(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %67
  %74 = load %struct.udraw*, %struct.udraw** %6, align 8
  %75 = getelementptr inbounds %struct.udraw, %struct.udraw* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @input_register_device(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load %struct.udraw*, %struct.udraw** %6, align 8
  %81 = getelementptr inbounds %struct.udraw, %struct.udraw* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @input_register_device(i32 %82)
  %84 = icmp ne i64 %83, 0
  br label %85

85:                                               ; preds = %79, %73, %67, %61
  %86 = phi i1 [ true, %73 ], [ true, %67 ], [ true, %61 ], [ %84, %79 ]
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %92 = call i32 @hid_err(%struct.hid_device* %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %3, align 4
  br label %107

94:                                               ; preds = %85
  %95 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %96 = load i32, i32* @HID_CONNECT_HIDRAW, align 4
  %97 = load i32, i32* @HID_CONNECT_DRIVER, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @hid_hw_start(%struct.hid_device* %95, i32 %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %94
  %103 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %104 = call i32 @hid_err(%struct.hid_device* %103, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %3, align 4
  br label %107

106:                                              ; preds = %94
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %102, %90, %56, %32, %14
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.udraw* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.udraw*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @udraw_setup_joypad(%struct.udraw*, %struct.hid_device*) #1

declare dso_local i32 @udraw_setup_touch(%struct.udraw*, %struct.hid_device*) #1

declare dso_local i32 @udraw_setup_pen(%struct.udraw*, %struct.hid_device*) #1

declare dso_local i32 @udraw_setup_accel(%struct.udraw*, %struct.hid_device*) #1

declare dso_local i64 @input_register_device(i32) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
