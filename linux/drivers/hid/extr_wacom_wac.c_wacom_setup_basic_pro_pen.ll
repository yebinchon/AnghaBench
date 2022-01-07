; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_setup_basic_pro_pen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_setup_basic_pro_pen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { %struct.TYPE_2__, %struct.input_dev* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.input_dev = type { i32 }

@EV_MSC = common dso_local global i32 0, align 4
@MSC_SERIAL = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i32 0, align 4
@BTN_STYLUS2 = common dso_local global i32 0, align 4
@ABS_DISTANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wacom_wac*)* @wacom_setup_basic_pro_pen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_setup_basic_pro_pen(%struct.wacom_wac* %0) #0 {
  %2 = alloca %struct.wacom_wac*, align 8
  %3 = alloca %struct.input_dev*, align 8
  store %struct.wacom_wac* %0, %struct.wacom_wac** %2, align 8
  %4 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %5 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %4, i32 0, i32 1
  %6 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  store %struct.input_dev* %6, %struct.input_dev** %3, align 8
  %7 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %8 = load i32, i32* @EV_MSC, align 4
  %9 = load i32, i32* @MSC_SERIAL, align 4
  %10 = call i32 @input_set_capability(%struct.input_dev* %7, i32 %8, i32 %9)
  %11 = load i32, i32* @BTN_TOOL_PEN, align 4
  %12 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %13 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @__set_bit(i32 %11, i32 %14)
  %16 = load i32, i32* @BTN_STYLUS, align 4
  %17 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %18 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @__set_bit(i32 %16, i32 %19)
  %21 = load i32, i32* @BTN_STYLUS2, align 4
  %22 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %23 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @__set_bit(i32 %21, i32 %24)
  %26 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %27 = load i32, i32* @ABS_DISTANCE, align 4
  %28 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %29 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %33 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @input_set_abs_params(%struct.input_dev* %26, i32 %27, i32 0, i32 %31, i32 %35, i32 0)
  ret void
}

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
