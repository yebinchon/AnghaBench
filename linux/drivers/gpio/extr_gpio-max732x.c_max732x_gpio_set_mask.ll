; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max732x.c_max732x_gpio_set_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max732x.c_max732x_gpio_set_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.max732x_chip = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32, i32)* @max732x_gpio_set_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max732x_gpio_set_mask(%struct.gpio_chip* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.max732x_chip*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %13 = call %struct.max732x_chip* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.max732x_chip* %13, %struct.max732x_chip** %9, align 8
  %14 = load %struct.max732x_chip*, %struct.max732x_chip** %9, align 8
  %15 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp ugt i32 %17, 7
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.max732x_chip*, %struct.max732x_chip** %9, align 8
  %21 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  br label %31

25:                                               ; preds = %4
  %26 = load %struct.max732x_chip*, %struct.max732x_chip** %9, align 8
  %27 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  br label %31

31:                                               ; preds = %25, %19
  %32 = phi i32 [ %24, %19 ], [ %30, %25 ]
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %7, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %37, %38
  %40 = or i32 %36, %39
  store i32 %40, i32* %10, align 4
  %41 = load %struct.max732x_chip*, %struct.max732x_chip** %9, align 8
  %42 = load %struct.max732x_chip*, %struct.max732x_chip** %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @is_group_a(%struct.max732x_chip* %42, i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @max732x_writeb(%struct.max732x_chip* %41, i32 %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %31
  br label %66

50:                                               ; preds = %31
  %51 = load i32, i32* %6, align 4
  %52 = icmp ugt i32 %51, 7
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.max732x_chip*, %struct.max732x_chip** %9, align 8
  %56 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %54, i32* %58, align 4
  br label %65

59:                                               ; preds = %50
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.max732x_chip*, %struct.max732x_chip** %9, align 8
  %62 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %60, i32* %64, align 4
  br label %65

65:                                               ; preds = %59, %53
  br label %66

66:                                               ; preds = %65, %49
  %67 = load %struct.max732x_chip*, %struct.max732x_chip** %9, align 8
  %68 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  ret void
}

declare dso_local %struct.max732x_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @max732x_writeb(%struct.max732x_chip*, i32, i32) #1

declare dso_local i32 @is_group_a(%struct.max732x_chip*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
