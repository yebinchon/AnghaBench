; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adnp.c_adnp_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adnp.c_adnp_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.adnp = type { i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @adnp_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adnp_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.adnp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %13 = call %struct.adnp* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.adnp* %13, %struct.adnp** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.adnp*, %struct.adnp** %7, align 8
  %16 = getelementptr inbounds %struct.adnp, %struct.adnp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = lshr i32 %14, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 7
  store i32 %20, i32* %9, align 4
  %21 = load %struct.adnp*, %struct.adnp** %7, align 8
  %22 = getelementptr inbounds %struct.adnp, %struct.adnp* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.adnp*, %struct.adnp** %7, align 8
  %25 = load %struct.adnp*, %struct.adnp** %7, align 8
  %26 = call i64 @GPIO_DDR(%struct.adnp* %25)
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = call i32 @adnp_read(%struct.adnp* %24, i64 %29, i32* %11)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %75

34:                                               ; preds = %3
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %11, align 4
  %39 = load %struct.adnp*, %struct.adnp** %7, align 8
  %40 = load %struct.adnp*, %struct.adnp** %7, align 8
  %41 = call i64 @GPIO_DDR(%struct.adnp* %40)
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @adnp_write(%struct.adnp* %39, i64 %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %75

50:                                               ; preds = %34
  %51 = load %struct.adnp*, %struct.adnp** %7, align 8
  %52 = load %struct.adnp*, %struct.adnp** %7, align 8
  %53 = call i64 @GPIO_DDR(%struct.adnp* %52)
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = call i32 @adnp_read(%struct.adnp* %51, i64 %56, i32* %11)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %75

61:                                               ; preds = %50
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @BIT(i32 %63)
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* @EPERM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %10, align 4
  br label %75

70:                                               ; preds = %61
  %71 = load %struct.adnp*, %struct.adnp** %7, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @__adnp_gpio_set(%struct.adnp* %71, i32 %72, i32 %73)
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %70, %67, %60, %49, %33
  %76 = load %struct.adnp*, %struct.adnp** %7, align 8
  %77 = getelementptr inbounds %struct.adnp, %struct.adnp* %76, i32 0, i32 1
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %10, align 4
  ret i32 %79
}

declare dso_local %struct.adnp* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adnp_read(%struct.adnp*, i64, i32*) #1

declare dso_local i64 @GPIO_DDR(%struct.adnp*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @adnp_write(%struct.adnp*, i64, i32) #1

declare dso_local i32 @__adnp_gpio_set(%struct.adnp*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
