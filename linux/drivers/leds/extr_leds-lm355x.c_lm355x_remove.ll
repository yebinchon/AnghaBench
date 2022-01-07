; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm355x.c_lm355x_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm355x.c_lm355x_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.lm355x_chip_data = type { i64, i32, i32, i32, i32, %struct.lm355x_reg_data* }
%struct.lm355x_reg_data = type { i32 }

@REG_OPMODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"%s is removed\0A\00", align 1
@lm355x_name = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @lm355x_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm355x_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.lm355x_chip_data*, align 8
  %4 = alloca %struct.lm355x_reg_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.lm355x_chip_data* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.lm355x_chip_data* %6, %struct.lm355x_chip_data** %3, align 8
  %7 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %3, align 8
  %8 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %7, i32 0, i32 5
  %9 = load %struct.lm355x_reg_data*, %struct.lm355x_reg_data** %8, align 8
  store %struct.lm355x_reg_data* %9, %struct.lm355x_reg_data** %4, align 8
  %10 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %3, align 8
  %11 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.lm355x_reg_data*, %struct.lm355x_reg_data** %4, align 8
  %14 = load i64, i64* @REG_OPMODE, align 8
  %15 = getelementptr inbounds %struct.lm355x_reg_data, %struct.lm355x_reg_data* %13, i64 %14
  %16 = getelementptr inbounds %struct.lm355x_reg_data, %struct.lm355x_reg_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @regmap_write(i32 %12, i32 %17, i32 0)
  %19 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %3, align 8
  %20 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %19, i32 0, i32 3
  %21 = call i32 @led_classdev_unregister(i32* %20)
  %22 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %3, align 8
  %23 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %22, i32 0, i32 2
  %24 = call i32 @led_classdev_unregister(i32* %23)
  %25 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %3, align 8
  %26 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %25, i32 0, i32 1
  %27 = call i32 @led_classdev_unregister(i32* %26)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32*, i32** @lm355x_name, align 8
  %31 = load %struct.lm355x_chip_data*, %struct.lm355x_chip_data** %3, align 8
  %32 = getelementptr inbounds %struct.lm355x_chip_data, %struct.lm355x_chip_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_info(i32* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %35)
  ret i32 0
}

declare dso_local %struct.lm355x_chip_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @led_classdev_unregister(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
