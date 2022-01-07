; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5523.c_lp5523_post_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5523.c_lp5523_post_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp55xx_chip = type { i32 }

@LP5523_REG_ENABLE = common dso_local global i32 0, align 4
@LP5523_ENABLE = common dso_local global i32 0, align 4
@LP5523_REG_CONFIG = common dso_local global i32 0, align 4
@LP5523_AUTO_INC = common dso_local global i32 0, align 4
@LP5523_PWR_SAVE = common dso_local global i32 0, align 4
@LP5523_CP_AUTO = common dso_local global i32 0, align 4
@LP5523_AUTO_CLK = common dso_local global i32 0, align 4
@LP5523_PWM_PWR_SAVE = common dso_local global i32 0, align 4
@LP5523_REG_ENABLE_LEDS_MSB = common dso_local global i32 0, align 4
@LP5523_REG_ENABLE_LEDS_LSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp55xx_chip*)* @lp5523_post_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp5523_post_init_device(%struct.lp55xx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lp55xx_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.lp55xx_chip* %0, %struct.lp55xx_chip** %3, align 8
  %5 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %6 = load i32, i32* @LP5523_REG_ENABLE, align 4
  %7 = load i32, i32* @LP5523_ENABLE, align 4
  %8 = call i32 @lp55xx_write(%struct.lp55xx_chip* %5, i32 %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %50

13:                                               ; preds = %1
  %14 = call i32 @usleep_range(i32 1000, i32 2000)
  %15 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %16 = load i32, i32* @LP5523_REG_CONFIG, align 4
  %17 = load i32, i32* @LP5523_AUTO_INC, align 4
  %18 = load i32, i32* @LP5523_PWR_SAVE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @LP5523_CP_AUTO, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @LP5523_AUTO_CLK, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @LP5523_PWM_PWR_SAVE, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @lp55xx_write(%struct.lp55xx_chip* %15, i32 %16, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %13
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %50

31:                                               ; preds = %13
  %32 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %33 = load i32, i32* @LP5523_REG_ENABLE_LEDS_MSB, align 4
  %34 = call i32 @lp55xx_write(%struct.lp55xx_chip* %32, i32 %33, i32 1)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %50

39:                                               ; preds = %31
  %40 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %41 = load i32, i32* @LP5523_REG_ENABLE_LEDS_LSB, align 4
  %42 = call i32 @lp55xx_write(%struct.lp55xx_chip* %40, i32 %41, i32 255)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %50

47:                                               ; preds = %39
  %48 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %49 = call i32 @lp5523_init_program_engine(%struct.lp55xx_chip* %48)
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %45, %37, %29, %11
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @lp55xx_write(%struct.lp55xx_chip*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @lp5523_init_program_engine(%struct.lp55xx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
