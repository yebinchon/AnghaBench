; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_lm63_update_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_lm63_update_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm63_data = type { i32, i32, i64, i8*, i8**, i8**, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@LM63_REG_LUT_TEMP_HYST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lm63_data*)* @lm63_update_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lm63_update_lut(%struct.lm63_data* %0) #0 {
  %2 = alloca %struct.lm63_data*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  store %struct.lm63_data* %0, %struct.lm63_data** %2, align 8
  %5 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %6 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %5, i32 0, i32 6
  %7 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  %8 = load i64, i64* @jiffies, align 8
  %9 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %10 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @HZ, align 4
  %13 = mul nsw i32 5, %12
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %11, %14
  %16 = call i64 @time_after(i64 %8, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %20 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %67, label %23

23:                                               ; preds = %18, %1
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %53, %23
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %27 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %24
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @LM63_REG_LUT_PWM(i32 %32)
  %34 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %31, i32 %33)
  %35 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %36 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %35, i32 0, i32 5
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 1, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %37, i64 %40
  store i8* %34, i8** %41, align 8
  %42 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @LM63_REG_LUT_TEMP(i32 %43)
  %45 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %42, i32 %44)
  %46 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %47 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %46, i32 0, i32 4
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 3, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %48, i64 %51
  store i8* %45, i8** %52, align 8
  br label %53

53:                                               ; preds = %30
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %24

56:                                               ; preds = %24
  %57 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %58 = load i32, i32* @LM63_REG_LUT_TEMP_HYST, align 4
  %59 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %57, i32 %58)
  %60 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %61 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load i64, i64* @jiffies, align 8
  %63 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %64 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  %65 = load %struct.lm63_data*, %struct.lm63_data** %2, align 8
  %66 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  br label %67

67:                                               ; preds = %56, %18
  ret void
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i8* @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @LM63_REG_LUT_PWM(i32) #1

declare dso_local i32 @LM63_REG_LUT_TEMP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
