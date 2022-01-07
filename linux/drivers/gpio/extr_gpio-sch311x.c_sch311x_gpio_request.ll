; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sch311x.c_sch311x_gpio_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sch311x.c_sch311x_gpio_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.sch311x_gpio_block = type { i64*, i64 }

@ENODEV = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to request region 0x%04x.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @sch311x_gpio_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sch311x_gpio_request(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sch311x_gpio_block*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %8 = call %struct.sch311x_gpio_block* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.sch311x_gpio_block* %8, %struct.sch311x_gpio_block** %6, align 8
  %9 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %6, align 8
  %10 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %54

20:                                               ; preds = %2
  %21 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %6, align 8
  %22 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %6, align 8
  %25 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %23, %30
  %32 = load i32, i32* @DRV_NAME, align 4
  %33 = call i32 @request_region(i64 %31, i32 1, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %20
  %36 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %37 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %6, align 8
  %40 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %6, align 8
  %43 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %41, %48
  %50 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %54

53:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %35, %17
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.sch311x_gpio_block* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @request_region(i64, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
