; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-vr41xx.c_giu_set_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-vr41xx.c_giu_set_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GIUIOSELL = common dso_local global i32 0, align 4
@GIUIOSELH = common dso_local global i32 0, align 4
@giu_flags = common dso_local global i32 0, align 4
@GPIO_HAS_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@GIUPODATEN = common dso_local global i32 0, align 4
@GIUPODATH = common dso_local global i32 0, align 4
@PIOEN0 = common dso_local global i32 0, align 4
@PIOEN1 = common dso_local global i32 0, align 4
@giu_lock = common dso_local global i32 0, align 4
@GPIO_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @giu_set_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @giu_set_direction(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %14 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp uge i32 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %82

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp ult i32 %21, 16
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* @GIUIOSELL, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 1, %25
  store i32 %26, i32* %9, align 4
  br label %59

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = icmp ult i32 %28, 32
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* @GIUIOSELH, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sub i32 %32, 16
  %34 = shl i32 1, %33
  store i32 %34, i32* %9, align 4
  br label %58

35:                                               ; preds = %27
  %36 = load i32, i32* @giu_flags, align 4
  %37 = load i32, i32* @GPIO_HAS_OUTPUT_ENABLE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32, i32* @GIUPODATEN, align 4
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub i32 %42, 32
  %44 = shl i32 1, %43
  store i32 %44, i32* %9, align 4
  br label %57

45:                                               ; preds = %35
  %46 = load i32, i32* %6, align 4
  switch i32 %46, label %53 [
    i32 48, label %47
    i32 49, label %50
  ]

47:                                               ; preds = %45
  %48 = load i32, i32* @GIUPODATH, align 4
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @PIOEN0, align 4
  store i32 %49, i32* %9, align 4
  br label %56

50:                                               ; preds = %45
  %51 = load i32, i32* @GIUPODATH, align 4
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* @PIOEN1, align 4
  store i32 %52, i32* %9, align 4
  br label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %82

56:                                               ; preds = %50, %47
  br label %57

57:                                               ; preds = %56, %40
  br label %58

58:                                               ; preds = %57, %30
  br label %59

59:                                               ; preds = %58, %23
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @spin_lock_irqsave(i32* @giu_lock, i64 %60)
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @giu_read(i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @GPIO_OUTPUT, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  br label %76

71:                                               ; preds = %59
  %72 = load i32, i32* %9, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %71, %67
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @giu_write(i32 %77, i32 %78)
  %80 = load i64, i64* %11, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* @giu_lock, i64 %80)
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %76, %53, %17
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @giu_read(i32) #1

declare dso_local i32 @giu_write(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
