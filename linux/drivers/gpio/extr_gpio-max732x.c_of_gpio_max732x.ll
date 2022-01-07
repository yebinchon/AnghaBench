; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max732x.c_of_gpio_max732x.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max732x.c_of_gpio_max732x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max732x_platform_data = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.max732x_platform_data* (%struct.device*)* @of_gpio_max732x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.max732x_platform_data* @of_gpio_max732x(%struct.device* %0) #0 {
  %2 = alloca %struct.max732x_platform_data*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.max732x_platform_data*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.max732x_platform_data* @devm_kzalloc(%struct.device* %5, i32 4, i32 %6)
  store %struct.max732x_platform_data* %7, %struct.max732x_platform_data** %4, align 8
  %8 = load %struct.max732x_platform_data*, %struct.max732x_platform_data** %4, align 8
  %9 = icmp ne %struct.max732x_platform_data* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.max732x_platform_data* null, %struct.max732x_platform_data** %2, align 8
  br label %15

11:                                               ; preds = %1
  %12 = load %struct.max732x_platform_data*, %struct.max732x_platform_data** %4, align 8
  %13 = getelementptr inbounds %struct.max732x_platform_data, %struct.max732x_platform_data* %12, i32 0, i32 0
  store i32 -1, i32* %13, align 4
  %14 = load %struct.max732x_platform_data*, %struct.max732x_platform_data** %4, align 8
  store %struct.max732x_platform_data* %14, %struct.max732x_platform_data** %2, align 8
  br label %15

15:                                               ; preds = %11, %10
  %16 = load %struct.max732x_platform_data*, %struct.max732x_platform_data** %2, align 8
  ret %struct.max732x_platform_data* %16
}

declare dso_local %struct.max732x_platform_data* @devm_kzalloc(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
