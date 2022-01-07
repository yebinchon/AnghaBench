; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_fsi_master_gpio_term.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_fsi_master_gpio_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master = type { i32 }
%struct.fsi_master_gpio = type { i32 }
%struct.fsi_gpio_msg = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master*, i32, i32)* @fsi_master_gpio_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_master_gpio_term(%struct.fsi_master* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsi_master*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fsi_master_gpio*, align 8
  %9 = alloca %struct.fsi_gpio_msg, align 4
  %10 = alloca i32, align 4
  store %struct.fsi_master* %0, %struct.fsi_master** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %12 = call %struct.fsi_master_gpio* @to_fsi_master_gpio(%struct.fsi_master* %11)
  store %struct.fsi_master_gpio* %12, %struct.fsi_master_gpio** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %34

18:                                               ; preds = %3
  %19 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %8, align 8
  %20 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @build_term_command(%struct.fsi_gpio_msg* %9, i32 %22)
  %24 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %8, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @fsi_master_gpio_xfer(%struct.fsi_master_gpio* %24, i32 %25, %struct.fsi_gpio_msg* %9, i32 0, i32* null)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @last_address_update(%struct.fsi_master_gpio* %27, i32 %28, i32 0, i32 0)
  %30 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %8, align 8
  %31 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %18, %15
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.fsi_master_gpio* @to_fsi_master_gpio(%struct.fsi_master*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @build_term_command(%struct.fsi_gpio_msg*, i32) #1

declare dso_local i32 @fsi_master_gpio_xfer(%struct.fsi_master_gpio*, i32, %struct.fsi_gpio_msg*, i32, i32*) #1

declare dso_local i32 @last_address_update(%struct.fsi_master_gpio*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
