; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sch311x.c_sch311x_gpio_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sch311x.c_sch311x_gpio_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.sch311x_gpio_block = type { i32, i64*, i64 }

@SCH311X_GPIO_CONF_OPEN_DRAIN = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i64)* @sch311x_gpio_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sch311x_gpio_set_config(%struct.gpio_chip* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sch311x_gpio_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %12 = call %struct.sch311x_gpio_block* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.sch311x_gpio_block* %12, %struct.sch311x_gpio_block** %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @pinconf_to_config_param(i64 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  switch i32 %15, label %87 [
    i32 129, label %16
    i32 128, label %51
  ]

16:                                               ; preds = %3
  %17 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %8, align 8
  %18 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %8, align 8
  %21 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %8, align 8
  %24 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %22, %29
  %31 = call i32 @inb(i64 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @SCH311X_GPIO_CONF_OPEN_DRAIN, align 4
  %33 = load i32, i32* %10, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %8, align 8
  %37 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %8, align 8
  %40 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %38, %45
  %47 = call i32 @outb(i32 %35, i64 %46)
  %48 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %8, align 8
  %49 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  store i32 0, i32* %4, align 4
  br label %91

51:                                               ; preds = %3
  %52 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %8, align 8
  %53 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %52, i32 0, i32 0
  %54 = call i32 @spin_lock(i32* %53)
  %55 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %8, align 8
  %56 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %8, align 8
  %59 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %57, %64
  %66 = call i32 @inb(i64 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* @SCH311X_GPIO_CONF_OPEN_DRAIN, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %10, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %8, align 8
  %73 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %8, align 8
  %76 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %74, %81
  %83 = call i32 @outb(i32 %71, i64 %82)
  %84 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %8, align 8
  %85 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %84, i32 0, i32 0
  %86 = call i32 @spin_unlock(i32* %85)
  store i32 0, i32* %4, align 4
  br label %91

87:                                               ; preds = %3
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* @ENOTSUPP, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %88, %51, %16
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.sch311x_gpio_block* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
