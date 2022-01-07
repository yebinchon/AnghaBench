; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_sda_clock_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_sda_clock_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_gpio = type { i32, i32, i32 }

@FSI_GPIO_STD_DLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master_gpio*)* @sda_clock_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sda_clock_in(%struct.fsi_master_gpio* %0) #0 {
  %2 = alloca %struct.fsi_master_gpio*, align 8
  %3 = alloca i32, align 4
  store %struct.fsi_master_gpio* %0, %struct.fsi_master_gpio** %2, align 8
  %4 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %2, align 8
  %5 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @FSI_GPIO_STD_DLY, align 4
  %10 = call i32 @ndelay(i32 %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %2, align 8
  %13 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @gpiod_set_value(i32 %14, i32 0)
  %16 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %2, align 8
  %17 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @gpiod_get_value(i32 %18)
  %20 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %2, align 8
  %21 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @gpiod_get_value(i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %2, align 8
  %25 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %11
  %29 = load i32, i32* @FSI_GPIO_STD_DLY, align 4
  %30 = call i32 @ndelay(i32 %29)
  br label %31

31:                                               ; preds = %28, %11
  %32 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %2, align 8
  %33 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @gpiod_set_value(i32 %34, i32 1)
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  ret i32 %39
}

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @gpiod_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
