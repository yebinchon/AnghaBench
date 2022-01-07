; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_fsi_master_gpio_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_fsi_master_gpio_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_gpio = type { i32 }
%struct.fsi_gpio_msg = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@FSI_CRC_ERR_RETRIES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ECRC retry %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master_gpio*, i32, %struct.fsi_gpio_msg*, i64, i8*)* @fsi_master_gpio_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_master_gpio_xfer(%struct.fsi_master_gpio* %0, i32 %1, %struct.fsi_gpio_msg* %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.fsi_master_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fsi_gpio_msg*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fsi_master_gpio* %0, %struct.fsi_master_gpio** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.fsi_gpio_msg* %2, %struct.fsi_gpio_msg** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i32, i32* @EAGAIN, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %38, %5
  %16 = load i32, i32* %12, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* @FSI_CRC_ERR_RETRIES, align 4
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %15
  %21 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %22 = load %struct.fsi_gpio_msg*, %struct.fsi_gpio_msg** %8, align 8
  %23 = call i32 @send_request(%struct.fsi_master_gpio* %21, %struct.fsi_gpio_msg* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %47

27:                                               ; preds = %20
  %28 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i64, i64* %9, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @poll_for_response(%struct.fsi_master_gpio* %28, i32 %29, i64 %30, i8* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %47

38:                                               ; preds = %27
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %11, align 4
  %41 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %42 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @dev_warn(i32 %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = call i32 @msleep(i32 1)
  br label %15

47:                                               ; preds = %37, %26, %15
  %48 = load i32, i32* %11, align 4
  ret i32 %48
}

declare dso_local i32 @send_request(%struct.fsi_master_gpio*, %struct.fsi_gpio_msg*) #1

declare dso_local i32 @poll_for_response(%struct.fsi_master_gpio*, i32, i64, i8*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
