; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_populate_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_populate_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_device = type { i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@HIDPP_QUIRK_CLASS_WTP = common dso_local global i32 0, align 4
@HIDPP_QUIRK_CLASS_M560 = common dso_local global i32 0, align 4
@HIDPP_QUIRK_HIDPP_WHEELS = common dso_local global i32 0, align 4
@HIDPP_QUIRK_HIDPP_EXTRA_MOUSE_BTNS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hidpp_device*, %struct.input_dev*)* @hidpp_populate_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidpp_populate_input(%struct.hidpp_device* %0, %struct.input_dev* %1) #0 {
  %3 = alloca %struct.hidpp_device*, align 8
  %4 = alloca %struct.input_dev*, align 8
  store %struct.hidpp_device* %0, %struct.hidpp_device** %3, align 8
  store %struct.input_dev* %1, %struct.input_dev** %4, align 8
  %5 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %6 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %7 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %6, i32 0, i32 1
  store %struct.input_dev* %5, %struct.input_dev** %7, align 8
  %8 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %9 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @HIDPP_QUIRK_CLASS_WTP, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %16 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %17 = call i32 @wtp_populate_input(%struct.hidpp_device* %15, %struct.input_dev* %16)
  br label %30

18:                                               ; preds = %2
  %19 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %20 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @HIDPP_QUIRK_CLASS_M560, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %27 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %28 = call i32 @m560_populate_input(%struct.hidpp_device* %26, %struct.input_dev* %27)
  br label %29

29:                                               ; preds = %25, %18
  br label %30

30:                                               ; preds = %29, %14
  %31 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %32 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @HIDPP_QUIRK_HIDPP_WHEELS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %39 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %40 = call i32 @hidpp10_wheel_populate_input(%struct.hidpp_device* %38, %struct.input_dev* %39)
  br label %41

41:                                               ; preds = %37, %30
  %42 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %43 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @HIDPP_QUIRK_HIDPP_EXTRA_MOUSE_BTNS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %50 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %51 = call i32 @hidpp10_extra_mouse_buttons_populate_input(%struct.hidpp_device* %49, %struct.input_dev* %50)
  br label %52

52:                                               ; preds = %48, %41
  ret void
}

declare dso_local i32 @wtp_populate_input(%struct.hidpp_device*, %struct.input_dev*) #1

declare dso_local i32 @m560_populate_input(%struct.hidpp_device*, %struct.input_dev*) #1

declare dso_local i32 @hidpp10_wheel_populate_input(%struct.hidpp_device*, %struct.input_dev*) #1

declare dso_local i32 @hidpp10_extra_mouse_buttons_populate_input(%struct.hidpp_device*, %struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
