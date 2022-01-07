; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_setup_intuos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_setup_intuos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { %struct.input_dev* }
%struct.input_dev = type { i32 }

@EV_REL = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_SIDE = common dso_local global i32 0, align 4
@BTN_EXTRA = common dso_local global i32 0, align 4
@BTN_TOOL_MOUSE = common dso_local global i32 0, align 4
@BTN_TOOL_LENS = common dso_local global i32 0, align 4
@ABS_RZ = common dso_local global i32 0, align 4
@ABS_THROTTLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wacom_wac*)* @wacom_setup_intuos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_setup_intuos(%struct.wacom_wac* %0) #0 {
  %2 = alloca %struct.wacom_wac*, align 8
  %3 = alloca %struct.input_dev*, align 8
  store %struct.wacom_wac* %0, %struct.wacom_wac** %2, align 8
  %4 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %5 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %4, i32 0, i32 0
  %6 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  store %struct.input_dev* %6, %struct.input_dev** %3, align 8
  %7 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %8 = load i32, i32* @EV_REL, align 4
  %9 = load i32, i32* @REL_WHEEL, align 4
  %10 = call i32 @input_set_capability(%struct.input_dev* %7, i32 %8, i32 %9)
  %11 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %12 = call i32 @wacom_setup_cintiq(%struct.wacom_wac* %11)
  %13 = load i32, i32* @BTN_LEFT, align 4
  %14 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %15 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @__set_bit(i32 %13, i32 %16)
  %18 = load i32, i32* @BTN_RIGHT, align 4
  %19 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %20 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @__set_bit(i32 %18, i32 %21)
  %23 = load i32, i32* @BTN_MIDDLE, align 4
  %24 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %25 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @__set_bit(i32 %23, i32 %26)
  %28 = load i32, i32* @BTN_SIDE, align 4
  %29 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %30 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @__set_bit(i32 %28, i32 %31)
  %33 = load i32, i32* @BTN_EXTRA, align 4
  %34 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %35 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @__set_bit(i32 %33, i32 %36)
  %38 = load i32, i32* @BTN_TOOL_MOUSE, align 4
  %39 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %40 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @__set_bit(i32 %38, i32 %41)
  %43 = load i32, i32* @BTN_TOOL_LENS, align 4
  %44 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %45 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @__set_bit(i32 %43, i32 %46)
  %48 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %49 = load i32, i32* @ABS_RZ, align 4
  %50 = call i32 @input_set_abs_params(%struct.input_dev* %48, i32 %49, i32 -900, i32 899, i32 0, i32 0)
  %51 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %52 = load i32, i32* @ABS_RZ, align 4
  %53 = call i32 @input_abs_set_res(%struct.input_dev* %51, i32 %52, i32 287)
  %54 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %55 = load i32, i32* @ABS_THROTTLE, align 4
  %56 = call i32 @input_set_abs_params(%struct.input_dev* %54, i32 %55, i32 -1023, i32 1023, i32 0, i32 0)
  ret void
}

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @wacom_setup_cintiq(%struct.wacom_wac*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_abs_set_res(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
