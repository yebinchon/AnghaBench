; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-bd2802.c_bd2802_store_adv_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-bd2802.c_bd2802_store_adv_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.bd2802_led = type { i32, i64 }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @bd2802_store_adv_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bd2802_store_adv_conf(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bd2802_led*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call i32 @to_i2c_client(%struct.device* %11)
  %13 = call %struct.bd2802_led* @i2c_get_clientdata(i32 %12)
  store %struct.bd2802_led* %13, %struct.bd2802_led** %10, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* @EINVAL, align 8
  %18 = sub i64 0, %17
  store i64 %18, i64* %5, align 8
  br label %52

19:                                               ; preds = %4
  %20 = load %struct.bd2802_led*, %struct.bd2802_led** %10, align 8
  %21 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %20, i32 0, i32 0
  %22 = call i32 @down_write(i32* %21)
  %23 = load %struct.bd2802_led*, %struct.bd2802_led** %10, align 8
  %24 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %19
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @strncmp(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load %struct.bd2802_led*, %struct.bd2802_led** %10, align 8
  %33 = call i32 @bd2802_enable_adv_conf(%struct.bd2802_led* %32)
  br label %47

34:                                               ; preds = %27, %19
  %35 = load %struct.bd2802_led*, %struct.bd2802_led** %10, align 8
  %36 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @strncmp(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load %struct.bd2802_led*, %struct.bd2802_led** %10, align 8
  %45 = call i32 @bd2802_disable_adv_conf(%struct.bd2802_led* %44)
  br label %46

46:                                               ; preds = %43, %39, %34
  br label %47

47:                                               ; preds = %46, %31
  %48 = load %struct.bd2802_led*, %struct.bd2802_led** %10, align 8
  %49 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %48, i32 0, i32 0
  %50 = call i32 @up_write(i32* %49)
  %51 = load i64, i64* %9, align 8
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %47, %16
  %53 = load i64, i64* %5, align 8
  ret i64 %53
}

declare dso_local %struct.bd2802_led* @i2c_get_clientdata(i32) #1

declare dso_local i32 @to_i2c_client(%struct.device*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @bd2802_enable_adv_conf(%struct.bd2802_led*) #1

declare dso_local i32 @bd2802_disable_adv_conf(%struct.bd2802_led*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
