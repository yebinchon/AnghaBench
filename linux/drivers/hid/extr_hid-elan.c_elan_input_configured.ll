; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elan.c_elan_input_configured.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elan.c_elan_input_configured.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.hid_input = type { i32 }
%struct.input_dev = type { i8*, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.elan_drvdata = type { %struct.input_dev*, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Elan Touchpad\00", align 1
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@ELAN_MAX_PRESSURE = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@INPUT_PROP_BUTTONPAD = common dso_local global i32 0, align 4
@ELAN_MAX_FINGERS = common dso_local global i32 0, align 4
@INPUT_MT_POINTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to init elan MT slots: %d\0A\00", align 1
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to register elan input device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*)* @elan_input_configured to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_input_configured(%struct.hid_device* %0, %struct.hid_input* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_input*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca %struct.elan_drvdata*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_input* %1, %struct.hid_input** %5, align 8
  %9 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %10 = call %struct.elan_drvdata* @hid_get_drvdata(%struct.hid_device* %9)
  store %struct.elan_drvdata* %10, %struct.elan_drvdata** %8, align 8
  %11 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %12 = call i64 @is_not_elan_touchpad(%struct.hid_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %138

15:                                               ; preds = %2
  %16 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %17 = call i32 @elan_get_device_params(%struct.hid_device* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %138

22:                                               ; preds = %15
  %23 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %24 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %23, i32 0, i32 0
  %25 = call %struct.input_dev* @devm_input_allocate_device(i32* %24)
  store %struct.input_dev* %25, %struct.input_dev** %7, align 8
  %26 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %27 = icmp ne %struct.input_dev* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %138

31:                                               ; preds = %22
  %32 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %33 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %33, align 8
  %34 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %35 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  %39 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %40 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %45 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %48 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 4
  %50 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %51 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %54 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 8
  %56 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %57 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %60 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %63 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %66 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %69 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %68, i32 0, i32 0
  %70 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %71 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32* %69, i32** %72, align 8
  %73 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %74 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %75 = load %struct.elan_drvdata*, %struct.elan_drvdata** %8, align 8
  %76 = getelementptr inbounds %struct.elan_drvdata, %struct.elan_drvdata* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @input_set_abs_params(%struct.input_dev* %73, i32 %74, i32 0, i32 %77, i32 0, i32 0)
  %79 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %80 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %81 = load %struct.elan_drvdata*, %struct.elan_drvdata** %8, align 8
  %82 = getelementptr inbounds %struct.elan_drvdata, %struct.elan_drvdata* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @input_set_abs_params(%struct.input_dev* %79, i32 %80, i32 0, i32 %83, i32 0, i32 0)
  %85 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %86 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %87 = load i32, i32* @ELAN_MAX_PRESSURE, align 4
  %88 = call i32 @input_set_abs_params(%struct.input_dev* %85, i32 %86, i32 0, i32 %87, i32 0, i32 0)
  %89 = load i32, i32* @BTN_LEFT, align 4
  %90 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %91 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @__set_bit(i32 %89, i32 %92)
  %94 = load i32, i32* @INPUT_PROP_BUTTONPAD, align 4
  %95 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %96 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @__set_bit(i32 %94, i32 %97)
  %99 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %100 = load i32, i32* @ELAN_MAX_FINGERS, align 4
  %101 = load i32, i32* @INPUT_MT_POINTER, align 4
  %102 = call i32 @input_mt_init_slots(%struct.input_dev* %99, i32 %100, i32 %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %31
  %106 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @hid_err(%struct.hid_device* %106, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %3, align 4
  br label %138

110:                                              ; preds = %31
  %111 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %112 = load i32, i32* @ABS_X, align 4
  %113 = load %struct.elan_drvdata*, %struct.elan_drvdata** %8, align 8
  %114 = getelementptr inbounds %struct.elan_drvdata, %struct.elan_drvdata* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @input_abs_set_res(%struct.input_dev* %111, i32 %112, i32 %115)
  %117 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %118 = load i32, i32* @ABS_Y, align 4
  %119 = load %struct.elan_drvdata*, %struct.elan_drvdata** %8, align 8
  %120 = getelementptr inbounds %struct.elan_drvdata, %struct.elan_drvdata* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @input_abs_set_res(%struct.input_dev* %117, i32 %118, i32 %121)
  %123 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %124 = call i32 @input_register_device(%struct.input_dev* %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %110
  %128 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @hid_err(%struct.hid_device* %128, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  %131 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %132 = call i32 @input_free_device(%struct.input_dev* %131)
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %3, align 4
  br label %138

134:                                              ; preds = %110
  %135 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %136 = load %struct.elan_drvdata*, %struct.elan_drvdata** %8, align 8
  %137 = getelementptr inbounds %struct.elan_drvdata, %struct.elan_drvdata* %136, i32 0, i32 0
  store %struct.input_dev* %135, %struct.input_dev** %137, align 8
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %134, %127, %105, %28, %20, %14
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.elan_drvdata* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i64 @is_not_elan_touchpad(%struct.hid_device*) #1

declare dso_local i32 @elan_get_device_params(%struct.hid_device*) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i32) #1

declare dso_local i32 @input_abs_set_res(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
