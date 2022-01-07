; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_distribute_currents.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_distribute_currents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_led_device = type { i32, i32 }

@FLED1 = common dso_local global i64 0, align 8
@FLED2 = common dso_local global i64 0, align 8
@FLASH = common dso_local global i32 0, align 4
@MODE_FLASH_MASK = common dso_local global i32 0, align 4
@MODE_TORCH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max77693_led_device*, i32, i32, i64, i64*, i64*)* @max77693_distribute_currents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max77693_distribute_currents(%struct.max77693_led_device* %0, i32 %1, i32 %2, i64 %3, i64* %4, i64* %5) #0 {
  %7 = alloca %struct.max77693_led_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  store %struct.max77693_led_device* %0, %struct.max77693_led_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %13 = load %struct.max77693_led_device*, %struct.max77693_led_device** %7, align 8
  %14 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %6
  %18 = load i64, i64* %10, align 8
  %19 = load i64*, i64** %12, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  store i64 %18, i64* %22, align 8
  %23 = load %struct.max77693_led_device*, %struct.max77693_led_device** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @max77693_add_allowed_modes(%struct.max77693_led_device* %23, i64 %25, i32 %26)
  br label %79

28:                                               ; preds = %6
  %29 = load i64, i64* %10, align 8
  %30 = load i64*, i64** %11, align 8
  %31 = load i64, i64* @FLED1, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @min(i64 %29, i64 %33)
  %35 = load i64*, i64** %12, align 8
  %36 = load i64, i64* @FLED1, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  store i64 %34, i64* %37, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64*, i64** %12, align 8
  %40 = load i64, i64* @FLED1, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %38, %42
  %44 = load i64*, i64** %12, align 8
  %45 = load i64, i64* @FLED2, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  store i64 %43, i64* %46, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @FLASH, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %28
  %51 = load i32, i32* @MODE_FLASH_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.max77693_led_device*, %struct.max77693_led_device** %7, align 8
  %54 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %64

57:                                               ; preds = %28
  %58 = load i32, i32* @MODE_TORCH_MASK, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.max77693_led_device*, %struct.max77693_led_device** %7, align 8
  %61 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %57, %50
  %65 = load %struct.max77693_led_device*, %struct.max77693_led_device** %7, align 8
  %66 = load i64, i64* @FLED1, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @max77693_add_allowed_modes(%struct.max77693_led_device* %65, i64 %66, i32 %67)
  %69 = load i64*, i64** %12, align 8
  %70 = load i64, i64* @FLED2, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load %struct.max77693_led_device*, %struct.max77693_led_device** %7, align 8
  %76 = load i64, i64* @FLED2, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @max77693_add_allowed_modes(%struct.max77693_led_device* %75, i64 %76, i32 %77)
  br label %79

79:                                               ; preds = %17, %74, %64
  ret void
}

declare dso_local i32 @max77693_add_allowed_modes(%struct.max77693_led_device*, i64, i32) #1

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
