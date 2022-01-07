; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_rave-sp-pwrbutton.c_rave_sp_pwrbutton_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_rave-sp-pwrbutton.c_rave_sp_pwrbutton_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.rave_sp_power_button = type { %struct.TYPE_2__, %struct.input_dev* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.input_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@rave_sp_power_button_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rave_sp_pwrbutton_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rave_sp_pwrbutton_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rave_sp_power_button*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 1
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.rave_sp_power_button* @devm_kzalloc(%struct.device* %10, i32 16, i32 %11)
  store %struct.rave_sp_power_button* %12, %struct.rave_sp_power_button** %5, align 8
  %13 = load %struct.rave_sp_power_button*, %struct.rave_sp_power_button** %5, align 8
  %14 = icmp ne %struct.rave_sp_power_button* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %62

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %19)
  store %struct.input_dev* %20, %struct.input_dev** %6, align 8
  %21 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %22 = icmp ne %struct.input_dev* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %62

26:                                               ; preds = %18
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %31 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %33 = load i32, i32* @EV_KEY, align 4
  %34 = load i32, i32* @KEY_POWER, align 4
  %35 = call i32 @input_set_capability(%struct.input_dev* %32, i32 %33, i32 %34)
  %36 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %37 = call i32 @input_register_device(%struct.input_dev* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %62

42:                                               ; preds = %26
  %43 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %44 = load %struct.rave_sp_power_button*, %struct.rave_sp_power_button** %5, align 8
  %45 = getelementptr inbounds %struct.rave_sp_power_button, %struct.rave_sp_power_button* %44, i32 0, i32 1
  store %struct.input_dev* %43, %struct.input_dev** %45, align 8
  %46 = load i32, i32* @rave_sp_power_button_event, align 4
  %47 = load %struct.rave_sp_power_button*, %struct.rave_sp_power_button** %5, align 8
  %48 = getelementptr inbounds %struct.rave_sp_power_button, %struct.rave_sp_power_button* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.rave_sp_power_button*, %struct.rave_sp_power_button** %5, align 8
  %51 = getelementptr inbounds %struct.rave_sp_power_button, %struct.rave_sp_power_button* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 128, i32* %52, align 8
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load %struct.rave_sp_power_button*, %struct.rave_sp_power_button** %5, align 8
  %55 = getelementptr inbounds %struct.rave_sp_power_button, %struct.rave_sp_power_button* %54, i32 0, i32 0
  %56 = call i32 @devm_rave_sp_register_event_notifier(%struct.device* %53, %struct.TYPE_2__* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %42
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %59, %40, %23, %15
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.rave_sp_power_button* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @devm_rave_sp_register_event_notifier(%struct.device*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
