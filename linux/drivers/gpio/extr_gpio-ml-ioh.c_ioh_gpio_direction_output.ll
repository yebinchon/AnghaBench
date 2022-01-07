; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ml-ioh.c_ioh_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ml-ioh.c_ioh_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.ioh_gpio = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@num_ports = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @ioh_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioh_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ioh_gpio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.ioh_gpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.ioh_gpio* %12, %struct.ioh_gpio** %7, align 8
  %13 = load %struct.ioh_gpio*, %struct.ioh_gpio** %7, align 8
  %14 = getelementptr inbounds %struct.ioh_gpio, %struct.ioh_gpio* %13, i32 0, i32 1
  %15 = load i64, i64* %10, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.ioh_gpio*, %struct.ioh_gpio** %7, align 8
  %18 = getelementptr inbounds %struct.ioh_gpio, %struct.ioh_gpio* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load %struct.ioh_gpio*, %struct.ioh_gpio** %7, align 8
  %23 = getelementptr inbounds %struct.ioh_gpio, %struct.ioh_gpio* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = call i32 @ioread32(i32* %26)
  %28 = load i32*, i32** @num_ports, align 8
  %29 = load %struct.ioh_gpio*, %struct.ioh_gpio** %7, align 8
  %30 = getelementptr inbounds %struct.ioh_gpio, %struct.ioh_gpio* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 1, %33
  %35 = sub nsw i32 %34, 1
  %36 = and i32 %27, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %5, align 4
  %38 = shl i32 1, %37
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.ioh_gpio*, %struct.ioh_gpio** %7, align 8
  %43 = getelementptr inbounds %struct.ioh_gpio, %struct.ioh_gpio* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load %struct.ioh_gpio*, %struct.ioh_gpio** %7, align 8
  %48 = getelementptr inbounds %struct.ioh_gpio, %struct.ioh_gpio* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = call i32 @iowrite32(i32 %41, i32* %51)
  %53 = load %struct.ioh_gpio*, %struct.ioh_gpio** %7, align 8
  %54 = getelementptr inbounds %struct.ioh_gpio, %struct.ioh_gpio* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load %struct.ioh_gpio*, %struct.ioh_gpio** %7, align 8
  %59 = getelementptr inbounds %struct.ioh_gpio, %struct.ioh_gpio* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = call i32 @ioread32(i32* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %3
  %67 = load i32, i32* %5, align 4
  %68 = shl i32 1, %67
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  br label %77

71:                                               ; preds = %3
  %72 = load i32, i32* %5, align 4
  %73 = shl i32 1, %72
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %71, %66
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.ioh_gpio*, %struct.ioh_gpio** %7, align 8
  %80 = getelementptr inbounds %struct.ioh_gpio, %struct.ioh_gpio* %79, i32 0, i32 2
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load %struct.ioh_gpio*, %struct.ioh_gpio** %7, align 8
  %85 = getelementptr inbounds %struct.ioh_gpio, %struct.ioh_gpio* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = call i32 @iowrite32(i32 %78, i32* %88)
  %90 = load %struct.ioh_gpio*, %struct.ioh_gpio** %7, align 8
  %91 = getelementptr inbounds %struct.ioh_gpio, %struct.ioh_gpio* %90, i32 0, i32 1
  %92 = load i64, i64* %10, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  ret i32 0
}

declare dso_local %struct.ioh_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
