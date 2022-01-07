; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ich.c_ichx_gpiolib_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ich.c_ichx_gpiolib_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.gpio_chip = type { i32, i32*, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@ichx_priv = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ichx_gpio_request = common dso_local global i64 0, align 8
@ichx_gpio_get = common dso_local global i64 0, align 8
@ichx_gpio_set = common dso_local global i32 0, align 4
@ichx_gpio_get_direction = common dso_local global i32 0, align 4
@ichx_gpio_direction_input = common dso_local global i32 0, align 4
@ichx_gpio_direction_output = common dso_local global i32 0, align 4
@modparam_gpiobase = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*)* @ichx_gpiolib_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ichx_gpiolib_setup(%struct.gpio_chip* %0) #0 {
  %2 = alloca %struct.gpio_chip*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %2, align 8
  %3 = load i32, i32* @THIS_MODULE, align 4
  %4 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %5 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %4, i32 0, i32 12
  store i32 %3, i32* %5, align 8
  %6 = load i32, i32* @DRV_NAME, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %8 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %7, i32 0, i32 11
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ichx_priv, i32 0, i32 1), align 8
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %11 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %10, i32 0, i32 10
  store i32 %9, i32* %11, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ichx_priv, i32 0, i32 0), align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ichx_priv, i32 0, i32 0), align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  br label %22

20:                                               ; preds = %1
  %21 = load i64, i64* @ichx_gpio_request, align 8
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i64 [ %19, %16 ], [ %21, %20 ]
  %24 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %25 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %24, i32 0, i32 9
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ichx_priv, i32 0, i32 0), align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ichx_priv, i32 0, i32 0), align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  br label %36

34:                                               ; preds = %22
  %35 = load i64, i64* @ichx_gpio_get, align 8
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i64 [ %33, %30 ], [ %35, %34 ]
  %38 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %39 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %38, i32 0, i32 8
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* @ichx_gpio_set, align 4
  %41 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %42 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @ichx_gpio_get_direction, align 4
  %44 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %45 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @ichx_gpio_direction_input, align 4
  %47 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %48 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @ichx_gpio_direction_output, align 4
  %50 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %51 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @modparam_gpiobase, align 4
  %53 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %54 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ichx_priv, i32 0, i32 0), align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %59 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %61 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  %62 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %63 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %62, i32 0, i32 1
  store i32* null, i32** %63, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
