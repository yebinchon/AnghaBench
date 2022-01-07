; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elo.c_elo_input_configured.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elo.c_elo_input_configured.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { %struct.input_dev* }
%struct.input_dev = type { i32, i32 }

@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*)* @elo_input_configured to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elo_input_configured(%struct.hid_device* %0, %struct.hid_input* %1) #0 {
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.hid_input*, align 8
  %5 = alloca %struct.input_dev*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  store %struct.hid_input* %1, %struct.hid_input** %4, align 8
  %6 = load %struct.hid_input*, %struct.hid_input** %4, align 8
  %7 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %6, i32 0, i32 0
  %8 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  store %struct.input_dev* %8, %struct.input_dev** %5, align 8
  %9 = load i32, i32* @BTN_LEFT, align 4
  %10 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %11 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @clear_bit(i32 %9, i32 %12)
  %14 = load i32, i32* @BTN_TOUCH, align 4
  %15 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %16 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @set_bit(i32 %14, i32 %17)
  %19 = load i32, i32* @ABS_PRESSURE, align 4
  %20 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %21 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @set_bit(i32 %19, i32 %22)
  %24 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %25 = load i32, i32* @ABS_PRESSURE, align 4
  %26 = call i32 @input_set_abs_params(%struct.input_dev* %24, i32 %25, i32 0, i32 256, i32 0, i32 0)
  ret i32 0
}

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
