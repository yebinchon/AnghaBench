; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-arizona.c_arizona_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-arizona.c_arizona_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.arizona_gpio = type { %struct.arizona* }
%struct.arizona = type { i32 }

@ARIZONA_GPIO1_CTRL = common dso_local global i32 0, align 4
@ARIZONA_GPN_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed to resume: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to drop cache: %d\0A\00", align 1
@ARIZONA_GPN_LVL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @arizona_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.arizona_gpio*, align 8
  %7 = alloca %struct.arizona*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.arizona_gpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.arizona_gpio* %12, %struct.arizona_gpio** %6, align 8
  %13 = load %struct.arizona_gpio*, %struct.arizona_gpio** %6, align 8
  %14 = getelementptr inbounds %struct.arizona_gpio, %struct.arizona_gpio* %13, i32 0, i32 0
  %15 = load %struct.arizona*, %struct.arizona** %14, align 8
  store %struct.arizona* %15, %struct.arizona** %7, align 8
  %16 = load i32, i32* @ARIZONA_GPIO1_CTRL, align 4
  %17 = load i32, i32* %5, align 4
  %18 = add i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.arizona*, %struct.arizona** %7, align 8
  %20 = getelementptr inbounds %struct.arizona, %struct.arizona* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @regmap_read(i32 %21, i32 %22, i32* %9)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %3, align 4
  br label %89

28:                                               ; preds = %2
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @ARIZONA_GPN_DIR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %82

33:                                               ; preds = %28
  %34 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %35 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pm_runtime_get_sync(i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %42 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %3, align 4
  br label %89

47:                                               ; preds = %33
  %48 = load %struct.arizona*, %struct.arizona** %7, align 8
  %49 = getelementptr inbounds %struct.arizona, %struct.arizona* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @regcache_drop_region(i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %47
  %57 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %58 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %3, align 4
  br label %89

63:                                               ; preds = %47
  %64 = load %struct.arizona*, %struct.arizona** %7, align 8
  %65 = getelementptr inbounds %struct.arizona, %struct.arizona* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @regmap_read(i32 %66, i32 %67, i32* %9)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %3, align 4
  br label %89

73:                                               ; preds = %63
  %74 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %75 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @pm_runtime_mark_last_busy(i32 %76)
  %78 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %79 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @pm_runtime_put_autosuspend(i32 %80)
  br label %82

82:                                               ; preds = %73, %28
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @ARIZONA_GPN_LVL, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 1, i32* %3, align 4
  br label %89

88:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %87, %71, %56, %40, %26
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.arizona_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regcache_drop_region(i32, i32, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
