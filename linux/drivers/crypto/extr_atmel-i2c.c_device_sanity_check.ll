; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-i2c.c_device_sanity_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-i2c.c_device_sanity_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.atmel_i2c_cmd = type { i64* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LOCK_CONFIG_IDX = common dso_local global i64 0, align 8
@LOCK_VALUE_IDX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Configuration or Data and OTP zones are unlocked!\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @device_sanity_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_sanity_check(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.atmel_i2c_cmd*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.atmel_i2c_cmd* @kmalloc(i32 8, i32 %6)
  store %struct.atmel_i2c_cmd* %7, %struct.atmel_i2c_cmd** %4, align 8
  %8 = load %struct.atmel_i2c_cmd*, %struct.atmel_i2c_cmd** %4, align 8
  %9 = icmp ne %struct.atmel_i2c_cmd* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.atmel_i2c_cmd*, %struct.atmel_i2c_cmd** %4, align 8
  %15 = call i32 @atmel_i2c_init_read_cmd(%struct.atmel_i2c_cmd* %14)
  %16 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %17 = load %struct.atmel_i2c_cmd*, %struct.atmel_i2c_cmd** %4, align 8
  %18 = call i32 @atmel_i2c_send_receive(%struct.i2c_client* %16, %struct.atmel_i2c_cmd* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %45

22:                                               ; preds = %13
  %23 = load %struct.atmel_i2c_cmd*, %struct.atmel_i2c_cmd** %4, align 8
  %24 = getelementptr inbounds %struct.atmel_i2c_cmd, %struct.atmel_i2c_cmd* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* @LOCK_CONFIG_IDX, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %22
  %31 = load %struct.atmel_i2c_cmd*, %struct.atmel_i2c_cmd** %4, align 8
  %32 = getelementptr inbounds %struct.atmel_i2c_cmd, %struct.atmel_i2c_cmd* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @LOCK_VALUE_IDX, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %30, %22
  %39 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %38, %30
  br label %45

45:                                               ; preds = %44, %21
  %46 = load %struct.atmel_i2c_cmd*, %struct.atmel_i2c_cmd** %4, align 8
  %47 = call i32 @kfree(%struct.atmel_i2c_cmd* %46)
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %10
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.atmel_i2c_cmd* @kmalloc(i32, i32) #1

declare dso_local i32 @atmel_i2c_init_read_cmd(%struct.atmel_i2c_cmd*) #1

declare dso_local i32 @atmel_i2c_send_receive(%struct.i2c_client*, %struct.atmel_i2c_cmd*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kfree(%struct.atmel_i2c_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
