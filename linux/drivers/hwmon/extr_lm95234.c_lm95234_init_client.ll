; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95234.c_lm95234_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95234.c_lm95234_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@LM95234_REG_CONFIG = common dso_local global i32 0, align 4
@LM95234_REG_REM_MODEL_STS = common dso_local global i32 0, align 4
@LM95234_REG_REM_MODEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Fixing remote diode type misconfiguration (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @lm95234_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm95234_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = load i32, i32* @LM95234_REG_CONFIG, align 4
  %8 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %57

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 64
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %19 = load i32, i32* @LM95234_REG_CONFIG, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, -65
  %22 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %18, i32 %19, i32 %21)
  br label %23

23:                                               ; preds = %17, %13
  %24 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %25 = load i32, i32* @LM95234_REG_REM_MODEL_STS, align 4
  %26 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %57

31:                                               ; preds = %23
  %32 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %33 = load i32, i32* @LM95234_REG_REM_MODEL, align 4
  %34 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %57

39:                                               ; preds = %31
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @dev_notice(i32* %46, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %50 = load i32, i32* @LM95234_REG_REM_MODEL, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %4, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %49, i32 %50, i32 %54)
  br label %56

56:                                               ; preds = %44, %39
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %37, %29, %11
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_notice(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
