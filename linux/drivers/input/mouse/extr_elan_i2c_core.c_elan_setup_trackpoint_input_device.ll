; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_setup_trackpoint_input_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_setup_trackpoint_input_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elan_tp_data = type { %struct.input_dev*, i32, %struct.TYPE_3__* }
%struct.input_dev = type { i8*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Elan TrackPoint\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@ELAN_VENDOR_ID = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@INPUT_PROP_POINTER = common dso_local global i32 0, align 4
@INPUT_PROP_POINTING_STICK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elan_tp_data*)* @elan_setup_trackpoint_input_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_setup_trackpoint_input_device(%struct.elan_tp_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.elan_tp_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.input_dev*, align 8
  store %struct.elan_tp_data* %0, %struct.elan_tp_data** %3, align 8
  %6 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %7 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %10)
  store %struct.input_dev* %11, %struct.input_dev** %5, align 8
  %12 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %13 = icmp ne %struct.input_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %70

17:                                               ; preds = %1
  %18 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %19 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = load i32, i32* @BUS_I2C, align 4
  %21 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %22 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @ELAN_VENDOR_ID, align 4
  %25 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %29 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %32 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %35 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %36 = call i32 @input_set_drvdata(%struct.input_dev* %34, %struct.elan_tp_data* %35)
  %37 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %38 = load i32, i32* @EV_REL, align 4
  %39 = load i32, i32* @REL_X, align 4
  %40 = call i32 @input_set_capability(%struct.input_dev* %37, i32 %38, i32 %39)
  %41 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %42 = load i32, i32* @EV_REL, align 4
  %43 = load i32, i32* @REL_Y, align 4
  %44 = call i32 @input_set_capability(%struct.input_dev* %41, i32 %42, i32 %43)
  %45 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %46 = load i32, i32* @EV_KEY, align 4
  %47 = load i32, i32* @BTN_LEFT, align 4
  %48 = call i32 @input_set_capability(%struct.input_dev* %45, i32 %46, i32 %47)
  %49 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %50 = load i32, i32* @EV_KEY, align 4
  %51 = load i32, i32* @BTN_RIGHT, align 4
  %52 = call i32 @input_set_capability(%struct.input_dev* %49, i32 %50, i32 %51)
  %53 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %54 = load i32, i32* @EV_KEY, align 4
  %55 = load i32, i32* @BTN_MIDDLE, align 4
  %56 = call i32 @input_set_capability(%struct.input_dev* %53, i32 %54, i32 %55)
  %57 = load i32, i32* @INPUT_PROP_POINTER, align 4
  %58 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %59 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @__set_bit(i32 %57, i32 %60)
  %62 = load i32, i32* @INPUT_PROP_POINTING_STICK, align 4
  %63 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %64 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @__set_bit(i32 %62, i32 %65)
  %67 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %68 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %69 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %68, i32 0, i32 0
  store %struct.input_dev* %67, %struct.input_dev** %69, align 8
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %17, %14
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.elan_tp_data*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
