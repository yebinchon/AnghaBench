; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32, i32, i32 }
%struct.hid_device_id = type { i64 }
%struct.sony_sc = type { i64, %struct.hid_device*, i32 }

@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"FutureMax Dance Mat\00", align 1
@FUTUREMAX_DANCE_MAT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"SHANWAN PS3 GamePad\00", align 1
@SHANWAN_GAMEPAD = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"can't alloc sony descriptor\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@VAIO_RDESC_CONSTANT = common dso_local global i32 0, align 4
@HID_CONNECT_HIDDEV_FORCE = common dso_local global i32 0, align 4
@SIXAXIS_CONTROLLER = common dso_local global i32 0, align 4
@DUALSHOCK4_CONTROLLER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@HID_CLAIMED_INPUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"failed to claim input\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @sony_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sony_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sony_sc*, align 8
  %9 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %10 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %11 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %15 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strcmp(i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i64, i64* @FUTUREMAX_DANCE_MAT, align 8
  %21 = load i64, i64* %7, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %25 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strcmp(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* @SHANWAN_GAMEPAD, align 8
  %31 = load i64, i64* %7, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %29, %23
  %34 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %35 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %34, i32 0, i32 2
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.sony_sc* @devm_kzalloc(i32* %35, i32 24, i32 %36)
  store %struct.sony_sc* %37, %struct.sony_sc** %8, align 8
  %38 = load %struct.sony_sc*, %struct.sony_sc** %8, align 8
  %39 = icmp eq %struct.sony_sc* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %42 = call i32 @hid_err(%struct.hid_device* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %132

45:                                               ; preds = %33
  %46 = load %struct.sony_sc*, %struct.sony_sc** %8, align 8
  %47 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %46, i32 0, i32 2
  %48 = call i32 @spin_lock_init(i32* %47)
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.sony_sc*, %struct.sony_sc** %8, align 8
  %51 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %53 = load %struct.sony_sc*, %struct.sony_sc** %8, align 8
  %54 = call i32 @hid_set_drvdata(%struct.hid_device* %52, %struct.sony_sc* %53)
  %55 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %56 = load %struct.sony_sc*, %struct.sony_sc** %8, align 8
  %57 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %56, i32 0, i32 1
  store %struct.hid_device* %55, %struct.hid_device** %57, align 8
  %58 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %59 = call i32 @hid_parse(%struct.hid_device* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %45
  %63 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %64 = call i32 @hid_err(%struct.hid_device* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %132

66:                                               ; preds = %45
  %67 = load %struct.sony_sc*, %struct.sony_sc** %8, align 8
  %68 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @VAIO_RDESC_CONSTANT, align 4
  %71 = sext i32 %70 to i64
  %72 = and i64 %69, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load i32, i32* @HID_CONNECT_HIDDEV_FORCE, align 4
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %9, align 4
  br label %91

78:                                               ; preds = %66
  %79 = load %struct.sony_sc*, %struct.sony_sc** %8, align 8
  %80 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @SIXAXIS_CONTROLLER, align 4
  %83 = sext i32 %82 to i64
  %84 = and i64 %81, %83
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load i32, i32* @HID_CONNECT_HIDDEV_FORCE, align 4
  %88 = load i32, i32* %9, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %86, %78
  br label %91

91:                                               ; preds = %90, %74
  %92 = load %struct.sony_sc*, %struct.sony_sc** %8, align 8
  %93 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @SIXAXIS_CONTROLLER, align 4
  %96 = load i32, i32* @DUALSHOCK4_CONTROLLER, align 4
  %97 = or i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = and i64 %94, %98
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %91
  %102 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %103 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, 32768
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %101, %91
  %107 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @hid_hw_start(%struct.hid_device* %107, i32 %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %114 = call i32 @hid_err(%struct.hid_device* %113, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %3, align 4
  br label %132

116:                                              ; preds = %106
  %117 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %118 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @HID_CLAIMED_INPUT, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %116
  %124 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %125 = call i32 @hid_err(%struct.hid_device* %124, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %126 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %127 = call i32 @hid_hw_stop(%struct.hid_device* %126)
  %128 = load i32, i32* @ENODEV, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %132

130:                                              ; preds = %116
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %130, %123, %112, %62, %40
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local %struct.sony_sc* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.sony_sc*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i32 @hid_hw_stop(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
