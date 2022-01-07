; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5562.c_lp5562_post_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5562.c_lp5562_post_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp55xx_chip = type { i32 }

@LP5562_DEFAULT_CFG = common dso_local global i32 0, align 4
@LP5562_REG_OP_MODE = common dso_local global i32 0, align 4
@LP5562_CMD_DIRECT = common dso_local global i32 0, align 4
@LP5562_CLK_INT = common dso_local global i32 0, align 4
@LP5562_REG_CONFIG = common dso_local global i32 0, align 4
@LP5562_REG_R_PWM = common dso_local global i32 0, align 4
@LP5562_REG_G_PWM = common dso_local global i32 0, align 4
@LP5562_REG_B_PWM = common dso_local global i32 0, align 4
@LP5562_REG_W_PWM = common dso_local global i32 0, align 4
@LP5562_REG_ENG_SEL = common dso_local global i32 0, align 4
@LP5562_ENG_SEL_PWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp55xx_chip*)* @lp5562_post_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp5562_post_init_device(%struct.lp55xx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lp55xx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lp55xx_chip* %0, %struct.lp55xx_chip** %3, align 8
  %6 = load i32, i32* @LP5562_DEFAULT_CFG, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %8 = load i32, i32* @LP5562_REG_OP_MODE, align 4
  %9 = load i32, i32* @LP5562_CMD_DIRECT, align 4
  %10 = call i32 @lp55xx_write(%struct.lp55xx_chip* %7, i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %50

15:                                               ; preds = %1
  %16 = call i32 (...) @lp5562_wait_opmode_done()
  %17 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %18 = call i32 @lp55xx_is_extclk_used(%struct.lp55xx_chip* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @LP5562_CLK_INT, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %15
  %25 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %26 = load i32, i32* @LP5562_REG_CONFIG, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @lp55xx_write(%struct.lp55xx_chip* %25, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %50

33:                                               ; preds = %24
  %34 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %35 = load i32, i32* @LP5562_REG_R_PWM, align 4
  %36 = call i32 @lp55xx_write(%struct.lp55xx_chip* %34, i32 %35, i32 0)
  %37 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %38 = load i32, i32* @LP5562_REG_G_PWM, align 4
  %39 = call i32 @lp55xx_write(%struct.lp55xx_chip* %37, i32 %38, i32 0)
  %40 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %41 = load i32, i32* @LP5562_REG_B_PWM, align 4
  %42 = call i32 @lp55xx_write(%struct.lp55xx_chip* %40, i32 %41, i32 0)
  %43 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %44 = load i32, i32* @LP5562_REG_W_PWM, align 4
  %45 = call i32 @lp55xx_write(%struct.lp55xx_chip* %43, i32 %44, i32 0)
  %46 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %47 = load i32, i32* @LP5562_REG_ENG_SEL, align 4
  %48 = load i32, i32* @LP5562_ENG_SEL_PWM, align 4
  %49 = call i32 @lp55xx_write(%struct.lp55xx_chip* %46, i32 %47, i32 %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %33, %31, %13
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @lp55xx_write(%struct.lp55xx_chip*, i32, i32) #1

declare dso_local i32 @lp5562_wait_opmode_done(...) #1

declare dso_local i32 @lp55xx_is_extclk_used(%struct.lp55xx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
