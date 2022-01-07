; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_led_get_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_led_get_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_led_device = type { i32, i32 }
%struct.max77693_led_config_data = type { i32, i32 }
%struct.device_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77693_led_device*, %struct.max77693_led_config_data*, %struct.device_node**)* @max77693_led_get_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_led_get_configuration(%struct.max77693_led_device* %0, %struct.max77693_led_config_data* %1, %struct.device_node** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.max77693_led_device*, align 8
  %6 = alloca %struct.max77693_led_config_data*, align 8
  %7 = alloca %struct.device_node**, align 8
  %8 = alloca i32, align 4
  store %struct.max77693_led_device* %0, %struct.max77693_led_device** %5, align 8
  store %struct.max77693_led_config_data* %1, %struct.max77693_led_config_data** %6, align 8
  store %struct.device_node** %2, %struct.device_node*** %7, align 8
  %9 = load %struct.max77693_led_device*, %struct.max77693_led_device** %5, align 8
  %10 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %6, align 8
  %11 = load %struct.device_node**, %struct.device_node*** %7, align 8
  %12 = call i32 @max77693_led_parse_dt(%struct.max77693_led_device* %9, %struct.max77693_led_config_data* %10, %struct.device_node** %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %35

17:                                               ; preds = %3
  %18 = load %struct.max77693_led_device*, %struct.max77693_led_device** %5, align 8
  %19 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %6, align 8
  %20 = call i32 @max77693_led_validate_configuration(%struct.max77693_led_device* %18, %struct.max77693_led_config_data* %19)
  %21 = load %struct.max77693_led_device*, %struct.max77693_led_device** %5, align 8
  %22 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %6, align 8
  %25 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @memcpy(i32 %23, i32 %26, i32 4)
  %28 = load %struct.max77693_led_device*, %struct.max77693_led_device** %5, align 8
  %29 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %6, align 8
  %32 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memcpy(i32 %30, i32 %33, i32 4)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %17, %15
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @max77693_led_parse_dt(%struct.max77693_led_device*, %struct.max77693_led_config_data*, %struct.device_node**) #1

declare dso_local i32 @max77693_led_validate_configuration(%struct.max77693_led_device*, %struct.max77693_led_config_data*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
