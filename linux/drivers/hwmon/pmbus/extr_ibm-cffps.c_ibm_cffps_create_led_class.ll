; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ibm-cffps.c_ibm_cffps_create_led_class.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ibm-cffps.c_ibm_cffps_create_led_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibm_cffps = type { %struct.TYPE_2__, i32, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.i2c_client = type { i8*, i32, %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s-%02x\00", align 1
@LED_FULL = common dso_local global i32 0, align 4
@ibm_cffps_led_brightness_set = common dso_local global i32 0, align 4
@ibm_cffps_led_blink_set = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to register led class: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibm_cffps*)* @ibm_cffps_create_led_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibm_cffps_create_led_class(%struct.ibm_cffps* %0) #0 {
  %2 = alloca %struct.ibm_cffps*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.ibm_cffps* %0, %struct.ibm_cffps** %2, align 8
  %6 = load %struct.ibm_cffps*, %struct.ibm_cffps** %2, align 8
  %7 = getelementptr inbounds %struct.ibm_cffps, %struct.ibm_cffps* %6, i32 0, i32 2
  %8 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  store %struct.i2c_client* %8, %struct.i2c_client** %4, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 2
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.ibm_cffps*, %struct.ibm_cffps** %2, align 8
  %12 = getelementptr inbounds %struct.ibm_cffps, %struct.ibm_cffps* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @snprintf(i32 %13, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %19)
  %21 = load %struct.ibm_cffps*, %struct.ibm_cffps** %2, align 8
  %22 = getelementptr inbounds %struct.ibm_cffps, %struct.ibm_cffps* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ibm_cffps*, %struct.ibm_cffps** %2, align 8
  %25 = getelementptr inbounds %struct.ibm_cffps, %struct.ibm_cffps* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @LED_FULL, align 4
  %28 = load %struct.ibm_cffps*, %struct.ibm_cffps** %2, align 8
  %29 = getelementptr inbounds %struct.ibm_cffps, %struct.ibm_cffps* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @ibm_cffps_led_brightness_set, align 4
  %32 = load %struct.ibm_cffps*, %struct.ibm_cffps** %2, align 8
  %33 = getelementptr inbounds %struct.ibm_cffps, %struct.ibm_cffps* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @ibm_cffps_led_blink_set, align 4
  %36 = load %struct.ibm_cffps*, %struct.ibm_cffps** %2, align 8
  %37 = getelementptr inbounds %struct.ibm_cffps, %struct.ibm_cffps* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load %struct.ibm_cffps*, %struct.ibm_cffps** %2, align 8
  %41 = getelementptr inbounds %struct.ibm_cffps, %struct.ibm_cffps* %40, i32 0, i32 0
  %42 = call i32 @devm_led_classdev_register(%struct.device* %39, %struct.TYPE_2__* %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %1
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @dev_warn(%struct.device* %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %1
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @devm_led_classdev_register(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
