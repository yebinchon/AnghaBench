; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_wtp_populate_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_wtp_populate_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_device = type { i32, %struct.wtp_data* }
%struct.wtp_data = type { i32, i32, i32, i32 }
%struct.input_dev = type { i32, i32 }

@EV_ABS = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@EV_LED = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@HIDPP_QUIRK_WTP_PHYSICAL_BUTTONS = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@INPUT_PROP_BUTTONPAD = common dso_local global i32 0, align 4
@INPUT_MT_POINTER = common dso_local global i32 0, align 4
@INPUT_MT_DROP_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hidpp_device*, %struct.input_dev*)* @wtp_populate_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wtp_populate_input(%struct.hidpp_device* %0, %struct.input_dev* %1) #0 {
  %3 = alloca %struct.hidpp_device*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.wtp_data*, align 8
  store %struct.hidpp_device* %0, %struct.hidpp_device** %3, align 8
  store %struct.input_dev* %1, %struct.input_dev** %4, align 8
  %6 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %7 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %6, i32 0, i32 1
  %8 = load %struct.wtp_data*, %struct.wtp_data** %7, align 8
  store %struct.wtp_data* %8, %struct.wtp_data** %5, align 8
  %9 = load i32, i32* @EV_ABS, align 4
  %10 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %11 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @__set_bit(i32 %9, i32 %12)
  %14 = load i32, i32* @EV_KEY, align 4
  %15 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %16 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @__set_bit(i32 %14, i32 %17)
  %19 = load i32, i32* @EV_REL, align 4
  %20 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %21 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @__clear_bit(i32 %19, i32 %22)
  %24 = load i32, i32* @EV_LED, align 4
  %25 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @__clear_bit(i32 %24, i32 %27)
  %29 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %30 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %31 = load %struct.wtp_data*, %struct.wtp_data** %5, align 8
  %32 = getelementptr inbounds %struct.wtp_data, %struct.wtp_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @input_set_abs_params(%struct.input_dev* %29, i32 %30, i32 0, i32 %33, i32 0, i32 0)
  %35 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %36 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %37 = load %struct.wtp_data*, %struct.wtp_data** %5, align 8
  %38 = getelementptr inbounds %struct.wtp_data, %struct.wtp_data* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @input_abs_set_res(%struct.input_dev* %35, i32 %36, i32 %39)
  %41 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %42 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %43 = load %struct.wtp_data*, %struct.wtp_data** %5, align 8
  %44 = getelementptr inbounds %struct.wtp_data, %struct.wtp_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @input_set_abs_params(%struct.input_dev* %41, i32 %42, i32 0, i32 %45, i32 0, i32 0)
  %47 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %48 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %49 = load %struct.wtp_data*, %struct.wtp_data** %5, align 8
  %50 = getelementptr inbounds %struct.wtp_data, %struct.wtp_data* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @input_abs_set_res(%struct.input_dev* %47, i32 %48, i32 %51)
  %53 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %54 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %55 = call i32 @input_set_abs_params(%struct.input_dev* %53, i32 %54, i32 0, i32 50, i32 0, i32 0)
  %56 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %57 = load i32, i32* @EV_KEY, align 4
  %58 = load i32, i32* @BTN_LEFT, align 4
  %59 = call i32 @input_set_capability(%struct.input_dev* %56, i32 %57, i32 %58)
  %60 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %61 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @HIDPP_QUIRK_WTP_PHYSICAL_BUTTONS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %2
  %67 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %68 = load i32, i32* @EV_KEY, align 4
  %69 = load i32, i32* @BTN_RIGHT, align 4
  %70 = call i32 @input_set_capability(%struct.input_dev* %67, i32 %68, i32 %69)
  br label %77

71:                                               ; preds = %2
  %72 = load i32, i32* @INPUT_PROP_BUTTONPAD, align 4
  %73 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %74 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @__set_bit(i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %71, %66
  %78 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %79 = load %struct.wtp_data*, %struct.wtp_data** %5, align 8
  %80 = getelementptr inbounds %struct.wtp_data, %struct.wtp_data* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @INPUT_MT_POINTER, align 4
  %83 = load i32, i32* @INPUT_MT_DROP_UNUSED, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @input_mt_init_slots(%struct.input_dev* %78, i32 %81, i32 %84)
  ret void
}

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_abs_set_res(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
