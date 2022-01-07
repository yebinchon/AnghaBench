; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_set_torch_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_set_torch_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_led_device = type { i32, i64, i32, %struct.regmap* }
%struct.regmap = type { i32 }

@TORCH = common dso_local global i32 0, align 4
@FLED1 = common dso_local global i32 0, align 4
@TORCH_IOUT2_SHIFT = common dso_local global i32 0, align 4
@FLED2 = common dso_local global i32 0, align 4
@TORCH_IOUT1_SHIFT = common dso_local global i32 0, align 4
@MAX77693_LED_REG_ITORCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77693_led_device*, i32, i32)* @max77693_set_torch_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_set_torch_current(%struct.max77693_led_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.max77693_led_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  store %struct.max77693_led_device* %0, %struct.max77693_led_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.max77693_led_device*, %struct.max77693_led_device** %4, align 8
  %12 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %11, i32 0, i32 3
  %13 = load %struct.regmap*, %struct.regmap** %12, align 8
  store %struct.regmap* %13, %struct.regmap** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.max77693_led_device*, %struct.max77693_led_device** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @TORCH, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.max77693_led_device*, %struct.max77693_led_device** %4, align 8
  %19 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %22 = call i32 @max77693_distribute_currents(%struct.max77693_led_device* %14, i32 %15, i32 %16, i32 %17, i32 %20, i32* %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @FLED1, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %3
  %27 = load %struct.max77693_led_device*, %struct.max77693_led_device** %4, align 8
  %28 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %26, %3
  %32 = load i32, i32* @FLED1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @max77693_led_iout_to_reg(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @TORCH_IOUT2_SHIFT, align 4
  %38 = call i32 @TORCH_IOUT_MASK(i32 %37)
  %39 = load %struct.max77693_led_device*, %struct.max77693_led_device** %4, align 8
  %40 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %31, %26
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @FLED2, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load %struct.max77693_led_device*, %struct.max77693_led_device** %4, align 8
  %49 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47, %43
  %53 = load i32, i32* @FLED2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @max77693_led_iout_to_reg(i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @TORCH_IOUT1_SHIFT, align 4
  %59 = call i32 @TORCH_IOUT_MASK(i32 %58)
  %60 = load %struct.max77693_led_device*, %struct.max77693_led_device** %4, align 8
  %61 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %52, %47
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @TORCH_IOUT1_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @TORCH_IOUT2_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = or i32 %67, %70
  %72 = load %struct.max77693_led_device*, %struct.max77693_led_device** %4, align 8
  %73 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.regmap*, %struct.regmap** %7, align 8
  %77 = load i32, i32* @MAX77693_LED_REG_ITORCH, align 4
  %78 = load %struct.max77693_led_device*, %struct.max77693_led_device** %4, align 8
  %79 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @regmap_write(%struct.regmap* %76, i32 %77, i32 %80)
  ret i32 %81
}

declare dso_local i32 @max77693_distribute_currents(%struct.max77693_led_device*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @max77693_led_iout_to_reg(i32) #1

declare dso_local i32 @TORCH_IOUT_MASK(i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
