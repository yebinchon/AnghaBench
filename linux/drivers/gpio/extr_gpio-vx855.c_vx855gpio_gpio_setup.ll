; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-vx855.c_vx855gpio_gpio_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-vx855.c_vx855gpio_gpio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx855_gpio = type { %struct.gpio_chip }
%struct.gpio_chip = type { i8*, i32, i32, i32, i64, i32*, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"VX855 South Bridge\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@vx855gpio_direction_input = common dso_local global i32 0, align 4
@vx855gpio_direction_output = common dso_local global i32 0, align 4
@vx855gpio_get = common dso_local global i32 0, align 4
@vx855gpio_set = common dso_local global i32 0, align 4
@vx855gpio_set_config = common dso_local global i32 0, align 4
@NR_VX855_GP = common dso_local global i32 0, align 4
@vx855gpio_names = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx855_gpio*)* @vx855gpio_gpio_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx855gpio_gpio_setup(%struct.vx855_gpio* %0) #0 {
  %2 = alloca %struct.vx855_gpio*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  store %struct.vx855_gpio* %0, %struct.vx855_gpio** %2, align 8
  %4 = load %struct.vx855_gpio*, %struct.vx855_gpio** %2, align 8
  %5 = getelementptr inbounds %struct.vx855_gpio, %struct.vx855_gpio* %4, i32 0, i32 0
  store %struct.gpio_chip* %5, %struct.gpio_chip** %3, align 8
  %6 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %7 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %8 = load i32, i32* @THIS_MODULE, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %9, i32 0, i32 11
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @vx855gpio_direction_input, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %13 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %12, i32 0, i32 10
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @vx855gpio_direction_output, align 4
  %15 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %16 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %15, i32 0, i32 9
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @vx855gpio_get, align 4
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %19 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @vx855gpio_set, align 4
  %21 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %22 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @vx855gpio_set_config, align 4
  %24 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %25 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  %26 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %27 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %26, i32 0, i32 5
  store i32* null, i32** %27, align 8
  %28 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %29 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @NR_VX855_GP, align 4
  %31 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %32 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %34 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %33, i32 0, i32 1
  store i32 0, i32* %34, align 8
  %35 = load i32, i32* @vx855gpio_names, align 4
  %36 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %37 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
