; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-arizona.c_arizona_gpio_direction_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-arizona.c_arizona_gpio_direction_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.arizona_gpio = type { %struct.arizona* }
%struct.arizona = type { i32 }

@ARIZONA_GPIO1_CTRL = common dso_local global i32 0, align 4
@ARIZONA_GPN_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed to resume: %d\0A\00", align 1
@ARIZONA_GPN_LVL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @arizona_gpio_direction_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_gpio_direction_out(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.arizona_gpio*, align 8
  %9 = alloca %struct.arizona*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %14 = call %struct.arizona_gpio* @gpiochip_get_data(%struct.gpio_chip* %13)
  store %struct.arizona_gpio* %14, %struct.arizona_gpio** %8, align 8
  %15 = load %struct.arizona_gpio*, %struct.arizona_gpio** %8, align 8
  %16 = getelementptr inbounds %struct.arizona_gpio, %struct.arizona_gpio* %15, i32 0, i32 0
  %17 = load %struct.arizona*, %struct.arizona** %16, align 8
  store %struct.arizona* %17, %struct.arizona** %9, align 8
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @gpiochip_line_is_persistent(%struct.gpio_chip* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.arizona*, %struct.arizona** %9, align 8
  %22 = getelementptr inbounds %struct.arizona, %struct.arizona* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ARIZONA_GPIO1_CTRL, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add i32 %24, %25
  %27 = call i32 @regmap_read(i32 %23, i32 %26, i32* %11)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %4, align 4
  br label %72

32:                                               ; preds = %3
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @ARIZONA_GPN_DIR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %42 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pm_runtime_get_sync(i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %49 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %4, align 4
  br label %72

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54, %37, %32
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @ARIZONA_GPN_LVL, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %58, %55
  %61 = load %struct.arizona*, %struct.arizona** %9, align 8
  %62 = getelementptr inbounds %struct.arizona, %struct.arizona* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ARIZONA_GPIO1_CTRL, align 4
  %65 = load i32, i32* %6, align 4
  %66 = add i32 %64, %65
  %67 = load i32, i32* @ARIZONA_GPN_DIR, align 4
  %68 = load i32, i32* @ARIZONA_GPN_LVL, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @regmap_update_bits(i32 %63, i32 %66, i32 %69, i32 %70)
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %60, %47, %30
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.arizona_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @gpiochip_line_is_persistent(%struct.gpio_chip*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
