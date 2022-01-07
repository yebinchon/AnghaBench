; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_led-class.c_devm_led_classdev_register_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_led-class.c_devm_led_classdev_register_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.led_classdev = type { i32 }
%struct.led_init_data = type { i32 }

@devm_led_classdev_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_led_classdev_register_ext(%struct.device* %0, %struct.led_classdev* %1, %struct.led_init_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.led_classdev*, align 8
  %7 = alloca %struct.led_init_data*, align 8
  %8 = alloca %struct.led_classdev**, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.led_classdev* %1, %struct.led_classdev** %6, align 8
  store %struct.led_init_data* %2, %struct.led_init_data** %7, align 8
  %10 = load i32, i32* @devm_led_classdev_release, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.led_classdev** @devres_alloc(i32 %10, i32 8, i32 %11)
  store %struct.led_classdev** %12, %struct.led_classdev*** %8, align 8
  %13 = load %struct.led_classdev**, %struct.led_classdev*** %8, align 8
  %14 = icmp ne %struct.led_classdev** %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %35

18:                                               ; preds = %3
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %21 = load %struct.led_init_data*, %struct.led_init_data** %7, align 8
  %22 = call i32 @led_classdev_register_ext(%struct.device* %19, %struct.led_classdev* %20, %struct.led_init_data* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.led_classdev**, %struct.led_classdev*** %8, align 8
  %27 = call i32 @devres_free(%struct.led_classdev** %26)
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %35

29:                                               ; preds = %18
  %30 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %31 = load %struct.led_classdev**, %struct.led_classdev*** %8, align 8
  store %struct.led_classdev* %30, %struct.led_classdev** %31, align 8
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load %struct.led_classdev**, %struct.led_classdev*** %8, align 8
  %34 = call i32 @devres_add(%struct.device* %32, %struct.led_classdev** %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %29, %25, %15
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.led_classdev** @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @led_classdev_register_ext(%struct.device*, %struct.led_classdev*, %struct.led_init_data*) #1

declare dso_local i32 @devres_free(%struct.led_classdev**) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.led_classdev**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
