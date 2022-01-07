; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_led-triggers.c_devm_led_trigger_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_led-triggers.c_devm_led_trigger_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.led_trigger = type { i32 }

@devm_led_trigger_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_led_trigger_register(%struct.device* %0, %struct.led_trigger* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.led_trigger*, align 8
  %6 = alloca %struct.led_trigger**, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.led_trigger* %1, %struct.led_trigger** %5, align 8
  %8 = load i32, i32* @devm_led_trigger_release, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.led_trigger** @devres_alloc(i32 %8, i32 8, i32 %9)
  store %struct.led_trigger** %10, %struct.led_trigger*** %6, align 8
  %11 = load %struct.led_trigger**, %struct.led_trigger*** %6, align 8
  %12 = icmp ne %struct.led_trigger** %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.led_trigger*, %struct.led_trigger** %5, align 8
  %18 = load %struct.led_trigger**, %struct.led_trigger*** %6, align 8
  store %struct.led_trigger* %17, %struct.led_trigger** %18, align 8
  %19 = load %struct.led_trigger*, %struct.led_trigger** %5, align 8
  %20 = call i32 @led_trigger_register(%struct.led_trigger* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.led_trigger**, %struct.led_trigger*** %6, align 8
  %25 = call i32 @devres_free(%struct.led_trigger** %24)
  br label %30

26:                                               ; preds = %16
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load %struct.led_trigger**, %struct.led_trigger*** %6, align 8
  %29 = call i32 @devres_add(%struct.device* %27, %struct.led_trigger** %28)
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %13
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.led_trigger** @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @led_trigger_register(%struct.led_trigger*) #1

declare dso_local i32 @devres_free(%struct.led_trigger**) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.led_trigger**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
