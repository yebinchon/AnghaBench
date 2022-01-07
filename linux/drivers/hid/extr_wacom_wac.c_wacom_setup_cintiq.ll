; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_setup_cintiq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_setup_cintiq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { %struct.wacom_features, %struct.input_dev* }
%struct.wacom_features = type { i32 }
%struct.input_dev = type { i32 }

@BTN_TOOL_RUBBER = common dso_local global i32 0, align 4
@BTN_TOOL_BRUSH = common dso_local global i32 0, align 4
@BTN_TOOL_PENCIL = common dso_local global i32 0, align 4
@BTN_TOOL_AIRBRUSH = common dso_local global i32 0, align 4
@ABS_WHEEL = common dso_local global i32 0, align 4
@ABS_TILT_X = common dso_local global i32 0, align 4
@ABS_TILT_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wacom_wac*)* @wacom_setup_cintiq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_setup_cintiq(%struct.wacom_wac* %0) #0 {
  %2 = alloca %struct.wacom_wac*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.wacom_features*, align 8
  store %struct.wacom_wac* %0, %struct.wacom_wac** %2, align 8
  %5 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %6 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %5, i32 0, i32 1
  %7 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  store %struct.input_dev* %7, %struct.input_dev** %3, align 8
  %8 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %9 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %8, i32 0, i32 0
  store %struct.wacom_features* %9, %struct.wacom_features** %4, align 8
  %10 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %11 = call i32 @wacom_setup_basic_pro_pen(%struct.wacom_wac* %10)
  %12 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  %13 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %14 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @__set_bit(i32 %12, i32 %15)
  %17 = load i32, i32* @BTN_TOOL_BRUSH, align 4
  %18 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %19 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @__set_bit(i32 %17, i32 %20)
  %22 = load i32, i32* @BTN_TOOL_PENCIL, align 4
  %23 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %24 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @__set_bit(i32 %22, i32 %25)
  %27 = load i32, i32* @BTN_TOOL_AIRBRUSH, align 4
  %28 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %29 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @__set_bit(i32 %27, i32 %30)
  %32 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %33 = load i32, i32* @ABS_WHEEL, align 4
  %34 = call i32 @input_set_abs_params(%struct.input_dev* %32, i32 %33, i32 0, i32 1023, i32 0, i32 0)
  %35 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %36 = load i32, i32* @ABS_TILT_X, align 4
  %37 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %38 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @input_set_abs_params(%struct.input_dev* %35, i32 %36, i32 -64, i32 63, i32 %39, i32 0)
  %41 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %42 = load i32, i32* @ABS_TILT_X, align 4
  %43 = call i32 @input_abs_set_res(%struct.input_dev* %41, i32 %42, i32 57)
  %44 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %45 = load i32, i32* @ABS_TILT_Y, align 4
  %46 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %47 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @input_set_abs_params(%struct.input_dev* %44, i32 %45, i32 -64, i32 63, i32 %48, i32 0)
  %50 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %51 = load i32, i32* @ABS_TILT_Y, align 4
  %52 = call i32 @input_abs_set_res(%struct.input_dev* %50, i32 %51, i32 57)
  ret void
}

declare dso_local i32 @wacom_setup_basic_pro_pen(%struct.wacom_wac*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_abs_set_res(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
