; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pca953x.c_pca953x_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pca953x.c_pca953x_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.pca953x_chip = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@BANK_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @pca953x_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca953x_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pca953x_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %13 = call %struct.pca953x_chip* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.pca953x_chip* %13, %struct.pca953x_chip** %7, align 8
  %14 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %15 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %16 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @pca953x_recalc_addr(%struct.pca953x_chip* %14, i32 %19, i32 %20, i32 1, i32 0)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %23 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %24 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @pca953x_recalc_addr(%struct.pca953x_chip* %22, i32 %27, i32 %28, i32 1, i32 0)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @BANK_SZ, align 4
  %32 = urem i32 %30, %31
  %33 = call i32 @BIT(i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %35 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %38 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %3
  %45 = load i32, i32* %10, align 4
  br label %47

46:                                               ; preds = %3
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  %49 = call i32 @regmap_write_bits(i32 %39, i32 %40, i32 %41, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %60

53:                                               ; preds = %47
  %54 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %55 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @regmap_write_bits(i32 %56, i32 %57, i32 %58, i32 0)
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %53, %52
  %61 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %62 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %11, align 4
  ret i32 %64
}

declare dso_local %struct.pca953x_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @pca953x_recalc_addr(%struct.pca953x_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
