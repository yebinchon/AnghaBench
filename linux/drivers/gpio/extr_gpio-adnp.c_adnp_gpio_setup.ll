; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adnp.c_adnp_gpio_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adnp.c_adnp_gpio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adnp = type { %struct.TYPE_3__*, i64, %struct.gpio_chip }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.gpio_chip = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32 }

@adnp_gpio_direction_input = common dso_local global i32 0, align 4
@adnp_gpio_direction_output = common dso_local global i32 0, align 4
@adnp_gpio_get = common dso_local global i32 0, align 4
@adnp_gpio_set = common dso_local global i32 0, align 4
@CONFIG_DEBUG_FS = common dso_local global i32 0, align 4
@adnp_gpio_dbg_show = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adnp*, i32)* @adnp_gpio_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adnp_gpio_setup(%struct.adnp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adnp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca i32, align 4
  store %struct.adnp* %0, %struct.adnp** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.adnp*, %struct.adnp** %4, align 8
  %9 = getelementptr inbounds %struct.adnp, %struct.adnp* %8, i32 0, i32 2
  store %struct.gpio_chip* %9, %struct.gpio_chip** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @get_count_order(i32 %10)
  %12 = sub nsw i64 %11, 3
  %13 = load %struct.adnp*, %struct.adnp** %4, align 8
  %14 = getelementptr inbounds %struct.adnp, %struct.adnp* %13, i32 0, i32 1
  store i64 %12, i64* %14, align 8
  %15 = load i32, i32* @adnp_gpio_direction_input, align 4
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %17 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %16, i32 0, i32 11
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @adnp_gpio_direction_output, align 4
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 10
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @adnp_gpio_get, align 4
  %22 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %23 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @adnp_gpio_set, align 4
  %25 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %26 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 4
  %27 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %28 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i32, i32* @CONFIG_DEBUG_FS, align 4
  %30 = call i64 @IS_ENABLED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load i32, i32* @adnp_gpio_dbg_show, align 4
  %34 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %35 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %32, %2
  %37 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %38 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %37, i32 0, i32 1
  store i32 -1, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %41 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.adnp*, %struct.adnp** %4, align 8
  %43 = getelementptr inbounds %struct.adnp, %struct.adnp* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %48 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 4
  %49 = load %struct.adnp*, %struct.adnp** %4, align 8
  %50 = getelementptr inbounds %struct.adnp, %struct.adnp* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %54 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %53, i32 0, i32 4
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %54, align 8
  %55 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %56 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %55, i32 0, i32 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %61 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @THIS_MODULE, align 4
  %63 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %64 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.adnp*, %struct.adnp** %4, align 8
  %66 = getelementptr inbounds %struct.adnp, %struct.adnp* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %70 = load %struct.adnp*, %struct.adnp** %4, align 8
  %71 = call i32 @devm_gpiochip_add_data(%struct.TYPE_4__* %68, %struct.gpio_chip* %69, %struct.adnp* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %36
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %77

76:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %74
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @get_count_order(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_4__*, %struct.gpio_chip*, %struct.adnp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
