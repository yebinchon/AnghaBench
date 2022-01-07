; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1026.c_pwm1_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1026.c_pwm1_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adm1026_data = type { i32, %struct.TYPE_2__, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_client = type { i32 }

@ADM1026_REG_PWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm1_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm1_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.adm1026_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.adm1026_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.adm1026_data* %15, %struct.adm1026_data** %10, align 8
  %16 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %17 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %16, i32 0, i32 2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %11, align 8
  %19 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %20 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %50

24:                                               ; preds = %4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @kstrtol(i8* %25, i32 10, i64* %12)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %5, align 4
  br label %53

31:                                               ; preds = %24
  %32 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %33 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @PWM_TO_REG(i64 %35)
  %37 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %38 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %41 = load i32, i32* @ADM1026_REG_PWM, align 4
  %42 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %43 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @adm1026_write_value(%struct.i2c_client* %40, i32 %41, i32 %45)
  %47 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %48 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  br label %50

50:                                               ; preds = %31, %4
  %51 = load i64, i64* %9, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %29
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.adm1026_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @PWM_TO_REG(i64) #1

declare dso_local i32 @adm1026_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
