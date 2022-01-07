; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-gpio.c_of_i2c_gpio_get_props.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-gpio.c_of_i2c_gpio_get_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.i2c_gpio_platform_data = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"i2c-gpio,delay-us\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"i2c-gpio,timeout-ms\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"i2c-gpio,sda-open-drain\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"i2c-gpio,scl-open-drain\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"i2c-gpio,scl-output-only\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*, %struct.i2c_gpio_platform_data*)* @of_i2c_gpio_get_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @of_i2c_gpio_get_props(%struct.device_node* %0, %struct.i2c_gpio_platform_data* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.i2c_gpio_platform_data*, align 8
  %5 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store %struct.i2c_gpio_platform_data* %1, %struct.i2c_gpio_platform_data** %4, align 8
  %6 = load %struct.device_node*, %struct.device_node** %3, align 8
  %7 = load %struct.i2c_gpio_platform_data*, %struct.i2c_gpio_platform_data** %4, align 8
  %8 = getelementptr inbounds %struct.i2c_gpio_platform_data, %struct.i2c_gpio_platform_data* %7, i32 0, i32 4
  %9 = call i32 @of_property_read_u32(%struct.device_node* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %8)
  %10 = load %struct.device_node*, %struct.device_node** %3, align 8
  %11 = call i32 @of_property_read_u32(%struct.device_node* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @msecs_to_jiffies(i32 %14)
  %16 = load %struct.i2c_gpio_platform_data*, %struct.i2c_gpio_platform_data** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_gpio_platform_data, %struct.i2c_gpio_platform_data* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.device_node*, %struct.device_node** %3, align 8
  %20 = call i8* @of_property_read_bool(%struct.device_node* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %21 = load %struct.i2c_gpio_platform_data*, %struct.i2c_gpio_platform_data** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_gpio_platform_data, %struct.i2c_gpio_platform_data* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load %struct.device_node*, %struct.device_node** %3, align 8
  %24 = call i8* @of_property_read_bool(%struct.device_node* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %25 = load %struct.i2c_gpio_platform_data*, %struct.i2c_gpio_platform_data** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_gpio_platform_data, %struct.i2c_gpio_platform_data* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.device_node*, %struct.device_node** %3, align 8
  %28 = call i8* @of_property_read_bool(%struct.device_node* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %29 = load %struct.i2c_gpio_platform_data*, %struct.i2c_gpio_platform_data** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_gpio_platform_data, %struct.i2c_gpio_platform_data* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  ret void
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
