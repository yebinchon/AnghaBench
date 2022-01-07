; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_fsi_master_gpio_link_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_fsi_master_gpio_link_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master = type { i32 }
%struct.fsi_master_gpio = type { i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master*, i32)* @fsi_master_gpio_link_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_master_gpio_link_enable(%struct.fsi_master* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsi_master*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsi_master_gpio*, align 8
  %7 = alloca i32, align 4
  store %struct.fsi_master* %0, %struct.fsi_master** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.fsi_master*, %struct.fsi_master** %4, align 8
  %9 = call %struct.fsi_master_gpio* @to_fsi_master_gpio(%struct.fsi_master* %8)
  store %struct.fsi_master_gpio* %9, %struct.fsi_master_gpio** %6, align 8
  %10 = load i32, i32* @EBUSY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %35

17:                                               ; preds = %2
  %18 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %19 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %22 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %17
  %26 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %27 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @gpiod_set_value(i32 %28, i32 1)
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %25, %17
  %31 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %32 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %30, %14
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.fsi_master_gpio* @to_fsi_master_gpio(%struct.fsi_master*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
