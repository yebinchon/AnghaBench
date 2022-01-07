; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sur40.c_sur40_input_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sur40.c_sur40_input_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }

@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@SENSOR_RES_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@SENSOR_RES_Y = common dso_local global i32 0, align 4
@ABS_MT_TOOL_X = common dso_local global i32 0, align 4
@ABS_MT_TOOL_Y = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_ORIENTATION = common dso_local global i32 0, align 4
@MAX_CONTACTS = common dso_local global i32 0, align 4
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@INPUT_MT_DROP_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @sur40_input_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sur40_input_setup(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %3 = load i32, i32* @EV_KEY, align 4
  %4 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %5 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @__set_bit(i32 %3, i32 %6)
  %8 = load i32, i32* @EV_ABS, align 4
  %9 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %10 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @__set_bit(i32 %8, i32 %11)
  %13 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %14 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %15 = load i32, i32* @SENSOR_RES_X, align 4
  %16 = call i32 @input_set_abs_params(%struct.input_dev* %13, i32 %14, i32 0, i32 %15, i32 0, i32 0)
  %17 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %18 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %19 = load i32, i32* @SENSOR_RES_Y, align 4
  %20 = call i32 @input_set_abs_params(%struct.input_dev* %17, i32 %18, i32 0, i32 %19, i32 0, i32 0)
  %21 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %22 = load i32, i32* @ABS_MT_TOOL_X, align 4
  %23 = load i32, i32* @SENSOR_RES_X, align 4
  %24 = call i32 @input_set_abs_params(%struct.input_dev* %21, i32 %22, i32 0, i32 %23, i32 0, i32 0)
  %25 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %26 = load i32, i32* @ABS_MT_TOOL_Y, align 4
  %27 = load i32, i32* @SENSOR_RES_Y, align 4
  %28 = call i32 @input_set_abs_params(%struct.input_dev* %25, i32 %26, i32 0, i32 %27, i32 0, i32 0)
  %29 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %30 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %31 = load i32, i32* @SENSOR_RES_X, align 4
  %32 = call i32 @input_set_abs_params(%struct.input_dev* %29, i32 %30, i32 0, i32 %31, i32 0, i32 0)
  %33 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %34 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %35 = load i32, i32* @SENSOR_RES_Y, align 4
  %36 = call i32 @input_set_abs_params(%struct.input_dev* %33, i32 %34, i32 0, i32 %35, i32 0, i32 0)
  %37 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %38 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %39 = call i32 @input_set_abs_params(%struct.input_dev* %37, i32 %38, i32 0, i32 1, i32 0, i32 0)
  %40 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %41 = load i32, i32* @MAX_CONTACTS, align 4
  %42 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %43 = load i32, i32* @INPUT_MT_DROP_UNUSED, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @input_mt_init_slots(%struct.input_dev* %40, i32 %41, i32 %44)
  ret void
}

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
