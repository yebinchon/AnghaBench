; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_temp2_crit_hyst_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_temp2_crit_hyst_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm63_data = type { i64, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@LM63_REG_REMOTE_TCRIT_HYST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp2_crit_hyst_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp2_crit_hyst_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lm63_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.lm63_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.lm63_data* %16, %struct.lm63_data** %10, align 8
  %17 = load %struct.lm63_data*, %struct.lm63_data** %10, align 8
  %18 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %17, i32 0, i32 2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @kstrtol(i8* %20, i32 10, i64* %12)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %5, align 4
  br label %48

26:                                               ; preds = %4
  %27 = load %struct.lm63_data*, %struct.lm63_data** %10, align 8
  %28 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.lm63_data*, %struct.lm63_data** %10, align 8
  %31 = call i64 @temp8_from_reg(%struct.lm63_data* %30, i32 2)
  %32 = load %struct.lm63_data*, %struct.lm63_data** %10, align 8
  %33 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load i64, i64* %12, align 8
  %37 = sub nsw i64 %35, %36
  store i64 %37, i64* %14, align 8
  %38 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %39 = load i32, i32* @LM63_REG_REMOTE_TCRIT_HYST, align 4
  %40 = load i64, i64* %14, align 8
  %41 = call i32 @HYST_TO_REG(i64 %40)
  %42 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %38, i32 %39, i32 %41)
  %43 = load %struct.lm63_data*, %struct.lm63_data** %10, align 8
  %44 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i64, i64* %9, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %26, %24
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.lm63_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @temp8_from_reg(%struct.lm63_data*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @HYST_TO_REG(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
