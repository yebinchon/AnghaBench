; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_fsi_master_gpio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_fsi_master_gpio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master = type { i32 }
%struct.fsi_master_gpio = type { i32 }
%struct.fsi_gpio_msg = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master*, i32, i32, i32, i8*, i64)* @fsi_master_gpio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_master_gpio_read(%struct.fsi_master* %0, i32 %1, i32 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.fsi_master*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.fsi_master_gpio*, align 8
  %15 = alloca %struct.fsi_gpio_msg, align 4
  %16 = alloca i32, align 4
  store %struct.fsi_master* %0, %struct.fsi_master** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load %struct.fsi_master*, %struct.fsi_master** %8, align 8
  %18 = call %struct.fsi_master_gpio* @to_fsi_master_gpio(%struct.fsi_master* %17)
  store %struct.fsi_master_gpio* %18, %struct.fsi_master_gpio** %14, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %49

24:                                               ; preds = %6
  %25 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %14, align 8
  %26 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %14, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i64, i64* %13, align 8
  %32 = call i32 @build_ar_command(%struct.fsi_master_gpio* %28, %struct.fsi_gpio_msg* %15, i32 %29, i32 %30, i64 %31, i32* null)
  %33 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %14, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i64, i64* %13, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @fsi_master_gpio_xfer(%struct.fsi_master_gpio* %33, i32 %34, %struct.fsi_gpio_msg* %15, i64 %35, i8* %36)
  store i32 %37, i32* %16, align 4
  %38 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %14, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @last_address_update(%struct.fsi_master_gpio* %38, i32 %39, i32 %42, i32 %43)
  %45 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %14, align 8
  %46 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %16, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %24, %21
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local %struct.fsi_master_gpio* @to_fsi_master_gpio(%struct.fsi_master*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @build_ar_command(%struct.fsi_master_gpio*, %struct.fsi_gpio_msg*, i32, i32, i64, i32*) #1

declare dso_local i32 @fsi_master_gpio_xfer(%struct.fsi_master_gpio*, i32, %struct.fsi_gpio_msg*, i64, i8*) #1

declare dso_local i32 @last_address_update(%struct.fsi_master_gpio*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
