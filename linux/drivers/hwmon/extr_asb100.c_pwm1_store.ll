; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_asb100.c_pwm1_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_asb100.c_pwm1_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.asb100_data = type { i32, i32 }

@ASB100_REG_PWM1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm1_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm1_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.asb100_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.i2c_client* @to_i2c_client(%struct.device* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %10, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %17 = call %struct.asb100_data* @i2c_get_clientdata(%struct.i2c_client* %16)
  store %struct.asb100_data* %17, %struct.asb100_data** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @kstrtoul(i8* %18, i32 10, i64* %12)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %5, align 4
  br label %50

24:                                               ; preds = %4
  %25 = load %struct.asb100_data*, %struct.asb100_data** %11, align 8
  %26 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.asb100_data*, %struct.asb100_data** %11, align 8
  %29 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 128
  store i32 %31, i32* %29, align 4
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @ASB100_PWM_TO_REG(i64 %32)
  %34 = and i32 15, %33
  %35 = load %struct.asb100_data*, %struct.asb100_data** %11, align 8
  %36 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %40 = load i32, i32* @ASB100_REG_PWM1, align 4
  %41 = load %struct.asb100_data*, %struct.asb100_data** %11, align 8
  %42 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @asb100_write_value(%struct.i2c_client* %39, i32 %40, i32 %43)
  %45 = load %struct.asb100_data*, %struct.asb100_data** %11, align 8
  %46 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %45, i32 0, i32 1
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i64, i64* %9, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %24, %22
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.asb100_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ASB100_PWM_TO_REG(i64) #1

declare dso_local i32 @asb100_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
