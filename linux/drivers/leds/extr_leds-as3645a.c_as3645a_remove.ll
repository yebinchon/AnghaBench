; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-as3645a.c_as3645a_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-as3645a.c_as3645a_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.as3645a = type { i32, i32, i32, i32, i32, i32, i32 }

@AS_MODE_EXT_TORCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @as3645a_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3645a_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.as3645a*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.as3645a* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.as3645a* %5, %struct.as3645a** %3, align 8
  %6 = load %struct.as3645a*, %struct.as3645a** %3, align 8
  %7 = load i32, i32* @AS_MODE_EXT_TORCH, align 4
  %8 = call i32 @as3645a_set_control(%struct.as3645a* %6, i32 %7, i32 0)
  %9 = load %struct.as3645a*, %struct.as3645a** %3, align 8
  %10 = getelementptr inbounds %struct.as3645a, %struct.as3645a* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @v4l2_flash_release(i32 %11)
  %13 = load %struct.as3645a*, %struct.as3645a** %3, align 8
  %14 = getelementptr inbounds %struct.as3645a, %struct.as3645a* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @v4l2_flash_release(i32 %15)
  %17 = load %struct.as3645a*, %struct.as3645a** %3, align 8
  %18 = getelementptr inbounds %struct.as3645a, %struct.as3645a* %17, i32 0, i32 4
  %19 = call i32 @led_classdev_flash_unregister(i32* %18)
  %20 = load %struct.as3645a*, %struct.as3645a** %3, align 8
  %21 = getelementptr inbounds %struct.as3645a, %struct.as3645a* %20, i32 0, i32 3
  %22 = call i32 @led_classdev_unregister(i32* %21)
  %23 = load %struct.as3645a*, %struct.as3645a** %3, align 8
  %24 = getelementptr inbounds %struct.as3645a, %struct.as3645a* %23, i32 0, i32 2
  %25 = call i32 @mutex_destroy(i32* %24)
  %26 = load %struct.as3645a*, %struct.as3645a** %3, align 8
  %27 = getelementptr inbounds %struct.as3645a, %struct.as3645a* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @fwnode_handle_put(i32 %28)
  %30 = load %struct.as3645a*, %struct.as3645a** %3, align 8
  %31 = getelementptr inbounds %struct.as3645a, %struct.as3645a* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @fwnode_handle_put(i32 %32)
  ret i32 0
}

declare dso_local %struct.as3645a* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @as3645a_set_control(%struct.as3645a*, i32, i32) #1

declare dso_local i32 @v4l2_flash_release(i32) #1

declare dso_local i32 @led_classdev_flash_unregister(i32*) #1

declare dso_local i32 @led_classdev_unregister(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @fwnode_handle_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
