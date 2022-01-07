; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_bcm5974.c_setup_events_to_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_bcm5974.c_setup_events_to_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32, i32, i32 }
%struct.bcm5974_config = type { i32, i32, i32, i32, i32 }

@EV_ABS = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_TOOL_WIDTH = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_WIDTH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_WIDTH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_ORIENTATION = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@HAS_INTEGRATED_BUTTON = common dso_local global i32 0, align 4
@INPUT_PROP_BUTTONPAD = common dso_local global i32 0, align 4
@MAX_FINGERS = common dso_local global i32 0, align 4
@INPUT_MT_POINTER = common dso_local global i32 0, align 4
@INPUT_MT_DROP_UNUSED = common dso_local global i32 0, align 4
@INPUT_MT_TRACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, %struct.bcm5974_config*)* @setup_events_to_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_events_to_report(%struct.input_dev* %0, %struct.bcm5974_config* %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.bcm5974_config*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store %struct.bcm5974_config* %1, %struct.bcm5974_config** %4, align 8
  %5 = load i32, i32* @EV_ABS, align 4
  %6 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %7 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @__set_bit(i32 %5, i32 %8)
  %10 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %11 = load i32, i32* @ABS_PRESSURE, align 4
  %12 = call i32 @input_set_abs_params(%struct.input_dev* %10, i32 %11, i32 0, i32 256, i32 5, i32 0)
  %13 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %14 = load i32, i32* @ABS_TOOL_WIDTH, align 4
  %15 = call i32 @input_set_abs_params(%struct.input_dev* %13, i32 %14, i32 0, i32 16, i32 0, i32 0)
  %16 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %17 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %18 = load %struct.bcm5974_config*, %struct.bcm5974_config** %4, align 8
  %19 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %18, i32 0, i32 4
  %20 = call i32 @set_abs(%struct.input_dev* %16, i32 %17, i32* %19)
  %21 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %22 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %23 = load %struct.bcm5974_config*, %struct.bcm5974_config** %4, align 8
  %24 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %23, i32 0, i32 4
  %25 = call i32 @set_abs(%struct.input_dev* %21, i32 %22, i32* %24)
  %26 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %27 = load i32, i32* @ABS_MT_WIDTH_MAJOR, align 4
  %28 = load %struct.bcm5974_config*, %struct.bcm5974_config** %4, align 8
  %29 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %28, i32 0, i32 4
  %30 = call i32 @set_abs(%struct.input_dev* %26, i32 %27, i32* %29)
  %31 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %32 = load i32, i32* @ABS_MT_WIDTH_MINOR, align 4
  %33 = load %struct.bcm5974_config*, %struct.bcm5974_config** %4, align 8
  %34 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %33, i32 0, i32 4
  %35 = call i32 @set_abs(%struct.input_dev* %31, i32 %32, i32* %34)
  %36 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %37 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %38 = load %struct.bcm5974_config*, %struct.bcm5974_config** %4, align 8
  %39 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %38, i32 0, i32 3
  %40 = call i32 @set_abs(%struct.input_dev* %36, i32 %37, i32* %39)
  %41 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %42 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %43 = load %struct.bcm5974_config*, %struct.bcm5974_config** %4, align 8
  %44 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %43, i32 0, i32 2
  %45 = call i32 @set_abs(%struct.input_dev* %41, i32 %42, i32* %44)
  %46 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %47 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %48 = load %struct.bcm5974_config*, %struct.bcm5974_config** %4, align 8
  %49 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %48, i32 0, i32 1
  %50 = call i32 @set_abs(%struct.input_dev* %46, i32 %47, i32* %49)
  %51 = load i32, i32* @EV_KEY, align 4
  %52 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %53 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @__set_bit(i32 %51, i32 %54)
  %56 = load i32, i32* @BTN_LEFT, align 4
  %57 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %58 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @__set_bit(i32 %56, i32 %59)
  %61 = load %struct.bcm5974_config*, %struct.bcm5974_config** %4, align 8
  %62 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @HAS_INTEGRATED_BUTTON, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %2
  %68 = load i32, i32* @INPUT_PROP_BUTTONPAD, align 4
  %69 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %70 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @__set_bit(i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %67, %2
  %74 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %75 = load i32, i32* @MAX_FINGERS, align 4
  %76 = load i32, i32* @INPUT_MT_POINTER, align 4
  %77 = load i32, i32* @INPUT_MT_DROP_UNUSED, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @INPUT_MT_TRACK, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @input_mt_init_slots(%struct.input_dev* %74, i32 %75, i32 %80)
  ret void
}

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_abs(%struct.input_dev*, i32, i32*) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
