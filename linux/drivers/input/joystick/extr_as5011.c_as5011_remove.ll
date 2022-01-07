; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_as5011.c_as5011_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_as5011.c_as5011_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.as5011_device = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @as5011_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as5011_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.as5011_device*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.as5011_device* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.as5011_device* %5, %struct.as5011_device** %3, align 8
  %6 = load %struct.as5011_device*, %struct.as5011_device** %3, align 8
  %7 = getelementptr inbounds %struct.as5011_device, %struct.as5011_device* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.as5011_device*, %struct.as5011_device** %3, align 8
  %10 = call i32 @free_irq(i32 %8, %struct.as5011_device* %9)
  %11 = load %struct.as5011_device*, %struct.as5011_device** %3, align 8
  %12 = getelementptr inbounds %struct.as5011_device, %struct.as5011_device* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.as5011_device*, %struct.as5011_device** %3, align 8
  %15 = call i32 @free_irq(i32 %13, %struct.as5011_device* %14)
  %16 = load %struct.as5011_device*, %struct.as5011_device** %3, align 8
  %17 = getelementptr inbounds %struct.as5011_device, %struct.as5011_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @gpio_free(i32 %18)
  %20 = load %struct.as5011_device*, %struct.as5011_device** %3, align 8
  %21 = getelementptr inbounds %struct.as5011_device, %struct.as5011_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @input_unregister_device(i32 %22)
  %24 = load %struct.as5011_device*, %struct.as5011_device** %3, align 8
  %25 = call i32 @kfree(%struct.as5011_device* %24)
  ret i32 0
}

declare dso_local %struct.as5011_device* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @free_irq(i32, %struct.as5011_device*) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.as5011_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
