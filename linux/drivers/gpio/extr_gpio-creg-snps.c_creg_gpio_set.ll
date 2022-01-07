; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-creg-snps.c_creg_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-creg-snps.c_creg_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.creg_gpio = type { i32, i32, %struct.creg_layout* }
%struct.creg_layout = type { i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @creg_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @creg_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.creg_gpio*, align 8
  %8 = alloca %struct.creg_layout*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %15 = call %struct.creg_gpio* @gpiochip_get_data(%struct.gpio_chip* %14)
  store %struct.creg_gpio* %15, %struct.creg_gpio** %7, align 8
  %16 = load %struct.creg_gpio*, %struct.creg_gpio** %7, align 8
  %17 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %16, i32 0, i32 2
  %18 = load %struct.creg_layout*, %struct.creg_layout** %17, align 8
  store %struct.creg_layout* %18, %struct.creg_layout** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load %struct.creg_gpio*, %struct.creg_gpio** %7, align 8
  %23 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %22, i32 0, i32 2
  %24 = load %struct.creg_layout*, %struct.creg_layout** %23, align 8
  %25 = getelementptr inbounds %struct.creg_layout, %struct.creg_layout* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  br label %41

31:                                               ; preds = %3
  %32 = load %struct.creg_gpio*, %struct.creg_gpio** %7, align 8
  %33 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %32, i32 0, i32 2
  %34 = load %struct.creg_layout*, %struct.creg_layout** %33, align 8
  %35 = getelementptr inbounds %struct.creg_layout, %struct.creg_layout* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  br label %41

41:                                               ; preds = %31, %21
  %42 = phi i32 [ %30, %21 ], [ %40, %31 ]
  store i32 %42, i32* %11, align 4
  %43 = load %struct.creg_layout*, %struct.creg_layout** %8, align 8
  %44 = getelementptr inbounds %struct.creg_layout, %struct.creg_layout* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %72, %41
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = load %struct.creg_layout*, %struct.creg_layout** %8, align 8
  %56 = getelementptr inbounds %struct.creg_layout, %struct.creg_layout* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.creg_layout*, %struct.creg_layout** %8, align 8
  %63 = getelementptr inbounds %struct.creg_layout, %struct.creg_layout* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %61, %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %54
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %50

75:                                               ; preds = %50
  %76 = load %struct.creg_gpio*, %struct.creg_gpio** %7, align 8
  %77 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %76, i32 0, i32 0
  %78 = load i64, i64* %12, align 8
  %79 = call i32 @spin_lock_irqsave(i32* %77, i64 %78)
  %80 = load %struct.creg_gpio*, %struct.creg_gpio** %7, align 8
  %81 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @readl(i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load %struct.creg_layout*, %struct.creg_layout** %8, align 8
  %85 = getelementptr inbounds %struct.creg_layout, %struct.creg_layout* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, 1
  %92 = call i32 @GENMASK(i32 %91, i32 0)
  %93 = load i32, i32* %10, align 4
  %94 = shl i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %9, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %10, align 4
  %100 = shl i32 %98, %99
  %101 = load i32, i32* %9, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.creg_gpio*, %struct.creg_gpio** %7, align 8
  %105 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @writel(i32 %103, i32 %106)
  %108 = load %struct.creg_gpio*, %struct.creg_gpio** %7, align 8
  %109 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %108, i32 0, i32 0
  %110 = load i64, i64* %12, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  ret void
}

declare dso_local %struct.creg_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
