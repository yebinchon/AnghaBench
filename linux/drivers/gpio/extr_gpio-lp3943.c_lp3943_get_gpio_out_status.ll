; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lp3943.c_lp3943_get_gpio_out_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lp3943.c_lp3943_get_gpio_out_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp3943_gpio = type { %struct.lp3943* }
%struct.lp3943 = type { %struct.lp3943_reg_cfg* }
%struct.lp3943_reg_cfg = type { i32, i32, i32 }
%struct.gpio_chip = type { i32 }

@LP3943_GPIO_OUT_HIGH = common dso_local global i32 0, align 4
@LP3943_GPIO_OUT_LOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp3943_gpio*, %struct.gpio_chip*, i32)* @lp3943_get_gpio_out_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp3943_get_gpio_out_status(%struct.lp3943_gpio* %0, %struct.gpio_chip* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lp3943_gpio*, align 8
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lp3943*, align 8
  %9 = alloca %struct.lp3943_reg_cfg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lp3943_gpio* %0, %struct.lp3943_gpio** %5, align 8
  store %struct.gpio_chip* %1, %struct.gpio_chip** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.lp3943_gpio*, %struct.lp3943_gpio** %5, align 8
  %13 = getelementptr inbounds %struct.lp3943_gpio, %struct.lp3943_gpio* %12, i32 0, i32 0
  %14 = load %struct.lp3943*, %struct.lp3943** %13, align 8
  store %struct.lp3943* %14, %struct.lp3943** %8, align 8
  %15 = load %struct.lp3943*, %struct.lp3943** %8, align 8
  %16 = getelementptr inbounds %struct.lp3943, %struct.lp3943* %15, i32 0, i32 0
  %17 = load %struct.lp3943_reg_cfg*, %struct.lp3943_reg_cfg** %16, align 8
  store %struct.lp3943_reg_cfg* %17, %struct.lp3943_reg_cfg** %9, align 8
  %18 = load %struct.lp3943*, %struct.lp3943** %8, align 8
  %19 = load %struct.lp3943_reg_cfg*, %struct.lp3943_reg_cfg** %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.lp3943_reg_cfg, %struct.lp3943_reg_cfg* %19, i64 %21
  %23 = getelementptr inbounds %struct.lp3943_reg_cfg, %struct.lp3943_reg_cfg* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @lp3943_read_byte(%struct.lp3943* %18, i32 %24, i32* %10)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %58

30:                                               ; preds = %3
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.lp3943_reg_cfg*, %struct.lp3943_reg_cfg** %9, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.lp3943_reg_cfg, %struct.lp3943_reg_cfg* %32, i64 %34
  %36 = getelementptr inbounds %struct.lp3943_reg_cfg, %struct.lp3943_reg_cfg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %31, %37
  %39 = load %struct.lp3943_reg_cfg*, %struct.lp3943_reg_cfg** %9, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.lp3943_reg_cfg, %struct.lp3943_reg_cfg* %39, i64 %41
  %43 = getelementptr inbounds %struct.lp3943_reg_cfg, %struct.lp3943_reg_cfg* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %38, %44
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @LP3943_GPIO_OUT_HIGH, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %58

50:                                               ; preds = %30
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @LP3943_GPIO_OUT_LOW, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %54, %49, %28
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @lp3943_read_byte(%struct.lp3943*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
