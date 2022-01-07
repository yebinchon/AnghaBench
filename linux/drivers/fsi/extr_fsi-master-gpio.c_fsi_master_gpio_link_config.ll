; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_fsi_master_gpio_link_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_fsi_master_gpio_link_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master = type { i32 }
%struct.fsi_master_gpio = type { i32, i8*, i8* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master*, i32, i8*, i8*)* @fsi_master_gpio_link_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_master_gpio_link_config(%struct.fsi_master* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsi_master*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fsi_master_gpio*, align 8
  store %struct.fsi_master* %0, %struct.fsi_master** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.fsi_master*, %struct.fsi_master** %6, align 8
  %12 = call %struct.fsi_master_gpio* @to_fsi_master_gpio(%struct.fsi_master* %11)
  store %struct.fsi_master_gpio* %12, %struct.fsi_master_gpio** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %31

18:                                               ; preds = %4
  %19 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %10, align 8
  %20 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %10, align 8
  %24 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %10, align 8
  %27 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %10, align 8
  %29 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %18, %15
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.fsi_master_gpio* @to_fsi_master_gpio(%struct.fsi_master*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
