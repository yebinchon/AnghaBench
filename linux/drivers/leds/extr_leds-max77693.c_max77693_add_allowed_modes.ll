; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_add_allowed_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_add_allowed_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_led_device = type { i32 }

@FLASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max77693_led_device*, i32, i32)* @max77693_add_allowed_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max77693_add_allowed_modes(%struct.max77693_led_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.max77693_led_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.max77693_led_device* %0, %struct.max77693_led_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @FLASH, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @MODE_FLASH(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @MODE_FLASH_EXTERNAL(i32 %13)
  %15 = or i32 %12, %14
  %16 = load %struct.max77693_led_device*, %struct.max77693_led_device** %4, align 8
  %17 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %27

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @MODE_TORCH(i32 %21)
  %23 = load %struct.max77693_led_device*, %struct.max77693_led_device** %4, align 8
  %24 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %20, %10
  ret void
}

declare dso_local i32 @MODE_FLASH(i32) #1

declare dso_local i32 @MODE_FLASH_EXTERNAL(i32) #1

declare dso_local i32 @MODE_TORCH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
